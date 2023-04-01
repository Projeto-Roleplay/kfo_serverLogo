RedEM = exports["redem_roleplay"]:RedEM()
local display = false

RegisterCommand('logo', function(source, args)
    if args[1] then
        local pos = string.lower(args[1])

        if pos ~= '' then
            
        end

    else
        TriggerEvent("redem_roleplay:Tip", 'Invalid position inserted', 5000)
    end
end)

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        addChatSuggestion()
        SendNUIMessage({
            type = "ui",
            display = true
        })
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        SendNUIMessage({
            type = "ui",
            display = false
        })
    end
end)