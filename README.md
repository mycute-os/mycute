# MYCUTE OS

![](./assets/mycute-wrapped-256.png)

# ⚫︎ For Mac

## インストール
1. [リリースページ](https://github.com/mycute-os/mycute/releases) から `*_aarch64.dmg` をダウンロード
2. ダウンロードした `*_aarch64.dmg` を実行
3. ガイドに従って `mycute.app` を `/Applications` フォルダへドラッグ&ドロップ
4. インストーラー内の `macos-setup.command` を任意の場所にコピーし、ターミナルで実行権限を付与してください：
   ```bash
   chmod +x /path/to/macos-setup.command
   ```
5. 権限付与した `macos-setup.command` をターミナルから実行してください。
   - ※ `/Applications/mycute.app` の誤警告が解除され、アプリが起動します。

> [!IMPORTANT]  
> **本作業（手順4, 5）が必要なのは、インストール直後の「初回のみ」です。**
> 一度セットアップが完了すれば、以降は `/Applications/mycute.app` のアイコンをダブルクリックするだけで通常通り起動できます。

> [!NOTE]  
> 現在のこのセットアップ手順は、開発初期段階における **暫定的な措置** です。将来的に Apple デベロッパー証明書による正式な署名と公証（Notarization）が付与された後は、このような手動セットアップは一切不要になります。

## 設定
0. 一度起動して各種許可

![](./assets/mac-01.png)

![](./assets/mac-02.png)

![](./assets/mac-mic.png)

1. `Settings` アプリを開く

<img src="./assets/llms01.png" width="300" />

2. 言語モデルエンドポイントを設定する

<img src="./assets/llms02.png" width="300" />

| 項目 | 説明 |
|---|---|
| 表示名 | 任意の識別名（ `dummy` という文字を含まないよう設定） |
| ベースURL | 言語モデルベースエンドポイントURL（特段の理由がない限り `https://api.openai.com/v1` から変える必要はない） |
| APIキー | APIキー（設定必須） |
| モデル名 | モデル名（特段の理由がない限り `gpt‑4.1‑nano` から変える必要はない） |

# ⚫︎ For Windows

## インストール
1. [リリースページ](https://github.com/mycute-os/mycute/releases) から `*_x64-setup.exe` をダウンロード
2. ダウンロードした `*_x64-setup.exe` を実行
3. ガイドに従ってインストール

> [!NOTE]  
> 現在の Windows 版においても正式なデジタル署名が未付与のため、インストール時や初回起動時に Windows SmartScreen 等の警告ダイアログが表示される場合があります。
> その際は「詳細情報」を表示してから「実行」を選択するなどの **暫定的な操作** が必要です。将来的に正式な署名が付与された後は、これらの手順は不要になります。

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

<img src="./assets/llms01.png" width="300" />

6. 言語モデルエンドポイントを設定する

<img src="./assets/llms02.png" width="300" />

| 項目 | 説明 |
|---|---|
| 表示名 | 任意の識別名（ `dummy` という文字を含まないよう設定） |
| ベースURL | 言語モデルベースエンドポイントURL（特段の理由がない限り `https://api.openai.com/v1` から変える必要はない） |
| APIキー | APIキー（設定必須） |
| モデル名 | モデル名（特段の理由がない限り `gpt‑4.1‑nano` から変える必要はない） |