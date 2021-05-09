
-- Music
--   Music related stuff
-----------------------------------------------
local m = {}

-- Display the currently playing track in Spotify
m.musicWhatTrack = function()
  hs.itunes.getCurrentTrack()
end


-- Add triggers
-----------------------------------------------
m.triggers = {}
m.triggers["Music What Track"] = m.musicWhatTrack

----------------------------------------------------------------------------
return m
