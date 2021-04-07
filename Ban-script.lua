local discordia = require("discordia")
local client = discordia.Client()

client:on("messageCreate", function(message)
    local content = message.content
    local author = message.author
    discordia.extensions()
    local client = message.client
    local guild = message.guild
    local args = message.content:split(" ")
    local command = table.remove(args, 1)
    local test = "tak"
    if command == "!ban" then
    local Member = message.member
    if Member:hasPermission("banMembers") == true then
    local nick = table.concat(args, " ")
    local nicktwo = "test"
    if nick and string.match(nick, "<@!%d+>") then
        print("Zbanowano uzytkownika (pierwszym sposobem) ".. string.sub(nick, 4,-2))
        nicktwo = string.sub(nick, 4,-2)
    elseif nick and string.match(nick, "<@%d+>") then
        print("Zbanowano uzytkownika (drugim sposobem) "..string.sub(nick, 3, -2))
        nicktwo = string.sub(nick, 3, -2)
    elseif nick and string.match(nick, "%d+") then
        print("Zbanowano uzytkownika (trzecim sposobem) ".. string.match(nick, "%d+"))
        nicktwo = string.match(nick, "%d+")
    else test = "nie"
    end
    if test == "tak" then
    local User = client:getUser(nicktwo)
    User:send {
        embed = {
            title = "Zostałeś zbanowany !!!",
            author = {
                name = author.username,
                icon_url = author.avatarURL
            },    
            footer = {
                text = "Stworzone przez kamexa"
            },
            color = 0xFF0000 -- kolor hex
        }
    }
    guild:banUser(nicktwo)
    message.channel:send {
        embed = {
            title = "Zbanowałem pomyślnie",
            description = "Nick: ".. nick .."",
            author = {
                name = author.username,
                icon_url = author.avatarURL
            },    
            footer = {
                text = "Stworzone przez kamexa"
            },
            color = 0x00ff00 -- kolor hex
        }
    }
    elseif test == "nie" then
    message.channel:send {
        embed = {
            title = "Niepoprawna nazwa użytkownika",
            author = {
                name = author.username,
                icon_url = author.avatarURL
            },
            footer = {
                text = "Stworzone przez kamexa"
            },
            color = 0xFF0000 -- kolor hex
        }
    }
    end
    else message.channel:send {
        embed = {
            title = "Nie posiadasz uprawnień do banowania",
            author = {
                name = author.username,
                icon_url = author.avatarURL
            },
            footer = {
                text = "Stworzone przez kamexa"
            },
            color = 0xFF0000 -- kolor hex
        }
    }
    end
    end
end)

client:run("Bot BOT_TOKEN") -- replace BOT_TOKEN with your bot token
