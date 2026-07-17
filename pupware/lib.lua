local pupware = {}

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- GUI Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "pupware"
ScreenGui.Enabled = true
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Main = Instance.new("Frame")
Main.Parent = ScreenGui
Main.Active = false
Main.Name = "Main"
Main.BorderSizePixel = 0
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1
Main.Position = UDim2.new(0.3, -31, 0.275, -1)
Main.Size = UDim2.new(0.4, 0, 0.45, 0)

local UISizeConstraint = Instance.new("UISizeConstraint")
UISizeConstraint.Parent = Main
UISizeConstraint.MaxSize = Vector2.new(500, 350)
UISizeConstraint.MinSize = Vector2.new(280, 200)

local Header = Instance.new("Frame")
Header.Parent = Main
Header.Active = false
Header.Name = "Header"
Header.BorderSizePixel = 0
Header.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Header.Size = UDim2.new(1, 0, 0.15, 0)

local GuiName = Instance.new("TextLabel")
GuiName.Parent = Header
GuiName.Name = "GuiName"
GuiName.Active = false
GuiName.BorderSizePixel = 0
GuiName.BackgroundTransparency = 1
GuiName.Position = UDim2.new(0.03, 0, 0.15, 0)
GuiName.Size = UDim2.new(0, 104, 0, 32)
GuiName.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
GuiName.Text = "pupware"
GuiName.TextColor3 = Color3.fromRGB(216, 216, 216)
GuiName.TextScaled = false
GuiName.TextSize = 25
GuiName.TextWrapped = true

local GuiVersion = Instance.new("TextLabel")
GuiVersion.Parent = Header
GuiVersion.Name = "GuiVersion"
GuiVersion.Active = false
GuiVersion.BorderSizePixel = 0
GuiVersion.BackgroundTransparency = 1
GuiVersion.Position = UDim2.new(1, -60, 0.15, 0)
GuiVersion.Size = UDim2.new(0, 55, 0, 32)
GuiVersion.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
GuiVersion.Text = ""
GuiVersion.TextColor3 = Color3.fromRGB(136, 136, 136)
GuiVersion.TextScaled = true
GuiVersion.TextWrapped = true
GuiVersion.TextXAlignment = Enum.TextXAlignment.Right

local Sidebar = Instance.new("Frame")
Sidebar.Parent = Main
Sidebar.Active = false
Sidebar.Name = "Sidebar"
Sidebar.BorderSizePixel = 0
Sidebar.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Sidebar.Position = UDim2.new(0, 0, 0.15, 0)
Sidebar.Size = UDim2.new(0.2, 0, 0.85, 0)

local PageHolder = Instance.new("ScrollingFrame")
PageHolder.Parent = Sidebar
PageHolder.Active = true
PageHolder.Name = "PageHolder"
PageHolder.BorderSizePixel = 0
PageHolder.BackgroundTransparency = 1
PageHolder.Size = UDim2.new(1, 0, 1, 0)
PageHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
PageHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
PageHolder.ScrollBarThickness = 5

local PageHolderLayout = Instance.new("UIListLayout")
PageHolderLayout.Parent = PageHolder
PageHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder

local Body = Instance.new("Frame")
Body.Parent = Main
Body.Active = false
Body.Name = "Body"
Body.BorderSizePixel = 0
Body.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
Body.Position = UDim2.new(0.2, 0, 0.15, 0)
Body.Size = UDim2.new(0.8, 0, 0.85, 0)

local Ears = Instance.new("Frame")
Ears.Parent = Main
Ears.Active = false
Ears.Name = "Ears"
Ears.BorderSizePixel = 0
Ears.BackgroundTransparency = 1
Ears.Position = UDim2.new(0, 0, -0.1, 0)
Ears.Size = UDim2.new(0.4, 0, 0.3, 0)

local EarsSizeConstraint = Instance.new("UISizeConstraint")
EarsSizeConstraint.Parent = Ears
EarsSizeConstraint.MaxSize = Vector2.new(140, 55)
EarsSizeConstraint.MinSize = Vector2.new(100, 28)

local EarsImage = Instance.new("ImageLabel")
EarsImage.Parent = Ears
EarsImage.Active = false
EarsImage.Name = "EarsImage"
EarsImage.BorderSizePixel = 0
EarsImage.BackgroundTransparency = 1
EarsImage.Size = UDim2.new(1, 0, 1, 0)
EarsImage.Image = "rbxassetid://122718099404107"
EarsImage.ScaleType = Enum.ScaleType.Tile

