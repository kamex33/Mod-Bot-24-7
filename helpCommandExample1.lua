local discordia = require("discordia")
local client = discordia.Client()


client:on("ready", function() -- bot is ready
	print("Logged in as " .. client.user.username)
end)

client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author

	if content == "!help" then
		message:reply {
			embed = {
				title = "Pomoc!",
				description = "Komendy Report-Bot-Status",
				author = {
					name = kamex,
					icon_url = author.avatarURL
				},
				fields = { -- array of fields
					{
						name = "!status",
						value = "Pokazuje Status Report Bot",
						inline = true
					},
					{
						name = "!info",
						value = "pokazuje info Report Bot Status",
						inline = false
					}
				},
				footer = {
					text = "type !help2 for more commands"
				},
				color = 0x000000 -- hex color code
			}
		}
	end

end)

client:run("Bot BOT_TOKEN") -- replace BOT_TOKEN with your bot token
