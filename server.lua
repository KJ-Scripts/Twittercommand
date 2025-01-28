RegisterCommand('twt', function(source, args, rawCommand)
    local playerName = GetPlayerName(source) -- Haal de naam van de speler op
    local message = table.concat(args, " ") -- Combineer alle argumenten in één bericht

    if message and message ~= "" then
        -- Stuur het bericht naar alle clients
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class="twitter-message"><b>@{0}</b>: {1}</div>',
            args = {playerName, message}
        })
    else
        -- Stuur een foutmelding naar de gebruiker als het bericht leeg is
        TriggerClientEvent('chat:addMessage', source, {
            color = {255, 0, 0},
            args = {"Twitter", "Gebruik: /twitter [bericht]"}
        })
    end
end, false)
