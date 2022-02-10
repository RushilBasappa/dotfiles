local options = {
  autoindent = true,
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 2,
  cursorline = true,
  expandtab = true,
  fileencoding = "utf-8",
  ignorecase = true,
  mouse = "a",
  number = true,
  numberwidth = 2,
  pumheight = 10,
  relativenumber = false,
  scrolloff = 8,
  shiftwidth = 2,
  sidescrolloff = 8,
  signcolumn = "yes",
  smartcase = true,
  smartindent = true,
  softtabstop = 2,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  tabstop = 2,
  termguicolors = true,
  timeoutlen = 100,
  updatetime = 300,
  wrap = false,
}

for k,v in pairs(options) do
  vim.opt[k] = v
end
