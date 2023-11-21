local QBCore = exports['slk-core']:GetCoreObject()

QBCore.Commands.Add("binds", "Open commandbinding menu", {}, false, function(source, _)
	TriggerClientEvent("slk-commandbinding:client:openUI", source)
end)

RegisterNetEvent('slk-commandbinding:server:setKeyMeta', function(keyMeta)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)

    ply.Functions.SetMetaData("commandbinds", keyMeta)
end)
