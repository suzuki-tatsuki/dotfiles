local opt = vim.opt

-- 基本

-- 文字コード
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- スワップファイルを作成しない
opt.swapfile = false

-- クリップボード
opt.clipboard = "unnamedplus"

-- タブを半角スペース4つ分にする
opt.tabstop = 4
opt.shiftwidth = 4

-- スマートインデント
opt.smartindent = true

-- 20行早くスクロールする
opt.scrolloff = 20

-- 新しいウィンドウを右に開く
opt.splitright = true

-- 検索

-- 検索時に大文字小文字を区別しない
opt.ignorecase = true
opt.smartcase = true

-- 検索がファイル末尾まで進んだら先頭に戻る
opt.wrapscan = true

-- 検索ワード１文字目入力時点で検索を開始
opt.incsearch = true

-- 検索結果をハイライト
opt.hlsearch = true

-- 表示

-- タイトルにファイル名を表示
opt.title = true

-- true color
opt.termguicolors = true

-- 対応する括弧を強調
opt.showmatch = true

-- -- 挿入 --を表示しない
opt.showmode = false

-- カーソルからの行の距離を表示
vim.o.relativenumber = true

-- 行番号を表示
opt.number = true

-- サインコラムを非表示
opt.signcolumn = "yes"

-- カーソルラインを有効化
opt.cursorline = true

-- EOF以降の背景色をNormalに統一
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

-- マルチウインドウの縦線を隠す
vim.api.nvim_set_hl(0, "VertSplit", { bg = "none", fg = "none" })

-- カーソルラインの色を透明にする
vim.api.nvim_set_hl(0, "CursorLine", {})

-- カーソルラインの行番号の強調設定
-- vim.api.nvim_set_hl(0, "CursorLineNr", { bold = true })

-- 警告の表示設定
vim.diagnostic.config({
    virtual_text = false,
    underline = true,
    signs = true,
})

-- 不可視文字可視化
opt.list = true
opt.listchars = { tab = '>>', trail = '-', nbsp = '+' }