-- Templates
local Templates = Instance.new("Folder")
Templates.Parent = ScreenGui
Templates.Name = "Templates"

local Pages = Instance.new("Folder")
Pages.Parent = Templates
Pages.Name = "Pages"

local TwoPerRow = Instance.new("ScrollingFrame")
TwoPerRow.Parent = Pages
TwoPerRow.Active = true
TwoPerRow.Name = "TwoPerRow"
TwoPerRow.BorderSizePixel = 0
TwoPerRow.BackgroundTransparency = 1
TwoPerRow.Size = UDim2.new(1, 0, 1, 0)
TwoPerRow.AutomaticCanvasSize = Enum.AutomaticSize.Y
TwoPerRow.CanvasSize = UDim2.new(0, 0, 0, 0)
TwoPerRow.ScrollBarThickness = 5
TwoPerRow.ScrollingEnabled = false

local TwoPerRowGrid = Instance.new("UIGridLayout")
TwoPerRowGrid.Parent = TwoPerRow
TwoPerRowGrid.CellPadding = UDim2.new(0.02, 0, 0, 4)
TwoPerRowGrid.CellSize = UDim2.new(0.47, 0, 0, 28)
TwoPerRowGrid.SortOrder = Enum.SortOrder.LayoutOrder
TwoPerRowGrid.HorizontalAlignment = Enum.HorizontalAlignment.Center

local TwoPerRowPadding = Instance.new("UIPadding")
TwoPerRowPadding.Parent = TwoPerRow
TwoPerRowPadding.PaddingLeft = UDim.new(0.02, 0)
TwoPerRowPadding.PaddingRight = UDim.new(0.02, 0)
TwoPerRowPadding.PaddingTop = UDim.new(0, 4)

local OnePerRow = Instance.new("ScrollingFrame")
OnePerRow.Parent = Pages
OnePerRow.Active = true
OnePerRow.Name = "OnePerRow"
OnePerRow.BorderSizePixel = 0
OnePerRow.BackgroundTransparency = 1
OnePerRow.Size = UDim2.new(1, 0, 1, 0)
OnePerRow.AutomaticCanvasSize = Enum.AutomaticSize.Y
OnePerRow.CanvasSize = UDim2.new(0, 0, 0, 0)
OnePerRow.ScrollBarThickness = 5
OnePerRow.ScrollingEnabled = false

local OnePerRowGrid = Instance.new("UIGridLayout")
OnePerRowGrid.Parent = OnePerRow
OnePerRowGrid.CellPadding = UDim2.new(0, 0, 0, 4)
OnePerRowGrid.CellSize = UDim2.new(0.96, 0, 0, 28)
OnePerRowGrid.SortOrder = Enum.SortOrder.LayoutOrder
OnePerRowGrid.HorizontalAlignment = Enum.HorizontalAlignment.Center

local OnePerRowPadding = Instance.new("UIPadding")
OnePerRowPadding.Parent = OnePerRow
OnePerRowPadding.PaddingLeft = UDim.new(0.02, 0)
OnePerRowPadding.PaddingRight = UDim.new(0.02, 0)
OnePerRowPadding.PaddingTop = UDim.new(0, 4)

local FullPage = Instance.new("Frame")
FullPage.Parent = Pages
FullPage.Active = false
FullPage.Name = "FullPage"
FullPage.BorderSizePixel = 0
FullPage.BackgroundTransparency = 1
FullPage.Size = UDim2.new(1, 0, 1, 0)

local Types = Instance.new("Folder")
Types.Parent = Templates
Types.Name = "Types"

local ButtonTemplate = Instance.new("TextButton")
ButtonTemplate.Parent = Types
ButtonTemplate.Name = "ButtonTemplate"
ButtonTemplate.Active = true
ButtonTemplate.BorderSizePixel = 0
ButtonTemplate.Visible = false
ButtonTemplate.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
ButtonTemplate.Size = UDim2.new(1, 0, 0, 30)
ButtonTemplate.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
ButtonTemplate.Text = "BUTTON"
ButtonTemplate.TextColor3 = Color3.fromRGB(216, 216, 216)
ButtonTemplate.TextScaled = true
ButtonTemplate.TextStrokeColor3 = Color3.fromRGB(26, 26, 26)
ButtonTemplate.TextStrokeTransparency = 0.5
ButtonTemplate.TextWrapped = true
ButtonTemplate.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UIPadding", ButtonTemplate).PaddingLeft = UDim.new(0, 6)

