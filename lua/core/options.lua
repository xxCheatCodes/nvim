vim.opt.encoding = "UTF-8"
vim.opt.fileencoding = "utf-8"
vim.opt.scrolloff = 8 -- 移动保持光标周围8行
vim.opt.sidescrolloff = 8
vim.opt.number = true -- 行号
vim.opt.relativenumber = true -- 相对行号
vim.opt.cursorline = true -- 高亮所在行
vim.opt.signcolumn = "yes" -- 左侧图标指示列
vim.opt.colorcolumn = "80" -- 换行参考线
vim.opt.tabstop = 2 -- tab缩进两个空格
vim.opt.softtabstop = 2
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.autoindent = true -- 自动对齐
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.cmdheight = 1 -- 编辑器命令行高度
vim.opt.autoread = true
vim.opt.wrap = false -- 折行
vim.opt.hidden = true
vim.opt.mouse = "a"
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.updatetime = 300
vim.opt.timeoutlen = 300 -- 等待键盘快捷键连击时间(ms)
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.completeopt = "menu,menuone,noselect,noinsert" -- 自动补全不自动选中
vim.opt.termguicolors = true -- 样式
vim.opt.list = true -- 显示不可见字符
vim.opt.listchars = "space:·,tab:··"
vim.opt.wildmenu = true
vim.opt.shortmess = vim.o.shortmess .. "c"
vim.opt.pumheight = 10
vim.opt.showtabline = 2
vim.opt.showmode = false -- vim 自带的模式提示
vim.opt.clipboard = "unnamedplus" -- 系统剪贴板
vim.opt.undofile = true -- 无限撤消
-- vim.cmd("set guicursor=a:blinkwait700-blinkon400-blinkoff250") -- 光标闪烁

-- Clipboard in WSL
if vim.fn.has("wsl") and (not vim.g.vscode) then
	vim.g.clipboard = {
		name = 'wsl-clipboard',
		copy = {["+"] = "clip.exe", ["*"] = "clip.exe"},
		paste = {["+"] = "win32yank.exe -o --lf", ["*"] = "win32yank.exe -o --lf"},
		cache_enabled = false
	}
end


