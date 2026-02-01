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
        Title = "NazuX Hub - Blox Fr",
        Description = "12+",
    }, ConfigWindow or {})
    local TeddyUI_Premium = Instance.new("ScreenGui")
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
    local TopSearch = Instance.new("Frame")
    local SearchFrame = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local IconSearch = Instance.new("ImageLabel")
    local SearchBox = Instance.new("TextBox")
    local TabFrame = Instance.new("Frame")
    local Line_2 = Instance.new("Frame")
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
    
    TeddyUI_Premium.Name = "NazuXHubUI"
    TeddyUI_Premium.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    TeddyUI_Premium.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    DropShadowHolder.Name = "DropShadowHolder"
    DropShadowHolder.Parent = TeddyUI_Premium
    DropShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
    DropShadowHolder.BackgroundTransparency = 1.000
    DropShadowHolder.BorderSizePixel = 0
    DropShadowHolder.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropShadowHolder.Size = UDim2.new(0, 600, 0, 400)
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
    Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    Main.BackgroundTransparency = 0.050
    Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 600, 0, 400)

    UICorner.Parent = Main
    UICorner.CornerRadius = UDim.new(0, 8)

    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Top.BackgroundTransparency = 0.000
    Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Top.BorderSizePixel = 0
    Top.Size = UDim2.new(1, 0, 0, 40)

    Line.Name = "Line"
    Line.Parent = Top
    Line.BackgroundColor3 = Color3.fromRGB(255, 69, 69)
    Line.BackgroundTransparency = 0.000
    Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Line.BorderSizePixel = 0
    Line.Position = UDim2.new(0, 0, 1, -1)
    Line.Size = UDim2.new(1, 0, 0, 2)

    Left.Name = "Left"
    Left.Parent = Top

    NameHub.Name = "NameHub"
    NameHub.Parent = Left
    NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.BackgroundTransparency = 1.000
    NameHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
    NameHub.BorderSizePixel = 0
    NameHub.Position = UDim2.new(0, 50, 0, 5)
    NameHub.Size = UDim2.new(0, 200, 0, 20)
    NameHub.Font = Enum.Font.GothamBold
    NameHub.Text = ConfigWindow.Title
    NameHub.TextColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.TextSize = 16.000
    NameHub.TextXAlignment = Enum.TextXAlignment.Left

    LogoHub.Name = "LogoHub"
    LogoHub.Parent = Left
    LogoHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LogoHub.BackgroundTransparency = 1.000
    LogoHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LogoHub.BorderSizePixel = 0
    LogoHub.Position = UDim2.new(0, 10, 0, 5)
    LogoHub.Size = UDim2.new(0, 30, 0, 30)
    LogoHub.Image = "rbxassetid://89646749075297"

    Desc.Name = "Desc"
    Desc.Parent = Left
    Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Desc.BackgroundTransparency = 1.000
    Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Desc.BorderSizePixel = 0
    Desc.Position = UDim2.new(0, 50, 0, 25)
    Desc.Size = UDim2.new(0, 200, 1, -25)
    Desc.Font = Enum.Font.GothamBold
    Desc.Text = ConfigWindow.Description
    Desc.TextColor3 = Color3.fromRGB(150, 150, 150)
    Desc.TextSize = 10.000
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
    UIPadding.PaddingTop = UDim.new(0, 8)
    UIPadding.PaddingRight = UDim.new(0, 10)

    Minize.Name = "Minize"
    Minize.Parent = Frame
    Minize.Active = false
    Minize.AnchorPoint = Vector2.new(0, 0.5)
    Minize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Minize.BackgroundTransparency = 1.000
    Minize.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Minize.BorderSizePixel = 0
    Minize.Selectable = false
    Minize.Size = UDim2.new(0, 25, 0, 25)
    Minize.Text = ""

    Icon.Name = "Icon"
    Icon.Parent = Minize
    Icon.AnchorPoint = Vector2.new(0.5, 0.5)
    Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon.BackgroundTransparency = 1.000
    Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Icon.BorderSizePixel = 0
    Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
    Icon.Size = UDim2.new(0, 18, 0, 18)
    Icon.Image = "rbxassetid://136452605242985"
    Icon.ImageRectOffset = Vector2.new(288, 672)
    Icon.ImageRectSize = Vector2.new(96, 96)
    Icon.ImageColor3 = Color3.fromRGB(255, 100, 100)

    Large.Name = "Large"
    Large.Parent = Frame
    Large.Active = false
    Large.AnchorPoint = Vector2.new(0, 0.5)
    Large.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Large.BackgroundTransparency = 1.000
    Large.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Large.BorderSizePixel = 0
    Large.Selectable = false
    Large.Size = UDim2.new(0, 25, 0, 25)
    Large.Text = ""

    Icon_2.Name = "Icon"
    Icon_2.Parent = Large
    Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon_2.BackgroundTransparency = 1.000
    Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Icon_2.BorderSizePixel = 0
    Icon_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    Icon_2.Size = UDim2.new(0, 16, 0, 16)
    Icon_2.Image = "rbxassetid://136452605242985"
    Icon_2.ImageRectOffset = Vector2.new(580, 194)
    Icon_2.ImageRectSize = Vector2.new(96, 96)
    Icon_2.ImageColor3 = Color3.fromRGB(255, 100, 100)

    Close.Name = "Close"
    Close.Parent = Frame
    Close.Active = false
    Close.AnchorPoint = Vector2.new(0, 0.5)
    Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Close.BackgroundTransparency = 1.000
    Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Close.BorderSizePixel = 0
    Close.Selectable = false
    Close.Size = UDim2.new(0, 25, 0, 25)
    Close.Text = ""
    Close.MouseButton1Down:Connect(function()
        DropdownZone.Visible = true
        local tat_ = Instance.new("Frame", DropdownZone);
        tat_["BorderSizePixel"] = 0;
        tat_["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
        tat_["AnchorPoint"] = Vector2.new(0.5, 0.5);
        tat_["Size"] = UDim2.new(0, 400, 0, 150);
        tat_["Position"] = UDim2.new(0.5, 0, 0.5, 0);
        tat_["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        tat_["Name"] = [[Tat]];

        local suacc = Instance.new("UIStroke", tat_);
        suacc["Transparency"] = 0.5;
        suacc["Color"] = Color3.fromRGB(255, 69, 69);

        local suacc2 = Instance.new("UICorner", tat_);
        suacc2["CornerRadius"] = UDim.new(0, 8);

        local suacc3 = Instance.new("TextLabel", tat_);
        suacc3["BorderSizePixel"] = 0;
        suacc3["TextSize"] = 20;
        suacc3["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        suacc3["FontFace"] = Font.new([[rbxasset://fonts/families/GothamBold.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
        suacc3["TextColor3"] = Color3.fromRGB(255, 255, 255);
        suacc3["BackgroundTransparency"] = 1;
        suacc3["Size"] = UDim2.new(0, 400, 0, 50);
        suacc3["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        suacc3["Text"] = [[Are you sure you want to close?]];

        local btnyes = Instance.new("TextButton", tat_);
        btnyes["BorderSizePixel"] = 0;
        btnyes["TextSize"] = 18;
        btnyes["TextColor3"] = Color3.fromRGB(255, 255, 255);
        btnyes["BackgroundColor3"] = Color3.fromRGB(255, 69, 69);
        btnyes["FontFace"] = Font.new([[rbxasset://fonts/families/GothamBold.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
        btnyes["AnchorPoint"] = Vector2.new(0, 1);
        btnyes["Size"] = UDim2.new(0, 150, 0, 40);
        btnyes["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        btnyes["Text"] = [[Yes]];
        btnyes["Position"] = UDim2.new(0, 40, 1, -40);
        btnyes.MouseButton1Down:Connect(function()
            TeddyUI_Premium:Destroy()
        end)

        local thuaaa = Instance.new("UICorner", btnyes);
        thuaaa["CornerRadius"] = UDim.new(0, 6);

        local btnno = Instance.new("TextButton", tat_);
        btnno["BorderSizePixel"] = 0;
        btnno["TextSize"] = 18;
        btnno["TextColor3"] = Color3.fromRGB(255, 255, 255);
        btnno["BackgroundColor3"] = Color3.fromRGB(60, 60, 60);
        btnno["FontFace"] = Font.new([[rbxasset://fonts/families/GothamBold.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
        btnno["AnchorPoint"] = Vector2.new(1, 1);
        btnno["Size"] = UDim2.new(0, 150, 0, 40);
        btnno["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        btnno["Text"] = [[No]];
        btnno["Position"] = UDim2.new(1, -40, 1, -40);

        btnno.MouseButton1Down:Connect(function()
            tat_:Destroy()
            DropdownZone.Visible = false
        end)
        
        local thuaa = Instance.new("UICorner", btnno);
        thuaa["CornerRadius"] = UDim.new(0, 6);
    end)
    
    Icon_3.Name = "Icon"
    Icon_3.Parent = Close
    Icon_3.AnchorPoint = Vector2.new(0.5, 0.5)
    Icon_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon_3.BackgroundTransparency = 1.000
    Icon_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Icon_3.BorderSizePixel = 0
    Icon_3.Position = UDim2.new(0.5, 0, 0.5, 0)
    Icon_3.Size = UDim2.new(0, 18, 0, 18)
    Icon_3.Image = "rbxassetid://105957381820378"
    Icon_3.ImageRectOffset = Vector2.new(480, 0)
    Icon_3.ImageRectSize = Vector2.new(96, 96)
    Icon_3.ImageColor3 = Color3.fromRGB(255, 100, 100)

    UIStroke.Color = Color3.fromRGB(255, 69, 69)
    UIStroke.Thickness = 1
    UIStroke.Transparency = 0.3
    UIStroke.Parent = Main

    TopSearch.Name = "TopSearch"
    TopSearch.Parent = Main
    TopSearch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopSearch.BackgroundTransparency = 1.000
    TopSearch.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TopSearch.BorderSizePixel = 0
    TopSearch.Position = UDim2.new(0, 0, 0, 40)
    TopSearch.Size = UDim2.new(1, 0, 0, 45)

    SearchFrame.Name = "SearchFrame"
    SearchFrame.Parent = TopSearch
    SearchFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    SearchFrame.BackgroundTransparency = 0.000
    SearchFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SearchFrame.BorderSizePixel = 0
    SearchFrame.Position = UDim2.new(0, 15, 0, 8)
    SearchFrame.Size = UDim2.new(1, -30, 0, 30)

    UICorner_2.CornerRadius = UDim.new(0, 6)
    UICorner_2.Parent = SearchFrame

    IconSearch.Name = "IconSearch"
    IconSearch.Parent = SearchFrame
    IconSearch.AnchorPoint = Vector2.new(0, 0.5)
    IconSearch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    IconSearch.BackgroundTransparency = 1.000
    IconSearch.BorderColor3 = Color3.fromRGB(0, 0, 0)
    IconSearch.BorderSizePixel = 0
    IconSearch.Position = UDim2.new(0, 10, 0.5, 0)
    IconSearch.Size = UDim2.new(0, 18, 0, 18)
    IconSearch.Image = "rbxassetid://71309835376233"
    IconSearch.ImageColor3 = Color3.fromRGB(255, 100, 100)

    SearchBox.Name = "SearchBox"
    SearchBox.Parent = SearchFrame
    SearchBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SearchBox.BackgroundTransparency = 1.000
    SearchBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SearchBox.BorderSizePixel = 0
    SearchBox.ClipsDescendants = true
    SearchBox.Position = UDim2.new(0, 40, 0, 0)
    SearchBox.Size = UDim2.new(1, -40, 1, 0)
    SearchBox.Font = Enum.Font.GothamBold
    SearchBox.PlaceholderText = "Q Search section or Func"
    SearchBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
    SearchBox.Text = ""
    SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    SearchBox.TextSize = 13.000
    SearchBox.TextXAlignment = Enum.TextXAlignment.Left

    TabFrame.Name = "TabFrame"
    TabFrame.Parent = Main
    TabFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TabFrame.BackgroundTransparency = 0.000
    TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabFrame.BorderSizePixel = 0
    TabFrame.Position = UDim2.new(0, 0, 0, 85)
    TabFrame.Size = UDim2.new(0, 160, 1, -85)

    Line_2.Name = "Line"
    Line_2.Parent = TabFrame
    Line_2.BackgroundColor3 = Color3.fromRGB(255, 69, 69)
    Line_2.BackgroundTransparency = 0.300
    Line_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Line_2.BorderSizePixel = 0
    Line_2.Position = UDim2.new(1, -1, 0, 0)
    Line_2.Size = UDim2.new(0, 2, 1, 0)

    ScrollingTab.Name = "ScrollingTab"
    ScrollingTab.Parent = TabFrame
    ScrollingTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingTab.BackgroundTransparency = 1.000
    ScrollingTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScrollingTab.BorderSizePixel = 0
    ScrollingTab.Position = UDim2.new(0, 0, 0, 10)
    ScrollingTab.Selectable = false
    ScrollingTab.Size = UDim2.new(1, 0, 1, -10)
    ScrollingTab.ScrollBarThickness = 0
    
    UIPadding_2.Parent = ScrollingTab
    UIPadding_2.PaddingBottom = UDim.new(0, 5)
    UIPadding_2.PaddingLeft = UDim.new(0, 10)
    UIPadding_2.PaddingRight = UDim.new(0, 10)
    UIPadding_2.PaddingTop = UDim.new(0, 5)

    UIListLayout_2.Parent = ScrollingTab
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0, 5)

    LayoutFrame.Name = "LayoutFrame"
    LayoutFrame.Parent = Main
    LayoutFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LayoutFrame.BackgroundTransparency = 1.000
    LayoutFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LayoutFrame.BorderSizePixel = 0
    LayoutFrame.Position = UDim2.new(0, 160, 0, 85)
    LayoutFrame.Size = UDim2.new(1, -160, 1, -85)
    LayoutFrame.ClipsDescendants = true

    RealLayout.Name = "RealLayout"
    RealLayout.Parent = LayoutFrame
    RealLayout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    RealLayout.BackgroundTransparency = 1.000
    RealLayout.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RealLayout.BorderSizePixel = 0
    RealLayout.Position = UDim2.new(0, 0, 0, 0)
    RealLayout.Size = UDim2.new(1, 0, 1, 0)

    LayoutList.Name = "Layout List"
    LayoutList.Parent = RealLayout

    UIPageLayout.Parent = LayoutList
    UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
    UIPageLayout.TweenTime = 0.300

    LayoutName.Name = "LayoutName"
    LayoutName.Parent = LayoutFrame
    LayoutName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LayoutName.BackgroundTransparency = 1.000
    LayoutName.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LayoutName.BorderSizePixel = 0
    LayoutName.Size = UDim2.new(1, 0, 0, 30)

    TextLabel.Parent = LayoutName
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0, 15, 0, 0)
    TextLabel.Size = UDim2.new(1, -15, 1, 0)
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.Text = ""
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
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
    
    self:UpdateScrolling(ScrollingTab, UIListLayout_2)
    self:MakeDraggable(Top, DropShadowHolder)
    
    local AllLayouts = 0
    local Tab = {}
    
    -- Tab buttons creation function (simplified from original)
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
        Choose_2.BackgroundColor3 = Color3.fromRGB(255, 69, 69)
        Choose_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Choose_2.BorderSizePixel = 0
        Choose_2.Position = UDim2.new(0, 0, 0, 5)
        Choose_2.Size = UDim2.new(0, 4, 0, 25)
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
        NameTab_2.TextColor3 = Color3.fromRGB(200, 200, 200)
        NameTab_2.TextSize = 13.000
        NameTab_2.TextTransparency = 0.300
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
        
        self:UpdateScrolling(Layout, UIListLayout_3)
        UIPadding_3.Parent = Layout
        UIPadding_3.PaddingBottom = UDim.new(0, 15)
        UIPadding_3.PaddingLeft = UDim.new(0, 15)
        UIPadding_3.PaddingRight = UDim.new(0, 15)
        UIPadding_3.PaddingTop = UDim.new(0, 15)

        UIListLayout_3.Parent = Layout
        UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_3.Padding = UDim.new(0, 15)
        
        if AllLayouts == 0 then
            NameTab_2.TextTransparency = 0
            NameTab_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Choose_2.Visible = true
            UIPageLayout:JumpToIndex(0)
            TextLabel.Text = t
        end
        
        Click_Tab_2.Activated:Connect(function()
            TextLabel.Text = t
            for i, v in next, ScrollingTab:GetChildren() do
                if v:IsA("Frame") then
                    Library:TweenInstance(v.NameTab, 0.3, "TextTransparency", 0.3)
                    Library:TweenInstance(v.NameTab, 0.3, "TextColor3", Color3.fromRGB(200, 200, 200))
                    v.Choose.Visible = false
                end
            end
            Library:TweenInstance(NameTab_2, 0.2, "TextTransparency", 0)
            Library:TweenInstance(NameTab_2, 0.2, "TextColor3", Color3.fromRGB(255, 255, 255))
            UIPageLayout:JumpToIndex(Layout.LayoutOrder)
            Choose_2.Visible = true
        end)
        
        AllLayouts = AllLayouts + 1
        local TabFunc = {}
        
        -- Rest of the TabFunc functions (AddSection, AddToggle, AddButton, etc.)
        -- These remain mostly the same but with color changes to red theme
        
        return TabFunc
    end
    
    -- Toggle button for the UI
    local G2L = {};

    G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
    G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

    G2L["2"] = Instance.new("ImageButton", G2L["1"]);
    G2L["2"]["BorderSizePixel"] = 0;
    G2L["2"].Visible = true
    self:MakeDraggable(G2L["2"],G2L["2"])
    G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 69, 69);
    G2L["2"]["Image"] = "";
    G2L["2"]["Size"] = UDim2.new(0, 50, 0, 50);
    G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["2"]["Position"] = UDim2.new(0, 20, 0.5, 0);

    G2L["3"] = Instance.new("UICorner", G2L["2"]);
    G2L["3"]["CornerRadius"] = UDim.new(1, 0);

    G2L["4"] = Instance.new("UIStroke", G2L["2"]);
    G2L["4"]["Thickness"] = 2;
    G2L["4"]["Color"] = Color3.fromRGB(255, 120, 120);
    
    G2L["5"] = Instance.new("TextLabel", G2L["2"]);
    G2L["5"]["Text"] = "N";
    G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["5"]["BackgroundTransparency"] = 1;
    G2L["5"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["5"]["Font"] = Enum.Font.GothamBold;
    G2L["5"]["TextSize"] = 24;
    
    G2L["2"].MouseButton1Click:Connect(function()
        TeddyUI_Premium.Enabled = not TeddyUI_Premium.Enabled
    end)
    
    Minize.MouseButton1Click:Connect(function()
        TeddyUI_Premium.Enabled = false
    end)
    
    return Tab
end

return Library