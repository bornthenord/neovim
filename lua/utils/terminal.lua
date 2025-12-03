local M = {}

function M.run(cmd)
    -- 1. Создаем горизонтальный сплит и открываем терминал
    vim.cmd("below split") -- сплит внизу
    vim.cmd("terminal") -- открываем терминал в новом буфере

    -- 2. Переходим в терминальный режим (аналог нажатия 'i' в нормальном режиме)
    vim.fn.feedkeys("a")

    -- 3. Подготавливаем и отправляем команду, завершая её нажатием Enter
    local enter_key = vim.api.nvim_replace_termcodes("<CR>", true, true, true)
    vim.fn.feedkeys(cmd .. enter_key)
end

return M
