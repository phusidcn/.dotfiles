
-- Default bindings
--   Overide: config.lua.example --> config.lua
-----------------------------------------------
local bindings = {}
local keys = {}


-- Key Bindings
-----------------------------------------------
keys.modifiers = {
  ['position'] = {"ctrl", "alt", "cmd"},
  ['focus']    = {"ctrl", "alt"},
  ['utils']    = {"ctrl", "alt", "shift"},
  ['apps']     = {"ctrl", "shift"}
}

-- Set up hotkeys
-----------------------------------------------
keys.triggers = {

  -- Apps
  -----------------------------------------------
  -- ["Autohide Toggle"] = { "focus", "F13" },

  ["Browser 1"] = { "apps", "w" },
  ["Browser 2"] = { "apps", "g"},
  ["Xcode Toggle"] = { "apps", "x" },
  ["Zalo Toggle"] = { "apps", "Q" },
  ["iTerm Toggle"] = { "apps", "t" },
  ["Note Toggle"] = {"apps", "n"},
  ["Visual Studio Code Toggle"] = { "apps", "c" },
  ["Git Control Toggle"] = { "apps", "s" },
  ["Music Toggle"] = { "apps", "m" },
  ["Commander Toggle"] = { "apps", "f" },
  ["Simulator Toggle"] = { "apps", "z" },
  ["Draw Toggle"] = {"apps", "d"},
  ["Enpass Toggle"] = {"apps", "e"},

  -- Audio
  -----------------------------------------------
  ["Music What Track"] = { "utils", "w" },

  -- Keyboard
  -----------------------------------------------
  ["Keyboard Help"] = { "utils", "/", false },

  -- Misc
  -----------------------------------------------
  ["Test Something"] = { "utils", "t", false },
  ["Anycomplete"] = { "utils", "a" },
  ["Defeat Paste Blocking"] = { "utils", "v" },
  ["Scratchpad Toggle"] = { "utils", "Space" },

  -- Hammerspoon
  ["Hammerspoon Console"] = { "utils", "\\" },
  ["Hammerspoon Reload"] = { "utils", "-", false },
  ["Hammerspoon Docs"] = { "utils", "`" },

  -- System
  -----------------------------------------------
  -- ["Bluetooth Toggle"] = { "mash", "E" },
  ["Caffeine Toggle"] = { "utils", "," },

  ["System Lock"] = { "utils", "l" },
  ["System Sleep"] = { "utils", "s" },

  -- Network
  ["WiFi Toggle"] = { "utils", "F5" },
  ["WiFi Reconnect"] = { "utils", "r" },
  ["Ping"] = { "utils", "p" },

  ["Window Hints"] = { "utils", "." },

  -- Window management Hotkeys
  -----------------------------------------------

  -- Center current window
  ["Window Toggle Center"] = { "position", "c" },

  -- Resize current window to maximise or fullscreen
  ["Window Toggle Maximise"] = { "position", "." },
  ["Window Toggle Fullscreen"] = { "position", "f" },

  -- Resize current window to half of the screen
  ["Window Half Left"]   = { "position", "h" },
  ["Window Half Right"]  = { "position", "k" },
  ["Window Half Top"]    = { "position", "u" },
  ["Window Half Bottom"] = { "position", "j" },

  -- Push current window around the grid
  ["Window Push Left"]  = { "position", "Left" },
  ["Window Push Right"] = { "position", "Right" },
  ["Window Push Up"]    = { "position", "Up" },
  ["Window Push Down"]  = { "position", "Down" },

  -- Resize current window to grid
  ["Window Resize Thinner"] = { "position", "[" },
  ["Window Resize Wider"]   = { "position", "]" },
  ["Window Resize Taller"]  = { "position", "=" },
  ["Window Resize Shorter"] = { "position", "'" },

  -- Move current window to next/prev display
  ["Window Next Screen"] = { "position", "0" },

  -- Show interactive grid
  ["Window Show Grid"] = { "position", "g" },

}

----------------------------------------------------------------------------
bindings.keys = keys

return bindings
