RegisterNetEvent("character_creator:openCreator")
AddEventHandler("character_creator:openCreator", function()
    OpenCharacterCreator()
end)

RegisterNUICallback('characterCreated', function(data, cb)
    HandleCharacterCreation(data)
    cb('ok')
end)

RegisterNUICallback('closeUI', function(data, cb)
    CloseUI()
    cb('ok')
end)