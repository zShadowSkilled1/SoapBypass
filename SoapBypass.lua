--[[Made by zShadowSkilled :D]]


wait(game:IsLoaded)

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local remote = game.ReplicatedStorage:FindFirstChild("AC") or game.ReplicatedStorage:FindFirstChild("ACV2") or game.ReplicatedStorage:FindFirstChild("ACheat") or game.ReplicatedStorage:FindFirstChild("Anticheat") or game.ReplicatedStorage:FindFirstChild("AntiCheat")
local Registery = getreg()

getgenv().Method
local Old

if Method == "Automatic" then
    if game.PlaceId == 6872265039 then
        Method = "Character"
    end
end

if Method == "Character" then
    Character.Parent = nil
    Character.HumanoidRootPart:Destroy()
    Character.Parent = game.Workspace
elseif Method == "Hook" then
    Old = hookmetamethod(game,"__namecall",function(self,...)
            local NewMethod = getnamecallmethod()
            local args = {...}

            if self == remote and NewMethod == "FireServer" then
                args[1] = 16
                args[2] = 50

                return Old(self,args)
            end
    end)
elseif Method == "Register" then
    for i,v in next, Registery do
        if type(v) == "function" then
            local GetFuncInfo = getinfo(v)

            if GetFuncInfo == "kick" then
                hookfunction(GetFuncInfo.func,function(...) return nil end)     
            end
        end
    end
elseif Method == "KickHook" then
    Old = hookmetamethod(game,"__namecall",function(self,...)
        local NewMethod = getnamecallmethod()

        if NewMethod == "Kick" or NewMethod == "kick" then
            return
        end
        return Old(self,...)
    end)
elseif Method == "IndexHook" then
    Old = hookmetamethod(game,"__index",function(self,key)
        if self == Humanoid and key == "WalkSpeed" then
            return 0
        end
        return Old(self,key)
    end)
elseif Method == "BlockRemote" then
    Old = hookmetamethod(game,"__namecall",function(self,...)
        local NewMethod = getnamecallmethod()

            if self == remote and NewMethod == "FireServer" then
                return nil
            end
            
return Old(self,...)
    end)
end

print(Method)
