#!/usr/bin/env python3
"""Auditoria leve de frontmatter e links locais da Knowledge Base."""

from __future__ import annotations

import re
import sys
from pathlib import Path
from urllib.parse import unquote


ROOT = Path(__file__).resolve().parents[1]
LINK_RE = re.compile(r"!?\[[^\]]*\]\(([^)]+)\)")
TYPE_RE = re.compile(r"^type:\s*\S+", re.MULTILINE)


def markdown_files() -> list[Path]:
    return sorted(path for path in ROOT.rglob("*.md") if ".git" not in path.parts)


def requires_frontmatter(path: Path) -> bool:
    relative = path.relative_to(ROOT)
    return relative == Path("STATE.md") or relative.parts[0] in {"docs", "views"}


def frontmatter_error(path: Path, text: str) -> str | None:
    if not requires_frontmatter(path):
        return None
    lines = text.splitlines()
    if not lines or lines[0] != "---":
        return "frontmatter ausente"
    try:
        end = lines.index("---", 1)
    except ValueError:
        return "frontmatter sem fechamento"
    if not TYPE_RE.search("\n".join(lines[1:end])):
        return "frontmatter sem type"
    return None


def local_link_target(path: Path, raw_target: str) -> Path | None:
    target = raw_target.strip()
    if target.startswith("<") and target.endswith(">"):
        target = target[1:-1]
    if not target or target.startswith(("#", "http://", "https://", "mailto:")):
        return None
    target = target.split("#", 1)[0].split("?", 1)[0]
    if not target or any(marker in target for marker in ("<", ">", "AAAA-MM-DD")):
        return None
    return (path.parent / unquote(target)).resolve()


def main() -> int:
    errors: list[str] = []
    files = markdown_files()

    for path in files:
        relative = path.relative_to(ROOT)
        try:
            text = path.read_text(encoding="utf-8")
        except UnicodeDecodeError:
            errors.append(f"{relative}: não está em UTF-8")
            continue

        error = frontmatter_error(path, text)
        if error:
            errors.append(f"{relative}: {error}")

        for raw_target in LINK_RE.findall(text):
            target = local_link_target(path, raw_target)
            if target is not None and not target.exists():
                errors.append(f"{relative}: link local quebrado -> {raw_target}")

    if errors:
        print("Auditoria falhou:")
        for error in errors:
            print(f"- {error}")
        return 1

    print(f"Auditoria OK: {len(files)} arquivos Markdown verificados.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
