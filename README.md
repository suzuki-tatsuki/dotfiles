# README
## 環境設定
### まずはじめに
git をいれないことには homebrew をインストールできないので、その準備をする。  
以下のコマンドで下の言語やツールをまとめてインストールできる。
```shell
$ xcode-select --install
```
* clang (Apple clang)
* git (Apple git)
* make (GNU Make)
* python (python3?)
* swift (Apple Swift)
* svn (Subversion、オープンソースのバージョン管理システム)

次に以下のコマンドで [homebrew](https://brew.sh) をインストールするする。
```shell
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

homebrew でインストールするファイルが記されている `.Brewfile` のシンボリックファイルを作成する。ついでに他のシンボリックファイルを作成するために `setup/` 内の以下のシェルスクリプトを実行する。
```shell
$ sh symbol.sh
```

最後に [homebrew bundle](https://github.com/Homebrew/homebrew-bundle) を使ってパッケージやアプリケーションを一括インストールする。以下のコマンドでインストールできる。
```shell
$ brew bundle install --global
```

### ターミナル
`setup/` 内の以下のシェルスクリプトを実行することでインストールをまとめて行う。
```shell
$ sh hyper.sh
```
これで環境設定は完了した。


## homebrew のあれこれ
### homebrew bundle
`.Brewfile` を以下のコマンドによって生成できる。  
上書きする場合は `--force` オプションをつける。
```shell
$ brew bundle dump --global
```

`.Brewfile` にないファイルを一括削除する場合は以下のコマンドを実行する。
```shell
$ brew bundle cleanup --global --force
```

### javaのバージョン切り替え
* homebrew で別のバージョンの java をインストールする。
    ```shell
    $ brew install openjdk@17
    ```

* インストール済みのJDK(JAVA_HOME)の確認
    ```shell
    $ /usr/libexec/java_home -V
    ```

* JDK の切り替え  
    `.zshrc` で java のバージョンのパスを通す。  使わない方をコメントアウトする。  
    変更したら `$ exec $SHELL -l` でシェルを更新する。
    ```zshrc
    export PATH=“/opt/homebrew/opt/openjdk/bin:$PATH” 
    export PATH=“/opt/homebrew/opt/openjdk@17/bin:$PATH”
    ```

* openJDK 以外の環境
    ```shell
    $ brew install --cask temurin
    $ brew install --cask corretto
    $ brew install --cask oracle-jdk
    $ brew install --cask zulu
    $ brew install --cask graalvm-jdk
    $ brew install --cask microsoft-openjdk
    $ brew install --cask sapmachine-jdk
    ```

    - Eclipse Temurin  
        > 多様なJavaバージョンサポート
    - Amazon Corretto  
        > AWS最適化、セキュリティパッチ
    - Oracle JDK  
        > Oracleによる公式Java版  
        有料ライセンスを購入しないと商用利用ができない
    - Azul Zulu  
        > 商用サポート、多様なプラットフォーム互換性  
        商用ライセンスを購入すれば可能
    - GraalVM  
        > 多言語対応  
        商用利用はライセンス条項に従う必要あり
    - Microsoft Build of OpenJDK  
        > Microsoftによるビルド、Azureとの統合、クロスプラットフォーム
    - SapMachine  
        > SAP製品互換性


## Node.js
### Prettier
* prettier の設定ファイル (.prettierrc)  
    [VScode の拡張機能](https://ma-vericks.com/blog/vscode-prettier/ )  
    [設定ファイルの要素](https://zenn.dev/rescuenow/articles/c07dd571dfe10f/ )
    ```.prettierrc
    {
            "printWidth": 150,
            "tabWidth": 2,
            "useTabs": true,
            "semi": true,
            "singleQuote": false,
            "jsxSingleQuote": true,
            "bracketSpacing": true,
            "bracketSameLine": true
    }
    ```


## perlbrew
### perlbrewのインストール
* perlbrew のインストール  
    bash を使いたい場合は適宜 zsh -> bash に変える。
    ```shell
    $ curl -kL http://install.perlbrew.pl | zsh
    $ ~/perl5/perlbrew/bin/perlbrew --version   // to check is it installed
    ```

* zsh に perlbrew のパスを通す
    ```.zshrc
    source ~/perl5/perlbrew/etc/zshrc
    ```
    以下のコマンドで上記の設定を反映。
    ```shell
    $ source ~/.zshrc
    ```

### perlbrew 用いて perl のインストール
* インストール可能なバージョンを確認  
    ```shell
    $ perlbrew available
    ```

* perl をインストールする  
    perl のバージョンは、奇数が開発版、偶数が安定版。  
    マイナーバージョンが 0 のものはバグがある可能性が高い。  
    ```shell
    $ perlbrew install perl-5.26.3  // this install version 5.26.3
    ```
    ※ インストールを失敗する場合は "**--notest**" か "**--force**" をつけるとうまくいくかも...?

* perl の バージョンを切り替える  
    list を表示した時に使っているバージョンの横に " * " がついているはず。
    ```shell
    $ perlbrew list             // check which version is available
    $ perlbrew switch 5.26.3    // switch perl version
    ```
