return {
  {
    'lervag/vimtex',
    lazy = false, -- lazy-loading will disable inverse search
    ft = { 'tex', 'plaintex', 'bibtex' },
    config = function()
      vim.g.vimtex_mappings_disable = { ['n'] = { 'K' } } -- disable `K` as it conflicts with LSP hover
      vim.g.vimtex_quickfix_method = vim.fn.executable 'pplatex' == 1 and 'pplatex' or 'latexlog'
      vim.g.vimtex_quickfix_open_on_warning = 0
      -- vim.g.vimtex_compiler_latexmk_engines = { _ = 'lualatex' }
      vim.g.vimtex_syntax_enabled = 0
      vim.g.vimtex_compiler_latexmk = {
        out_dir = 'build',
      }
    end,
  },
}
