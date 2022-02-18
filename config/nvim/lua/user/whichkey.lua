local wk = require("which-key")

mappings = {
  ["<leader>"] = {
    t = {
      name = "Telescope", -- optional group name
      f = { "<cmd>Telescope find_files<cr>", "Search File" }, -- create a binding with label
      g = { "<cmd>Telescope live_grep<cr>", "Live Grep" }, -- create a binding with label
    },
    n = {
      name = "NvimTree", -- optional group name
      n = { "<cmd>NvimTreeToggle<cr>", "NvimTree Toggle" }, -- create a binding with label
      f = { "<cmd>NvimTreeFindFile<cr>", "NvimTree Find File" }, -- create a binding with label
    }
  }
}

wk.setup {
  plugins = {
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = false, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = false, -- default bindings on <c-w>
      nav = false, -- misc bindings to work with windows
      z = false, -- bindings for folds, spelling and others prefixed with z
      g = false, -- bindings for prefixed with g
    },
  },
}

wk.register(mappings, opts)
