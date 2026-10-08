local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local Window = Rayfield:CreateWindow({
    Name = "Yean Hub",
    LoadingTitle = "Yean Hub",
    LoadingSubtitle = "Walk Speed + Jump Power",
    ConfigurationSaving = {Enabled = false},
    Discord = {Enabled = false}
})

local Tab = Window:CreateTab("Main", 4483362458)

Tab:CreateSlider({
    Name = "Walk Speed",
    Range = {1, 1000},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(Value)
        local Character = Player.Character
        local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
        if Humanoid then
            Humanoid.WalkSpeed = Value
        end
    end
})

Tab:CreateSlider({
    Name = "Jump Power",
    Range = {1, 1000},
    Increment = 1,
    CurrentValue = 50,
    Callback = function(Value)
        local Character = Player.Character
        local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
        if Humanoid then
            Humanoid.UseJumpPower = true
            Humanoid.JumpPower = Value
        end
    end
})
