local ls = require "luasnip"
local snippet_collection = require "luasnip.session.snippet_collection"

local s = ls.s
local i = ls.insert_node
local t = ls.text_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt


snippet_collection.clear_snippets "typescriptreact"
ls.add_snippets("typescriptreact", {

 s(
    "component",
    fmt(
      [[
      import React from 'react'

      class {} extends React.Component {{
        constructor(props) {{
          super(props);
          this.state={{
          }}
        }}
        render() {{
          return (
          );
        }}
      }}

      export default {}
      ]],
      {
        i(1, 'class'),
        rep(1),
      }
    )
  ),
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
