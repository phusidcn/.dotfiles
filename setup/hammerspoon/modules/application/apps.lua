
-- Toggle an application:
-----------------------------------------------
local m = {}

local mouse = require('utils.mouse')

m.toggleApp = function(appName)
    local app = hs.appfinder.appFromName(appName)
    if not app or app:isHidden() then
      hs.application.launchOrFocus(appName)
    elseif hs.application.frontmostApplication() ~= app then
      app:activate()
      mouse:centerCursorOnFocusedWindow()
    else
      app:hide()
    end
end


-- Add triggers
-----------------------------------------------
m.triggers = {}
m.triggers["Browser 1"] = function() m.toggleApp("Safari") end
m.triggers["Browser 2"] = function() m.toggleApp("Google Chrome") end
m.triggers["Xcode Toggle"] = function() m.toggleApp("Xcode") end
m.triggers["Zalo Toggle"] = function() m.toggleApp("Zalo") end
m.triggers["iTerm Toggle"] = function() m.toggleApp("iTerm") end
m.triggers["Note Toggle"] = function() m.toggleApp("Notes") end
m.triggers["Visual Studio Code Toggle"] = function() m.toggleApp("Visual Studio Code") end
m.triggers["Git Control Toggle"] = function() m.toggleApp("Fork") end
m.triggers["Music Toggle"] = function() m.toggleApp("Music") end
m.triggers["File Manager Toggle"] = function() m.toggleApp("Forklift") end
m.triggers["Simulator Toggle"] = function() m.toggleApp("Simulator") end
m.triggers["Draw Toggle"] = function() m.toggleApp("draw.io") end
m.triggers["Password Manager Toggle"] = function() m.toggleApp("Dashlane") end
m.triggers["Diff Tool Toggle"] = function() m.toggleApp("Kaleidoscope") end
m.triggers["Subtitles Toggle"] = function() m.toggleApp("Aegisub") end
m.triggers["Videos Player Toggle"] = function() m.toggleApp("Elmedia Player") end

----------------------------------------------------------------------------
return m
