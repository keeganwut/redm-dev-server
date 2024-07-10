RegisterCommand("creator", function(source, args, rawCommand)
    local src = source
    TriggerClientEvent("character_creator:openCreator", src)
end, false)

RegisterNetEvent("character_creator:characterCreated")
AddEventHandler("character_creator:characterCreated", function(characterData)
    local src = source
    print("Player " .. src .. " [" .. GetPlayerName(src) .. "] created a character:")
    print("Name: " .. characterData.firstName .. " " .. characterData.lastName)
    print("Age: " .. characterData.age)
    print("Background: " .. characterData.background)

    -- TODO: Add logic to save character data to a database
end)