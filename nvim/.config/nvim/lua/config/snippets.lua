local ls = require("luasnip")

-- Buen video: https://www.youtube.com/watch?v=FmHhonPjvvA

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("lua", {
	s("hello", {
		t('print("Hello'),
		i(1),
		t(' world")'),
	}),
})
