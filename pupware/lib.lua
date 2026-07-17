local pupware = {}

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "pupware"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Main = Instance.new("Frame")
Main.Parent = ScreenGui
Main.LayoutOrder = 0
Main.Active = true
Main.Interactable = true
Main.AnchorPoint = Vector2.new(0, 0)
Main.Rotation = 0
Main.AutomaticSize = Enum.AutomaticSize.None
Main.Name = "Main"
Main.BorderMode = Enum.BorderMode.Outline
Main.SizeConstraint = Enum.SizeConstraint.RelativeXY
Main.ZIndex = 1
Main.BorderSizePixel = 0
Main.Visible = true
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1
Main.Position = UDim2.new(0.30000001192092896, -31, 0.2750000059604645, -1)
Main.Size = UDim2.new(0.4000000059604645, 0, 0.44999998807907104, 0)

local UISizeConstraint = Instance.new("UISizeConstraint")
UISizeConstraint.Parent = Main
UISizeConstraint.Name = "UISizeConstraint"
UISizeConstraint.MaxSize = Vector2.new(500, 350)
UISizeConstraint.MinSize = Vector2.new(280, 200)

local Header = Instance.new("Frame")
Header.Parent = Main
Header.LayoutOrder = 0
Header.Active = true
Header.Interactable = true
Header.AnchorPoint = Vector2.new(0, 0)
Header.Rotation = 0
Header.AutomaticSize = Enum.AutomaticSize.None
Header.Name = "Header"
Header.BorderMode = Enum.BorderMode.Outline
Header.SizeConstraint = Enum.SizeConstraint.RelativeXY
Header.ZIndex = 1
Header.BorderSizePixel = 0
Header.Visible = true
Header.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Header.Size = UDim2.new(1, 0, 0.15000000596046448, 0)

local GuiName = Instance.new("TextLabel")
GuiName.Parent = Header
GuiName.LayoutOrder = 0
GuiName.Active = false
GuiName.Interactable = true
GuiName.AnchorPoint = Vector2.new(0, 0)
GuiName.Rotation = 0
GuiName.AutomaticSize = Enum.AutomaticSize.None
GuiName.Name = "GuiName"
GuiName.BorderMode = Enum.BorderMode.Outline
GuiName.SizeConstraint = Enum.SizeConstraint.RelativeXY
GuiName.ZIndex = 1
GuiName.BorderSizePixel = 0
GuiName.Visible = true
GuiName.BackgroundTransparency = 1
GuiName.Position = UDim2.new(0.029999999329447746, 0, 0.15000000596046448, 0)
GuiName.Size = UDim2.new(0, 104, 0, 32)
GuiName.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
GuiName.Text = "pupware"
GuiName.TextColor3 = Color3.fromRGB(216, 216, 216)
GuiName.TextSize = 25
GuiName.TextWrapped = true

local GuiVersion = Instance.new("TextLabel")
GuiVersion.Parent = Header
GuiVersion.LayoutOrder = 0
GuiVersion.Active = false
GuiVersion.Interactable = true
GuiVersion.AnchorPoint = Vector2.new(0, 0)
GuiVersion.Rotation = 0
GuiVersion.AutomaticSize = Enum.AutomaticSize.None
GuiVersion.Name = "GuiVersion"
GuiVersion.BorderMode = Enum.BorderMode.Outline
GuiVersion.SizeConstraint = Enum.SizeConstraint.RelativeXY
GuiVersion.ZIndex = 1
GuiVersion.BorderSizePixel = 0
GuiVersion.Visible = true
GuiVersion.BackgroundTransparency = 1
GuiVersion.Position = UDim2.new(1, -60, 0.15000000596046448, 0)
GuiVersion.Size = UDim2.new(0, 55, 0, 32)
GuiVersion.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
GuiVersion.Text = "meow script"
GuiVersion.TextColor3 = Color3.fromRGB(136, 136, 136)
GuiVersion.TextScaled = true
GuiVersion.TextWrapped = true
GuiVersion.TextXAlignment = Enum.TextXAlignment.Right

