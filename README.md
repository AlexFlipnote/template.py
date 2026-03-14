# template.py
A standardized Python template configuration for my projects.

I got tired of copy-pasting the same setup across repositories, so I created this as my go-to pyproject.toml configuration.

You're welcome to use it, but be warned, you will encounter errors and warnings due to its strict settings. Use at your own risk 😇.

## Makefile format
I have made a target in the Makefile that generates a help message based on the comments in the Makefile. The format is as follows:

```make
##@ Section name (This is optional, but it helps to organize the targets)
target:  ## Description of the target
  # Command to execute when the target is run
```

Why Makefile you ask? Because it is a simple and effective way to manage tasks in a Python project, without the need for additional dependencies.
It also allows for easy integration with CI/CD pipelines and can be used across different operating systems.

## Requirements
- Python >=3.11
  - uv `(pip install uv)`

## Dependencies
| Tool | Purpose |
| --- | --- |
| [astral-sh/ruff](https://github.com/astral-sh/ruff) | Linter |
| [astral-sh/uv](https://github.com/astral-sh/uv) | Package and project manager |
| [microsoft/pyright](https://github.com/microsoft/pyright) | Type checker |
