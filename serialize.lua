--[[
Serializer. 
]]--

local serialize = {}

function serialize.make( data )
   local varType = type( data )
   
   if varType == "string"
   then
       return "s:" .. data:len() .. ':"' .. data .. '";'
   end
   
   if varType == "number"
   then
       local intType = "d"
       if math.floor( data ) == data
       then
           intType = "i"
       end
       return intType .. ":" .. data .. ";"
   end
   
   if varType == "boolean"
   then
       return "b:" .. ( data and 1 or 0 ) ..";"
   end
   
   if varType == "nil"
   then
       return "N;"
   end
   
   if varType == "table"
   then
       local ret = ""
       local num = 0
       for key,val in pairs( data )
       do
           key = serialize.make( key )
           val = serialize.make( val )
           num = num + 1
           ret = ret .. key .. val
       end
       return "a:" .. num .. ":{" .. ret .. "}"
   end
   
   return nil
end

return serialize
