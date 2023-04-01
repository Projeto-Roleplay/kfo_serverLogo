RedEM = exports["redem_roleplay"]:RedEM()
local display = false

RegisterNetEvent('kfo_serverLogo:nui')
AddEventHandler('kfo_serverLogo:nui', function()
    display = not display
    SetNuiFocus(display, false)
    SendNUIMessage({
        type = "ui",
        display = display
    })
end)

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        display = false
        SetNuiFocus(false, false)
        SendNUIMessage({
            type = "ui",
            display = false
        })
    end
end)