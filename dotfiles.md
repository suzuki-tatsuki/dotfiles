# dotfilesの作り方
## 1. git の準備
### 1.1. github アカウント作成
以下のサイトで Sign up する。アカウントがある場合は Sign in する。  
[https://github.com](https://github.com)


### 1.2. github で新しいgit リポジトリを作成する
省略


## 2. ローカルフォルダの整理
### 2.1. ローカルフォルダを作成する
どこでもいいからフォルダを作って、pushしたいフォルダ・ファイルをコピーする。
```shell
$ mkdir <フォルダ名フォルダ名>  // ex. ~/dotfiles
```

### 2.2. github のリポジトリとローカルフォルダを繋げる
github で作成した空のリポジトリから以下のコマンド群をコピーして ~/dotfiles 内でコマンドを実行する。以下のコマンドはサンプルなので、実際にgithubに表示されているコマンドを打つ方が良いかもです。
```shell
$ echo "# dotfiles" >> README.md
$ git init
$ git add README.md
$ git commit -m "first commit"
$ git branch -M main
$ git remote add origin git@github.com: <作成したgithubリポジトリのパス名>
$ git push -u origin main
```

<div style="page-break-before:always"></div>

### 2.3. ファイルの移動
dotfiles の中に入れたいフォルダ・ファイルをコピーする。
```shell
$ cp <コピー元のフォルダ> ~/dotfiles
```

コピーし終えたら、元のフォルダ・ファイルは削除する。
```
rm -rf <元のファイル名>     // -rオプションはフォルダ削除に必要、-fは任意
```


### 2.4. シンボリックファイルの作成
元々ファイルがあった場所へのシンボリックファイルを作成して、リンクを繋げる。  
```shell
@~/dotfiles
$ nvim install.sh
```

neovim が開ていると思うので、以下の内容を書き込む。この例では .zshrc のシンボリックファイルだけ作成しているが、他にフォルダやファイルがある場合はそれらも同様に元のディレクトリにシンボリックリンクを作るようにする。neovim 環境がない場合はvimと読み替えてください。  
> vimは **i** で挿入モードに入ることで編集でき、書き終えたらEscキーを押す。  
vimを終了する時は **:wq** で終了できる。
```sh
#! /bin/bash
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

install.sh にコマンド群を書き込めたらシェルスクリプトを実行します。  
実行するとそれぞれのシンボリックファイルができているはずです。  
```
@~/dotfiles
$ sh install.sh
```

<div style="page-break-before:always"></div>

## 3. github にpush する
### 3.1. dotfiles をプッシュする
gitignore が必要なファイルはここで先にgitignoreする。  
プッシュする準備ができたら以下のコマンドを実行する。
```shell
@~/dotfiles
$ git add .
$ git commit
$ git push
```

github のリポジトリに push されていれば完成です。

---

### おまけ
以下のコマンドを打つことでコミットメッセージをneovimで書けるようになります。  
```shell
@~/dotfiles
$ git config --global core.editor nvim
```
