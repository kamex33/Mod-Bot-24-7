local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
	if message.content == '!status' then
		message.channel:send('```Report Bot System:System Operation (Online)🏆 Report Bot Premium: Bot Zawieszony```')
	end
end)

client:run('Bot ODE5OTgwNTIzODQwNjAyMTgy.YEugXw.QdqeyQ4H0DhLMCNFwfaBumJaNvw')