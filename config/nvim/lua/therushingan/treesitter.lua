require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "bash",
    "c",
    "css",
    "dockerfile",
    "go",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "python",
    "scss",
    "terraform",
    "typescript",
    "vim",
    "yaml",
  },
  sync_install = false,

  -- List of parsers to ignore installing
  ignore_install = { },

  highlight = {
    enable = true,
    disable = {},

    additional_vim_regex_highlighting = true,
  },

  indent = {
    enable = true,
    disable = {}
  }
}
