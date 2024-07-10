function DebugPrint(...)
    if Config.Debug then
        print(...)
    end
end

function OpenCharacterCreator()
    DebugPrint('Opening character creator')
    SendNUIMessage({
        type = "openCharacterCreator"
    })
    SetNuiFocus(true, true)
end

function HandleCharacterCreation(data)
    DebugPrint("Character created:")
    DebugPrint("Name: " .. data.firstName .. " " .. data.lastName)
    DebugPrint("Age: " .. data.age)
    DebugPrint("Background: " .. data.background)

    TriggerServerEvent("character_creator:characterCreated", data)

    -- TODO: Add logic to initialize character customization

    SetNuiFocus(false, false)
end

function CloseUI()
    SetNuiFocus(false, false)
end