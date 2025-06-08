target:
	@awk -F ':|##' '/^[^\t].+?:.*?##/ { printf "\033[0;36m%-15s\033[0m %s\n", $$1, $$NF }' $(MAKEFILE_LIST)

clean:  ## Clean the project
	rm -rf build dist *.egg-info .venv .ruff_cache
	rm uv.lock

type:  ## Run pyright type checker
	@uv run pyright --pythonversion 3.13

lint:  ## Run ruff linter
	@uv run ruff check --config pyproject.toml

install:  ## Install dependencies for production
	@uv sync --no-dev

install_dev:  ## Install dev dependencies
	@uv sync
