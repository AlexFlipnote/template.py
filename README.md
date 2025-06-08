# template.py
A standardized Python template configuration for my projects.

I got tired of copy-pasting the same setup across repositories, so I created this as my go-to pyproject.toml configuration.

You're welcome to use it, but be warned, you will encounter errors and warnings due to its strict settings. Use at your own risk 😇.

## Requirements
- Python >=3.11
  - uv `(pip install uv)`

## Dependencies
| Tool | Purpose |
| --- | --- |
| [astral-sh/ruff](https://github.com/astral-sh/ruff) | Linter |
| [astral-sh/uv](https://github.com/astral-sh/uv) | Package and project manager |
| [microsoft/pyright](https://github.com/microsoft/pyright) | Type checker |
