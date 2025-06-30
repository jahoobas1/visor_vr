--[[
Visor Framework
V0.0.1
Jahoobas
]]

local visor = {}

local core = script.core
local Settings = require(script.settings)
local Localization = require(script.localization)

function visor:initVR(player: Player)
    if game:GetService("Players").LocalPlayer == nil then 
        error("Visor:initVR()"..Localization:getLanguage("shouldBeRanLocalScript", Settings.language_idioma_langue_sprache_yazik))
        return
    end

    return require(core.VRCore).New(player)
end

return visor