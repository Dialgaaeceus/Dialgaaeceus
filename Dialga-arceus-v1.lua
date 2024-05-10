-- Loading Screen Script
local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")

-- Wait for the local player's GUI
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui for the loading screen
local screenGui = Instance.new("ScreenGui")
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui

-- Create the loading bar
local loadingBar = Instance.new("Frame", screenGui)
loadingBar.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
loadingBar.Size = UDim2.new(0, 0, 0, 1000000000000000000000000000)
loadingBar.Position = UDim2.new(0.5, -150, 0.5, -25)
loadingBar.AnchorPoint = Vector2.new(0.5, 0.5)

-- Create the loading text
local loadingText = Instance.new("TextLabel", screenGui)
loadingText.Text = "💎Dialga Bedwars V1 Loading👑"
loadingText.Font = Enum.Font.SourceSans
loadingText.TextSize = 30
loadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingText.Size = UDim2.new(1, 0, 1, 0)
loadingText.Position = UDim2.new(0.5, 0, 0.5, -50)
loadingText.AnchorPoint = Vector2.new(0.5, 0.5)

-- Remove the default loading screen
ReplicatedFirst:RemoveDefaultLoadingScreen()

-- Simulate loading progress
local progress = 0
while progress < 1 do
    progress = progress + 0.01
    loadingBar.Size = UDim2.new(progress, 0, 0, 50)
    wait(0.05) -- Simulate loading time
end

-- Wait for the game to be fully loaded
if not game:IsLoaded() then
    game.Loaded:Wait()
end

-- Remove the loading screen
screenGui:Destroy()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
local Window = OrionLib:MakeWindow({
  Name = "💎Dialga Bedwars V1👑",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest",
  IntroEnabled = true,
  IntroText = "💎DIALGA BEDWARS V1👑",
  IntroIcon = "rbxassetid://4483345998"
})





OrionLib:MakeNotification({
	Name = "Dialga Bedwars v1 Loaded",
	Content = "finished loading",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Player = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Bedwars = Window:MakeTab({
	Name = "Bedwars",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Otherscripts = Window:MakeTab({
	Name = "Other scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Credits = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlayerSection = Player:AddSection({
	Name = "plr hacks"
})

local BedwarsSection = Bedwars:AddSection({
	Name = "Bedwars hacks"
})

local OtherscriptsSection = Otherscripts:AddSection({
	Name = "other scripts"
})

local CreditsSection = Credits:AddSection({
	Name = "Vape v4 by 7granddad"
})

Player:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 120,
	Default = 24,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Player:AddSlider({
	Name = "Gravity",
	Min = 0,
	Max = 120,
	Default = 24,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})


Otherscripts:AddButton({
    Name = "Vape v4",
	Callback = function()
	    if callback then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
        end
    end
})
