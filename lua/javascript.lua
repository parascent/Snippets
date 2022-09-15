local ls = require "luasnip"
local snippet_collection = require "luasnip.session.snippet_collection"

local s = ls.s
local i = ls.insert_node
local t = ls.text_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt


snippet_collection.clear_snippets "javascript"
ls.add_snippets("vue", {
  s(
    "cl",
    fmt(
      [[
      console.log('{}',{})
      ]],
      {
        i(1, 'String'),
        i(2, 'Variable'),
      }
    )
  ),

  s(
    "cll",
    fmt(
      [[
      console.log('{}',{})
      ]],
      {
        i(1, 'Variable&String'),
        rep(1)
      }
    )
  ),

  s(
    "f",
    fmt(
      [[
      {} = function({}){{
        {}
      }}
      ]],
      {
        i(1, 'Name'),
        i(2),
        i(1, 'Body'),
      }
    )
  ),


})
