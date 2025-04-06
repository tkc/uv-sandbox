.PHONY: setup run clean help lint format build

PYTHON_VERSION = 3.12
VENV_DIR = .venv

help:
	@echo "使用可能なコマンド:"
	@echo "  make setup      - uvをインストールし、Python $(PYTHON_VERSION)の仮想環境を作成"
	@echo "  make run        - 足し算プログラムを実行"
	@echo "  make clean      - 仮想環境を削除"
	@echo "  make lint       - Ruffでコードをチェック"
	@echo "  make format     - Ruffでコードをフォーマット"
	@echo "  make build      - 配布用アーカイブを作成"
	@echo "  make help       - このヘルプメッセージを表示"

setup:
	uv python install $(PYTHON_VERSION)
	uv venv --python=$(PYTHON_VERSION) $(VENV_DIR)
	uv sync

run:
	uv run add.py 

lint:
	uv run ruff check --fix

format:
	uv run ruff format

build:
	uv sync
	uv build
