return
{
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    cond = function()
        return not vim.g.vscode
    end,
    opts = {},
}
