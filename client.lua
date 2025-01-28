RegisterNetEvent('twitter:sendTweet')
AddEventHandler('twitter:sendTweet', function(playerName, message)
    -- Stuur de tweet naar de UI via NUI
    SendNUIMessage({
        type = "twitter",
        playerName = playerName,
        message = message
    })
end)
