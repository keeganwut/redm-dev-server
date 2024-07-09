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

    -- TODO: Add logic to save character data and initialize character customization

    SetNuiFocus(false, false)
end

function CloseUI()
    SetNuiFocus(false, false)
end