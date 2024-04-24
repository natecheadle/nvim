require("cmake-tools").setup {
  cmake_executor = {
    name = "quickfix",
  },
  cmake_runner = { -- runner to use
    name = "toggleterm", -- name of the runner
  },
}
