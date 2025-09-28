-- ~/.config/nvim/LuaSnip/notes.lua

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- return {
--   -- "hi" snippet expands to Hello, world!
--   s("hi", {
--     t("Hello, world!"),
--   }),
--   -- Simpleuu function with dynamic insert point
--   s("fn", {
--     t("function "),
--     i(1, "name"),
--     t("() {"),
--     t({ "", "  " }), -- Line break + indent
--     i(2, "// body"),
--     t({ "", "}" }),
--   }),
-- }
ls.add_snippets("lua", {
  s("hello", {
    t('print"Hello, world!")'),
  }),
})
