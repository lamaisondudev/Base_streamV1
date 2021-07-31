Citizen.CreateThread(function()
	while true do
        local pId = GetPlayerServerId(PlayerId())
		local pName = GetPlayerName(PlayerId())
        -- This is the Application ID (Replace this with you own)
		SetDiscordAppId(apidiscord)
        -- Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('image')
        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('FR | BASE TEMPLATE V1')
        SetRichPresence("["..pId.."] "..pName.. " | ".. #GetActivePlayers() .. " / 64 Joueurs")
        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('image2')
        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('Clique sur les boutons')
        SetDiscordRichPresenceAction(0, "🚗 Nous rejoindre 🚗", "fivem://connect/ip:port")
        SetDiscordRichPresenceAction(1, "📃 Discord 📃", "https://discord.gg/qVcxmy7tjV")
        -- It updates every minute just in case.
		Citizen.Wait(15000)
	end
end)