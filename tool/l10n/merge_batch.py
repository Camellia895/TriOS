#!/usr/bin/env python3
"""Merge per-module translation batch JSON fragments into the ARB files.

Each batch file (tool/l10n/batches/<module>.json) has the shape:

    {
      "moduleKeyPrefix_exampleKey": {
        "en": "Loaded {count} mods",
        "zh": "已加载 {count} 个模组",
        "placeholders": {"count": {"type": "num"}}
      }
    }

`placeholders` is optional (only for strings with {placeholders}); it is
written as the @key metadata in app_en.arb. `zh` is optional (key falls back
to English in the zh locale until translated).

Usage:
    python tool/l10n/merge_batch.py                # merge every batch file
    python tool/l10n/merge_batch.py mod_manager    # merge one

Duplicate keys: same en value → OK; conflicting en → error, nothing written.
Run `flutter gen-l10n` after merging.
"""

from __future__ import annotations

import json
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
ARB_DIR = REPO / "lib" / "l10n"
BATCH_DIR = Path(__file__).resolve().parent / "batches"


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def main() -> int:
    only = sys.argv[1] if len(sys.argv) > 1 else None
    batch_files = sorted(BATCH_DIR.glob("*.json"))
    if only:
        batch_files = [p for p in batch_files if p.stem == only]
    if not batch_files:
        print(f"no batch files in {BATCH_DIR}", file=sys.stderr)
        return 1

    en_path = ARB_DIR / "app_en.arb"
    zh_path = ARB_DIR / "app_zh.arb"
    en = load(en_path)
    zh = load(zh_path)

    errors = 0
    for batch_path in batch_files:
        batch = load(batch_path)
        for key, spec in batch.items():
            en_value = spec.get("en")
            if en_value is None:
                print(f"{batch_path.name}: {key} missing 'en'", file=sys.stderr)
                errors += 1
                continue
            if key in en and en[key] != en_value:
                print(
                    f"{batch_path.name}: conflicting en for {key!r}:"
                    f"\n  arb   : {en[key]!r}\n  batch : {en_value!r}",
                    file=sys.stderr,
                )
                errors += 1
                continue
            placeholders = spec.get("placeholders")
            if key not in en:
                en[key] = en_value
                if placeholders:
                    en[f"@{key}"] = {"placeholders": placeholders}
            zh_value = (spec.get("zh") or "").strip()
            if zh_value:
                if en_value and placeholders:
                    import re

                    en_names = set(re.findall(r"\{(\w+)\}", en_value))
                    zh_names = set(re.findall(r"\{(\w+)\}", zh_value))
                    if en_names - zh_names:
                        print(
                            f"{batch_path.name}: {key} zh missing placeholders "
                            f"{sorted(en_names - zh_names)}; skipped zh",
                            file=sys.stderr,
                        )
                        errors += 1
                        continue
                zh[key] = zh_value

    zh["@@locale"] = "zh"
    zh_meta = {k: v for k, v in zh.items() if k.startswith("@")}
    zh_str = {k: v for k, v in zh.items() if not k.startswith("@")}
    zh_path.write_text(
        json.dumps({**zh_meta, **dict(sorted(zh_str.items()))}, ensure_ascii=False, indent=2)
        + "\n",
        encoding="utf-8",
    )
    en_path.write_text(
        json.dumps(en, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    print(f"merged {len(batch_files)} batch(es); errors: {errors}")
    print("next: flutter gen-l10n && flutter analyze")
    return 1 if errors else 0


if __name__ == "__main__":
    raise SystemExit(main())
