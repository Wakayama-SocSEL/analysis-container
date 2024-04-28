# Analysis Container

## Setup
1. 2つのリポジトリを作成します
   - a. [本テンプレート](https://github.com/Wakayama-SocSEL/analysis-container-template)を使用したリポジトリ[*](https://docs.github.com/ja/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
      - Repository Name：任意
      - Owner：個人のGitHubアカウント
      - Public/Private：任意
   - b. [lab-modules](https://github.com/Wakayama-SocSEL/lab-modules)のフォークリポジトリ
      - Repository Name：lab-modules
      - Owner：個人のGitHubアカウント

2. 手順1-aで作成したリポジトリをクローンします
   - ⚠️ 本テンプレートはlinux環境（リモートサーバ）での使用を想定しています
```bash
git clone https://github.com/個人のGitHubアカウント/analysis-container.git
```

3. Dockerコンテナを起動します
```bash
cd analysis-container
./task up
```

4. VS Code CLIが起動するので、指示に従ってGitHubアカウントを認証します[*](https://code.visualstudio.com/docs/remote/tunnels)

5. URLを確認した後、一度コンテナを停止してバックグラウンドで再度起動します
```bash
./task up -d
```

6. (https://)vscode.dev/tunnel/.../workspaceにアクセスし、開発を始めましょう
   - ⚠️ ローカル端末に[Nerd Fonts](https://www.nerdfonts.com/)がインストールされていない場合、一部のアイコンは表示されません
