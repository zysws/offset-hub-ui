# offset hub UI library

A lightweight, open-source Roblox UI library developed for Offset Hub.

## overview
- modular architecture
- simple Lua bundler with custom `__require`
- designed for Roblox script execution
- optional Lucide icon support

## usage

all files are bundled into a single script using a custom `__require` system.
any module can be required from anywhere within the library.

check out [example.lua](https://raw.githubusercontent.com/zysws/offset-hub-ui/main/example.lua) to find out how to use the library

load the library:
```lua
local Library = loadstring(
    game:HttpGet("https://raw.githubusercontent.com/zysws/offset-hub-ui/main/dist/bundle.lua")
)()
```
