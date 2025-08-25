local M = {}

-- Check if `slint-viewer` is running
function M.is_slint_viewer_running()
    local handle = io.popen("pgrep -x 'slint-viewer'")
    if not handle then
        vim.notify("Failed to run pgrep", vim.log.levels.ERROR)
        return false
    end

    local result = handle:read("*a")
    handle:close()

    -- Trim whitespace (since pgrep output ends with \n)
    result = result and result:gsub("%s+", "") or ""

    if result == "" then
        return false
    else
        return true
    end
end

-- Kill any running `slint-viewer` instances
function M.kill_slint_viewer()
    os.execute("pkill -f slint-viewer")
end

return M
