
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
m.triggers["Browser"] = function() m.toggleApp("Safari") end
m.triggers["Xcode Toggle"] = function() m.toggleApp("Xcode") end
m.triggers["Zalo Toggle"] = function() m.toggleApp("Zalo") end
m.triggers["iTerm Toggle"] = function() m.toggleApp("iTerm") end
m.triggers["Note Toggle"] = function() m.toggleApp("Simplenote") end
m.triggers["Visual Studio Code Toggle"] = function() m.toggleApp("Visual Studio Code") end
m.triggers["Git Control Toggle"] = function() m.toggleApp("Sublime Merge") end
m.triggers["Music Toggle"] = function() m.toggleApp("Music") end
m.triggers["Finder Toggle"] = function() m.toggleApp("Finder") end
m.triggers["Simulator Toggle"] = function() m.toggleApp("Simulator") end
m.triggers["Draw Toggle"] = function() m.toggleApp("draw.io") end
m.triggers["Enpass Toggle"] = function() m.toggleApp("Enpass") end

----------------------------------------------------------------------------
return m
