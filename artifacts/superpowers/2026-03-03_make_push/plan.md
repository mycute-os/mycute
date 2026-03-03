# 実装計画: Makefile への make push コマンド追加

## 1. ブレインストーミング
- **ゴール**: `Makefile` に `push` ターゲットを追加し、`../mycute/Cargo.toml` からバージョン文字列を抽出して `v2.2.50` のような形式でコミット・タグ打ち・プッシュを一括で行えるようにする。
- **制約**:
  - `../mycute/Cargo.toml` の `version = "X.Y.Z"` という形式から正確にバージョン番号のみを抜き出す必要がある。
  - OS（macOS）標準のコマンド（`grep`, `sed` / `awk`）を利用して完結させる。
- **リスク**: 
  - `git commit` のスコープ（`-a` を付けるか、それとも `add` コマンドで全追加させるか）についてユーザーの意図とずれる可能性がある。今回は利便性を考慮し全変更をコミットする（`git commit -a -m` あるいは事前の `git add .`）形をデフォルト案とする。
  - すでに同名のタグが存在する場合、`git tag` はエラーとなるため、事前にタグの存在チェックを行うか、エラーで止まる（冪等性）ようにする。
- **完了条件**: Makefile に `push` ターゲットが定義され、バージョン抽出の手順が正しく実行できることが確認できること。

## 2. 手順書 (実装ステップ)

### ステップ 1: Makefile の編集
`Makefile` に以下の内容を追記します。

```makefile
.PHONY: push

push:
	$(eval VERSION := $(shell grep '^version = ' ../mycute/Cargo.toml | sed 's/version = "\(.*\)"/\1/'))
	@if [ -z "$(VERSION)" ]; then echo "Version not found in Cargo.toml"; exit 1; fi
	@echo "Commit and push with version v$(VERSION)..."
	git commit -a -m "v$(VERSION)" || true
	git tag "v$(VERSION)"
	git push origin HEAD
	git push origin "v$(VERSION)"
```

### ステップ 2: 検証の手順
実環境でいきなりプッシュが行われないよう、バージョンが正しく抽出できているかだけを確認するステップを挟みます（あるいはドライランコマンドで確認します）。

1. `$ grep '^version = ' ../mycute/Cargo.toml | sed 's/version = "\(.*\)"/\1/'` 相当の確認コマンドを走らせ、正しく `2.2.50` が取れるか確認する。
2. Makefile の文法チェック（`make push -n` を実行）を行う。

## 確認事項
1. **コミット範囲について**: 今回は `git commit -a -m "v$(VERSION)"` としていますが、未追跡ファイルもまとめて追加したい場合は先に `git add .` を呼び出しますか？
2. プッシュ先は現在のブランチ（`HEAD`）とタグの両方でよろしいでしょうか？

承認いただける場合は、`/superpowers-execute-plan` とご返信ください。必要に応じて変更点をご指示ください。
