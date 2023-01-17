require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "json",
    "python"
  },
  sync_install = false,

  -- List of parsers to ignore installing
  ignore_install = { },

  highlight = {
    enable = true,
    disable = {},

    additional_vim_regex_highlighting = false,
  },
}
