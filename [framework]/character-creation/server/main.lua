RegisterCommand("creator", function(source, args, rawCommand)
    local playerId = source
    TriggerClientEvent("character_creator:openCreator", playerId)
end, false)

RegisterNetEvent("character_creator:characterCreated")
AddEventHandler("character_creator:characterCreated", function(characterData)
    local playerId = source
    print("Player " .. playerId .. " [" .. GetPlayerName(playerId) .. "] created a character:")
    print("Name: " .. characterData.firstName .. " " .. characterData.lastName)
    print("Age: " .. characterData.age)
    print("Background: " .. characterData.background)

    -- TODO: Add logic to save character data to a database
end)