local ToggleTemplate = Instance.new("TextButton")
ToggleTemplate.Parent = Types
ToggleTemplate.Name = "ToggleTemplate"
ToggleTemplate.Active = true
ToggleTemplate.BorderSizePixel = 0
ToggleTemplate.Visible = false
ToggleTemplate.BackgroundColor3 = Color3.fromRGB(109, 26, 42)
ToggleTemplate.Size = UDim2.new(1, 0, 0, 30)
ToggleTemplate.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
ToggleTemplate.Text = "BUTTON"
ToggleTemplate.TextColor3 = Color3.fromRGB(216, 216, 216)
ToggleTemplate.TextScaled = true
ToggleTemplate.TextStrokeColor3 = Color3.fromRGB(26, 26, 26)
ToggleTemplate.TextStrokeTransparency = 0.5
ToggleTemplate.TextWrapped = true
ToggleTemplate.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UIPadding", ToggleTemplate).PaddingLeft = UDim.new(0, 6)

local LabelTemplate = Instance.new("TextLabel")
LabelTemplate.Parent = Types
LabelTemplate.Name = "LabelTemplate"
LabelTemplate.BorderSizePixel = 0
LabelTemplate.Visible = false
LabelTemplate.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
LabelTemplate.Size = UDim2.new(1, 0, 0, 30)
LabelTemplate.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
LabelTemplate.Text = "LABEL"
LabelTemplate.TextColor3 = Color3.fromRGB(216, 216, 216)
LabelTemplate.TextScaled = true
LabelTemplate.TextWrapped = true
LabelTemplate.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UIPadding", LabelTemplate).PaddingLeft = UDim.new(0, 6)

local InputTemplate = Instance.new("Frame")
InputTemplate.Parent = Types
InputTemplate.Name = "InputTemplate"
InputTemplate.Active = true
InputTemplate.BorderSizePixel = 0
InputTemplate.Visible = false
InputTemplate.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
InputTemplate.Size = UDim2.new(1, 0, 0, 30)

local InputBox = Instance.new("TextBox")
InputBox.Parent = InputTemplate
InputBox.Name = "Input"
InputBox.Active = true
InputBox.BorderSizePixel = 0
InputBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
InputBox.Position = UDim2.new(0.497, 0, 0.233, 0)
InputBox.Size = UDim2.new(0.496, 0, 0, 15)
InputBox.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
InputBox.PlaceholderColor3 = Color3.fromRGB(216, 216, 216)
InputBox.PlaceholderText = "PLACEHOLDER"
InputBox.Text = ""
InputBox.TextColor3 = Color3.fromRGB(216, 216, 216)
InputBox.TextSize = 14
InputBox.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UIPadding", InputBox).PaddingLeft = UDim.new(0, 6)

local InputLabel = Instance.new("TextLabel")
InputLabel.Parent = InputTemplate
InputLabel.Name = "Label"
InputLabel.BorderSizePixel = 0
InputLabel.BackgroundTransparency = 1
InputLabel.Position = UDim2.new(0.013, 0, 0.233, 0)
InputLabel.Size = UDim2.new(0.421, 0, 0, 15)
InputLabel.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
InputLabel.TextColor3 = Color3.fromRGB(216, 216, 216)
InputLabel.TextSize = 14
InputLabel.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UIPadding", InputLabel).PaddingLeft = UDim.new(0, 6)

local NumberTemplate = Instance.new("Frame")
NumberTemplate.Parent = Types
NumberTemplate.Name = "NumberTemplate"
NumberTemplate.Active = true
NumberTemplate.BorderSizePixel = 0
NumberTemplate.Visible = false
NumberTemplate.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
NumberTemplate.Size = UDim2.new(1, 0, 0, 30)

local NumberBox = Instance.new("TextBox")
NumberBox.Parent = NumberTemplate
NumberBox.Name = "Input"
NumberBox.Active = true
NumberBox.BorderSizePixel = 0
NumberBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
NumberBox.Position = UDim2.new(0.497, 0, 0.233, 0)
NumberBox.Size = UDim2.new(0.496, 0, 0, 15)
NumberBox.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
NumberBox.PlaceholderColor3 = Color3.fromRGB(216, 216, 216)
NumberBox.PlaceholderText = "0"
NumberBox.Text = ""
NumberBox.TextColor3 = Color3.fromRGB(216, 216, 216)
NumberBox.TextSize = 14
NumberBox.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UIPadding", NumberBox).PaddingLeft = UDim.new(0, 6)

