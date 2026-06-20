return {
  { "akinsho/bufferline.nvim", enabled = false },
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        view = "cmdline",
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_c = {
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        {
          LazyVim.lualine.pretty_path({
            filename_only = false,
          }),
        },
      }

      vim.g.trouble_lualine = false
    end,
  },
}
