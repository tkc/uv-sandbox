# UV + Make Sample Project

This repository provides a sample demonstrating the basic usage of combining the Python package manager `uv` with a `Makefile`. It offers a simple addition package using Python 3.12.

## Prerequisites

To use this project, `uv` must be installed on your system beforehand.

**Install uv (macOS / Linux):**

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Alternatively, refer to the [uv documentation](https://github.com/astral-sh/uv#installation) for other installation methods.

## Setup and Execution (macOS / Linux)

```bash
# Create a Python virtual environment and install dependencies
make setup

# Run the program (as a module)
make run

# Check code using Ruff
make lint

# Format code using Ruff
make format

# Build the distribution package
make build

# Show help for available commands
make help
```


examples
```bash
uv venv --python=3.10
```
```bash
uv venv --python=3.11
```

```bash
uv venv --python=3.12
```
