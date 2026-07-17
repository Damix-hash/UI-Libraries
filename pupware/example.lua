local pupware = loadstring(game:HttpGet("https://raw.githubusercontent.com/Damix-hash/UI-Libraries/refs/heads/main/pupware/lib.lua"))()
local window = pupware:CreateWindow("meow script")
local home = window:CreateSection("OnePerRow", "Home")
local extras = window:CreateSection("TwoPerRow", "Extras")

home:AddButton("Say Meow", function()
	print("MEOW!")
end)

home:AddToggle("Auto Meow", function()
	print("meowing...")
end)

local _, codeInput = home:AddInput("Execute Code", "type here")
codeInput.FocusLost:Connect(function()
	print("Code entered:", codeInput.Text)
end)

local _, meowCount = home:AddNumberInput("Meow Count")
meowCount.FocusLost:Connect(function()
	for i = 1, tonumber(meowCount.Text) or 0 do
		print("MEOW!", i)
	end
end)

home:AddSlider("Meow Speed", 0, 100, 50, function(val)
	print("Meow speed set to:", val)
end)

-- Extras section
extras:AddButton("Button 1", function() print("Button 1!") end)
extras:AddButton("Button 2", function() print("Button 2!") end)
extras:AddButton("Button 3", function() print("Button 3!") end)
extras:AddButton("Button 4", function() print("Button 4!") end)
extras:AddToggle("Toggle 1", function() print("Toggling 1!") end)
extras:AddToggle("Toggle 2", function() print("Toggling 2!") end)
