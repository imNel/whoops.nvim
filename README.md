# whoops.nvim

Open recently closed windows in neovim! Similar to ctrl+shift+t on browsers! :D

## Install

Install the plugin (This example uses [lazy.nvim](https://github.com/folke/lazy.nvim))

```lua
{"imNel/whoops.nvim"}
```

### Use the plugin!

Remap your close key to use whoops

```lua
set("n", "<C-w>c", function()
	require("whoops").close()
end, { remap = true })
```

Add keybinds for adding windows back

_Specifying `true` here makes the split vertical_

```lua
set("n", "<C-w>S", function()
	require("whoops").whoops()
end, { remap = true })

set("n", "<C-w>V", function()
	require("whoops").whoops(true)
end)
```
