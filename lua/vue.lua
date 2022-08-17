local ls = require "luasnip"
local snippet_collection = require "luasnip.session.snippet_collection"

local s = ls.s
local i = ls.insert_node
local t = ls.text_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt


snippet_collection.clear_snippets "vue"
ls.add_snippets("vue", {

 s(
    "vuenormal",
    fmt(
      [[
       <template lang="pug">
       #{}
       </template>

       <script>
       export default{{
         name: '{}',

         props: {{

         }},

         computed: {{

         }},

         data(){{ return{{

         }}}},

         methods:{{

         }},

         created(){{

         }},

         mounted(){{

         }},

         components: {{

         }},

       }}
       </script>

       <style lang='stylus'>
       #{}
         display block
       </style>
      ]],
      {
        i(1, 'Name'),
        rep(1),
        rep(1),
      }
    )
  ),

  s(
    "m",
    fmt(
      [[
      {}(){{
        {}
      }},
      ]],
      {
        i(1, 'name'),
        i(2, 'shit'),
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
    "d",
    fmt(
      [[
      {} : {},{}
      ]],
      {
        i(1, 'Name'),
        i(2, 'Value'),
        i(3),
      }
    )
  ),


  s(
    "p",
    fmt(
      [[
      {} : {{ required:{}, default:{} }},{}
      ]],
      {
        i(1, 'Name'),
        i(2, 'false'),
        i(3),
      }
    )
  ),

})
