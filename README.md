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

### Example translation
```
local vars = {}
vars["string"]  = "string"
vars["integer"] = 1
vars["double"]  = 0.5
vars["true"]    = true
vars["false"]   = false
vars["null"]    = nil
vars["list"]    = {1,2,3,4,5}
vars["dict"]    = {["price"] = 19.99}
```

```
array (size=7)
  'true' => boolean true
  'string' => string 'string' (length=6)
  'dict' => 
    array (size=1)
      'price' => float 19.99
  'integer' => int 1
  'list' => 
    array (size=5)
      1 => int 1
      2 => int 2
      3 => int 3
      4 => int 4
      5 => int 5
  'false' => boolean false
  'double' => float 0.5
```
