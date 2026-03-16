# MYCUTE OS

![](./assets/mycute-wrapped-256.png)

# ⚫︎ For Mac

## インストール
1. [リリースページ](https://github.com/mycute-os/mycute/releases) から `*_aarch64.dmg` をダウンロード
2. ダウンロードした `*_aarch64.dmg` を実行
3. ガイドに従ってインストール

## 設定
0. 一度起動して各種許可

![](./assets/mac-01.png)

![](./assets/mac-02.png)

![](./assets/mac-mic.png)

1. `Settings` アプリを開く

![](./assets/llms01.png)

2. 言語モデルエンドポイントを設定する

![](./assets/llms02.png)

| 項目 | 説明 |
|---|---|
| 表示名 | 任意の識別名（ `dummy` という文字を含まないよう設定） |
| ベースURL | 言語モデルベースエンドポイントURL（特段の理由がない限り `https://api.openai.com/v1` から変える必要はない） |
| APIキー | APIキー（設定必須） |
| モデル名 | モデル名（特段の理由がない限り `gpt‑4.1‑nano` から変える必要はない） |

3. MYCUTEを再起動

# ⚫︎ For Windows

## インストール
1. [リリースページ](https://github.com/mycute-os/mycute/releases) から `*_x64-setup.exe` をダウンロード
2. ダウンロードした `*_x64-setup.exe` を実行
3. ガイドに従ってインストール

## 設定
0. 一度起動して閉じる

![](./assets/win-alert-01.png)

![](./assets/win-alert-02.png)

1. Wiindows 11 にて 「設定」→「時刻と言語」→「言語と地域」

![](./assets/01.png)

![](./assets/02.png)

2. 「日本語」の「・・・」から「言語オプション」をクリック

![](./assets/03.png)

3. 「音声認識」→ 「基本的な音声認識」「強化された音声認識」をインストール

![](./assets/04.png)

4. 音声認識許可をする

![](./assets/win-allow-asr-1.png)

![](./assets/win-allow-asr-2.png)

5. `Settings` アプリを開く

![](./assets/llms01.png)

6. 言語モデルエンドポイントを設定する

![](./assets/llms02.png)

| 項目 | 説明 |
|---|---|
| 表示名 | 任意の識別名（ `dummy` という文字を含まないよう設定） |
| ベースURL | 言語モデルベースエンドポイントURL（特段の理由がない限り `https://api.openai.com/v1` から変える必要はない） |
| APIキー | APIキー（設定必須） |
| モデル名 | モデル名（特段の理由がない限り `gpt‑4.1‑nano` から変える必要はない） |

6. MYCUTEを再起動