local Sidebar = Instance.new("Frame")
Sidebar.Parent = Main
Sidebar.LayoutOrder = 0
Sidebar.Active = true
Sidebar.Interactable = true
Sidebar.AnchorPoint = Vector2.new(0, 0)
Sidebar.Rotation = 0
Sidebar.AutomaticSize = Enum.AutomaticSize.None
Sidebar.Name = "Sidebar"
Sidebar.BorderMode = Enum.BorderMode.Outline
Sidebar.SizeConstraint = Enum.SizeConstraint.RelativeXY
Sidebar.ZIndex = 1
Sidebar.BorderSizePixel = 0
Sidebar.Visible = true
Sidebar.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Sidebar.Position = UDim2.new(0, 0, 0.15000000596046448, 0)
Sidebar.Size = UDim2.new(0.20000000298023224, 0, 0.8500000238418579, 0)

local PageHolder = Instance.new("ScrollingFrame")
PageHolder.Parent = Sidebar
PageHolder.LayoutOrder = 0
PageHolder.Active = true
PageHolder.Interactable = true
PageHolder.AnchorPoint = Vector2.new(0, 0)
PageHolder.Rotation = 0
PageHolder.AutomaticSize = Enum.AutomaticSize.None
PageHolder.Name = "PageHolder"
PageHolder.BorderMode = Enum.BorderMode.Outline
PageHolder.SizeConstraint = Enum.SizeConstraint.RelativeXY
PageHolder.ZIndex = 1
PageHolder.BorderSizePixel = 0
PageHolder.Visible = true
PageHolder.BackgroundTransparency = 1
PageHolder.BorderMode = Enum.BorderMode.Outline
PageHolder.BorderSizePixel = 0
PageHolder.Size = UDim2.new(1, 0, 1, 0)
PageHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
PageHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
PageHolder.ScrollBarThickness = 5

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = PageHolder
UIListLayout.Name = "UIListLayout"
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

local Body = Instance.new("Frame")
Body.Parent = Main
Body.LayoutOrder = 0
Body.Active = false
Body.Interactable = true
Body.AnchorPoint = Vector2.new(0, 0)
Body.Rotation = 0
Body.AutomaticSize = Enum.AutomaticSize.None
Body.Name = "Body"
Body.BorderMode = Enum.BorderMode.Outline
Body.SizeConstraint = Enum.SizeConstraint.RelativeXY
Body.ZIndex = 1
Body.BorderSizePixel = 0
Body.Visible = true
Body.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
Body.Position = UDim2.new(0.20000000298023224, 0, 0.15000000596046448, 0)
Body.Size = UDim2.new(0.800000011920929, 0, 0.8500000238418579, 0)

local Ears = Instance.new("Frame")
Ears.Parent = Main
Ears.LayoutOrder = 0
Ears.Active = false
Ears.Interactable = true
Ears.AnchorPoint = Vector2.new(0, 0)
Ears.Rotation = 0
Ears.AutomaticSize = Enum.AutomaticSize.None
Ears.Name = "Ears"
Ears.BorderMode = Enum.BorderMode.Outline
Ears.SizeConstraint = Enum.SizeConstraint.RelativeXY
Ears.ZIndex = 1
Ears.BorderSizePixel = 0
Ears.Visible = true
Ears.BackgroundTransparency = 1
Ears.Position = UDim2.new(0, 0, -0.10000000149011612, 0)
Ears.Size = UDim2.new(0.4000000059604645, 0, 0.30000001192092896, 0)

local EarsImage = Instance.new("ImageLabel")
EarsImage.Parent = Ears
EarsImage.LayoutOrder = 0
EarsImage.Active = false
EarsImage.Interactable = true
EarsImage.AnchorPoint = Vector2.new(0, 0)
EarsImage.Rotation = 0
EarsImage.AutomaticSize = Enum.AutomaticSize.None
EarsImage.Name = "EarsImage"
EarsImage.BorderMode = Enum.BorderMode.Outline
EarsImage.SizeConstraint = Enum.SizeConstraint.RelativeXY
EarsImage.ZIndex = 1
EarsImage.BorderSizePixel = 0
EarsImage.Visible = true
EarsImage.BackgroundTransparency = 1
EarsImage.Size = UDim2.new(1, 0, 1, 0)
EarsImage.Image = "rbxassetid://122718099404107"
EarsImage.ScaleType = Enum.ScaleType.Tile

