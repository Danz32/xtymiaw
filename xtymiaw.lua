-- xtymiaw simple hub

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("xtymiaw", "DarkTheme")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("xtymiaw menu")

Section:NewButton("Test Notif", "Cek script jalan", function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "xtymiaw",
        Text = "Script berhasil dijalankan.",
        Duration = 3
    })
end)

Section:NewToggle("Super Jump", "Loncat tinggi", function(state)
    local hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if hum then
        hum.JumpPower = state and 120 or 50
    end
end)

Section:NewSlider("WalkSpeed", "Atur kecepatan", 200, 16, function(s)
    local hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if hum then
        hum.WalkSpeed = s
    end
end)
