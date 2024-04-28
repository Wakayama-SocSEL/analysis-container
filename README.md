# Archive

## About
- 研究タイトル：
- 作成者：
- 作成期間：202X年4月~202X年3月
- サーバ上の保存場所：

## Usage
```bash
./task install && ./task run
```

## Template Setup
1. 2つのリポジトリを作成します
   - [本テンプレート](https://github.com/Wakayama-SocSEL/archive-template)を使用したリポジトリ[*](https://docs.github.com/ja/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
      - Repository Name：卒業年度_名字（例：2012_Ihara）
      - Owner：Wakayama-SocSEL
      - Public/Private：Private
   - [lab-modules](https://github.com/Wakayama-SocSEL/lab-modules)のフォークリポジトリ
      - Repository Name：lab-modules
      - Owner：個人のGitHubアカウント

2. 手順1で作成した2つのリポジトリをクローンします
   - ⚠️ 本テンプレートはlinux環境（リモートサーバ）での使用を想定しています
```bash
git clone https://github.com/Wakayama-SocSEL/卒業年度_名字.git
git clone https://github.com/個人のGitHubアカウント/lab-modules.git
```

3. Dockerコンテナを起動します
```bash
cd 卒業年度_名字
./task up
```

4. VS Code CLIが起動するので、指示に従ってGitHubアカウントを認証します[*](https://code.visualstudio.com/docs/remote/tunnels)

5. URLを確認した後、一度コンテナを停止してバックグラウンドで再度起動します
```bash
./task up -d
```

6. (https://)vscode.dev/tunnel/.../workspaceにアクセスし、開発を始めましょう
   - ⚠️ ローカル端末に[Nerd Fonts](https://www.nerdfonts.com/)がインストールされていない場合、一部のアイコンは表示されません
