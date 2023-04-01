function addChatSuggestion()
    CreateThread(function()
        TriggerEvent('chat:addSuggestion','/logo', 'Set the positioning of the server logo in your screen', {
            {name = "Position", help = "Left, Right, Center, Off - Turn the display off, On - Turn the display on"},
        })
    end)
end