local UISizeConstraint2 = Instance.new("UISizeConstraint")
UISizeConstraint2.Parent = Ears
UISizeConstraint2.Name = "UISizeConstraint"
UISizeConstraint2.MaxSize = Vector2.new(140, 55)
UISizeConstraint2.MinSize = Vector2.new(100, 28)

local Templates = Instance.new("Folder")
Templates.Parent = ScreenGui
Templates.Name = "Templates"

local Pages = Instance.new("Folder")
Pages.Parent = Templates
Pages.Name = "Pages"

local TwoPerRow = Instance.new("ScrollingFrame")
TwoPerRow.Parent = Pages
TwoPerRow.LayoutOrder = 0
TwoPerRow.Active = true
TwoPerRow.Interactable = true
TwoPerRow.AnchorPoint = Vector2.new(0, 0)
TwoPerRow.Rotation = 0
TwoPerRow.AutomaticSize = Enum.AutomaticSize.None
TwoPerRow.Name = "TwoPerRow"
TwoPerRow.BorderMode = Enum.BorderMode.Outline
TwoPerRow.SizeConstraint = Enum.SizeConstraint.RelativeXY
TwoPerRow.ZIndex = 1
TwoPerRow.BorderSizePixel = 0
TwoPerRow.Visible = true
TwoPerRow.BackgroundTransparency = 1
TwoPerRow.BorderMode = Enum.BorderMode.Outline
TwoPerRow.BorderSizePixel = 0
TwoPerRow.Size = UDim2.new(1, 0, 1, 0)
TwoPerRow.AutomaticCanvasSize = Enum.AutomaticSize.Y
TwoPerRow.CanvasSize = UDim2.new(0, 0, 0, 0)
TwoPerRow.ScrollBarThickness = 5
TwoPerRow.ScrollingEnabled = false

local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.Parent = TwoPerRow
UIGridLayout.Name = "UIGridLayout"
UIGridLayout.CellPadding = UDim2.new(0.019999999552965164, 0, 0, 4)
UIGridLayout.CellSize = UDim2.new(0.4699999988079071, 0, 0, 28)
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

local UIPadding = Instance.new("UIPadding")
UIPadding.Parent = TwoPerRow
UIPadding.Name = "UIPadding"
UIPadding.PaddingLeft = UDim.new(0.019999999552965164, 0)
UIPadding.PaddingRight = UDim.new(0.019999999552965164, 0)
UIPadding.PaddingTop = UDim.new(0, 4)

local OnePerRow = Instance.new("ScrollingFrame")
OnePerRow.Parent = Pages
OnePerRow.LayoutOrder = 0
OnePerRow.Active = true
OnePerRow.Interactable = true
OnePerRow.AnchorPoint = Vector2.new(0, 0)
OnePerRow.Rotation = 0
OnePerRow.AutomaticSize = Enum.AutomaticSize.None
OnePerRow.Name = "OnePerRow"
OnePerRow.BorderMode = Enum.BorderMode.Outline
OnePerRow.SizeConstraint = Enum.SizeConstraint.RelativeXY
OnePerRow.ZIndex = 1
OnePerRow.BorderSizePixel = 0
OnePerRow.Visible = true
OnePerRow.BackgroundTransparency = 1
OnePerRow.BorderMode = Enum.BorderMode.Outline
OnePerRow.BorderSizePixel = 0
OnePerRow.Size = UDim2.new(1, 0, 1, 0)
OnePerRow.AutomaticCanvasSize = Enum.AutomaticSize.Y
OnePerRow.CanvasSize = UDim2.new(0, 0, 0, 0)
OnePerRow.ScrollBarThickness = 5
OnePerRow.ScrollingEnabled = false

