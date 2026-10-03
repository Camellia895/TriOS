#!/usr/bin/env python3
"""Merge translated census CSV into lib/l10n/app_zh.arb.

Usage (from repo root, after filling the `zh` column of census.csv):
    python tool/l10n/csv_to_arb.py [--csv tool/l10n/census.csv] [--locale zh]

Rules:
- Only rows with a non-empty `zh` are merged, and only if the key already
  exists in the template `app_en.arb` with an identical source string (guards
  against stale CSVs after upstream edits — the row is reported and skipped).
- Interpolated rows (is_interpolated=yes) are skipped: placeholder strings
  must be added to both ARB files by hand so placeholder names match.
- For keys whose template value contains {placeholders}, the zh value must
  contain the same ones — otherwise the row is skipped with a warning.
- Existing entries in app_zh.arb are preserved; this script only adds/updates
  the keys it is given. Run `flutter gen-l10n` afterwards.
"""

from __future__ import annotations

import argparse
import csv
import json
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
ARB_DIR = REPO / "lib" / "l10n"
DEFAULT_CSV = Path(__file__).resolve().parent / "census.csv"

PLACEHOLDER = re.compile(r"\{(\w+)\}")


def read_csv(path: Path) -> list[dict]:
    with path.open(encoding="utf-8-sig", newline="") as f:
        return list(csv.DictReader(f))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--csv", type=Path, default=DEFAULT_CSV)
    parser.add_argument("--locale", default="zh")
    args = parser.parse_args()

    template_path = ARB_DIR / "app_en.arb"
    target_path = ARB_DIR / f"app_{args.locale}.arb"
    template = json.loads(template_path.read_text(encoding="utf-8"))

    # template key -> (english source, placeholder names)
    tpl: dict[str, tuple[str, set[str]]] = {}
    for key, value in template.items():
        if key.startswith("@"):
            continue
        names = set(PLACEHOLDER.findall(value))
        tpl[key] = (value, names)

    rows = read_csv(args.csv)
    target: dict = {}
    if target_path.exists():
        target = json.loads(target_path.read_text(encoding="utf-8"))

    added = updated = skipped_no_key = skipped_stale = skipped_interp = skipped_ph = 0
    for row in rows:
        zh = (row.get("zh") or "").strip()
        if not zh:
            continue
        key = (row.get("key") or "").strip()
        source = row.get("source") or ""
        if row.get("is_interpolated"):
            skipped_interp += 1
            continue
        if key not in tpl:
            print(f"skip (key not in template): {key}", file=sys.stderr)
            skipped_no_key += 1
            continue
        en_value, ph_names = tpl[key]
        if en_value != source:
            print(
                f"skip (upstream text changed): {key}\n  csv : {source!r}\n  arb : {en_value!r}",
                file=sys.stderr,
            )
            skipped_stale += 1
            continue
        missing = ph_names - set(PLACEHOLDER.findall(zh))
        if missing:
            print(
                f"skip (zh missing placeholders {sorted(missing)}): {key}",
                file=sys.stderr,
            )
            skipped_ph += 1
            continue
        if key in target and not key.startswith("@"):
            updated += 1
        else:
            added += 1
        target[key] = zh

    target["@@locale"] = args.locale
    # Keep existing metadata (@...) entries, append translations sorted last.
    metadata = {k: v for k, v in target.items() if k.startswith("@")}
    strings = {k: v for k, v in target.items() if not k.startswith("@")}
    merged = {**metadata, **dict(sorted(strings.items()))}
    target_path.write_text(
        json.dumps(merged, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )

    print(f"merged into {target_path}: +{added} new, {updated} updated")
    if skipped_stale or skipped_no_key or skipped_ph or skipped_interp:
        print(
            f"skipped: {skipped_stale} stale, {skipped_no_key} unknown key, "
            f"{skipped_ph} missing placeholder, {skipped_interp} interpolated (manual)"
        )
    print("next: flutter gen-l10n")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
