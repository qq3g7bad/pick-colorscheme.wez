# 🎨 pick-colorscheme.wez

Select a colorscheme as if drawing lots for [WezTerm](https://wezfurlong.org/wezterm/).

## 🎲 Features

- Randomly apply a color scheme from the built-in WezTerm themes.
- Retain the current background opacity setting.
- Easy to integrate into your existing `wezterm.lua`.

## 🚀 Installation

1. Copy the function `apply_random_scheme` into your `wezterm.lua`.
2. Add the following keybinding:

```lua
local wezterm = require 'wezterm'
local apply_random_scheme = require 'apply_random_scheme'

wezterm.on('PickRandomColorscheme', apply_random_scheme)

return {
  keys = {
    { key = 'c', mods = 'CTRL|SHIFT', action = wezterm.action.EmitEvent 'PickRandomColorscheme' },
  },
}
```

3. Restart WezTerm and press Ctrl+Shift+C to apply a random color scheme.