local UIGridLayout2 = Instance.new("UIGridLayout")
UIGridLayout2.Parent = OnePerRow
UIGridLayout2.Name = "UIGridLayout"
UIGridLayout2.CellPadding = UDim2.new(0, 0, 0, 4)
UIGridLayout2.CellSize = UDim2.new(0.9599999785423279, 0, 0, 28)
UIGridLayout2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center

local UIPadding2 = Instance.new("UIPadding")
UIPadding2.Parent = OnePerRow
UIPadding2.Name = "UIPadding"
UIPadding2.PaddingLeft = UDim.new(0.019999999552965164, 0)
UIPadding2.PaddingRight = UDim.new(0.019999999552965164, 0)
UIPadding2.PaddingTop = UDim.new(0, 4)

local FullPage = Instance.new("Frame")
FullPage.Parent = Pages
FullPage.LayoutOrder = 0
FullPage.Active = true
FullPage.Interactable = true
FullPage.AnchorPoint = Vector2.new(0, 0)
FullPage.Rotation = 0
FullPage.AutomaticSize = Enum.AutomaticSize.None
FullPage.Name = "FullPage"
FullPage.BorderMode = Enum.BorderMode.Outline
FullPage.SizeConstraint = Enum.SizeConstraint.RelativeXY
FullPage.ZIndex = 1
FullPage.BorderSizePixel = 0
FullPage.Visible = true
FullPage.BackgroundTransparency = 1
FullPage.Size = UDim2.new(1, 0, 1, 0)

local Types = Instance.new("Folder")
Types.Parent = Templates
Types.Name = "Types"

local ButtonTemplate = Instance.new("TextButton")
ButtonTemplate.Parent = Types
ButtonTemplate.LayoutOrder = 0
ButtonTemplate.Active = true
ButtonTemplate.Interactable = true
ButtonTemplate.AnchorPoint = Vector2.new(0, 0)
ButtonTemplate.Rotation = 0
ButtonTemplate.AutomaticSize = Enum.AutomaticSize.None
ButtonTemplate.Name = "ButtonTemplate"
ButtonTemplate.BorderMode = Enum.BorderMode.Outline
ButtonTemplate.SizeConstraint = Enum.SizeConstraint.RelativeXY
ButtonTemplate.ZIndex = 1
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

local UIPadding3 = Instance.new("UIPadding")
UIPadding3.Parent = ButtonTemplate
UIPadding3.Name = "UIPadding"
UIPadding3.PaddingLeft = UDim.new(0, 6)

local ToggleTemplate = Instance.new("TextButton")
ToggleTemplate.Parent = Types
ToggleTemplate.LayoutOrder = 0
ToggleTemplate.Active = true
ToggleTemplate.Interactable = true
ToggleTemplate.AnchorPoint = Vector2.new(0, 0)
ToggleTemplate.Rotation = 0
ToggleTemplate.AutomaticSize = Enum.AutomaticSize.None
ToggleTemplate.Name = "ToggleTemplate"
ToggleTemplate.BorderMode = Enum.BorderMode.Outline
ToggleTemplate.SizeConstraint = Enum.SizeConstraint.RelativeXY
ToggleTemplate.ZIndex = 1
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

local UIPadding4 = Instance.new("UIPadding")
UIPadding4.Parent = ToggleTemplate
UIPadding4.Name = "UIPadding"
UIPadding4.PaddingLeft = UDim.new(0, 6)

local LabelTemplate = Instance.new("TextLabel")
LabelTemplate.Parent = Types
LabelTemplate.LayoutOrder = 0
LabelTemplate.Active = false
LabelTemplate.Interactable = true
LabelTemplate.AnchorPoint = Vector2.new(0, 0)
LabelTemplate.Rotation = 0
LabelTemplate.AutomaticSize = Enum.AutomaticSize.None
LabelTemplate.Name = "LabelTemplate"
LabelTemplate.BorderMode = Enum.BorderMode.Outline
LabelTemplate.SizeConstraint = Enum.SizeConstraint.RelativeXY
LabelTemplate.ZIndex = 1
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

