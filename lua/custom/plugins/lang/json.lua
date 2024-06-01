return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      if type(opts.ensure_installed) == 'table' then
        vim.list_extend(opts.ensure_installed, { 'json', 'json5', 'jsonc' })
      end
    end,
  },
  {
    'b0o/SchemaStore.nvim',
    lazy = true,
    version = false, -- last release is way too old
  },
  { -- For parse json into json5 (json with comment)
    'Joakker/lua-json5',
    build = './install.sh',
  },
  -- The LSP Server is set in lsp.lua file
}
