target:
	@awk -F ':|##' '/^[^\t].+?:.*?##/ { printf "\033[0;36m%-15s\033[0m %s\n", $$1, $$NF }' $(MAKEFILE_LIST)

type:  ## Run pyright type checker
	@pyright --pythonversion 3.11

lint:  ## Run ruff linter
	@ruff check --config pyproject.toml

install:  ## Install dependencies for production
	@uv sync --no-dev

install_dev:  ## Install dev dependencies
	@uv sync
