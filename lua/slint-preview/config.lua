local M = {}

M.settings = {
  auto_refresh = true, -- Auto-refresh slint-viewer on save
  keymap = '<leader>sp' -- Default keymap to open slint-viewer on save
}

function M.setup(opts)
  M.settings = vim.tbl_extend("force", M.settings, opts or {})
end


return M
