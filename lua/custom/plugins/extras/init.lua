return {
  {
    'nvim-pack/nvim-spectre',
    build = false,
    cmd = 'Spectre',
    opts = { open_cmd = 'noswapfile vnew' },
  -- stylua: ignore
  keys = {
    { "<leader>sR", function() require("spectre").open() end, desc = "[S]earch and [R]eplace in Files (Spectre)" },
  },
  },

  --NOTE: Multiline (multi cursor) editing
  {
    'mg979/vim-visual-multi',
  },
}
