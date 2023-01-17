local colorscheme = "nightfox"

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

-- vim.api.nvim_set_hl(0, 'Normal', { bg = "none" })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = "none" })

if not status then
  vim.notify("colorscheme " .. colorscheme .. " not found!!")
  return
end
