local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    cpp = { "clang_format" },
    cmake = { "cmake_format" },
    cs = { "csharpier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "fixjson" },
    python = { "autopep8" },
    tex = { "latexindent" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