local UIPadding5 = Instance.new("UIPadding")
UIPadding5.Parent = LabelTemplate
UIPadding5.Name = "UIPadding"
UIPadding5.PaddingLeft = UDim.new(0, 6)

local InputTemplate = Instance.new("Frame")
InputTemplate.Parent = Types
InputTemplate.LayoutOrder = 0
InputTemplate.Active = true
InputTemplate.Interactable = true
InputTemplate.AnchorPoint = Vector2.new(0, 0)
InputTemplate.Rotation = 0
InputTemplate.AutomaticSize = Enum.AutomaticSize.None
InputTemplate.Name = "InputTemplate"
InputTemplate.BorderMode = Enum.BorderMode.Outline
InputTemplate.SizeConstraint = Enum.SizeConstraint.RelativeXY
InputTemplate.ZIndex = 1
InputTemplate.BorderSizePixel = 0
InputTemplate.Visible = false
InputTemplate.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
InputTemplate.Size = UDim2.new(1, 0, 0, 30)

local Input = Instance.new("TextBox")
Input.Parent = InputTemplate
Input.LayoutOrder = 0
Input.Active = true
Input.Interactable = true
Input.AnchorPoint = Vector2.new(0, 0)
Input.Rotation = 0
Input.AutomaticSize = Enum.AutomaticSize.None
Input.Name = "Input"
Input.BorderMode = Enum.BorderMode.Outline
Input.SizeConstraint = Enum.SizeConstraint.RelativeXY
Input.ZIndex = 1
Input.BorderSizePixel = 0
Input.Visible = true
Input.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Input.Position = UDim2.new(0.4970000088214874, 0, 0.2329999953508377, 0)
Input.Size = UDim2.new(0.4959999918937683, 0, 0, 15)
Input.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
Input.PlaceholderColor3 = Color3.fromRGB(216, 216, 216)
Input.PlaceholderText = "PLACEHOLDER"
Input.Text = ""
Input.TextColor3 = Color3.fromRGB(216, 216, 216)
Input.TextSize = 14
Input.TextXAlignment = Enum.TextXAlignment.Left

local UIPadding6 = Instance.new("UIPadding")
UIPadding6.Parent = Input
UIPadding6.Name = "UIPadding"
UIPadding6.PaddingLeft = UDim.new(0, 6)

local Label = Instance.new("TextLabel")
Label.Parent = InputTemplate
Label.LayoutOrder = 0
Label.Active = false
Label.Interactable = true
Label.AnchorPoint = Vector2.new(0, 0)
Label.Rotation = 0
Label.AutomaticSize = Enum.AutomaticSize.None
Label.Name = "Label"
Label.BorderMode = Enum.BorderMode.Outline
Label.SizeConstraint = Enum.SizeConstraint.RelativeXY
Label.ZIndex = 1
Label.BorderSizePixel = 0
Label.Visible = true
Label.BackgroundTransparency = 1
Label.Position = UDim2.new(0.013000000268220901, 0, 0.2329999953508377, 0)
Label.Size = UDim2.new(0.42100000381469727, 0, 0, 15)
Label.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
Label.TextColor3 = Color3.fromRGB(216, 216, 216)
Label.TextSize = 14
Label.TextXAlignment = Enum.TextXAlignment.Left

local UIPadding7 = Instance.new("UIPadding")
UIPadding7.Parent = Label
UIPadding7.Name = "UIPadding"
UIPadding7.PaddingLeft = UDim.new(0, 6)

local NumberTemplate = Instance.new("Frame")
NumberTemplate.Parent = Types
NumberTemplate.LayoutOrder = 0
NumberTemplate.Active = true
NumberTemplate.Interactable = true
NumberTemplate.AnchorPoint = Vector2.new(0, 0)
NumberTemplate.Rotation = 0
NumberTemplate.AutomaticSize = Enum.AutomaticSize.None
NumberTemplate.Name = "NumberTemplate"
NumberTemplate.BorderMode = Enum.BorderMode.Outline
NumberTemplate.SizeConstraint = Enum.SizeConstraint.RelativeXY
NumberTemplate.ZIndex = 1
NumberTemplate.BorderSizePixel = 0
NumberTemplate.Visible = false
NumberTemplate.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
NumberTemplate.Size = UDim2.new(1, 0, 0, 30)

