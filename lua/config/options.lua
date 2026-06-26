local opt = vim.opt
opt.number = true
opt.relativenumber = true

opt.signcolumn = "yes"
opt.cursorline = true
opt.termguicolors = true
opt.winborder = "rounded"

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.smartindent = true
opt.breakindent = true

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true
opt.inccommand = "split"

opt.splitright = true
opt.splitbelow = true
opt.scrolloff = 5
opt.sidescrolloff = 5

opt.undofile = true
opt.swapfile = false
opt.confirm = true

opt.updatetime = 250
opt.timeoutlen = 1500

opt.completeopt = {
  "menuone",
  "noinsert",
  "popup",
  "preview",
}

vim.opt.list = true
opt.list = true
opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣",
}

opt.path:append("**")

opt.wildignore:append({
  "*/.git/*",
  "*/node_modules/*",
  "*/venv/*",
  "*/bin/*",
  "*/obj/*",
  "*/dist/*",
  "*/target/*",
})

opt.foldlevel = 99
opt.foldlevelstart = 99

if vim.fn.executable("rg") == 1 then
  opt.grepprg = table.concat({
    "rg",
    "--vimgrep",
    "--smart-case",
    "--glob '!package.json'",
    "--glob '!package-lock.json'",
    "--glob '!npm-shrinkwrap.json'",
    "--glob '!yarn.lock'",
    "--glob '!pnpm-lock.yaml'",
    "--glob '!bun.lock'",
    "--glob '!bun.lockb'",
  }, " ")
  opt.grepformat = "%f:%l:%c:%m"
end

function _G.qf_format(info)
  local items

  if info.quickfix == 1 then
    items = vim.fn.getqflist({
      id = info.id,
      items = 0,
    }).items
  else
    items = vim.fn.getloclist(info.winid, {
      id = info.id,
      items = 0,
    }).items
  end

  local lines = {}

  for i = info.start_idx, info.end_idx do
    local item = items[i]
    local filename = vim.fn.bufname(item.bufnr)

    -- Convert /home/franco/project/src/main.c
    -- into src/main.c
    filename = vim.fn.fnamemodify(filename, ":~:.")

    lines[#lines + 1] = string.format(
      "%s|%d:%d| %s",
      filename,
      item.lnum,
      item.col,
      item.text
    )
  end

  return lines
end

vim.opt.quickfixtextfunc = "v:lua.qf_format"
