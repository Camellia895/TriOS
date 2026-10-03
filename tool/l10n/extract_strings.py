#!/usr/bin/env python3
"""Extract candidate user-facing strings from lib/ into a translation census CSV.

Usage (from repo root):
    python tool/l10n/extract_strings.py

Output: tool/l10n/census.csv with columns:
    key,source,zh,refs,is_interpolated

- One row per distinct English source string (deduplicated across files).
- `key` is a suggested ARB key (module from path + semantic guess); the same
  source found in several places shares one key, so it is translated once.
- `refs` lists every call site (file:line, semicolon-separated).
- `is_interpolated` marks strings containing Dart `$` interpolation: these
  cannot be keyed verbatim and must be converted to `{placeholder}` form in
  both ARB files by hand.
- `zh` starts empty; fill it in, then run csv_to_arb.py to merge into
  lib/l10n/app_zh.arb.

Re-run any time; rows already translated keep their zh value (merge by source).
"""

from __future__ import annotations

import csv
import json
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
LIB = REPO / "lib"
OUT = Path(__file__).resolve().parent / "census.csv"
ARB_EN = REPO / "lib" / "l10n" / "app_en.arb"

# Call-site patterns: (param/context regex, capture group index is the quoted
# literal inside). Each regex must contain one quoted-string group.
CALL_PATTERNS = [
    # Text('...'), Text.rich args, Text(text: ...)
    re.compile(r"\bText\(\s*(?:text:\s*)?(r?'(?:[^'\\]|\\.)*'|\"(?:[^\"\\]|\\.)*\")"),
    # MovingTooltipWidget.text(message: '...') / tooltip message params
    re.compile(r"\bmessage:\s*(r?'(?:[^'\\]|\\.)*'|\"(?:[^\"\\]|\\.)*\")"),
    # context menu items, buttons, dialogs
    re.compile(r"\blabel:\s*(r?'(?:[^'\\]|\\.)*'|\"(?:[^\"\\]|\\.)*\")"),
    re.compile(r"\btitle:\s*(r?'(?:[^'\\]|\\.)*'|\"(?:[^\"\\]|\\.)*\")"),
    re.compile(r"\bsubtitle:\s*(r?'(?:[^'\\]|\\.)*'|\"(?:[^\"\\]|\\.)*\")"),
    re.compile(r"\btext:\s*(r?'(?:[^'\\]|\\.)*'|\"(?:[^\"\\]|\\.)*\")"),
    # showSnackBar(content: Text('...')) is covered by Text( above.
]

# Strings that look like logic keys / identifiers, not user-facing prose.
LOOKS_LIKE_KEY = re.compile(r"^[A-Za-z0-9_\-.:/{}<> ]*$")

UNQUOTE_SINGLE = re.compile(r"^r?'(.*)'$", re.S)
UNQUOTE_DOUBLE = re.compile(r'^r?"(.*)"$', re.S)


def unquote(literal: str) -> str:
    for pat in (UNQUOTE_SINGLE, UNQUOTE_DOUBLE):
        m = pat.match(literal)
        if m:
            return m.group(1)
    return literal


def is_user_facing(text: str) -> bool:
    """Heuristic: prose has spaces/sentences; logic keys don't."""
    if len(text) < 2:
        return False
    if not LOOKS_LIKE_KEY.match(text):
        return True  # contains CJK or other punctuation → prose
    if " " in text:
        return True
    # Single word: keep only Capitalized words (UI labels like "Refresh").
    return bool(re.match(r"^[A-Z]", text)) and "_" not in text


def suggest_key(rel_path: str, text: str, used: set[str]) -> str:
    module = Path(rel_path).stem
    module = re.sub(r"_(page|widget|panel|view)$", "", module)
    words = re.findall(r"[A-Za-z]+", text)[:4]
    base = module + "".join(w[:1].upper() + w[1:].lower() for w in words)
    base = base[:60] or "string"
    key = base
    n = 2
    while key in used:
        key = f"{base}{n}"
        n += 1
    return key


def existing_keys() -> dict[str, str]:
    """ARB template keys already translated → skip re-suggestion."""
    if not ARB_EN.exists():
        return {}
    data = json.loads(ARB_EN.read_text(encoding="utf-8"))
    return {k: v for k, v in data.items() if not k.startswith("@")}


def previous_zh_by_source() -> dict[str, str]:
    """Keep existing translations across re-runs (match by source)."""
    out = {}
    census = Path(__file__).resolve().parent / "census.csv"
    if census.exists():
        with census.open(encoding="utf-8-sig", newline="") as f:
            for row in csv.DictReader(f):
                if row.get("zh"):
                    out[row["source"]] = row["zh"]
    return out


def main() -> int:
    en_arb = existing_keys()
    en_by_value = {v: k for k, v in en_arb.items()}
    old_zh = previous_zh_by_source()

    # source -> {"refs": [...], "interpolated": bool, "key": str|None}
    found: dict[str, dict] = {}
    files = sorted(LIB.rglob("*.dart"))
    for path in files:
        if "l10n/generated" in path.as_posix():
            continue
        rel = path.relative_to(REPO).as_posix()
        try:
            lines = path.read_text(encoding="utf-8").splitlines()
        except UnicodeDecodeError:
            print(f"skip non-UTF8 file: {rel}", file=sys.stderr)
            continue
        for lineno, line in enumerate(lines, 1):
            stripped = line.strip()
            if stripped.startswith("//"):
                continue
            if any(fn in line for fn in ("Fimber.", "log(", "assert(")):
                continue
            for pat in CALL_PATTERNS:
                for m in pat.finditer(line):
                    source = unquote(m.group(1))
                    if not is_user_facing(source):
                        continue
                    entry = found.setdefault(
                        source,
                        {"refs": [], "interpolated": "$" in source, "key": None},
                    )
                    entry["refs"].append(f"{rel}:{lineno}")

    # Assign keys: existing ARB key first, then stable suggestions.
    used = set(en_arb.keys())
    rows = []
    for source in sorted(found):
        entry = found[source]
        key = en_by_value.get(source)
        if key is None and not entry["interpolated"]:
            key = suggest_key(entry["refs"][0], source, used)
            used.add(key)
        rows.append(
            {
                "key": key or "",
                "source": source,
                "zh": old_zh.get(source, ""),
                "refs": ";".join(entry["refs"]),
                "is_interpolated": "yes" if entry["interpolated"] else "",
            }
        )

    with OUT.open("w", encoding="utf-8-sig", newline="") as f:
        writer = csv.DictWriter(
            f, fieldnames=["key", "source", "zh", "refs", "is_interpolated"]
        )
        writer.writeheader()
        writer.writerows(rows)

    untranslated = sum(1 for r in rows if not r["zh"])
    interpolated = sum(1 for r in rows if r["is_interpolated"])
    print(f"census: {len(rows)} distinct strings -> {OUT}")
    print(f"  translated: {len(rows) - untranslated}, untranslated: {untranslated}")
    print(f"  interpolated (manual placeholder work): {interpolated}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
