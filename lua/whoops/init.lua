local M = {}

M.window_history = {}

M.close = function()
  table.insert(M.window_history, vim.api.nvim_get_current_buf())
  vim.api.nvim_win_close(vim.api.nvim_get_current_win(), false)
end

---@param vertical? boolean
M.whoops = function(vertical)
  if #M.window_history == 0 then
    return
  end

  local last_window = M.window_history[#M.window_history]

  if vertical then
    vim.cmd("vert sb " .. last_window)
  else
    vim.cmd("sb" .. last_window)
  end

  table.remove(M.window_history, #M.window_history)
end

return M
