RedEM = exports["redem_roleplay"]:RedEM()

local possiblePositions = {
    ['left']   = true,
    ['right']  = true,
    ['center'] = true,
    ['off']    = true,
    ['on']     = true,
}

RegisterCommand('logo', function(source, args)
    if args[1] and args[1] ~= '' then
        local pos = string.lower(args[1])
            
        if possiblePositions[pos] then
            changeDisplay(pos)

        else
            TriggerEvent("redem_roleplay:Tip", 'Invalid position inserted', 5000)

        end

    else
        TriggerEvent("redem_roleplay:Tip", 'Use /logo [position]', 5000)

    end

end)

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        CreateThread(function()
            Wait(300)
            addChatSuggestion()
            SendNUIMessage({
                type = "ui",
                display = true
            })

        end)

    end

end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        CreateThread(function()
            Wait(300)
            SendNUIMessage({
                type = "ui",
                display = false
            })

        end)
        
    end

end)

function changeDisplay(pos)
    SendNUIMessage({
        type = "pos",
        position = pos
    })

end