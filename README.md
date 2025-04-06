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

**2. ローカルインストール:**

ビルドされたパッケージをテスト用にローカル環境にインストールできます。新しい仮想環境を作成してインストールするのがおすすめです。

```bash
# 新しい仮想環境を作成 (例)
uv venv .test_venv
source .test_venv/bin/activate

# dist ディレクトリにある .whl ファイルをインストール
# (ファイル名は実際のバージョンに合わせてください)
uv pip install dist/uv_sandbox-0.1.0-py3-none-any.whl
```

**3. 使い方:**

インストール後、Python からパッケージをインポートして使用できます。

```python
from uv_sandbox.add import add

result = add(5, 3)
print(result)  # 出力: 8
```

## uv パッケージマネージャーのメリット

uv は Python のパッケージマネージャーとして以下の特徴があります:

1. **高速**: pip よりも大幅に速いインストール時間
2. **信頼性**: 依存関係の解決が正確
3. **クロスプラットフォーム**: Windows、macOS、Linux 対応 (ただし、この Makefile は macOS/Linux 用です)

## make と uv を組み合わせる利点

- **自動化**: 環境構築からビルド、テスト、実行までのプロセスを自動化
- **再現性**: 同じコマンドで常に同じ環境を構築可能
- **統一性**: チーム間で一貫した開発環境を維持

## カスタマイズ

Makefile の変数を編集することで設定を変更できます:

```make
# デフォルトのPythonバージョン
PYTHON_VERSION = 3.12
# 仮想環境のディレクトリ名
VENV_DIR = .venv
```
