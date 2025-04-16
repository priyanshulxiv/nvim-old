-- Autopairs
require("nvim-autopairs").setup({
  options = {
    event = "InsertEnter",
  },
  check_ts = true,
})
-- If you want to automatically insert `(` after selecting function or method item
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
