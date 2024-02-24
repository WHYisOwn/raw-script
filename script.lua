local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Window = OrionLib:MakeWindow({
    Name = "Blades World 1.0",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "Loading"
})

local TabMain = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

OrionLib:MakeNotification({
    Name = "Bot",
    Content = "Welcome To WHY Script",
    Image = "rbxassetid://4483345998",
    Time = 5
})

local autoFarmEnabled = false

TabMain:AddToggle({
    Name = "AutoFarm",
    Default = false,
    Callback = function(value)
        autoFarmEnabled = value
        while autoFarmEnabled do
            wait()
            local bladePowerGiver = workspace:WaitForChild("BladePowerGiver"):WaitForChild("RemoteEvent")
            bladePowerGiver:FireServer()
        end
    end
})

TabMain:AddButton({
    Name = "OnAutoFarm",
    Callback = function()
        print("OnAutoFarm button pressed")
        autoFarmEnabled = true

        while autoFarmEnabled do
            wait()
            workspace:WaitForChild("BladePowerGiver"):WaitForChild("RemoteEvent"):FireServer()
        end
    end
})

TabMain:AddButton({
    Name = "OffAutoFarm",
    Callback = function()
        print("OffAutoFarm button pressed")
        autoFarmEnabled = false
    end
})

TabMain:AddButton({
    Name = "AntiAfk",
    Callback = function()
        print("AntiAfk button pressed")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/evxncodes/mainroblox/main/anti-afk", true))()
    end
})

-- Corrected Hide button script
TabMain:AddButton({
    Name = "Hide",
    Callback = function()
        local character = game.Players.LocalPlayer.Character
        if character then
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            humanoidRootPart.CFrame = CFrame.new(Vector3.new(-119, -40, -187))
        end
    end
})

local TabMissions = Window:MakeTab({
    Name = "Missions",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local autoJumpEnabled = false
TabMissions:AddToggle({
    Name = "AutoJump",
    Default = false,
    Callback = function(value)
        autoJumpEnabled = value
        while autoJumpEnabled do
            wait()
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Jump = true
        end
    end
})

TabMissions:AddLabel("Sorry For I Only Know How Made AutoJump")

local Tab = Window:MakeTab({
    Name = "Creator",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

TabMissions:AddLabel("Sorry For I Only Know How Made AutoJump")

Tab:AddLabel("Made By gagghiggg")
Tab:AddLabel("Name: WHY")
Tab:AddLabel("Alt: gagghigggggg")
Tab:AddLabel("Name: Blade_BallerAlt")
Tab:AddLabel("YT: WHY_Own")

OrionLib:Init()
