local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt

-- react component template
local compo = {
	s(
		"compo",
		fmt(
			[[ 
      const {} = ({}) => {{
        {}
        return(
          <>
          {}
          </>
        )
      }}
      export default {};
      ]],
			{
				i(1, "Compo"),
				i(2, ""),
				i(0, ""),
				i(3, ""),
				rep(1),
			}
		)
	),
}

-- react img
local rimg = {
	s(
		"rimg",
		fmt(
			[[ 
      <img src="{}" alt="{}"/>
      ]],
			{
				i(1),
				i(2),
			}
		)
	),
}

-- react input
local rinput = {
	s(
		"rinput",
		fmt(
			[[ 
      <input type="{}" name="{}"/>
      ]],
			{
				i(1, "text"),
				i(2, "name"),
			}
		)
	),
}

-- react hr
local rhr = {
	s("rhr", t("<hr />")),
}

-- react br
local rbr = {
	s("rbr", t("<br />")),
}

-- react snippets
ls.add_snippets("javascriptreact", compo)
ls.add_snippets("typescriptreact", compo)

ls.add_snippets("javascriptreact", rimg)
ls.add_snippets("typescriptreact", rimg)

ls.add_snippets("javascriptreact", rinput)
ls.add_snippets("typescriptreact", rinput)

ls.add_snippets("javascriptreact", rhr)
ls.add_snippets("typescriptreact", rhr)

ls.add_snippets("javascriptreact", rbr)
ls.add_snippets("typescriptreact", rbr)
