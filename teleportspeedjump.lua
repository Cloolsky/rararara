local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Speed", "RJTheme3")
local Tab = Window:NewTab("Main")
local Section3 = Tab:NewSection("Teleport")
local Section = Tab:NewSection("Speed Change")
local Section2 = Tab:NewSection("JumpPower Change")

Section:NewSlider("SpeedChanger", "SliderInfo", 500, 16, function(speed) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

Section2:NewSlider("JumpPowerChanger", "SliderInfo", 500, 50, function(JumpPower) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
end)

Section3:NewTextBox("Write player nickname to teleport", "TextboxInfo", function(txt)
local plr = txt
game:GetService("Workspace")["Comik1720"].HumanoidRootPart.CFrame = game:GetService("Workspace")[txt].HumanoidRootPart.CFrame
end)


