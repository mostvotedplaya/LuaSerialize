# LuaSerialize
Generates a storable representation of a value in Lua.

### Objective
To provide a serializer that mimics PHP's serialize function which makes it easier for transferring data between Lua & PHP.

### Example Usage
```
local serialize = require( "serialize" )
local vars = {}
table.insert( vars, "oranges" )
table.insert( vars, "pears" )
local output = serialize.make( vars )
if output
then
    print( output )
end
```
