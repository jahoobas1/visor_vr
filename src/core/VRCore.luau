local core = {}
local methods = {}

local VRService = game:GetService("VRService")
local localization = require(script.Parent.Parent.localization)
local Settings = require(script.Parent.Parent.settings)

function core.New(player: Player)
    local self = setmetatable(core, methods)

    if VRService.VREnabled == false then
        warn(player.Name..localization:getLanguage("NotUsingVRString", Settings.language_idioma_langue_sprache_yazik))
    else
        warn(player.Name..localization:getLanguage("UsingVRString", Settings.language_idioma_langue_sprache_yazik))
    end

    return self
end

return core