local NumberLabel = Instance.new("TextLabel")
NumberLabel.Parent = NumberTemplate
NumberLabel.Name = "Label"
NumberLabel.BorderSizePixel = 0
NumberLabel.BackgroundTransparency = 1
NumberLabel.Position = UDim2.new(0.013, 0, 0.233, 0)
NumberLabel.Size = UDim2.new(0.421, 0, 0, 15)
NumberLabel.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
NumberLabel.TextColor3 = Color3.fromRGB(216, 216, 216)
NumberLabel.TextSize = 14
NumberLabel.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UIPadding", NumberLabel).PaddingLeft = UDim.new(0, 6)

local SliderTemplate = Instance.new("Frame")
SliderTemplate.Parent = Types
SliderTemplate.Name = "SliderTemplate"
SliderTemplate.Active = true
SliderTemplate.BorderSizePixel = 0
SliderTemplate.Visible = false
SliderTemplate.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
SliderTemplate.Size = UDim2.new(1, 0, 0, 30)

local SliderLabel = Instance.new("TextLabel")
SliderLabel.Parent = SliderTemplate
SliderLabel.Name = "Label"
SliderLabel.BorderSizePixel = 0
SliderLabel.BackgroundTransparency = 1
SliderLabel.Position = UDim2.new(0.013, 0, 0.233, 0)
SliderLabel.Size = UDim2.new(0.421, 0, 0, 15)
SliderLabel.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
SliderLabel.TextColor3 = Color3.fromRGB(216, 216, 216)
SliderLabel.TextSize = 14
SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UIPadding", SliderLabel).PaddingLeft = UDim.new(0, 6)

local SliderBackground = Instance.new("Frame")
SliderBackground.Parent = SliderTemplate
SliderBackground.Name = "SliderBackground"
SliderBackground.Active = false
SliderBackground.BorderSizePixel = 0
SliderBackground.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
SliderBackground.Position = UDim2.new(0.48, 0, 0.333, 0)
SliderBackground.Size = UDim2.new(0.496, 0, -0.2, 15)
Instance.new("UICorner", SliderBackground).CornerRadius = UDim.new(0, 360)

local SliderDrag = Instance.new("TextButton")
SliderDrag.Parent = SliderBackground
SliderDrag.Name = "SliderDrag"
SliderDrag.Active = true
SliderDrag.BorderSizePixel = 0
SliderDrag.AutoButtonColor = false
SliderDrag.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
SliderDrag.Position = UDim2.new(-0.017, 0, -0.556, 0)
SliderDrag.Size = UDim2.new(0, 19, 0, 19)
SliderDrag.Text = ""
Instance.new("UICorner", SliderDrag).CornerRadius = UDim.new(0, 360)

local SliderValue = Instance.new("TextLabel")
SliderValue.Parent = SliderBackground
SliderValue.Name = "Value"
SliderValue.BorderSizePixel = 0
SliderValue.BackgroundTransparency = 1
SliderValue.Size = UDim2.new(1, 0, 1, 0)
SliderValue.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
SliderValue.TextColor3 = Color3.fromRGB(26, 26, 26)
SliderValue.TextSize = 14

-- Library

