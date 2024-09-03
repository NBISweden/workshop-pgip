--[[

   ultitle

   Underline slide titles.
]]

local ultitle

function Meta(meta)
   ultitle = false
   if meta.ultitle and meta.ultitle == true then
      ultitle = true
   end
end

function Header(el)
   if el.level == 2 and ultitle then
      el.attr.classes:insert("ultitle")
   elseif el.level == 3 and ultitle then
      el.attr.classes:insert("ultitle")
   end
   return el
end

return {
	{ Meta = Meta },
	{ Header = Header }
}
