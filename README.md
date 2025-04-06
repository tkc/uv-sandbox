# UV + Make サンプルプロジェクト

このリポジトリは、Python のパッケージマネージャー `uv` と `Makefile` を組み合わせた基本的な使い方を示すサンプルです。Python 3.12 を使用した簡単な足し算パッケージを提供します。

## 前提条件

このプロジェクトを使用するには、事前に `uv` がシステムにインストールされている必要があります。

**uv のインストール (macOS / Linux):**

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

または、他のインストール方法については [uv のドキュメント](https://github.com/astral-sh/uv#installation) を参照してください。

## セットアップと実行方法 (macOS / Linux)

```bash
# Python 仮想環境の作成と依存関係のインストール
make setup

# プログラムの実行 (モジュールとして)
make run

# Ruff を使ったコードのチェック
make lint

# Ruff を使ったコードのフォーマット
make format

# 配布用パッケージのビルド
make build

# 利用可能なコマンドのヘルプを表示
make help
```
