local M = {}

-- Check if `slint-viewer` is running
function M.is_slint_viewer_running()
    local handle = io.popen("pgrep -f 'slint-viewer'")
    local result = handle and handle:read("*a") or ""
    handle:close()
    return result ~= ""
end

-- Kill any running `slint-viewer` instances
function M.kill_slint_viewer()
    -- opted to use os.execute instead of vim.loop.spawn to ensure the process is killed before starting a new one
    -- vim.loop.spawn("pkill", { args = { "-f", "slint-viewer" } })
    os.execute("pkill -f slint-viewer")
end

return M
