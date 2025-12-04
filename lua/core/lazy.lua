local M = {}

local function setup_lazy()
    local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
    if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable",
            lazypath,
        })
    end
    vim.opt.rtp:prepend(lazypath)
end

local function get_spec(plugin_paths)
    local spec = {}

    for _, path in ipairs(plugin_paths) do
        table.insert(spec, { import = path })
    end

    return spec
end

function M.init(plugin_paths)
    setup_lazy()

    require("lazy").setup({
        spec = get_spec(plugin_paths),
        checker = { enabled = true }, -- Автопроверка обновлений
        -- Другие настройки...
    })
end

return M
