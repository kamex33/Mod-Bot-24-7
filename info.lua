local discordia = require("discordia")
local client = discordia.Client()


client:on("ready", function() -- bot is ready
	print("Logged in as " .. client.user.username)
end)

client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author

	if content == "!info" then
		message:reply {
			embed = {
				title = "Info",
				description = "To opis Report Bot Status",
				author = {
					name = kamex,
					icon_url = author.avatarURL
				},
				fields = { -- array of fields
					{
						name = "Creator",
						value = "Stworzone Przez kamex#0304",
						inline = true
					},
					{
						name = "!opis",
						value = "Więcej informacji",
						inline = false
					}
				},
				footer = {
					text = "Created with Discord"
				},
				color = 0x000000 -- hex color code
			}
		}
	end

end)

client:run("Bot ODE5OTgwNTIzODQwNjAyMTgy.YEugXw.QdqeyQ4H0DhLMCNFwfaBumJaNvw") -- replace BOT_TOKEN with your bot token
