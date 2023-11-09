-- Tabs
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.showtabline = 1

-- Format options
vim.g.formatoptions = "qrn1"

-- Updatetime
vim.opt.updatetime = 100

-- Display invisible characters
vim.opt.list = true

-- Wrap
vim.opt.wrap = true
vim.opt.linebreak = true
vim.wo.linebreak = true

-- Shell
vim.opt.shell = "/bin/zsh"

vim.opt.clipboard = "unnamedplus"

vim.opt.hidden = true

vim.opt.visualbell.t_vb = false

-- Support lang
vim.opt.langmap = "!\\№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЯЧСМИТЬБЮ;!#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\ZXCVBNM<>"


-- Numbers
vim.opt.ruler = true
vim.opt.number = true
vim.opt.relativenumber = true

-- Scroll
vim.opt.scrolloff = 7

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Mouse
vim.opt.mousefocus = true
vim.opt.mouse = "a"

-- Cursor
vim.opt.guicursor = "i-ci-ve:hor30"

-- Showmode
vim.opt.showmode = true

-- Folding
vim.opt.foldmethod = "indent"
vim.opt.foldcolumn = "0"
vim.opt.foldlevel = 999

vim.opt.laststatus = 2
-- vim.opt.statusline = "%{&paste?'[paste] ':''} %{get(b:,'gitsigns_status', '') % 'line'}"

local function git_branch()
    local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    if string.len(branch) > 0 then
        return branch
    else
        return ":"
    end
end


local function statusline()
    local set_color_1 = "%#PmenuSel#"
    local branch = git_branch()
    local set_color_2 = "%#LineNr#"
    local space = " "
    local file_name = " %t"
    local modified = "%m"
    local paste = " %{&paste?'[paste] ':''}"
    local align_right = "%="
    local fileencoding = " %{&fileencoding?&fileencoding:&encoding}"
    local fileformat = " [%{&fileformat}]"
    local linecol = " %l:%c "
    local filetype = " %y"

    return string.format(
        "%s %s %s%s%s%s%s%s%s",
        set_color_2,
        branch,
        set_color_2,
        file_name,
        filetype,
        modified,
        paste,
        align_right,
        linecol
    )
end

vim.opt.statusline = statusline()

