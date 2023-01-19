getgenv().Players = game:GetService("Players");
getgenv().UserInputService = game:GetService("UserInputService");

getgenv().Client = Players.LocalPlayer;
getgenv().ClientCharacter = Client.Character or Client.CharacterAdded:Wait();

getgenv().Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/haha123zz/New/main/UI/source.lua"))()
getgenv().Window = Library:AddWindow({
	title = {
        "RC-M",
        "Internal UI"
    },
    default = true,
    theme = {
        Accent = Color3.fromRGB(255, 128, 0),
		TopbarColor = Color3.fromRGB(20, 20, 20),
		SidebarColor = Color3.fromRGB(15, 15, 15),
		BackgroundColor = Color3.fromRGB(10, 10, 10),
		SectionColor = Color3.fromRGB(20, 20, 20),
		TextColor = Color3.fromRGB(255, 255, 255),
		Objects = {},
    }
})

getgenv().SmoothingTab = Window:AddTab("Smoothing")
getgenv().RadiusTab = Window:AddTab("Radius")

Client.CharacterAdded:Connect(function(Character)
	getgenv().ClientCharacter = Character;
end)

getgenv().Smoothing = loadstring(game:HttpGet("https://raw.githubusercontent.com/haha123zz/New/main/Modules/Smoothing.lua"))()
--getgenv().Radius = loadstring(game:HttpGet(""))()
