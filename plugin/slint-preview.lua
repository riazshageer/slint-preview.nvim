if vim.fn.has("nvim-0.7.0") ~= 1 then
   vim.api.nvim_err_writeln("slint-preview.nvim requires at least nvim-0.7.0.")
end

if vim.fn.executable("slint-viewer") == 0 then
   vim.api.nvim_err_writeln("slint-preview.nvim requires slint-viewer to be installed.")
end

if vim.fn.executable("pgrep") == 0 then
   vim.api.nvim_err_writeln("slint-preview.nvim requires pgrep to be installed.")
end