local Input2 = Instance.new("TextBox")
Input2.Parent = NumberTemplate
Input2.LayoutOrder = 0
Input2.Active = true
Input2.Interactable = true
Input2.AnchorPoint = Vector2.new(0, 0)
Input2.Rotation = 0
Input2.AutomaticSize = Enum.AutomaticSize.None
Input2.Name = "Input"
Input2.BorderMode = Enum.BorderMode.Outline
Input2.SizeConstraint = Enum.SizeConstraint.RelativeXY
Input2.ZIndex = 1
Input2.BorderSizePixel = 0
Input2.Visible = true
Input2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Input2.Position = UDim2.new(0.4970000088214874, 0, 0.2329999953508377, 0)
Input2.Size = UDim2.new(0.4959999918937683, 0, 0, 15)
Input2.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
Input2.PlaceholderColor3 = Color3.fromRGB(216, 216, 216)
Input2.PlaceholderText = "0"
Input2.Text = ""
Input2.TextColor3 = Color3.fromRGB(216, 216, 216)
Input2.TextSize = 14
Input2.TextXAlignment = Enum.TextXAlignment.Left

local UIPadding8 = Instance.new("UIPadding")
UIPadding8.Parent = Input2
UIPadding8.Name = "UIPadding"
UIPadding8.PaddingLeft = UDim.new(0, 6)

local Label2 = Instance.new("TextLabel")
Label2.Parent = NumberTemplate
Label2.LayoutOrder = 0
Label2.Active = false
Label2.Interactable = true
Label2.AnchorPoint = Vector2.new(0, 0)
Label2.Rotation = 0
Label2.AutomaticSize = Enum.AutomaticSize.None
Label2.Name = "Label"
Label2.BorderMode = Enum.BorderMode.Outline
Label2.SizeConstraint = Enum.SizeConstraint.RelativeXY
Label2.ZIndex = 1
Label2.BorderSizePixel = 0
Label2.Visible = true
Label2.BackgroundTransparency = 1
Label2.Position = UDim2.new(0.013000000268220901, 0, 0.2329999953508377, 0)
Label2.Size = UDim2.new(0.42100000381469727, 0, 0, 15)
Label2.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
Label2.TextColor3 = Color3.fromRGB(216, 216, 216)
Label2.TextSize = 14
Label2.TextXAlignment = Enum.TextXAlignment.Left

local UIPadding9 = Instance.new("UIPadding")
UIPadding9.Parent = Label2
UIPadding9.Name = "UIPadding"
UIPadding9.PaddingLeft = UDim.new(0, 6)

local SliderTemplate = Instance.new("Frame")
SliderTemplate.Parent = Types
SliderTemplate.LayoutOrder = 0
SliderTemplate.Active = true
SliderTemplate.Interactable = true
SliderTemplate.AnchorPoint = Vector2.new(0, 0)
SliderTemplate.Rotation = 0
SliderTemplate.AutomaticSize = Enum.AutomaticSize.None
SliderTemplate.Name = "SliderTemplate"
SliderTemplate.BorderMode = Enum.BorderMode.Outline
SliderTemplate.SizeConstraint = Enum.SizeConstraint.RelativeXY
SliderTemplate.ZIndex = 1
SliderTemplate.BorderSizePixel = 0
SliderTemplate.Visible = false
SliderTemplate.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
SliderTemplate.Size = UDim2.new(1, 0, 0, 30)

