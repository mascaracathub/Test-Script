local Library = {}
function Library:TweenInstance(Instance, Time, OldValue, NewValue)
	local rz_Tween = game:GetService("TweenService"):Create(Instance, TweenInfo.new(Time, Enum.EasingStyle.Quad),
		{ [OldValue] = NewValue })
	rz_Tween:Play()
	return rz_Tween
end

function Library:UpdateContent(Content, Title, Object)
	if Content.Text ~= "" then
		Title.Position = UDim2.new(0, 10, 0, 7)
		Title.Size = UDim2.new(1, -60, 0, 16)
		local MaxY = math.max(Content.TextBounds.Y + 15, 45)
		Object.Size = UDim2.new(1, 0, 0, MaxY)
	end
end

function Library:UpdateScrolling(Scroll, List)
	List:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		Scroll.CanvasSize = UDim2.new(0, 0, 0, List.AbsoluteContentSize.Y + 15)
	end)
end

function Library:MouseEvent(Skibidi, ...)
	local Args = { ... }
	Skibidi.MouseEnter:Connect(Args[1])
	Skibidi.MouseLeave:Connect(Args[2])
end

function Library:MakeConfig(Config, NewConfig)
	for i, v in next, Config do
		if not NewConfig[i] then
			NewConfig[i] = v
		end
	end
	return NewConfig
end

function Library:MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function UpdatePos(input)
		local Delta = input.Position - DragStart
		local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale,
			StartPosition.Y.Offset + Delta.Y)
		local Tween = game:GetService("TweenService"):Create(object, TweenInfo.new(0.2), { Position = pos })
		Tween:Play()
	end
	topbarobject.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = input.Position
			StartPosition = object.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)

	topbarobject.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			DragInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == DragInput and Dragging then
			UpdatePos(input)
		end
	end)
end

