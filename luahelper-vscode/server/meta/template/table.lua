---@class tablelib @This library provides generic functions for table manipulation. It provides all its functions inside the table table. [`View online doc`](https://www.lua.org/manual/5.1/manual.html#6.3)  |  [`View local doc`](command:extension.luahelper.doc?["en-us/51/manual.html/6.3"])
table = {}

--- Given a list where all elements are strings or numbers, returns the string
--- `list[i]..sep..list[i+1] ... sep..list[j]`. The default value for
--- `sep` is the empty string, the default for `i` is 1, and the default for
--- `j` is #list. If `i` is greater than `j`, returns the empty string.
---@param list table
---@param sep? string
---@param i?   integer
---@param j?   integer
---@return string
--[`View online doc`](https://www.lua.org/manual/5.1/manual.html#pdf-table.concat)  |  [`View local doc`](command:extension.luahelper.doc?["en-us/51/manual.html/pdf-table.concat"])
function table.concat(list, sep, i, j) end

--- Inserts element `value` at position `pos` in `list`, shifting up the
--- elements to `list[pos]`, `list[pos+1]`, `...`, `list[#list]`. The default
--- value for `pos` is ``#list+1`, so that a call `table.insert(t,x)`` inserts
--- `x` at the end of list `t`.
---@param list table
---@param pos integer
---@param value any
--[`View online doc`](https://www.lua.org/manual/5.1/manual.html#pdf-table.insert)  |  [`View local doc`](command:extension.luahelper.doc?["en-us/51/manual.html/pdf-table.insert"])
function table.insert(list, pos, value) end

--- Removes from `list` the element at position `pos`, returning the value of
--- the removed element. When `pos` is an integer between 1 and `#list`, it
--- shifts down the elements `list[pos+1]`, `list[pos+2]`, `···`,
--- `list[#list]` and erases element `list[#list]`; The index pos can also be 0
--- when `#list` is 0, or `#list` + 1; in those cases, the function erases
--- the element `list[pos]`.
---
--- The default value for `pos` is `#list`, so that a call `table.remove(l)`
--- removes the last element of list `l`.
---@param list table
---@param pos? integer
---@return any
--[`View online doc`](https://www.lua.org/manual/5.1/manual.html#pdf-table.remove)  |  [`View local doc`](command:extension.luahelper.doc?["en-us/51/manual.html/pdf-table.remove"])
function table.remove(list, pos) end

--- Sorts list elements in a given order, *in-place*, from `list[1]` to
--- `list[#list]`. If `comp` is given, then it must be a function that receives
--- two list elements and returns true when the first element must come before
--- the second in the final order (so that, after the sort, `i < j` implies not
--- `comp(list[j],list[i]))`. If `comp` is not given, then the standard Lua
--- operator `<` is used instead.
---
--- Note that the `comp` function must define a strict partial order over the
--- elements in the list; that is, it must be asymmetric and transitive.
--- Otherwise, no valid sort may be possible.
---
--- The sort algorithm is not stable: elements considered equal by the given
--- order may have their relative positions changed by the sort.
---@param list table
---@param comp fun(a: any, b: any):boolean
--[`View online doc`](https://www.lua.org/manual/5.1/manual.html#pdf-table.sort)  |  [`View local doc`](command:extension.luahelper.doc?["en-us/51/manual.html/pdf-table.sort"])
function table.sort(list, comp) end

--- Returns the largest positive numerical index of the given table, or zero
--- if the table has no positive numerical indices. (To do its job this function
--- does a linear traversal of the whole table.)
---@param list table
--[`View online doc`](https://www.lua.org/manual/5.1/manual.html#pdf-table.maxn)  |  [`View local doc`](command:extension.luahelper.doc?["en-us/51/manual.html/pdf-table.maxn"])
function table.maxn(list) end
