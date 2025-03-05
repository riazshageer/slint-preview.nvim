local utils = require("slint-preview.utils")
local M = {}


function M.run()
    local file_path = vim.fn.expand('%:p')
    if not file_path:match("%.slint$") then return end -- Ensure it's a .slint file

    utils.kill_slint_viewer()
    vim.fn.jobstart({ "slint-viewer", file_path }, { detach = true })
end

function M.auto_refresh()
    if utils.is_slint_viewer_running() then
        M.run() -- Refresh only if slint-viewer is running
    end
end

return M
