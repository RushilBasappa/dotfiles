local wk = require("which-key")

wk.register({
  ["<leader>t"] = {
    name = "Telescope", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Search File" }, -- create a binding with label
  },
  ["<leader>n"] = {
    name = "NvimTree", -- optional group name
    n = { "<cmd>NvimTreeToggle<cr>", "NvimTree Toggle" }, -- create a binding with label
    f = { "<cmd>NvimTreeFindFile<cr>", "NvimTree Find File" }, -- create a binding with label
  }
})
