require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "bash", "javascript", "json", "lua", "typescript", "tsx", "css", "java", "yaml", "markdown",
    "markdown_inline", "vue", "scala", }, -- one of "all" or a list of languages
  ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "css" }, -- list of language that will be disabled
  },
  autopairs = {
    enable = true,
  },
  indent = { enable = true, disable = { "python", "css" } },
  additional_vim_regex_highlighting = false,
  auto_install = true,
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      scope_incremental = 'grn',
      node_incremental = '<TAB>',
      node_decremental = '<S-TAB>',
    },
  }
}