local Label3 = Instance.new("TextLabel")
Label3.Parent = SliderTemplate
Label3.LayoutOrder = 0
Label3.Active = false
Label3.Interactable = true
Label3.AnchorPoint = Vector2.new(0, 0)
Label3.Rotation = 0
Label3.AutomaticSize = Enum.AutomaticSize.None
Label3.Name = "Label"
Label3.BorderMode = Enum.BorderMode.Outline
Label3.SizeConstraint = Enum.SizeConstraint.RelativeXY
Label3.ZIndex = 1
Label3.BorderSizePixel = 0
Label3.Visible = true
Label3.BackgroundTransparency = 1
Label3.Position = UDim2.new(0.013000000268220901, 0, 0.2329999953508377, 0)
Label3.Size = UDim2.new(0.42100000381469727, 0, 0, 15)
Label3.FontFace = Font.new("rbxasset://fonts/families/RobotoCondensed.json")
Label3.TextColor3 = Color3.fromRGB(216, 216, 216)
Label3.TextSize = 14
Label3.TextXAlignment = Enum.TextXAlignment.Left

local UIPadding10 = Instance.new("UIPadding")
UIPadding10.Parent = Label3
UIPadding10.Name = "UIPadding"
UIPadding10.PaddingLeft = UDim.new(0, 6)

local SliderBackground = Instance.new("Frame")
SliderBackground.Parent = SliderTemplate
SliderBackground.LayoutOrder = 0
SliderBackground.Active = true
SliderBackground.Interactable = true
SliderBackground.AnchorPoint = Vector2.new(0, 0)
SliderBackground.Rotation = 0
SliderBackground.AutomaticSize = Enum.AutomaticSize.None
SliderBackground.Name = "SliderBackground"
SliderBackground.BorderMode = Enum.BorderMode.Outline
SliderBackground.SizeConstraint = Enum.SizeConstraint.RelativeXY
SliderBackground.ZIndex = 1
SliderBackground.BorderSizePixel = 0
SliderBackground.Visible = true
SliderBackground.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
SliderBackground.Position = UDim2.new(0.49000000953674316, 0, 0.3330000042915344, 0)
SliderBackground.Size = UDim2.new(0.4959999918937683, 0, -0.20000000298023224, 15)

local UICorner = Instance.new("UICorner")
UICorner.Parent = SliderBackground
UICorner.Name = "UICorner"
UICorner.CornerRadius = UDim.new(0, 360)

local SliderDrag = Instance.new("TextButton")
SliderDrag.Parent = SliderBackground
SliderDrag.LayoutOrder = 0
SliderDrag.Active = true
SliderDrag.Interactable = true
SliderDrag.AnchorPoint = Vector2.new(0, 0)
SliderDrag.Rotation = 0
SliderDrag.AutomaticSize = Enum.AutomaticSize.None
SliderDrag.Name = "SliderDrag"
SliderDrag.BorderMode = Enum.BorderMode.Outline
SliderDrag.SizeConstraint = Enum.SizeConstraint.RelativeXY
SliderDrag.ZIndex = 1
SliderDrag.BorderSizePixel = 0
SliderDrag.Visible = true
SliderDrag.AutoButtonColor = false
SliderDrag.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
SliderDrag.Position = UDim2.new(-0.017000000923871994, 0, -0.5559999942779541, 0)
SliderDrag.Size = UDim2.new(0, 19, 0, 19)
SliderDrag.Text = ""

local UICorner2 = Instance.new("UICorner")
UICorner2.Parent = SliderDrag
UICorner2.Name = "UICorner"
UICorner2.CornerRadius = UDim.new(0, 360)

local Value = Instance.new("TextLabel")
Value.Parent = SliderBackground
Value.LayoutOrder = 0
Value.Active = false
Value.Interactable = true
Value.AnchorPoint = Vector2.new(0, 0)
Value.Rotation = 0
Value.AutomaticSize = Enum.AutomaticSize.None
Value.Name = "Value"
Value.BorderMode = Enum.BorderMode.Outline
Value.SizeConstraint = Enum.SizeConstraint.RelativeXY
Value.ZIndex = 1
Value.BorderSizePixel = 0
Value.Visible = true
Value.BackgroundTransparency = 1
Value.Size = UDim2.new(1, 0, 1, 0)
Value.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
Value.TextColor3 = Color3.fromRGB(26, 26, 26)
Value.TextSize = 14

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
		    btn.MouseButton1Click:Connect(function()
		        task.spawn(callback)
		    end)
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
