# 環境設定

## homebrew
### パッケージマネージャー

```shell
$ brew install node         // Node.js
$ brew install yarn         // yarn
```


### java
* openJDK インストール
    ```shell
    $ brew install openjdk      // latest openJDK (Java21)
    $ brew install openjdk@17   // version of Java17
    ```

* インストール済みのJDK(JAVA_HOME)の確認
    ```shell
    $ /usr/libexec/java_home -V
    ```

* JDK の切り替え  
    使う java のバージョンのパスを通す。  
    使わない方をコメントアウトする。  
    変更したら "**$ exec $SHELL -l**" でシェルを更新する。
    ```zshrc
    # .zshrc
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


### その他
```shell
$ brew install neovim               // Neovim
$ brew install chrome               // google chrome
$ brew install firefox              // firefox
$ brew install --cask hyper         // hyper
$ brew install --cask google-drive  // google drive
$ brew install --cask obsidian      // obsidian (Markdown editor)
```


## Node.js
### npm
パスを通すために **-g** オプションをつける ~~(らしい)~~
```shell
$ npm install -g prettier   // formatter
$ npm install -g esLint     // analyser
```

* prettier の設定ファイル (.prettierrc)  
    [VScode の拡張機能](https://ma-vericks.com/blog/vscode-prettier/ )  
    [設定ファイルの要素](https://zenn.dev/rescuenow/articles/c07dd571dfe10f/ )
    ```prettierrc
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

### npx

```shell
$ npx tsc --init    // TypeScript compiler
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
    ```zshrc
    # .zshrc
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


## hyper
### 拡張機能のインストール
```
$ hyper i hyper-search      // can use Command+f to search
$ hyper i verminal          // colorscheme
$ hyper i hyper-statusline  // show file-pass under the window
$ hyper i hyperboerder      // make color around window
$ hyper i hyper-rose-pine   // another colorscheme
```
