local discordia = require("discordia")
local client = discordia.Client()

client:on('ready', function()
    print('Zalogowano jako: '.. client.user.username)
    client:setGame{
    name = "Type !help for commands",
    type = (2)
    }
end)

client:run("Bot ODE5OTgwNTIzODQwNjAyMTgy.YEugXw.QdqeyQ4H0DhLMCNFwfaBumJaNvw") -- replace BOT_TOKEN with your bot token