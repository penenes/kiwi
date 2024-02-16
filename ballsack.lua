local player = game.Players.LocalPlayer
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Kiwi On Top <3", HidePremium = false, IntroText = "Kiwi On Top", SaveConfig = true, ConfigFolder = "KiwiOnTop"})

-- Tabs
local AhTab = Window:MakeTab({
    Name = "Admin House",
    Icon = "rbxassetid://11457411382",
    PremiumOnly = false
})
local TeleportsTab = Window:MakeTab({
    Name = "Teleports",
    Icon = "rbxassetid://11457411382",
    PremiumOnly = false
})
local MovementTab = Window:MakeTab({
    Name = "FE / Misc",
    Icon = "rbxassetid://11279314611",
    PremiumOnly = false
})

-- Sections
local Section = MovementTab:AddSection({
    Name = "Player"
})
local Section = TeleportsTab:AddSection({
    Name = "TPs"
})
local Section = AhTab:AddSection({
    Name = "General"
})

-- Buttons, Toggles, Sliders
MovementTab:AddSlider({
    Name = "Jump Power",
    Min = 0,
    Max = 500,
    Default = 40,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "JP",
    Callback = function(Value)
        player.Character.Humanoid.JumpPower = Value
    end    
})
MovementTab:AddSlider({
    Name = "Walk Speed",
    Min = 0,
    Max = 500,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "WS",
    Callback = function(Value)
        player.Character.Humanoid.WalkSpeed = Value
    end    
})
AhTab:AddButton({
    Name = "Remove Killbricks",
    Callback = function()
        game.Workspace.SecureParts.Lava:Destroy()
    end    
})
AhTab:AddButton({
    Name = "Remove Boundary",
    Callback = function()
        game.Workspace.SecureParts.Boundary:Destroy()
    end    
})
AhTab:AddButton({
    Name = "Remove BubbleChat",
    Callback = function()
        game.CoreGui.BubbleChat:Destroy()
    end    
})
TeleportsTab:AddButton({
    Name = "TP To Reset Button",
    Callback = function()
        player.Character.HumanoidRootPart.CFrame = CFrame.new(22.9999352, 25.049942, 105.991974, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end    
})
TeleportsTab:AddButton({
    Name = "TP Under Map",
    Callback = function()
        player.Character.HumanoidRootPart.CFrame = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end    
})

