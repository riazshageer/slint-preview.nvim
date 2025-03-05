local M = {}

function M.setup(opts)
  require("slint-preview.config").setup(opts)
  require("slint-preview.commands").setup()
end

return M
