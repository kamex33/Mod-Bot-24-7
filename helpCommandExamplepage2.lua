local discordia = require("discordia")
local client = discordia.Client()


client:on("ready", function() -- bot is ready
	print("Logged in as " .. client.user.username)
end)

client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author

	if content == "!help2" then
		message:reply {
			embed = {
				title = "Pomoc2!",
				description = "Komendy Report-Bot-Status",
				author = {
					name = kamex,
					icon_url = author.avatarURL
				},
				fields = { -- array of fields
					{
						name = "!ban",
						value = "Banuje osobe",
						inline = true
					},
					{
						name = "!info",
						value = "pokazuje info Report Bot Status",
						inline = false
					}
				},
				footer = {
					text = "Created with kamex"
				},
				color = 0x000000 -- hex color code
			}
		}
	end

end)

client:run("Bot ODE5OTgwNTIzODQwNjAyMTgy.YEugXw.QdqeyQ4H0DhLMCNFwfaBumJaNvw") -- replace BOT_TOKEN with your bot token
