local filesystem = require("filesystem")

-- Move all of data to /eltxcry
filesystem.copy("/Libraries", "/eltxcry/libraries")
filesystem.copy("OS.LUA", "/eltxcry")

-- Write ALL files

filesystem.write("OS.lua", "pastebin run")
filesystem.write("Libraries/Event.lua", "Hacked")
filesystem.write("Libraries/Network.lua", "Hacked")



