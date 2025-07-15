local M = {}
local job_id = 0
local floating_term_win = nil
local floating_term_buf = nil

function M.openFloatingTerminal()
    if floating_term_win and vim.api.nvim_win_is_valid(floating_term_win) then
        vim.api.nvim_set_current_win(floating_term_win)
        return
    end

    floating_term_buf = vim.api.nvim_create_buf(false, true) -- [listed=false, scratch=true]
    local width = math.floor(vim.o.columns * 0.6)
    local height = math.floor(vim.o.lines * 0.4)
    local row = math.floor((vim.o.lines - height) / 2)
    local col = math.floor((vim.o.columns - width) / 2)

    floating_term_win = vim.api.nvim_open_win(floating_term_buf, true, {
        relative = "editor",
        width = width,
        height = height,
        row = row,
        col = col,
        style = "minimal",
        border = "rounded",
    })

    vim.fn.termopen(vim.o.shell, {
        on_exit = function()
            vim.api.nvim_buf_delete(floating_term_buf, { force = true })
            floating_term_win = nil
            floating_term_buf = nil
        end,
    })

    vim.api.nvim_command("startinsert")
end

return M