function Library:NewWindow(ConfigWindow)
	local ConfigWindow = self:MakeConfig({
		Title = "Banana Hub",
		Description = "Premium Script Hub",
	}, ConfigWindow or {})
	local BananaUI = Instance.new("ScreenGui")
	local DropShadowHolder = Instance.new("Frame")
	local DropShadow = Instance.new("ImageLabel")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Top = Instance.new("Frame")
	local Line = Instance.new("Frame")
	local Left = Instance.new("Folder")
	local NameHub = Instance.new("TextLabel")
	local LogoHub = Instance.new("ImageLabel")
	local Desc = Instance.new("TextLabel")
	local Right = Instance.new("Folder")
	local Frame = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	local Minize = Instance.new("TextButton")
	local Icon = Instance.new("ImageLabel")
	local Large = Instance.new("TextButton")
	local Icon_2 = Instance.new("ImageLabel")
	local Close = Instance.new("TextButton")
	local Icon_3 = Instance.new("ImageLabel")
	local UIStroke = Instance.new("UIStroke")
	local TabFrame = Instance.new("Frame")
	local Line_2 = Instance.new("Frame")
	local SearchFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local IconSearch = Instance.new("ImageLabel")
	local SearchBox = Instance.new("TextBox")
	local ScrollingTab = Instance.new("ScrollingFrame")
	local UIPadding_2 = Instance.new("UIPadding")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local LayoutFrame = Instance.new("Frame")
	local RealLayout = Instance.new("Frame")
	local LayoutList = Instance.new("Folder")
	local UIPageLayout = Instance.new("UIPageLayout")
	local LayoutName = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local DropdownZone = Instance.new("Frame")
	BananaUI.Name = "BananaUI"
	BananaUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	BananaUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	DropShadowHolder.Name = "DropShadowHolder"
	DropShadowHolder.Parent = BananaUI
	DropShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadowHolder.BackgroundTransparency = 1.000
	DropShadowHolder.BorderSizePixel = 0
	DropShadowHolder.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadowHolder.Size = UDim2.new(0, 555, 0, 350)
	DropShadowHolder.ZIndex = 0

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = DropShadowHolder
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6015897843"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	Main.Name = "Main"
	Main.Parent = DropShadowHolder
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Màu nền tối hơn
	Main.BackgroundTransparency = 0.050
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 555, 0, 350)

	UICorner.Parent = Main
	UICorner.CornerRadius = UDim.new(0, 8) -- Bo góc lớn hơn

	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35) -- Thanh trên tối hơn
	Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Top.BorderSizePixel = 0
	Top.Size = UDim2.new(1, 0, 0, 50)

	Line.Name = "Line"
	Line.Parent = Top
	Line.BackgroundColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam Banana
	Line.BackgroundTransparency = 0.300
	Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0, 0, 1, -2)
	Line.Size = UDim2.new(1, 0, 0, 2)

	Left.Name = "Left"
	Left.Parent = Top

	NameHub.Name = "NameHub"
	NameHub.Parent = Left
	NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NameHub.BackgroundTransparency = 1.000
	NameHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NameHub.BorderSizePixel = 0
	NameHub.Position = UDim2.new(0, 60, 0, 10)
	NameHub.Size = UDim2.new(0, 470, 0, 20)
	NameHub.Font = Enum.Font.GothamBold
	NameHub.Text = ConfigWindow.Title
	NameHub.TextColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam
	NameHub.TextSize = 16.000 -- Chữ lớn hơn
	NameHub.TextXAlignment = Enum.TextXAlignment.Left

	LogoHub.Name = "LogoHub"
	LogoHub.Parent = Left
	LogoHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoHub.BackgroundTransparency = 1.000
	LogoHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LogoHub.BorderSizePixel = 0
	LogoHub.Position = UDim2.new(0, 10, 0, 5)
	LogoHub.Size = UDim2.new(0, 40, 0, 35)
	LogoHub.Image = "rbxassetid://136103435617044" -- Logo chuối

	Desc.Name = "Desc"
	Desc.Parent = Left
	Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Desc.BackgroundTransparency = 1.000
	Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Desc.BorderSizePixel = 0
	Desc.Position = UDim2.new(0, 60, 0, 27)
	Desc.Size = UDim2.new(0, 470, 1, -30)
	Desc.Font = Enum.Font.GothamBold
	Desc.Text = ConfigWindow.Description
	Desc.TextColor3 = Color3.fromRGB(200, 200, 200) -- Màu xám sáng
	Desc.TextSize = 12.000
	Desc.TextXAlignment = Enum.TextXAlignment.Left
	Desc.TextYAlignment = Enum.TextYAlignment.Top

	Right.Name = "Right"
	Right.Parent = Top

	Frame.Parent = Right
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(1, -110, 0, 0)
	Frame.Size = UDim2.new(0, 110, 1, 0)

	UIListLayout.Parent = Frame
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 6)

	UIPadding.Parent = Frame
	UIPadding.PaddingTop = UDim.new(0, 10)

	Minize.Name = "Minize"
	Minize.Parent = Frame
	Minize.Active = false
	Minize.AnchorPoint = Vector2.new(0, 0.5)
	Minize.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Nền tối
	Minize.BackgroundTransparency = 0.500
	Minize.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Minize.BorderSizePixel = 0
	Minize.Selectable = false
	Minize.Size = UDim2.new(0, 30, 0, 30)
	Minize.Text = ""

	local MinizeCorner = Instance.new("UICorner")
	MinizeCorner.CornerRadius = UDim.new(0, 6)
	MinizeCorner.Parent = Minize

	Icon.Name = "Icon"
	Icon.Parent = Minize
	Icon.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon.BorderSizePixel = 0
	Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon.Size = UDim2.new(0, 20, 0, 20)
	Icon.Image = "rbxassetid://136452605242985"
	Icon.ImageRectOffset = Vector2.new(288, 672)
	Icon.ImageRectSize = Vector2.new(96, 96)
	Icon.ImageColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam

	Large.Name = "Large"
	Large.Parent = Frame
	Large.Active = false
	Large.AnchorPoint = Vector2.new(0, 0.5)
	Large.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Nền tối
	Large.BackgroundTransparency = 0.500
	Large.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Large.BorderSizePixel = 0
	Large.Selectable = false
	Large.Size = UDim2.new(0, 30, 0, 30)
	Large.Text = ""

	local LargeCorner = Instance.new("UICorner")
	LargeCorner.CornerRadius = UDim.new(0, 6)
	LargeCorner.Parent = Large

	Icon_2.Name = "Icon"
	Icon_2.Parent = Large
	Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_2.BackgroundTransparency = 1.000
	Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_2.BorderSizePixel = 0
	Icon_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_2.Size = UDim2.new(0, 18, 0, 18)
	Icon_2.Image = "rbxassetid://136452605242985"
	Icon_2.ImageRectOffset = Vector2.new(580, 194)
	Icon_2.ImageRectSize = Vector2.new(96, 96)
	Icon_2.ImageColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam

	Close.Name = "Close"
	Close.Parent = Frame
	Close.Active = false
	Close.AnchorPoint = Vector2.new(0, 0.5)
	Close.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Nền tối
	Close.BackgroundTransparency = 0.500
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close.BorderSizePixel = 0
	Close.Selectable = false
	Close.Size = UDim2.new(0, 30, 0, 30)
	Close.Text = ""

	local CloseCorner = Instance.new("UICorner")
	CloseCorner.CornerRadius = UDim.new(0, 6)
	CloseCorner.Parent = Close

	Close.MouseButton1Down:Connect(function()
		DropdownZone.Visible = true
		local tat_ = Instance.new("Frame", DropdownZone);
		tat_["BorderSizePixel"] = 0;
		tat_["BackgroundColor3"] = Color3.fromRGB(35, 35, 35); -- Nền tối
		tat_["AnchorPoint"] = Vector2.new(0.5, 0.5);
		tat_["Size"] = UDim2.new(0, 400, 0, 150);
		tat_["Position"] = UDim2.new(0.5, 0, 0.5, 0);
		tat_["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		tat_["Name"] = [[Tat]];

		local tatCorner = Instance.new("UICorner")
		tatCorner.CornerRadius = UDim.new(0, 10)
		tatCorner.Parent = tat_

		local suacc = Instance.new("UIStroke", tat_);
		suacc["Transparency"] = 0.3;
		suacc["Color"] = Color3.fromRGB(255, 184, 28); -- Viền vàng cam

		local suacc2 = Instance.new("TextLabel", tat_);
		suacc2["BorderSizePixel"] = 0;
		suacc2["TextSize"] = 22;
		suacc2["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		suacc2["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		suacc2["TextColor3"] = Color3.fromRGB(255, 184, 28); -- Chữ vàng cam
		suacc2["BackgroundTransparency"] = 1;
		suacc2["Size"] = UDim2.new(0, 400, 0, 50);
		suacc2["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		suacc2["Text"] = [[Are you sure?]];

		local btnyes = Instance.new("TextButton", tat_);
		btnyes["BorderSizePixel"] = 0;
		btnyes["TextSize"] = 18;
		btnyes["TextColor3"] = Color3.fromRGB(255, 255, 255);
		btnyes["BackgroundColor3"] = Color3.fromRGB(255, 184, 28); -- Nền vàng cam
		btnyes["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		btnyes["AnchorPoint"] = Vector2.new(0, 1);
		btnyes["Size"] = UDim2.new(0, 150, 0, 40);
		btnyes["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		btnyes["Text"] = [[Yes]];
		btnyes["Position"] = UDim2.new(0, 40, 1, -40);
		
		local btnYesCorner = Instance.new("UICorner")
		btnYesCorner.CornerRadius = UDim.new(0, 6)
		btnYesCorner.Parent = btnyes
		
		btnyes.MouseButton1Down:Connect(function()
			BananaUI:Destroy()
		end)

		local btnno = Instance.new("TextButton", tat_);
		btnno["BorderSizePixel"] = 0;
		btnno["TextSize"] = 18;
		btnno["TextColor3"] = Color3.fromRGB(255, 184, 28); -- Chữ vàng cam
		btnno["BackgroundColor3"] = Color3.fromRGB(50, 50, 50); -- Nền xám
		btnno["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		btnno["AnchorPoint"] = Vector2.new(1, 1);
		btnno["Size"] = UDim2.new(0, 150, 0, 40);
		btnno["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		btnno["Text"] = [[No]];
		btnno["Position"] = UDim2.new(1, -40, 1, -40);
		
		local btnNoCorner = Instance.new("UICorner")
		btnNoCorner.CornerRadius = UDim.new(0, 6)
		btnNoCorner.Parent = btnno

		btnno.MouseButton1Down:Connect(function()
			tat_:Destroy()
			DropdownZone.Visible = false
		end)
	end)
	Icon_3.Name = "Icon"
	Icon_3.Parent = Close
	Icon_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_3.BackgroundTransparency = 1.000
	Icon_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_3.BorderSizePixel = 0
	Icon_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_3.Size = UDim2.new(0, 20, 0, 20)
	Icon_3.Image = "rbxassetid://105957381820378"
	Icon_3.ImageRectOffset = Vector2.new(480, 0)
	Icon_3.ImageRectSize = Vector2.new(96, 96)
	Icon_3.ImageColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam

	UIStroke.Color = Color3.fromRGB(255, 184, 28) -- Viền vàng cam
	UIStroke.Transparency = 0.5
	UIStroke.Thickness = 2
	UIStroke.Parent = Main

	TabFrame.Name = "TabFrame"
	TabFrame.Parent = Main
	TabFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25) -- Nền tối
	TabFrame.BackgroundTransparency = 0.100
	TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabFrame.BorderSizePixel = 0
	TabFrame.Position = UDim2.new(0, 0, 0, 50)
	TabFrame.Size = UDim2.new(0, 144, 1, -50)

	local TabFrameCorner = Instance.new("UICorner")
	TabFrameCorner.CornerRadius = UDim.new(0, 0, 0, 8)
	TabFrameCorner.Parent = TabFrame

	Line_2.Name = "Line"
	Line_2.Parent = TabFrame
	Line_2.BackgroundColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam
	Line_2.BackgroundTransparency = 0.500
	Line_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line_2.BorderSizePixel = 0
	Line_2.Position = UDim2.new(1, -1, 0, 0)
	Line_2.Size = UDim2.new(0, 2, 1, 0)

	SearchFrame.Name = "SearchFrame"
	SearchFrame.Parent = TabFrame
	SearchFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Nền tối hơn
	SearchFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SearchFrame.BorderSizePixel = 0
	SearchFrame.Position = UDim2.new(0, 7, 0, 10)
	SearchFrame.Size = UDim2.new(1, -14, 0, 30)

	UICorner_2.CornerRadius = UDim.new(0, 6)
	UICorner_2.Parent = SearchFrame

	local SearchStroke = Instance.new("UIStroke", SearchFrame)
	SearchStroke.Color = Color3.fromRGB(255, 184, 28) -- Viền vàng cam
	SearchStroke.Transparency = 0.7
	SearchStroke.Thickness = 1

	IconSearch.Name = "IconSearch"
	IconSearch.Parent = SearchFrame
	IconSearch.AnchorPoint = Vector2.new(0, 0.5)
	IconSearch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IconSearch.BackgroundTransparency = 1.000
	IconSearch.BorderColor3 = Color3.fromRGB(0, 0, 0)
	IconSearch.BorderSizePixel = 0
	IconSearch.Position = UDim2.new(0, 10, 0.5, 0)
	IconSearch.Size = UDim2.new(0, 15, 0, 15)
	IconSearch.Image = "rbxassetid://71309835376233"
	IconSearch.ImageColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam

	SearchBox.Name = "SearchBox"
	SearchBox.Parent = SearchFrame
	SearchBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SearchBox.BackgroundTransparency = 1.000
	SearchBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SearchBox.BorderSizePixel = 0
	SearchBox.ClipsDescendants = true
	SearchBox.Position = UDim2.new(0, 35, 0, 0)
	SearchBox.Size = UDim2.new(1, -35, 1, 0)
	SearchBox.Font = Enum.Font.GothamBold
	SearchBox.PlaceholderText = "Search section or function"
	SearchBox.Text = ""
	SearchBox.TextColor3 = Color3.fromRGB(200, 200, 200) -- Chữ xám sáng
	SearchBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150) -- Placeholder xám
	SearchBox.TextSize = 13.000
	SearchBox.TextXAlignment = Enum.TextXAlignment.Left

	ScrollingTab.Name = "ScrollingTab"
	ScrollingTab.Parent = TabFrame
	ScrollingTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingTab.BackgroundTransparency = 1.000
	ScrollingTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScrollingTab.BorderSizePixel = 0
	ScrollingTab.Position = UDim2.new(0, 0, 0, 50)
	ScrollingTab.Selectable = false
	ScrollingTab.Size = UDim2.new(1, 0, 1, -50)
	ScrollingTab.ScrollBarThickness = 0
	self:UpdateScrolling(ScrollingTab, UIListLayout_2)
	UIPadding_2.Parent = ScrollingTab
	UIPadding_2.PaddingBottom = UDim.new(0, 3)
	UIPadding_2.PaddingLeft = UDim.new(0, 7)
	UIPadding_2.PaddingRight = UDim.new(0, 7)
	UIPadding_2.PaddingTop = UDim2.new(0, 10) -- Thêm padding trên

	UIListLayout_2.Parent = ScrollingTab
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 8) -- Thêm khoảng cách giữa các tab

	LayoutFrame.Name = "LayoutFrame"
	LayoutFrame.Parent = Main
	LayoutFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LayoutFrame.BackgroundTransparency = 1.000
	LayoutFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LayoutFrame.BorderSizePixel = 0
	LayoutFrame.Position = UDim2.new(0, 144, 0, 50)
	LayoutFrame.Size = UDim2.new(1, -144, 1, -50)
	LayoutFrame.ClipsDescendants = true

	RealLayout.Name = "RealLayout"
	RealLayout.Parent = LayoutFrame
	RealLayout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RealLayout.BackgroundTransparency = 1.000
	RealLayout.BorderColor3 = Color3.fromRGB(0, 0, 0)
	RealLayout.BorderSizePixel = 0
	RealLayout.Position = UDim2.new(0, 0, 0, 40)
	RealLayout.Size = UDim2.new(1, 0, 1, -40)

	LayoutList.Name = "Layout List"
	LayoutList.Parent = RealLayout

	UIPageLayout.Parent = LayoutList
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
	UIPageLayout.TweenTime = 0.300

	LayoutName.Name = "LayoutName"
	LayoutName.Parent = LayoutFrame
	LayoutName.BackgroundColor3 = Color3.fromRGB(35, 35, 35) -- Nền tối
	LayoutName.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LayoutName.BorderSizePixel = 0
	LayoutName.Size = UDim2.new(1, 0, 0, 40)

	local LayoutNameCorner = Instance.new("UICorner")
	LayoutNameCorner.CornerRadius = UDim.new(0, 0, 0, 8)
	LayoutNameCorner.Parent = LayoutName

	TextLabel.Parent = LayoutName
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0, 15, 0, 0)
	TextLabel.Size = UDim2.new(1, -10, 1, 0)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = ""
	TextLabel.TextColor3 = Color3.fromRGB(255, 184, 28) -- Chữ vàng cam
	TextLabel.TextSize = 14.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	DropdownZone.Name = "DropdownZone"
	DropdownZone.Parent = Main
	DropdownZone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	DropdownZone.BackgroundTransparency = 1
	DropdownZone.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DropdownZone.BorderSizePixel = 0
	DropdownZone.Size = UDim2.new(1, 0, 1, 0)
	DropdownZone.Visible = false
	
	local UICorner_29 = Instance.new("UICorner")
	UICorner_29.Parent = DropdownZone
	
	self:MakeDraggable(Top, DropShadowHolder)
	local AllLayouts = 0
	local Tab = {}
	function Tab:T(t)
		local TabDisable = Instance.new("Frame")
		local Choose_2 = Instance.new("Frame")
		local UICorner_4 = Instance.new("UICorner")
		local NameTab_2 = Instance.new("TextLabel")
		local Click_Tab_2 = Instance.new("TextButton")
		local Layout = Instance.new("ScrollingFrame")
		local UIPadding_3 = Instance.new("UIPadding")
		local UIListLayout_3 = Instance.new("UIListLayout")
		TabDisable.Name = "TabDisable"
		TabDisable.Parent = ScrollingTab
		TabDisable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabDisable.BackgroundTransparency = 1.000
		TabDisable.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabDisable.BorderSizePixel = 0
		TabDisable.Size = UDim2.new(1, 0, 0, 35)

		Choose_2.Name = "Choose"
		Choose_2.Parent = TabDisable
		Choose_2.BackgroundColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam
		Choose_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Choose_2.BorderSizePixel = 0
		Choose_2.Position = UDim2.new(0, 0, 0, 5)
		Choose_2.Size = UDim2.new(0, 4, 0, 25) -- Dài hơn
		Choose_2.Visible = false

		UICorner_4.CornerRadius = UDim.new(1, 0)
		UICorner_4.Parent = Choose_2

		NameTab_2.Name = "NameTab"
		NameTab_2.Parent = TabDisable
		NameTab_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameTab_2.BackgroundTransparency = 1.000
		NameTab_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NameTab_2.BorderSizePixel = 0
		NameTab_2.Position = UDim2.new(0, 15, 0, 0)
		NameTab_2.Size = UDim2.new(1, -15, 1, 0)
		NameTab_2.Font = Enum.Font.GothamBold
		NameTab_2.Text = t
		NameTab_2.TextColor3 = Color3.fromRGB(200, 200, 200) -- Chữ xám
		NameTab_2.TextSize = 13.000
		NameTab_2.TextTransparency = 0.500
		NameTab_2.TextXAlignment = Enum.TextXAlignment.Left

		Click_Tab_2.Name = "Click_Tab"
		Click_Tab_2.Parent = TabDisable
		Click_Tab_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Click_Tab_2.BackgroundTransparency = 1.000
		Click_Tab_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Click_Tab_2.BorderSizePixel = 0
		Click_Tab_2.Size = UDim2.new(1, 0, 1, 0)
		Click_Tab_2.Font = Enum.Font.SourceSans
		Click_Tab_2.Text = ""
		Click_Tab_2.TextColor3 = Color3.fromRGB(0, 0, 0)
		Click_Tab_2.TextSize = 14.000

		Layout.Name = "Layout"
		Layout.Parent = LayoutList
		Layout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Layout.BackgroundTransparency = 1.000
		Layout.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Layout.BorderSizePixel = 0
		Layout.Selectable = false
		Layout.Size = UDim2.new(1, 0, 1, 0)
		Layout.CanvasSize = UDim2.new(0, 0, 1, 0)
		Layout.ScrollBarThickness = 0
		Layout.LayoutOrder = AllLayouts
		Library:UpdateScrolling(Layout, UIListLayout_3)
		UIPadding_3.Parent = Layout
		UIPadding_3.PaddingBottom = UDim.new(0, 7)
		UIPadding_3.PaddingLeft = UDim.new(0, 10)
		UIPadding_3.PaddingRight = UDim.new(0, 7)

		UIListLayout_3.Parent = Layout
		UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_3.Padding = UDim.new(0, 10)
		if AllLayouts == 0 then
			NameTab_2.TextTransparency = 0
			NameTab_2.TextColor3 = Color3.fromRGB(255, 184, 28) -- Chữ vàng cam khi active
			Choose_2.Visible = true
			UIPageLayout:JumpToIndex(0)
			TextLabel.Text = t
		end
		Click_Tab_2.Activated:Connect(function()
			TextLabel.Text = t
			for i, v in next, ScrollingTab:GetChildren() do
				if v:IsA("Frame") then
					Library:TweenInstance(v.NameTab, 0.3, "TextTransparency", 0.5)
					Library:TweenInstance(v.NameTab, 0.3, "TextColor3", Color3.fromRGB(200, 200, 200))
					v.Choose.Visible = false
				end
			end
			Library:TweenInstance(NameTab_2, 0.2, "TextTransparency", 0)
			Library:TweenInstance(NameTab_2, 0.2, "TextColor3", Color3.fromRGB(255, 184, 28))
			UIPageLayout:JumpToIndex(Layout.LayoutOrder)
			Choose_2.Visible = true
		end)
		AllLayouts = AllLayouts + 1
		local TabFunc = {}
		function TabFunc:AddSection(RealNameSection)
			local Section = Instance.new("Frame")
			local UICorner_5 = Instance.new("UICorner")
			local UIStroke_2 = Instance.new("UIStroke")
			local NameSection = Instance.new("Frame")
			local Title = Instance.new("TextLabel")
			local Line_3 = Instance.new("Frame")
			local UIGradient = Instance.new("UIGradient")
			local SectionList = Instance.new("Frame")
			local UIPadding_4 = Instance.new("UIPadding")
			local UIListLayout_4 = Instance.new("UIListLayout")
			Section.Name = "Section"
			Section.Parent = Layout
			Section.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Nền tối
			Section.BackgroundTransparency = 0.100
			Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Section.BorderSizePixel = 0
			Section.Position = UDim2.new(1.36775815, 0, 0.545454562, 0)
			Section.Size = UDim2.new(1, 0, 0, 55)

			UICorner_5.CornerRadius = UDim.new(0, 8)
			UICorner_5.Parent = Section

			UIStroke_2.Color = Color3.fromRGB(255, 184, 28) -- Viền vàng cam
			UIStroke_2.Thickness = 2
			UIStroke_2.Transparency = 0.500
			UIStroke_2.Parent = Section

			NameSection.Name = "NameSection"
			NameSection.Parent = Section
			NameSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NameSection.BackgroundTransparency = 1.000
			NameSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
			NameSection.BorderSizePixel = 0
			NameSection.Size = UDim2.new(1, 0, 0, 30)

			Title.Name = "Title"
			Title.Parent = NameSection
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0, 10, 0, 0)
			Title.Size = UDim2.new(1, -10, 1, 0)
			Title.Font = Enum.Font.GothamBold
			Title.Text = RealNameSection
			Title.TextColor3 = Color3.fromRGB(255, 184, 28) -- Chữ vàng cam
			Title.TextSize = 14.000
			Title.TextXAlignment = Enum.TextXAlignment.Left

			Line_3.Name = "Line"
			Line_3.Parent = NameSection
			Line_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Line_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Line_3.BorderSizePixel = 0
			Line_3.Position = UDim2.new(0, 0, 1, -2)
			Line_3.Size = UDim2.new(1, 0, 0, 2)

			UIGradient.Color = ColorSequence.new { 
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 25)), 
				ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 184, 28)), -- Màu vàng cam
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(24, 24, 25)) 
			}
			UIGradient.Transparency = NumberSequence.new { 
				NumberSequenceKeypoint.new(0.00, 0.53), 
				NumberSequenceKeypoint.new(0.51, 0.00), 
				NumberSequenceKeypoint.new(1.00, 0.51) 
			}
			UIGradient.Parent = Line_3

			SectionList.Name = "SectionList"
			SectionList.Parent = Section
			SectionList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionList.BackgroundTransparency = 1.000
			SectionList.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SectionList.BorderSizePixel = 0
			SectionList.Position = UDim2.new(0, 0, 0, 35)
			SectionList.Size = UDim2.new(1, 0, 1, -35)

			UIPadding_4.Parent = SectionList
			UIPadding_4.PaddingBottom = UDim.new(0, 7)
			UIPadding_4.PaddingLeft = UDim.new(0, 7)
			UIPadding_4.PaddingRight = UDim.new(0, 7)
			UIPadding_4.PaddingTop = UDim.new(0, 7)

			UIListLayout_4.Parent = SectionList
			UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_4.Padding = UDim.new(0, 6)
			UIListLayout_4:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				Section.Size = UDim2.new(1, 0, 0, UIListLayout_4.AbsoluteContentSize.Y + 55)
			end)
			local SectionFunc = {}
			function SectionFunc:AddToggle(cftoggle)
				local cftoggle = Library:MakeConfig({
					Title = "Toggle < Missing Title >",
					Description = "",
					Default = false,
					Callback = function()

					end
				}, cftoggle or {})
				local Toggle = Instance.new("Frame")
				local UICorner_6 = Instance.new("UICorner")
				local Title_2 = Instance.new("TextLabel")
				local ToggleCheck = Instance.new("Frame")
				local UICorner_7 = Instance.new("UICorner")
				local Check = Instance.new("Frame")
				local UICorner_8 = Instance.new("UICorner")
				local Toggle_Click = Instance.new("TextButton")
				local Content = Instance.new("TextLabel")
				Toggle.Name = "Toggle"
				Toggle.Parent = SectionList
				Toggle.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Nền tối
				Toggle.BackgroundTransparency = 0.100
				Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Toggle.BorderSizePixel = 0
				Toggle.Size = UDim2.new(1, 0, 0, 35)

				UICorner_6.CornerRadius = UDim.new(0, 6)
				UICorner_6.Parent = Toggle

				Title_2.Name = "Title"
				Title_2.Parent = Toggle
				Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_2.BackgroundTransparency = 1.000
				Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title_2.BorderSizePixel = 0
				Title_2.Position = UDim2.new(0, 10, 0, 0)
				Title_2.Size = UDim2.new(1, -60, 1, 0)
				Title_2.Font = Enum.Font.GothamBold
				Title_2.Text = cftoggle.Title
				Title_2.TextColor3 = Color3.fromRGB(255, 255, 255) -- Chữ trắng
				Title_2.TextSize = 13.000
				Title_2.TextXAlignment = Enum.TextXAlignment.Left

				ToggleCheck.Name = "ToggleCheck"
				ToggleCheck.Parent = Toggle
				ToggleCheck.AnchorPoint = Vector2.new(0, 0.5)
				ToggleCheck.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
				ToggleCheck.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ToggleCheck.BorderSizePixel = 0
				ToggleCheck.Position = UDim2.new(1, -50, 0.5, 0)
				ToggleCheck.Size = UDim2.new(0, 40, 0, 22)

				UICorner_7.CornerRadius = UDim.new(1, 0)
				UICorner_7.Parent = ToggleCheck

				Check.Name = "Check"
				Check.Parent = ToggleCheck
				Check.AnchorPoint = Vector2.new(0, 0.5)
				Check.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
				Check.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Check.BorderSizePixel = 0
				Check.Position = UDim2.new(0, 3, 0.5, 0)
				Check.Size = UDim2.new(0, 16, 0, 16)

				UICorner_8.CornerRadius = UDim.new(1, 0)
				UICorner_8.Parent = Check

				Toggle_Click.Name = "Toggle_Click"
				Toggle_Click.Parent = Toggle
				Toggle_Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle_Click.BackgroundTransparency = 1.000
				Toggle_Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Toggle_Click.BorderSizePixel = 0
				Toggle_Click.Size = UDim2.new(1, 0, 1, 0)
				Toggle_Click.Font = Enum.Font.SourceSans
				Toggle_Click.Text = ""
				Toggle_Click.TextColor3 = Color3.fromRGB(0, 0, 0)
				Toggle_Click.TextSize = 14.000

				Content.Name = "Content"
				Content.Parent = Toggle
				Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Content.BackgroundTransparency = 1.000
				Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Content.BorderSizePixel = 0
				Content.Position = UDim2.new(0, 10, 0, 22)
				Content.Size = UDim2.new(1, -60, 1, 0)
				Content.Font = Enum.Font.GothamBold
				Content.Text = cftoggle.Description
				Content.TextColor3 = Color3.fromRGB(150, 150, 150) -- Chữ xám
				Content.TextSize = 12.000
				Content.TextXAlignment = Enum.TextXAlignment.Left
				Content.TextYAlignment = Enum.TextYAlignment.Top
				Library:UpdateContent(Content, Title_2, Toggle)
				local ToggleFunc = { Value = cftoggle.Default }
				function ToggleFunc:Set(Boolean)
					if Boolean then
						Library:TweenInstance(ToggleCheck, 0.3, "BackgroundColor3", Color3.fromRGB(255, 184, 28)) -- Màu vàng cam
						Library:TweenInstance(Check, 0.3, "Position", UDim2.new(0, 22, 0.5, 0))
						Library:TweenInstance(Check, 0.3, "BackgroundColor3", Color3.fromRGB(255, 255, 255))
					else
						Library:TweenInstance(ToggleCheck, 0.3, "BackgroundColor3", Color3.fromRGB(60, 60, 60))
						Library:TweenInstance(Check, 0.3, "BackgroundColor3", Color3.fromRGB(200, 200, 200))
						Library:TweenInstance(Check, 0.3, "Position", UDim2.new(0, 3, 0.5, 0))
					end
					self.Value = Boolean
					cftoggle.Callback(Boolean)
				end

				ToggleFunc:Set(ToggleFunc.Value)
				Toggle_Click.Activated:Connect(function()
					ToggleFunc:Set(not ToggleFunc.Value)
				end)
			end

			function SectionFunc:AddButton(cfbutton)
				local cfbutton = Library:MakeConfig({
					Title = "Button < Missing Title >",
					Description = "",
					Callback = function()

					end
				}, cfbutton or {})
				local Button = Instance.new("Frame")
				local UICorner_9 = Instance.new("UICorner")
				local Title_3 = Instance.new("TextLabel")
				local Button_Click = Instance.new("TextButton")
				local Content_2 = Instance.new("TextLabel")
				local ImageLabel = Instance.new("ImageLabel")
				Button.Name = "Button"
				Button.Parent = SectionList
				Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Nền tối
				Button.BackgroundTransparency = 0.100
				Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Button.BorderSizePixel = 0
				Button.Size = UDim2.new(1, 0, 0, 35)

				UICorner_9.CornerRadius = UDim.new(0, 6)
				UICorner_9.Parent = Button

				Title_3.Name = "Title"
				Title_3.Parent = Button
				Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_3.BackgroundTransparency = 1.000
				Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title_3.BorderSizePixel = 0
				Title_3.Position = UDim2.new(0, 10, 0, 0)
				Title_3.Size = UDim2.new(1, -60, 1, 0)
				Title_3.Font = Enum.Font.GothamBold
				Title_3.Text = cfbutton.Title
				Title_3.TextColor3 = Color3.fromRGB(255, 255, 255) -- Chữ trắng
				Title_3.TextSize = 13.000
				Title_3.TextXAlignment = Enum.TextXAlignment.Left

				Button_Click.Name = "Button_Click"
				Button_Click.Parent = Button
				Button_Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button_Click.BackgroundTransparency = 1.000
				Button_Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Button_Click.BorderSizePixel = 0
				Button_Click.Size = UDim2.new(1, 0, 1, 0)
				Button_Click.Font = Enum.Font.SourceSans
				Button_Click.Text = ""
				Button_Click.TextColor3 = Color3.fromRGB(0, 0, 0)
				Button_Click.TextSize = 14.000

				Content_2.Name = "Content"
				Content_2.Parent = Button
				Content_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Content_2.BackgroundTransparency = 1.000
				Content_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Content_2.BorderSizePixel = 0
				Content_2.Position = UDim2.new(0, 10, 0, 22)
				Content_2.Size = UDim2.new(1, -60, 1, 0)
				Content_2.Font = Enum.Font.GothamBold
				Content_2.Text = cfbutton.Description
				Content_2.TextColor3 = Color3.fromRGB(150, 150, 150) -- Chữ xám
				Content_2.TextSize = 12.000
				Content_2.TextXAlignment = Enum.TextXAlignment.Left
				Content_2.TextYAlignment = Enum.TextYAlignment.Top

				ImageLabel.Parent = Button
				ImageLabel.AnchorPoint = Vector2.new(0, 0.5)
				ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageLabel.BackgroundTransparency = 1.000
				ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ImageLabel.BorderSizePixel = 0
				ImageLabel.Position = UDim2.new(1, -35, 0.5, 0)
				ImageLabel.Size = UDim2.new(0, 24, 0, 24)
				ImageLabel.Image = "rbxassetid://85905776508942"
				ImageLabel.ImageColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam
				Library:UpdateContent(Content_2, Title_3, Button)
				Button_Click.Activated:Connect(function()
					Button.BackgroundTransparency = 0.050
					cfbutton.Callback()
					Library:TweenInstance(Button, 0.2, "BackgroundTransparency", 0.100)
				end)
			end

			function SectionFunc:AddDropdown(cfdropdown)
				local cfdropdown = Library:MakeConfig({
					Title = "Dropdown",
					Description = "",
					Values = {},
					Default = "",
					Callback = function()

					end
				}, cfdropdown or {})
				local Dropdown = Instance.new("Frame")
				local UICorner_19 = Instance.new("UICorner")
				local Title_8 = Instance.new("TextLabel")
				local Content_6 = Instance.new("TextLabel")
				local Selects = Instance.new("Frame")
				local UICorner_20 = Instance.new("UICorner")
				local SelectText = Instance.new("TextLabel")
				local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
				local Drop_Click = Instance.new("TextButton")
				local ImageLabel_2 = Instance.new("ImageLabel")
				local DropdownList = Instance.new("Frame")
				local UIStroke_3 = Instance.new("UIStroke")
				local UICorner_24 = Instance.new("UICorner")
				local Topbar = Instance.new("Frame")
				local Title_10 = Instance.new("TextLabel")
				local SearchFrame_2 = Instance.new("Frame")
				local UICorner_25 = Instance.new("UICorner")
				local UIStroke_4 = Instance.new("UIStroke")
				local IconSearch_2 = Instance.new("ImageLabel")
				local TextBox = Instance.new("TextBox")
				local Click_Dropdown = Instance.new("TextButton")
				local Icon_4 = Instance.new("ImageLabel")
				local Real_List = Instance.new("ScrollingFrame")
				local UICorner_26 = Instance.new("UICorner")
				local UIListLayout_5 = Instance.new("UIListLayout")
				local UIPadding_5 = Instance.new("UIPadding")
				Dropdown.Name = "Dropdown"
				Dropdown.Parent = SectionList
				Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Nền tối
				Dropdown.BackgroundTransparency = 0.100
				Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Dropdown.BorderSizePixel = 0
				Dropdown.Size = UDim2.new(1, 0, 0, 35)

				UICorner_19.CornerRadius = UDim.new(0, 6)
				UICorner_19.Parent = Dropdown

				Title_8.Name = "Title"
				Title_8.Parent = Dropdown
				Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_8.BackgroundTransparency = 1.000
				Title_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title_8.BorderSizePixel = 0
				Title_8.Position = UDim2.new(0, 10, 0, 0)
				Title_8.Size = UDim2.new(1, -60, 1, 0)
				Title_8.Font = Enum.Font.GothamBold
				Title_8.Text = cfdropdown.Title
				Title_8.TextColor3 = Color3.fromRGB(255, 255, 255) -- Chữ trắng
				Title_8.TextSize = 13.000
				Title_8.TextXAlignment = Enum.TextXAlignment.Left

				Content_6.Name = "Content"
				Content_6.Parent = Dropdown
				Content_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Content_6.BackgroundTransparency = 1.000
				Content_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Content_6.BorderSizePixel = 0
				Content_6.Position = UDim2.new(0, 10, 0, 22)
				Content_6.Size = UDim2.new(1, -60, 1, 0)
				Content_6.Font = Enum.Font.GothamBold
				Content_6.Text = cfdropdown.Description
				Content_6.TextColor3 = Color3.fromRGB(150, 150, 150) -- Chữ xám
				Content_6.TextSize = 12.000
				Content_6.TextXAlignment = Enum.TextXAlignment.Left
				Content_6.TextYAlignment = Enum.TextYAlignment.Top

				Selects.Name = "Selects"
				Selects.Parent = Dropdown
				Selects.AnchorPoint = Vector2.new(0, 0.5)
				Selects.BackgroundColor3 = Color3.fromRGB(55, 55, 55) -- Nền tối hơn
				Selects.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Selects.BorderSizePixel = 0
				Selects.Position = UDim2.new(1, -90, 0.5, 0)
				Selects.Size = UDim2.new(0, 80, 0, 25)

				UICorner_20.CornerRadius = UDim.new(0, 6)
				UICorner_20.Parent = Selects

				local SelectStroke = Instance.new("UIStroke", Selects)
				SelectStroke.Color = Color3.fromRGB(255, 184, 28) -- Viền vàng cam
				SelectStroke.Transparency = 0.5
				SelectStroke.Thickness = 1

				SelectText.Name = "SelectText"
				SelectText.Parent = Selects
				SelectText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SelectText.BackgroundTransparency = 1.000
				SelectText.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SelectText.BorderSizePixel = 0
				SelectText.Position = UDim2.new(0, 8, 0, 0)
				SelectText.Size = UDim2.new(1, -25, 1, 0)
				SelectText.Font = Enum.Font.GothamBold
				SelectText.Text = ""
				SelectText.TextColor3 = Color3.fromRGB(255, 184, 28) -- Chữ vàng cam
				SelectText.TextScaled = true
				SelectText.TextSize = 1.000
				SelectText.TextWrapped = true

				UITextSizeConstraint.Parent = SelectText
				UITextSizeConstraint.MaxTextSize = 12

				Drop_Click.Name = "Drop_Click"
				Drop_Click.Parent = Selects
				Drop_Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Drop_Click.BackgroundTransparency = 1.000
				Drop_Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Drop_Click.BorderSizePixel = 0
				Drop_Click.Size = UDim2.new(1, 0, 1, 0)
				Drop_Click.Font = Enum.Font.SourceSans
				Drop_Click.Text = ""
				Drop_Click.TextColor3 = Color3.fromRGB(0, 0, 0)
				Drop_Click.TextSize = 14.000

				ImageLabel_2.Parent = Selects
				ImageLabel_2.AnchorPoint = Vector2.new(0, 0.5)
				ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageLabel_2.BackgroundTransparency = 1.000
				ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ImageLabel_2.BorderSizePixel = 0
				ImageLabel_2.Position = UDim2.new(1, -20, 0.5, 0)
				ImageLabel_2.Size = UDim2.new(0, 15, 0, 15)
				ImageLabel_2.Image = "rbxassetid://80845745785361"
				ImageLabel_2.ImageColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam
				Library:UpdateContent(Content_6, Title_8, Dropdown)
				DropdownList.Name = "DropdownList"
				DropdownList.Parent = DropdownZone
				DropdownList.AnchorPoint = Vector2.new(0.5, 0.5)
				DropdownList.BackgroundColor3 = Color3.fromRGB(35, 35, 35) -- Nền tối
				DropdownList.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DropdownList.BorderSizePixel = 0
				DropdownList.Position = UDim2.new(0.5, 0, 0.5, 0)
				DropdownList.Size = UDim2.new(0, 400, 0, 250)
				DropdownList.Visible = false

				UIStroke_3.Color = Color3.fromRGB(255, 184, 28) -- Viền vàng cam
				UIStroke_3.Transparency = 0.3
				UIStroke_3.Thickness = 2
				UIStroke_3.Parent = DropdownList

				UICorner_24.CornerRadius = UDim.new(0, 10)
				UICorner_24.Parent = DropdownList

				Topbar.Name = "Topbar"
				Topbar.Parent = DropdownList
				Topbar.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Nền tối hơn
				Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Topbar.BorderSizePixel = 0
				Topbar.Size = UDim2.new(1, 0, 0, 50)

				local TopbarCorner = Instance.new("UICorner")
				TopbarCorner.CornerRadius = UDim.new(0, 10, 0, 0)
				TopbarCorner.Parent = Topbar

				Title_10.Name = "Title"
				Title_10.Parent = Topbar
				Title_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_10.BackgroundTransparency = 1.000
				Title_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title_10.BorderSizePixel = 0
				Title_10.Position = UDim2.new(0, 15, 0, 0)
				Title_10.Size = UDim2.new(1, -200, 1, -5)
				Title_10.Font = Enum.Font.GothamBold
				Title_10.Text = cfdropdown.Title
				Title_10.TextColor3 = Color3.fromRGB(255, 184, 28) -- Chữ vàng cam
				Title_10.TextSize = 14.000
				Title_10.TextWrapped = true
				Title_10.TextXAlignment = Enum.TextXAlignment.Left

				SearchFrame_2.Name = "SearchFrame"
				SearchFrame_2.Parent = Topbar
				SearchFrame_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Nền tối
				SearchFrame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SearchFrame_2.BorderSizePixel = 0
				SearchFrame_2.Position = UDim2.new(1, -150, 0, 8)
				SearchFrame_2.Size = UDim2.new(0, 100, 0, 30)

				UICorner_25.CornerRadius = UDim.new(0, 6)
				UICorner_25.Parent = SearchFrame_2

				UIStroke_4.Color = Color3.fromRGB(255, 184, 28) -- Viền vàng cam
				UIStroke_4.Transparency = 0.500
				UIStroke_4.Parent = SearchFrame_2

				IconSearch_2.Name = "IconSearch"
				IconSearch_2.Parent = SearchFrame_2
				IconSearch_2.AnchorPoint = Vector2.new(0, 0.5)
				IconSearch_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				IconSearch_2.BackgroundTransparency = 1.000
				IconSearch_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				IconSearch_2.BorderSizePixel = 0
				IconSearch_2.Position = UDim2.new(0, 10, 0.5, 0)
				IconSearch_2.Size = UDim2.new(0, 15, 0, 15)
				IconSearch_2.Image = "rbxassetid://71309835376233"
				IconSearch_2.ImageColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam

				TextBox.Parent = SearchFrame_2
				TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextBox.BackgroundTransparency = 1.000
				TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextBox.BorderSizePixel = 0
				TextBox.Position = UDim2.new(0, 35, 0, 0)
				TextBox.Size = UDim2.new(1, -35, 1, 0)
				TextBox.Font = Enum.Font.GothamBold
				TextBox.PlaceholderText = "Search..."
				TextBox.Text = ""
				TextBox.TextColor3 = Color3.fromRGB(200, 200, 200) -- Chữ xám sáng
				TextBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
				TextBox.TextSize = 12.000
				TextBox.TextXAlignment = Enum.TextXAlignment.Left

				Click_Dropdown.Name = "Click_Dropdown"
				Click_Dropdown.Parent = Topbar
				Click_Dropdown.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Nền tối
				Click_Dropdown.BackgroundTransparency = 0.500
				Click_Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Click_Dropdown.BorderSizePixel = 0
				Click_Dropdown.Position = UDim2.new(1, -40, 0, 8)
				Click_Dropdown.Size = UDim2.new(0, 30, 0, 30)
				Click_Dropdown.Text = ""

				local CloseCorner = Instance.new("UICorner")
				CloseCorner.CornerRadius = UDim.new(0, 6)
				CloseCorner.Parent = Click_Dropdown

				Icon_4.Name = "Icon"
				Icon_4.Parent = Click_Dropdown
				Icon_4.AnchorPoint = Vector2.new(0.5, 0.5)
				Icon_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Icon_4.BackgroundTransparency = 1.000
				Icon_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Icon_4.BorderSizePixel = 0
				Icon_4.Position = UDim2.new(0.5, 0, 0.5, 0)
				Icon_4.Size = UDim2.new(0, 20, 0, 20)
				Icon_4.Image = "rbxassetid://105957381820378"
				Icon_4.ImageRectOffset = Vector2.new(480, 0)
				Icon_4.ImageRectSize = Vector2.new(96, 96)
				Icon_4.ImageColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam

				Real_List.Name = "Real_List"
				Real_List.Parent = DropdownList
				Real_List.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Nền tối
				Real_List.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Real_List.BorderSizePixel = 0
				Real_List.Position = UDim2.new(0, 10, 0, 50)
				Real_List.Selectable = false
				Real_List.ScrollBarThickness = 0
				Real_List.Size = UDim2.new(1, -20, 1, -60)
				Library:UpdateScrolling(Real_List, UIListLayout_5)
				UICorner_26.CornerRadius = UDim.new(0, 8)
				UICorner_26.Parent = Real_List

				UIListLayout_5.Parent = Real_List
				UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_5.Padding = UDim.new(0, 5)

				UIPadding_5.Parent = Real_List
				UIPadding_5.PaddingBottom = UDim.new(0, 7)
				UIPadding_5.PaddingLeft = UDim.new(0, 7)
				UIPadding_5.PaddingRight = UDim.new(0, 7)
				UIPadding_5.PaddingTop = UDim.new(0, 7)

				Drop_Click.Activated:Connect(function()
					DropdownZone.Visible = true
					DropdownList.Visible = true
					Library:TweenInstance(DropdownZone, 0.3, "BackgroundTransparency", 0.3)
				end)
				Click_Dropdown.Activated:Connect(function()
					DropdownList.Visible = false
					Library:TweenInstance(DropdownZone, 0.3, "BackgroundTransparency", 1)
					wait(0.3)
					DropdownZone.Visible = false
				end)
				local DropFunc = { Value = cfdropdown.Default }
				function DropFunc:Set(cc)
					DropFunc.Value = cc or DropFunc.Value
					for i, v in next, Real_List:GetChildren() do
						if v:IsA("Frame") then
							if table.find(DropFunc.Value, v.Title.Text) then
								Library:TweenInstance(v, 0.3, "BackgroundTransparency", 0.100)
								Library:TweenInstance(v.Title, 0.3, "TextTransparency", 0)
								Library:TweenInstance(v.Title, 0.3, "TextColor3", Color3.fromRGB(255, 184, 28)) -- Chữ vàng cam khi selected
							else
								Library:TweenInstance(v, 0.3, "BackgroundTransparency", 0.300)
								Library:TweenInstance(v.Title, 0.3, "TextTransparency", 0.5)
								Library:TweenInstance(v.Title, 0.3, "TextColor3", Color3.fromRGB(200, 200, 200))
							end
						end
					end
					local DropValue = table.concat(DropFunc.Value, ",")
					if DropValue == "" then
						SelectText.Text = ""
					else
						SelectText.Text = DropValue
					end
					cfdropdown.Callback(cfdropdown.Multi and DropFunc.Value or table.concat(DropFunc.Value, ""))
				end

				function DropFunc:Add(v)
					local Option2 = Instance.new("Frame")
					local UICorner_28 = Instance.new("UICorner")
					local Option2_Click = Instance.new("TextButton")
					local Title_12 = Instance.new("TextLabel")
					local UIGradient_3 = Instance.new("UIGradient")
					Option2.Name = "Option 2"
					Option2.Parent = Real_List
					Option2.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Nền tối
					Option2.BackgroundTransparency = 0.300
					Option2.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Option2.BorderSizePixel = 0
					Option2.Size = UDim2.new(1, 0, 0, 35)

					UICorner_28.CornerRadius = UDim.new(0, 6)
					UICorner_28.Parent = Option2

					Option2_Click.Name = "Option2_Click"
					Option2_Click.Parent = Option2
					Option2_Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Option2_Click.BackgroundTransparency = 1.000
					Option2_Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Option2_Click.BorderSizePixel = 0
					Option2_Click.Size = UDim2.new(1, 0, 1, 0)
					Option2_Click.Font = Enum.Font.SourceSans
					Option2_Click.Text = ""
					Option2_Click.TextColor3 = Color3.fromRGB(0, 0, 0)
					Option2_Click.TextSize = 14.000

					Title_12.Name = "Title"
					Title_12.Parent = Option2
					Title_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Title_12.BackgroundTransparency = 1.000
					Title_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Title_12.BorderSizePixel = 0
					Title_12.Size = UDim2.new(1, 0, 1, 0)
					Title_12.Font = Enum.Font.GothamBold
					Title_12.Text = v
					Title_12.TextColor3 = Color3.fromRGB(200, 200, 200) -- Chữ xám
					Title_12.TextSize = 13.000
					Title_12.TextTransparency = 0.500

					UIGradient_3.Color = ColorSequence.new { 
						ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), 
						ColorSequenceKeypoint.new(0.51, Color3.fromRGB(255, 184, 28)), -- Màu vàng cam
						ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0)) 
					}
					UIGradient_3.Rotation = 90
					UIGradient_3.Transparency = NumberSequence.new { 
						NumberSequenceKeypoint.new(0.00, 0.50), 
						NumberSequenceKeypoint.new(0.50, 0.30), 
						NumberSequenceKeypoint.new(1.00, 0.50) 
					}
					UIGradient_3.Parent = Option2
					Option2_Click.Activated:Connect(function()
						if cfdropdown.Multi then
							if Option2.BackgroundTransparency < 0.200 then
								for i, v in next, DropFunc.Value do
									if v == Title_12.Text then
										table.remove(DropFunc.Value, i)
									end
								end
								DropFunc:Set(DropFunc.Value)
							else
								table.insert(DropFunc.Value, Title_12.Text)
								DropFunc:Set(DropFunc.Value)
							end
						else
							DropFunc.Value = { Title_12.Text }
							DropFunc:Set(DropFunc.Value)
						end
					end)
				end

				function DropFunc:Clear()
					for i, v in next, Real_List:GetChildren() do
						if v:IsA("Frame") then
							v:Destroy()
						end
					end
				end

				function DropFunc:Refresh(NewList)
					self:Clear()
					for i, v in next, NewList do
						self:Add(v)
					end
				end

				DropFunc:Refresh(cfdropdown.Values)
				DropFunc:Set(typeof(cfdropdown.Default) == "string" and { cfdropdown.Default } or cfdropdown.Default)
				return DropFunc
			end

			function SectionFunc:AddInput(cftextbox)
				local cftextbox = Library:MakeConfig({
					Title = "Textbox",
					Description = "",
					PlaceHolder = "",
					Default = "",
					Callback = function() end
				}, cftextbox or {})
				local Input = Instance.new("Frame")
				local UICorner_17 = Instance.new("UICorner")
				local Title_7 = Instance.new("TextLabel")
				local Content_5 = Instance.new("TextLabel")
				local TextboxFrame = Instance.new("Frame")
				local UICorner_18 = Instance.new("UICorner")
				local RealTextBox = Instance.new("TextBox")
				local WritingIcon = Instance.new("ImageLabel")
				Input.Name = "Input"
				Input.Parent = SectionList
				Input.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Nền tối
				Input.BackgroundTransparency = 0.100
				Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Input.BorderSizePixel = 0
				Input.Size = UDim2.new(1, 0, 0, 35)

				UICorner_17.CornerRadius = UDim.new(0, 6)
				UICorner_17.Parent = Input

				Title_7.Name = "Title"
				Title_7.Parent = Input
				Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_7.BackgroundTransparency = 1.000
				Title_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title_7.BorderSizePixel = 0
				Title_7.Position = UDim2.new(0, 10, 0, 0)
				Title_7.Size = UDim2.new(1, -60, 1, 0)
				Title_7.Font = Enum.Font.GothamBold
				Title_7.Text = cftextbox.Title
				Title_7.TextColor3 = Color3.fromRGB(255, 255, 255) -- Chữ trắng
				Title_7.TextSize = 13.000
				Title_7.TextXAlignment = Enum.TextXAlignment.Left

				Content_5.Name = "Content"
				Content_5.Parent = Input
				Content_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Content_5.BackgroundTransparency = 1.000
				Content_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Content_5.BorderSizePixel = 0
				Content_5.Position = UDim2.new(0, 10, 0, 22)
				Content_5.Size = UDim2.new(1, -160, 1, 0)
				Content_5.Font = Enum.Font.GothamBold
				Content_5.Text = cftextbox.Description
				Content_5.TextColor3 = Color3.fromRGB(150, 150, 150) -- Chữ xám
				Content_5.TextSize = 12.000
				Content_5.TextXAlignment = Enum.TextXAlignment.Left
				Content_5.TextYAlignment = Enum.TextYAlignment.Top
				Library:UpdateContent(Content_5, Title_7, Input)
				TextboxFrame.Name = "TextboxFrame"
				TextboxFrame.Parent = Input
				TextboxFrame.AnchorPoint = Vector2.new(0, 0.5)
				TextboxFrame.BackgroundColor3 = Color3.fromRGB(55, 55, 55) -- Nền tối hơn
				TextboxFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextboxFrame.BorderSizePixel = 0
				TextboxFrame.Position = UDim2.new(1, -140, 0.5, 0)
				TextboxFrame.Size = UDim2.new(0, 130, 0, 28)

				UICorner_18.CornerRadius = UDim.new(0, 6)
				UICorner_18.Parent = TextboxFrame

				local TextboxStroke = Instance.new("UIStroke", TextboxFrame)
				TextboxStroke.Color = Color3.fromRGB(255, 184, 28) -- Viền vàng cam
				TextboxStroke.Transparency = 0.5
				TextboxStroke.Thickness = 1

				RealTextBox.Name = "RealTextBox"
				RealTextBox.Parent = TextboxFrame
				RealTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				RealTextBox.BackgroundTransparency = 1.000
				RealTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
				RealTextBox.BorderSizePixel = 0
				RealTextBox.Position = UDim2.new(0, 35, 0, 0)
				RealTextBox.Size = UDim2.new(1, -35, 1, 0)
				RealTextBox.Font = Enum.Font.GothamBold
				RealTextBox.PlaceholderText = cftextbox.PlaceHolder
				RealTextBox.Text = cftextbox.Default
				RealTextBox.TextColor3 = Color3.fromRGB(200, 200, 200) -- Chữ xám sáng
				RealTextBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
				RealTextBox.TextSize = 12.000
				RealTextBox.TextXAlignment = Enum.TextXAlignment.Left

				WritingIcon.Name = "WritingIcon"
				WritingIcon.Parent = TextboxFrame
				WritingIcon.AnchorPoint = Vector2.new(0, 0.5)
				WritingIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				WritingIcon.BackgroundTransparency = 1.000
				WritingIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
				WritingIcon.BorderSizePixel = 0
				WritingIcon.Position = UDim2.new(0, 10, 0.5, 0)
				WritingIcon.Size = UDim2.new(0, 15, 0, 15)
				WritingIcon.Image = "rbxassetid://126409600467363"
				WritingIcon.ImageColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam
				RealTextBox.FocusLost:Connect(function()
					cftextbox.Callback(RealTextBox.Text)
				end)
				cftextbox.Callback(RealTextBox.Text)
			end
			function SectionFunc:AddSlider(cfslider)
				local cfslider = Library:MakeConfig({
					Title = "Slider < Missing Title >",
					Description = "",
					Max = 100,
					Min = 1,
					Increment = 1,
					Default = 1,
					Callback = function()

					end
				}, cfslider or {})
				local Slider = Instance.new("Frame")
				local UICorner_10 = Instance.new("UICorner")
				local Title_4 = Instance.new("TextLabel")
				local Content_3 = Instance.new("TextLabel")
				local SliderFrame = Instance.new("Frame")
				local UICorner_11 = Instance.new("UICorner")
				local SliderDraggable = Instance.new("Frame")
				local UICorner_12 = Instance.new("UICorner")
				local Circle = Instance.new("Frame")
				local UICorner_13 = Instance.new("UICorner")
				local SliderValue = Instance.new("TextBox")
				local UICorner_14 = Instance.new("UICorner")
				Slider.Name = "Slider"
				Slider.Parent = SectionList
				Slider.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Nền tối
				Slider.BackgroundTransparency = 0.100
				Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Slider.BorderSizePixel = 0
				Slider.Size = UDim2.new(1, 0, 0, 35)

				UICorner_10.CornerRadius = UDim.new(0, 6)
				UICorner_10.Parent = Slider

				Title_4.Name = "Title"
				Title_4.Parent = Slider
				Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_4.BackgroundTransparency = 1.000
				Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title_4.BorderSizePixel = 0
				Title_4.Position = UDim2.new(0, 10, 0, 0)
				Title_4.Size = UDim2.new(1, -60, 1, 0)
				Title_4.Font = Enum.Font.GothamBold
				Title_4.Text = cfslider.Title
				Title_4.TextColor3 = Color3.fromRGB(255, 255, 255) -- Chữ trắng
				Title_4.TextSize = 13.000
				Title_4.TextXAlignment = Enum.TextXAlignment.Left

				Content_3.Name = "Content"
				Content_3.Parent = Slider
				Content_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Content_3.BackgroundTransparency = 1.000
				Content_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Content_3.BorderSizePixel = 0
				Content_3.Position = UDim2.new(0, 10, 0, 22)
				Content_3.Size = UDim2.new(1, -160, 1, 0)
				Content_3.Font = Enum.Font.GothamBold
				Content_3.Text = cfslider.Description
				Content_3.TextColor3 = Color3.fromRGB(150, 150, 150) -- Chữ xám
				Content_3.TextSize = 12.000
				Content_3.TextXAlignment = Enum.TextXAlignment.Left
				Content_3.TextYAlignment = Enum.TextYAlignment.Top
				Library:UpdateContent(Content_3, Title_4, Slider)

				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = Slider
				SliderFrame.AnchorPoint = Vector2.new(0, 0.5)
				SliderFrame.BackgroundColor3 = Color3.fromRGB(55, 55, 55) -- Nền tối hơn
				SliderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SliderFrame.BorderSizePixel = 0
				SliderFrame.Position = UDim2.new(1, -140, 0.5, 0)
				SliderFrame.Size = UDim2.new(0, 130, 0, 8)

				UICorner_11.CornerRadius = UDim.new(1, 0)
				UICorner_11.Parent = SliderFrame

				SliderDraggable.Name = "SliderDraggable"
				SliderDraggable.Parent = SliderFrame
				SliderDraggable.BackgroundColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam
				SliderDraggable.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SliderDraggable.BorderSizePixel = 0
				SliderDraggable.Size = UDim2.new(0, 20, 1, 0)

				UICorner_12.CornerRadius = UDim.new(1, 0)
				UICorner_12.Parent = SliderDraggable

				Circle.Name = "Circle"
				Circle.Parent = SliderDraggable
				Circle.AnchorPoint = Vector2.new(0, 0.100000001)
				Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Circle.BorderSizePixel = 0
				Circle.Position = UDim2.new(1, -6, 0, 0)
				Circle.Size = UDim2.new(0, 12, 0, 12)

				UICorner_13.CornerRadius = UDim.new(1, 0)
				UICorner_13.Parent = Circle

				SliderValue.Name = "SliderValue"
				SliderValue.Parent = Slider
				SliderValue.AnchorPoint = Vector2.new(0, 0.5)
				SliderValue.BackgroundColor3 = Color3.fromRGB(255, 184, 28) -- Màu vàng cam
				SliderValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SliderValue.BorderSizePixel = 0
				SliderValue.Position = UDim2.new(1, -185, 0.5, 0)
				SliderValue.Size = UDim2.new(0, 35, 0, 20)
				SliderValue.Font = Enum.Font.GothamBold
				SliderValue.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
				SliderValue.PlaceholderText = "..."
				SliderValue.Text = ""
				SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderValue.TextSize = 11.000

				UICorner_14.CornerRadius = UDim.new(0, 4)
				UICorner_14.Parent = SliderValue
				local SliderFunc = {Value = cfslider.Default}
				local Dragging = false
				local function Round(Number, Factor)
					local Result = math.floor(Number / Factor + (math.sign(Number) * 0.5)) * Factor
					if Result < 0 then
						Result = Result + Factor
					end
					return Result
				end
				function SliderFunc:Set(Value)
					Value = math.clamp(Round(Value, cfslider.Increment), cfslider.Min, cfslider.Max)
					SliderFunc.Value = Value
					SliderValue.Text = tostring(Value)
					game:GetService("TweenService"):Create(
						SliderDraggable,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ Size = UDim2.fromScale((Value - cfslider.Min) / (cfslider.Max - cfslider.Min), 1) }
					):Play()
				end

				SliderFrame.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 then
						Dragging = true
					end
				end)
				SliderFrame.InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 then
						Dragging = false
						cfslider.Callback(SliderFunc.Value)
					end
				end)
				game:GetService("UserInputService").InputChanged:Connect(function(Input)
					if Dragging and Input.UserInputType == Enum.UserInputType.MouseMovement then
						local SizeScale = math.clamp(
							(Input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1)
						SliderFunc:Set(cfslider.Min + ((cfslider.Max - cfslider.Min) * SizeScale))
					end
				end)
				SliderValue:GetPropertyChangedSignal("Text"):Connect(function()
					local Valid = SliderValue.Text:gsub("[^%d]", "")
					if Valid ~= "" then
						local ValidNumber = math.min(tonumber(Valid), cfslider.Max)
						SliderValue.Text = tostring(ValidNumber)
					else
						SliderValue.Text = tostring(Valid)
					end
				end)
				SliderValue.FocusLost:Connect(function()
					if SliderValue.Text ~= "" then
						SliderFunc:Set(tonumber(SliderValue.Text))
					else
						SliderFunc:Set(0)
					end
				end)
				SliderFunc:Set(tonumber(cfslider.Default))
				return SliderFunc
			end
			function SectionFunc:AddSeperator(args)
				local Seperator = Instance.new("Frame")
				local Title_5 = Instance.new("TextLabel")
				Seperator.Name = "Seperator"
				Seperator.Parent = SectionList
				Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Seperator.BackgroundTransparency = 1.000
				Seperator.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Seperator.BorderSizePixel = 0
				Seperator.Size = UDim2.new(1, 0, 0, 20)

				Title_5.Name = "Title"
				Title_5.Parent = Seperator
				Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_5.BackgroundTransparency = 1.000
				Title_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title_5.BorderSizePixel = 0
				Title_5.Position = UDim2.new(0, 10, 0, 0)
				Title_5.Size = UDim2.new(1, -10, 1, 0)
				Title_5.Font = Enum.Font.GothamBold
				Title_5.Text = args
				Title_5.TextColor3 = Color3.fromRGB(255, 184, 28) -- Chữ vàng cam
				Title_5.TextSize = 13.000
				Title_5.TextXAlignment = Enum.TextXAlignment.Left
			end
			function SectionFunc:AddParagraph(cfpara)
				local cfpara = Library:MakeConfig({
					Title = "Paragraph < Missing Title >",
					Content = ""
				}, cfpara or {})
				local Paragraph = Instance.new("Frame")
				local UICorner_16 = Instance.new("UICorner")
				local Title_6 = Instance.new("TextLabel")
				local Content_4 = Instance.new("TextLabel")
				local ParaFunc = {}
				Paragraph.Name = "Paragraph"
				Paragraph.Parent = SectionList
				Paragraph.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Nền tối
				Paragraph.BackgroundTransparency = 0.100
				Paragraph.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Paragraph.BorderSizePixel = 0
				Paragraph.Size = UDim2.new(1, 0, 0, 45)

				UICorner_16.CornerRadius = UDim.new(0, 6)
				UICorner_16.Parent = Paragraph

				Title_6.Name = "Title"
				Title_6.Parent = Paragraph
				Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_6.BackgroundTransparency = 1.000
				Title_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title_6.BorderSizePixel = 0
				Title_6.Position = UDim2.new(0, 10, 0, 7)
				Title_6.Size = UDim2.new(1, -60, 0, 16)
				Title_6.Font = Enum.Font.GothamBold
				Title_6.Text = cfpara.Title
				Title_6.TextColor3 = Color3.fromRGB(255, 184, 28) -- Chữ vàng cam
				Title_6.TextSize = 13.000
				Title_6.TextXAlignment = Enum.TextXAlignment.Left

				Content_4.Name = "Content"
				Content_4.Parent = Paragraph
				Content_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Content_4.BackgroundTransparency = 1.000
				Content_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Content_4.BorderSizePixel = 0
				Content_4.Position = UDim2.new(0, 10, 0, 22)
				Content_4.Size = UDim2.new(1, -10, 1, 0)
				Content_4.Font = Enum.Font.GothamBold
				Content_4.Text = cfpara.Content
				Content_4.TextColor3 = Color3.fromRGB(150, 150, 150) -- Chữ xám
				Content_4.TextSize = 12.000
				Content_4.TextXAlignment = Enum.TextXAlignment.Left
				Content_4.TextYAlignment = Enum.TextYAlignment.Top
				Library:UpdateContent(Content_4, Title_6, Paragraph)
				function ParaFunc:SetTitle(args)
					Title_6.Text = args
				end

				function ParaFunc:SetDesc(args)
					Content_4.Text = args
				end
				return ParaFunc
			end
			return SectionFunc
		end

		return TabFunc
	end
	local G2L = {};

	-- StarterGui.ScreenGui
	G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
	G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

	-- StarterGui.ScreenGui.ImageButton
	G2L["2"] = Instance.new("ImageButton", G2L["1"]);
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"].Visible = true
	self:MakeDraggable(G2L["2"],G2L["2"])
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["2"]["Image"] = "rbxassetid://136103435617044"; -- Logo chuối
	G2L["2"]["Size"] = UDim2.new(0, 50, 0, 50);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["Position"] = UDim2.new(0.05, 0, 0.4, 0); -- Vị trí góc trái

	-- StarterGui.ScreenGui.ImageButton.UICorner
	G2L["3"] = Instance.new("UICorner", G2L["2"]);
	G2L["3"]["CornerRadius"] = UDim.new(1, 0);

	-- StarterGui.ScreenGui.ImageButton.UIStroke
	G2L["4"] = Instance.new("UIStroke", G2L["2"]);
	G2L["4"]["Thickness"] = 2;
	G2L["4"]["Color"] = Color3.fromRGB(255, 184, 28); -- Viền vàng cam
	G2L["2"].MouseButton1Click:Connect(function()
		BananaUI.Enabled = not BananaUI.Enabled
	end)
	Minize.MouseButton1Click:Connect(function()
		BananaUI.Enabled = false
	end)
	return Tab
end

return Library