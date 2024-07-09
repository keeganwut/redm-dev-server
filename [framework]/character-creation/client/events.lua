RegisterCommand('creator', function(source, args, rawCommand)
    OpenCharacterCreator()
end, false)

RegisterNUICallback('characterCreated', function(data, cb)
    HandleCharacterCreation(data)
    cb('ok')
end)

RegisterNUICallback('closeUI', function(data, cb)
    CloseUI()
    cb('ok')
end)