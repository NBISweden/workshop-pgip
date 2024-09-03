--[[
   nbislogo

   Add NBIS logo to every slide and possibly to title slide.
]]

-- Meta function to add the logo to the slides
function Meta(meta)
   if meta["nbistitlelogo"] == false then
      if meta["title-slide-attributes"] then
	 meta["title-slide-attributes"] = nil
      end
   end
   return meta
end

return {
   { Meta = Meta }
}
