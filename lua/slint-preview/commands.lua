local config = require("slint-preview.config")
local slint = require("slint-preview.slint")


local M = {}

function M.setup()
  vim.api.nvim_create_user_command("SlintPreview", slint.run, {})

  -- set keymap for manually running
  vim.api.nvim_set_keymap("n", config.settings.keymap, ":SlintPreview<CR>", { noremap = true, silent = true })


  -- auto-refresh on save
  vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.slint",
    callback =  function()
      if config.settings.auto_refresh then
        slint.auto_refresh()
      end
    end,
  })
end


return M
