--[[Methods : 
Character - Good for bedwars, prevent the anticheat to detect any suspicious action
Register - Good for Tower Of Hell and the anticheats that kick, only recomanded if others methods don't work
KickHook - Prevent any script/anticheat from kicking you
IndexHook - Spoof your walkspeed to 0
BlockRemote - If the anticheat use a remote, then block it

==Others Modes==

Automatic - Let the script choose the best method for the game you're playing
]]

local Method = "Automatic"

getgenv().Method = Method

local SoapBypass = loadstring(game:HttpGet('https://raw.githubusercontent.com/zShadowSkilled1/SoapBypass/main/SoapBypass.lua'))()
