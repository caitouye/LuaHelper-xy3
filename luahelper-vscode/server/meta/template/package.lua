---@class package @The *package* library provides basic facilities for loading modules in Lua. It exports one function directly in the global environment: *require*. Everything else is exported in the table *package*. [`View online doc`](https://www.lua.org/manual/5.1/manual.html#6.3)  |  [`View local doc`](command:extension.luahelper.doc?["en-us/51/manual.html/6.3"])
package = {}

--- The path used by `require` to search for a Lua loader.
---
--- At start-up, Lua initializes this variable with the value of the environment
--- variable `LUA_PATH_5_4` or the environment variable `LUA_PATH` or with a
--- default path defined in `luaconf.h`, if those environment variables are not
--- defined. Any ";;" in the value of the environment variable is replaced by
--- the default path.
--[`View online doc`](https://www.lua.org/manual/5.1/manual.html#pdf-package.path)  |  [`View local doc`](command:extension.luahelper.doc?["en-us/51/manual.html/pdf-package.path"])
package.path = ""

--- The path used by `require` to search for a C loader.
---
--- Lua initializes the C path `package.cpath` in the same way it initializes
--- the Lua path `package.path`, using the environment variable `LUA_CPATH_5_4`
--- or the environment variable `LUA_CPATH`, or a default path defined in
--- `luaconf.h`.
--[`View online doc`](https://www.lua.org/manual/5.1/manual.html#pdf-package.cpath)  |  [`View local doc`](command:extension.luahelper.doc?["en-us/51/manual.html/pdf-package.cpath"])
package.cpath = ""


--- A table to store loaders for specific modules (see `require`).
---
--- This variable is only a reference to the real table; assignments to this
--- variable do not change the table used by `require`.
--[`View online doc`](https://www.lua.org/manual/5.1/manual.html#pdf-package.preload)  |  [`View local doc`](command:extension.luahelper.doc?["en-us/51/manual.html/pdf-package.preload"])
package.preload = {}

---@version lua5.1
--A table used by *require* to control how to load modules.
--
--Each entry in this table is a searcher function. When looking for a module, *require* calls each of these searchers in ascending order, with the module name (the argument given to *require*) as its sole parameter. The function can return another function (the module loader) or a string explaining why it did not find that module (or nil if it has nothing to say). Lua initializes this table with four functions.
package.loaders = {}

--- Dynamically links the host program with the C library `libname`.
---
--- If `funcname` is "*", then it only links with the library, making the
--- symbols exported by the library available to other dynamically linked
--- libraries. Otherwise, it looks for a function `funcname` inside the library
--- and returns this function as a C function. So, `funcname` must follow the
--- `lua_CFunction` prototype (see `lua_CFunction`).
---
--- This is a low-level function. It completely bypasses the package and module
--- system. Unlike `require`, it does not perform any path searching and does
--- not automatically adds extensions. `libname` must be the complete file name
--- of the C library, including if necessary a path and an extension. `funcname`
--- must be the exact name exported by the C library (which may depend on the C
--- compiler and linker used).
---
--- This function is not supported by Standard C. As such, it is only available
--- on some platforms (Windows, Linux, Mac OS X, Solaris, BSD, plus other Unix
--- systems that support the `dlfcn` standard).
---@param libname string
---@param funcname string
---@return fun():nil
--[`View online doc`](https://www.lua.org/manual/5.1/manual.html#pdf-package.loadlib)  |  [`View local doc`](command:extension.luahelper.doc?["en-us/51/manual.html/pdf-package.loadlib"])
function package.loadlib(libname, funcname) end

--- A table used by `require` to control which modules are already
--- loaded. When you require a module `modname` and `package.loaded[modname]`
--- is not false, `require` simply returns the value stored there.
---
--- This variable is only a reference to the real table; assignments to this
--- variable do not change the table used by `require`.
package.loaded = {}

--- Sets a metatable for module with its __index field referring to the global
--- environment, so that this module inherits values from the global environment.
--- To be used as an option to function module.
---@param module table
--[`View online doc`](https://www.lua.org/manual/5.1/manual.html#pdf-package.seeall)  |  [`View local doc`](command:extension.luahelper.doc?["en-us/51/manual.html/pdf-package.seeall"])
function package.seeall(module) end