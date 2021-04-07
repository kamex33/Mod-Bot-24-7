local discordia = require("discordia")
local client = discordia.Client()


client:on("ready", function() -- bot is ready
	print("Logged in as " .. client.user.username)
end)

client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author

	if content == "!opis" then
		message:reply {
			embed = {
				title = "Opis:",
				description = "",
				author = {
					name = kamex,
					icon_url = author.avatarURL
				},
				fields = { -- array of fields
					{
						name = "O bocie",
						value = "Bot został stworzony przez kamex#0304 na potrzebe informowania o statusie report bota niedługopóźniej dostał update",
						inline = true
					},
					{
						name = "Informacja",
						value = "Niedługo więcej informacji",
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

client:run("Bot BOT_TOKEN") -- replace BOT_TOKEN with your bot token
