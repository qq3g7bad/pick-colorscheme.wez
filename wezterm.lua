
local wezterm = require 'wezterm'

-- Select a colorscheme randomly
local function apply_random_scheme(window, pane)
    local schemes = {}
    local opacity = window:get_config_overrides().window_background_opacity

    for name, scheme in pairs(wezterm.get_builtin_color_schemes()) do
        table.insert(schemes, name)
    end

    local scheme = schemes[math.random(#schemes)]
    window:set_config_overrides {
        color_scheme = scheme,
        window_background_opacity = opacity
    }
end

-- Set listener
wezterm.on('PickColorscheme', function(window, pane)
    apply_random_scheme(window, pane)
end)

-- Set keybinds
local keys = {
  {
    key = 'c',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.EmitEvent 'PickColorscheme',
  },
}

return keys