function pupware:CreateWindow(title, parent)
	if parent then
		ScreenGui.Parent = parent
	else
		local success = pcall(function()
			ScreenGui.Parent = game:GetService("CoreGui")
		end)
		if not success or ScreenGui.Parent == nil then
			ScreenGui.Parent = playerGui
		end
	end
	ScreenGui.Enabled = true
	GuiName.Text = "pupware"
	GuiVersion.Text = title or ""

	local window = {}
	local activeTab = nil
	local currentSection = nil
	local TOGGLE_OFF = Color3.new(0.431372, 0.105882, 0.168627)
	local TOGGLE_ON = Color3.new(0.105882, 0.227451, 0.149020)
	local ACTIVE_OFF = Color3.new(0.101961, 0.101961, 0.101961)
	local ACTIVE_ON = Color3.new(0.160784, 0.160784, 0.160784)

	local dragging = false
	local dragStart, startPos

	Header.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = Main.Position
		end
	end)

	Header.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - dragStart
			Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		if input.UserInputType == Enum.UserInputType.MouseWheel and currentSection then
			local section = Body:FindFirstChild(currentSection)
			if section and section:IsA("ScrollingFrame") then
				section.CanvasPosition = Vector2.new(0,
					math.clamp(section.CanvasPosition.Y - (input.Position.Z * 40), 0, section.AbsoluteCanvasSize.Y)
				)
			end
		end
	end)

	local function showSection(name)
		currentSection = name:upper()
		for _, sc in ipairs(Body:GetChildren()) do
			sc.Visible = sc.Name:upper() == currentSection
		end
	end

	local function updateTab(name)
		if activeTab then activeTab.BackgroundColor3 = ACTIVE_OFF end
		activeTab = PageHolder:FindFirstChild(name:upper())
		if activeTab then activeTab.BackgroundColor3 = ACTIVE_ON end
	end

	function window:CreateSection(layoutType, name)
		local template = Pages:FindFirstChild(layoutType)
		if not template then return end

		local Section = template:Clone()
		Section.Name = name:upper()
		Section.Parent = Body
		Section.Visible = false
		Section.Active = true

		local tabBtn = ButtonTemplate:Clone()
		tabBtn.Name = name:upper()
		tabBtn.Text = name:upper()
		tabBtn.Parent = PageHolder
		tabBtn.Visible = true
		tabBtn.MouseButton1Click:Connect(function()
			updateTab(name)
			showSection(name)
		end)

		local section = {}

		function section:AddButton(btnName, callback)
			local btn = ButtonTemplate:Clone()
			btn.Name = btnName:upper()
			btn.Text = btnName:upper()
			btn.Parent = Section
			btn.Visible = true
			btn.MouseButton1Click:Connect(callback)
			return btn
		end

		function section:AddToggle(btnName, callback)
			local didToggle = false
			local debounce = false
			local toggle = ToggleTemplate:Clone()
			toggle.Name = btnName:upper()
			toggle.Text = btnName:upper()
			toggle.Parent = Section
			toggle.Visible = true
			toggle.MouseButton1Click:Connect(function()
				if debounce then return end
				debounce = true
				didToggle = not didToggle
				if didToggle then
					toggle.BackgroundColor3 = TOGGLE_ON
					task.spawn(function()
						while didToggle do callback() task.wait() end
					end)
				else
					toggle.BackgroundColor3 = TOGGLE_OFF
				end
				debounce = false
			end)
			return toggle
		end

		function section:AddLabel(text)
			local label = LabelTemplate:Clone()
			label.Name = text:upper()
			label.Text = text:upper()
			label.Parent = Section
			label.Visible = true
			return label
		end

		function section:AddInput(labelText, placeholder)
			local holder = InputTemplate:Clone()
			holder:FindFirstChild("Label").Text = labelText:upper()
			holder:FindFirstChild("Input").PlaceholderText = (placeholder or ""):upper()
			holder.Parent = Section
			holder.Visible = true
			return holder, holder:FindFirstChild("Input")
		end

		function section:AddNumberInput(labelText)
			local holder = NumberTemplate:Clone()
			holder:FindFirstChild("Label").Text = labelText:upper()
			local input = holder:FindFirstChild("Input")
			input.PlaceholderText = "0"
			holder.Parent = Section
			holder.Visible = true
			input:GetPropertyChangedSignal("Text"):Connect(function()
				input.Text = input.Text:gsub("%D", "")
			end)
			return holder, input
		end

		function section:AddSlider(labelText, min, max, default, callback)
			local holder = SliderTemplate:Clone()
			local bg = holder:FindFirstChild("SliderBackground")
			local drag = bg:FindFirstChild("SliderDrag")
			local valueLabel = bg:FindFirstChild("Value")
			holder:FindFirstChild("Label").Text = labelText:upper()
			holder.Parent = Section
			holder.Visible = true

			local sliderDragging = false
			local currentValue = default or min

			local function updateSlider(val)
				currentValue = math.clamp(math.round(val), min, max)
				local fraction = (currentValue - min) / (max - min)
				TweenService:Create(drag, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {
					Position = UDim2.new(fraction, -drag.AbsoluteSize.X / 2, drag.Position.Y.Scale, drag.Position.Y.Offset)
				}):Play()
				valueLabel.Text = tostring(currentValue)
				callback(currentValue)
			end

			drag.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then sliderDragging = true end
			end)
			drag.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then sliderDragging = false end
			end)
			UserInputService.InputChanged:Connect(function(input)
				if sliderDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
					local fraction = math.clamp((input.Position.X - bg.AbsolutePosition.X) / bg.AbsoluteSize.X, 0, 1)
					updateSlider(min + (max - min) * fraction)
				end
			end)

			task.wait()
			updateSlider(currentValue)
			return holder, valueLabel
		end

		if not currentSection then
			showSection(name)
			updateTab(name)
		end

		return section
	end

	return window
end

return pupware
