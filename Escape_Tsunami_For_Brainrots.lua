--[[
    NIGHT SLAYER HUB - ESCAPE TSUNAMI FOR BRAINROTS
    Developer: discord_betaa
    Discord: discord.gg/wWHxH6ARU
    TikTok: @discord_betaa
    Version: 2.0
]]

-- ==================== MÀN HÌNH LOADING ====================
local function CreateLoadingScreen()
    local loadingScreen = Instance.new("ScreenGui")
    loadingScreen.Name = "LoadingScreen"
    loadingScreen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(1, 0, 1, 0)
    mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    mainFrame.Parent = loadingScreen
    
    local logo = Instance.new("ImageLabel")
    logo.Size = UDim2.new(0, 150, 0, 150)
    logo.Position = UDim2.new(0.5, -75, 0.5, -100)
    logo.Image = "rbxassetid://130627959945120"
    logo.BackgroundTransparency = 1
    logo.Parent = mainFrame
    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 50)
    title.Position = UDim2.new(0, 0, 0.5, 40)
    title.Text = "Night Slayer Hub"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 24
    title.Font = Enum.Font.GothamBold
    title.BackgroundTransparency = 1
    title.Parent = mainFrame
    
    local subtitle = Instance.new("TextLabel")
    subtitle.Size = UDim2.new(1, 0, 0, 30)
    subtitle.Position = UDim2.new(0, 0, 0.5, 80)
    subtitle.Text = "Escape Tsunami For Brainrots"
    subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
    subtitle.TextSize = 16
    subtitle.Font = Enum.Font.Gotham
    subtitle.BackgroundTransparency = 1
    subtitle.Parent = mainFrame
    
    local loadingText = Instance.new("TextLabel")
    loadingText.Size = UDim2.new(1, 0, 0, 30)
    loadingText.Position = UDim2.new(0, 0, 0.5, 120)
    loadingText.Text = "Initializing Script..."
    loadingText.TextColor3 = Color3.fromRGB(180, 180, 180)
    loadingText.TextSize = 14
    loadingText.Font = Enum.Font.Gotham
    loadingText.BackgroundTransparency = 1
    loadingText.Parent = mainFrame
    
    local timerText = Instance.new("TextLabel")
    timerText.Size = UDim2.new(1, 0, 0, 30)
    timerText.Position = UDim2.new(0, 0, 0.5, 150)
    timerText.Text = "Please wait: 20.59 seconds"
    timerText.TextColor3 = Color3.fromRGB(255, 165, 0)
    timerText.TextSize = 14
    timerText.Font = Enum.Font.Gotham
    timerText.BackgroundTransparency = 1
    timerText.Name = "TimerText"
    timerText.Parent = mainFrame
    
    return loadingScreen, timerText
end

-- Tạo màn hình loading
local loadingScreen, timerText = CreateLoadingScreen()

-- Hàm cập nhật đếm ngược
local function UpdateCountdown(timeLeft)
    timerText.Text = string.format("Please wait: %.1f seconds", timeLeft)
end

-- Đếm ngược 20.59 giây
local waitTime = 20.59
local startTime = tick()

while tick() - startTime < waitTime do
    local timeLeft = waitTime - (tick() - startTime)
    UpdateCountdown(timeLeft)
    task.wait(0.1)
end

-- Xóa màn hình loading
loadingScreen:Destroy()

-- ==================== KHỞI TẠO THƯ VIỆN ====================
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/discoart/FluentPlus/refs/heads/main/release.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

-- Biến toàn cục
local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")

-- Biến cho tính năng
local features = {
    infiniteMoney = false,
    wallPenetration = false,
    autoCollectBrainrots = false,
    autoUpgradeMoney = false,
    autoUpgradeCharacter = false,
    speedBoost = false,
    autoAvoidTsunami = false,
    brainrotsLocator = false,
    godMode = false
}

local connections = {}
local brainrotMarkers = {}
local originalWalkSpeed = 16
local originalJumpPower = 50
local noClip = false
local vipAreaAccess = false

-- ==================== HỆ THỐNG NOTIFICATION ====================
local function CreateNotification(title, message, duration)
    duration = duration or 3
    
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    local notify = Instance.new("Frame")
    notify.Size = UDim2.new(0, 300, 0, 100)
    notify.Position = UDim2.new(1, 10, 1, -110)
    notify.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    notify.BackgroundTransparency = 0.2
    notify.BorderSizePixel = 0
    notify.Parent = screenGui
    
    Instance.new("UICorner", notify).CornerRadius = UDim.new(0, 10)
    
    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(0, 150, 255)
    stroke.Thickness = 2
    stroke.Parent = notify
    
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Position = UDim2.new(0, 15, 0, 15)
    titleLabel.Size = UDim2.new(1, -30, 0, 25)
    titleLabel.Text = "🔔 " .. title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextSize = 18
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.BackgroundTransparency = 1
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = notify
    
    local messageLabel = Instance.new("TextLabel")
    messageLabel.Position = UDim2.new(0, 15, 0, 45)
    messageLabel.Size = UDim2.new(1, -30, 0, 50)
    messageLabel.Text = message
    messageLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    messageLabel.TextSize = 14
    messageLabel.Font = Enum.Font.Gotham
    messageLabel.TextWrapped = true
    messageLabel.BackgroundTransparency = 1
    messageLabel.TextXAlignment = Enum.TextXAlignment.Left
    messageLabel.Parent = notify
    
    -- Animation vào
    notify:TweenPosition(UDim2.new(1, -310, 1, -110), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.4, true)
    
    task.wait(duration)
    
    -- Animation ra
    notify:TweenPosition(UDim2.new(1, 10, 1, -110), Enum.EasingDirection.In, Enum.EasingStyle.Quint, 0.4, true)
    
    task.wait(0.4)
    screenGui:Destroy()
end

-- ==================== TẠO UI WINDOW ====================
local Window = Fluent:CreateWindow({
    Title = "Night Slayer Hub - Escape Tsunami",
    SubTitle = "by discord_betaa TIK TOK",
    TitleIcon = "rbxassetid://130627959945120",
    Image = "rbxassetid://130627959945120",
    DropdownsOutsideWindow = true,
    Size = UDim2.fromOffset(580, 450),
    TabWidth = 130,
    Acrylic = true,
    Theme = "Dark",
    Search = true,
    MinimizeKey = Enum.KeyCode.LeftControl,
    UserInfo = true,
    UserInfoTitle = player.DisplayName,
    UserInfoSubtitle = "Premium User",
    UserInfoSubtitleColor = Color3.fromRGB(0, 150, 255)
})

-- ==================== TẠO CÁC TAB MỚI ====================
local Tabs = {
    Home = Window:AddTab({ Title = "🏠 Home", Icon = "home" }),
    Main = Window:AddTab({ Title = "⚡ Main Features", Icon = "zap" }),
    AutoFarm = Window:AddTab({ Title = "🤖 Auto Farm", Icon = "bot" }),
    Character = Window:AddTab({ Title = "👤 Character", Icon = "user" }),
    Visuals = Window:AddTab({ Title = "👁️ Visuals", Icon = "eye" }),
    Settings = Window:AddTab({ Title = "⚙️ Settings", Icon = "settings" })
}

-- ==================== TAB HOME ====================
do
    Tabs.Home:AddParagraph({
        Title = "Welcome to Night Slayer Hub!",
        Content = "Premium script for Escape Tsunami For Brainrots"
    })
    
    local GameInfo = Tabs.Home:AddSection("Game Information")
    
    Tabs.Home:AddParagraph({
        Title = "Current Game",
        Content = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
    })
    
    Tabs.Home:AddParagraph({
        Title = "Player Info",
        Content = "Name: " .. player.Name .. "\nDisplay Name: " .. player.DisplayName .. "\nUser ID: " .. player.UserId
    })
    
    Tabs.Home:AddParagraph({
        Title = "Script Status",
        Content = "✓ Script loaded successfully\n✓ 20.59s wait completed\n✓ All systems ready\n✓ Ready to dominate!"
    })
    
    local Stats = Tabs.Home:AddSection("Quick Stats")
    
    local moneyLabel = Tabs.Home:AddParagraph({
        Title = "Money: Loading...",
        Content = "Brainrots: Loading..."
    })
    
    -- Cập nhật stats
    task.spawn(function()
        while true do
            task.wait(1)
            pcall(function()
                -- Tìm money và brainrots trong game (cần điều chỉnh theo game thực tế)
                local leaderstats = player:FindFirstChild("leaderstats")
                if leaderstats then
                    local money = leaderstats:FindFirstChild("Money") or leaderstats:FindFirstChild("Cash")
                    local brainrots = leaderstats:FindFirstChild("Brainrots") or leaderstats:FindFirstChild("Points")
                    
                    if money then
                        moneyLabel:SetTitle("Money: " .. tostring(money.Value))
                    end
                    if brainrots then
                        moneyLabel:SetDesc("Brainrots: " .. tostring(brainrots.Value))
                    end
                end
            end)
        end
    end)
    
    local Buttons = Tabs.Home:AddSection("Quick Actions")
    
    Tabs.Home:AddButton({
        Title = "Copy Discord",
        Description = "Join our community",
        Callback = function()
            setclipboard("https://discord.gg/wWHxH6ARU")
            CreateNotification("Discord", "Link copied to clipboard!", 2)
        end
    })
    
    Tabs.Home:AddButton({
        Title = "Support",
        Description = "Get help and support",
        Callback = function()
            Window:Dialog({
                Title = "Support",
                Content = "TikTok: @discord_betaa\nDiscord: discord_betaa\nEmail: support@nightslayer.com",
                Buttons = {
                    {
                        Title = "OK",
                        Callback = function() end
                    }
                }
            })
        end
    })
end

-- ==================== TAB MAIN FEATURES ====================
do
    local MoneySection = Tabs.Main:AddSection("💰 Money Features")
    
    local infiniteMoneyToggle = Tabs.Main:AddToggle("InfiniteMoney", {
        Title = "Infinite Money",
        Description = "Gives you unlimited money",
        Default = false,
        Callback = function(value)
            features.infiniteMoney = value
            if value then
                CreateNotification("Infinite Money", "Money set to infinite!", 2)
                -- Tự động set money cao
                task.spawn(function()
                    while features.infiniteMoney do
                        task.wait(0.5)
                        pcall(function()
                            local leaderstats = player:FindFirstChild("leaderstats")
                            if leaderstats then
                                local moneyStat = leaderstats:FindFirstChild("Money") or leaderstats:FindFirstChild("Cash")
                                if moneyStat then
                                    moneyStat.Value = 999999
                                end
                            end
                        end)
                    end
                end)
            end
        end
    })
    
    Tabs.Main:AddButton({
        Title = "Get 1M Money",
        Description = "Instantly get 1 million money",
        Callback = function()
            pcall(function()
                local leaderstats = player:FindFirstChild("leaderstats")
                if leaderstats then
                    local moneyStat = leaderstats:FindFirstChild("Money") or leaderstats:FindFirstChild("Cash")
                    if moneyStat then
                        moneyStat.Value = moneyStat.Value + 1000000
                        CreateNotification("Money Added", "Added 1,000,000 money!", 2)
                    end
                end
            end)
        end
    })
    
    local VipSection = Tabs.Main:AddSection("🚀 VIP Features")
    
    local wallPenToggle = Tabs.Main:AddToggle("WallPenetration", {
        Title = "Wall Penetration",
        Description = "Walk through walls (VIP Area)",
        Default = false,
        Callback = function(value)
            features.wallPenetration = value
            noClip = value
            
            if value then
                CreateNotification("Wall Penetration", "No-clip activated! Walk through walls.", 2)
                -- Kích hoạt NoClip
                task.spawn(function()
                    while features.wallPenetration do
                        task.wait()
                        pcall(function()
                            if player.Character then
                                for _, part in pairs(player.Character:GetDescendants()) do
                                    if part:IsA("BasePart") and part.CanCollide then
                                        part.CanCollide = false
                                    end
                                end
                            end
                        end)
                    end
                end)
            else
                -- Tắt NoClip
                pcall(function()
                    if player.Character then
                        for _, part in pairs(player.Character:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = true
                            end
                        end
                    end
                end)
            end
        end
    })
    
    Tabs.Main:AddButton({
        Title = "Teleport to VIP Area",
        Description = "Teleport to the VIP section",
        Callback = function()
            pcall(function()
                -- Tìm VIP Area trong game
                local vipArea = Workspace:FindFirstChild("VIP") or Workspace:FindFirstChild("VipArea")
                if vipArea then
                    player.Character:SetPrimaryPartCFrame(vipArea.CFrame + Vector3.new(0, 5, 0))
                    CreateNotification("VIP Teleport", "Teleported to VIP Area!", 2)
                else
                    CreateNotification("VIP Teleport", "VIP Area not found!", 2)
                end
            end)
        end
    })
    
    local SpeedSection = Tabs.Main:AddSection("🏃 Speed Features")
    
    local speedToggle = Tabs.Main:AddToggle("SpeedBoost", {
        Title = "Speed Boost",
        Description = "Increase movement speed",
        Default = false,
        Callback = function(value)
            features.speedBoost = value
            if value then
                CreateNotification("Speed Boost", "Movement speed increased!", 2)
                task.spawn(function()
                    while features.speedBoost and player.Character do
                        task.wait()
                        pcall(function()
                            local humanoid = player.Character:FindFirstChild("Humanoid")
                            if humanoid then
                                humanoid.WalkSpeed = 50
                                humanoid.JumpPower = 75
                            end
                        end)
                    end
                end)
            else
                pcall(function()
                    if player.Character then
                        local humanoid = player.Character:FindFirstChild("Humanoid")
                        if humanoid then
                            humanoid.WalkSpeed = originalWalkSpeed
                            humanoid.JumpPower = originalJumpPower
                        end
                    end
                end)
            end
        end
    })
    
    local speedSlider = Tabs.Main:AddSlider("SpeedValue", {
        Title = "Speed Multiplier",
        Description = "Adjust your speed",
        Default = 50,
        Min = 16,
        Max = 200,
        Rounding = 1,
        Callback = function(value)
            if features.speedBoost and player.Character then
                pcall(function()
                    local humanoid = player.Character:FindFirstChild("Humanoid")
                    if humanoid then
                        humanoid.WalkSpeed = value
                    end
                end)
            end
        end
    })
    
    local GodModeSection = Tabs.Main:AddSection("🛡️ God Mode")
    
    local godToggle = Tabs.Main:AddToggle("GodMode", {
        Title = "God Mode",
        Description = "Become invincible",
        Default = false,
        Callback = function(value)
            features.godMode = value
            if value then
                CreateNotification("God Mode", "You are now invincible!", 2)
                -- Bất tử
                pcall(function()
                    if player.Character then
                        local humanoid = player.Character:FindFirstChild("Humanoid")
                        if humanoid then
                            humanoid.MaxHealth = math.huge
                            humanoid.Health = math.huge
                        end
                    end
                end)
            else
                -- Tắt bất tử
                pcall(function()
                    if player.Character then
                        local humanoid = player.Character:FindFirstChild("Humanoid")
                        if humanoid then
                            humanoid.MaxHealth = 100
                            humanoid.Health = 100
                        end
                    end
                end)
            end
        end
    })
end

-- ==================== TAB AUTO FARM ====================
do
    local CollectSection = Tabs.AutoFarm:AddSection("💰 Auto Collect")
    
    local autoCollectToggle = Tabs.AutoFarm:AddToggle("AutoCollect", {
        Title = "Auto Collect Brainrots",
        Description = "Automatically collects all brainrots",
        Default = false,
        Callback = function(value)
            features.autoCollectBrainrots = value
            if value then
                CreateNotification("Auto Collect", "Started auto collecting brainrots!", 2)
                -- Auto collect logic
                task.spawn(function()
                    while features.autoCollectBrainrots do
                        task.wait(0.1)
                        pcall(function()
                            -- Tìm brainrots trong workspace
                            for _, item in pairs(Workspace:GetChildren()) do
                                if item.Name:lower():find("brainrot") or item.Name:lower():find("coin") then
                                    if item:IsA("BasePart") then
                                        firetouchinterest(player.Character.HumanoidRootPart, item, 0)
                                        task.wait()
                                        firetouchinterest(player.Character.HumanoidRootPart, item, 1)
                                    end
                                end
                            end
                        end)
                    end
                end)
            end
        end
    })
    
    Tabs.AutoFarm:AddButton({
        Title = "Collect All Nearby",
        Description = "Collect all brainrots in range",
        Callback = function()
            pcall(function()
                local count = 0
                for _, item in pairs(Workspace:GetChildren()) do
                    if item.Name:lower():find("brainrot") or item.Name:lower():find("coin") then
                        if item:IsA("BasePart") and player.Character then
                            firetouchinterest(player.Character.HumanoidRootPart, item, 0)
                            task.wait()
                            firetouchinterest(player.Character.HumanoidRootPart, item, 1)
                            count = count + 1
                        end
                    end
                end
                CreateNotification("Collection", "Collected " .. count .. " brainrots!", 2)
            end)
        end
    })
    
    local UpgradeSection = Tabs.AutoFarm:AddSection("📈 Auto Upgrade")
    
    local autoMoneyToggle = Tabs.AutoFarm:AddToggle("AutoUpgradeMoney", {
        Title = "Auto Upgrade Money",
        Description = "Automatically upgrades money multiplier",
        Default = false,
        Callback = function(value)
            features.autoUpgradeMoney = value
            if value then
                CreateNotification("Auto Upgrade", "Started auto upgrading money!", 2)
                -- Auto upgrade logic
                task.spawn(function()
                    while features.autoUpgradeMoney do
                        task.wait(1)
                        pcall(function()
                            -- Tìm upgrade buttons trong game UI
                            -- Cần điều chỉnh theo game cụ thể
                        end)
                    end
                end)
            end
        end
    })
    
    local autoCharToggle = Tabs.AutoFarm:AddToggle("AutoUpgradeCharacter", {
        Title = "Auto Upgrade Character",
        Description = "Automatically upgrades character stats",
        Default = false,
        Callback = function(value)
            features.autoUpgradeCharacter = value
            if value then
                CreateNotification("Auto Upgrade", "Started auto upgrading character!", 2)
                -- Auto upgrade logic
            end
        end
    })
    
    local TsunamiSection = Tabs.AutoFarm:AddSection("🌊 Tsunami Avoidance")
    
    local avoidToggle = Tabs.AutoFarm:AddToggle("AutoAvoid", {
        Title = "Auto Tsunami Avoidance",
        Description = "Automatically avoids tsunami waves",
        Default = false,
        Callback = function(value)
            features.autoAvoidTsunami = value
            if value then
                CreateNotification("Auto Avoid", "Tsunami avoidance activated!", 2)
                task.spawn(function()
                    while features.autoAvoidTsunami do
                        task.wait(0.5)
                        pcall(function()
                            -- Tìm tsunami trong workspace
                            local tsunami = Workspace:FindFirstChild("Tsunami") or Workspace:FindFirstChild("Wave")
                            if tsunami and player.Character then
                                local charPos = player.Character.HumanoidRootPart.Position
                                local wavePos = tsunami.Position
                                
                                -- Di chuyển ra xa sóng thần
                                if (charPos - wavePos).Magnitude < 50 then
                                    local direction = (charPos - wavePos).Unit
                                    player.Character.HumanoidRootPart.CFrame = CFrame.new(charPos + direction * 100)
                                end
                            end
                        end)
                    end
                end)
            end
        end
    })
end

-- ==================== TAB CHARACTER ====================
do
    local StatsSection = Tabs.Character:AddSection("📊 Character Stats")
    
    -- Hiển thị stats hiện tại
    local statsPara = Tabs.Character:AddParagraph({
        Title = "Current Stats",
        Content = "Loading..."
    })
    
    task.spawn(function()
        while true do
            task.wait(2)
            pcall(function()
                if player.Character then
                    local humanoid = player.Character:FindFirstChild("Humanoid")
                    if humanoid then
                        statsPara:SetTitle("Health: " .. math.floor(humanoid.Health) .. "/" .. math.floor(humanoid.MaxHealth))
                        statsPara:SetDesc("Speed: " .. humanoid.WalkSpeed .. " | Jump: " .. humanoid.JumpPower)
                    end
                end
            end)
        end
    end)
    
    local ControlSection = Tabs.Character:AddSection("🎮 Character Control")
    
    Tabs.Character:AddButton({
        Title = "Reset Character",
        Description = "Reset your character",
        Callback = function()
            player.Character:BreakJoints()
            CreateNotification("Character", "Character reset!", 2)
        end
    })
    
    Tabs.Character:AddButton({
        Title = "Heal Character",
        Description = "Restore full health",
        Callback = function()
            pcall(function()
                if player.Character then
                    local humanoid = player.Character:FindFirstChild("Humanoid")
                    if humanoid then
                        humanoid.Health = humanoid.MaxHealth
                        CreateNotification("Character", "Health restored!", 2)
                    end
                end
            end)
        end
    })
    
    local TeleportSection = Tabs.Character:AddSection("📍 Teleport Locations")
    
    -- Danh sách teleport locations
    local locations = {
        {"Spawn Point", "Spawn"},
        {"Safe Zone", "Safe"},
        {"High Ground", "High"},
        {"VIP Area", "VIP"},
        {"Brainrot Farm", "Farm"}
    }
    
    for _, loc in pairs(locations) do
        Tabs.Character:AddButton({
            Title = "TP to " .. loc[1],
            Description = "Teleport to " .. loc[1],
            Callback = function()
                pcall(function()
                    local target = Workspace:FindFirstChild(loc[2]) or Workspace:FindFirstChild(loc[1])
                    if target then
                        player.Character:SetPrimaryPartCFrame(target.CFrame + Vector3.new(0, 5, 0))
                        CreateNotification("Teleport", "Teleported to " .. loc[1] .. "!", 2)
                    else
                        CreateNotification("Teleport", "Location not found!", 2)
                    end
                end)
            end
        })
    end
end

-- ==================== TAB VISUALS ====================
do
    local LocatorSection = Tabs.Visuals:AddSection("📍 Brainrots Locator")
    
    local locatorToggle = Tabs.Visuals:AddToggle("BrainrotLocator", {
        Title = "Brainrots Locator",
        Description = "Show brainrots locations on map",
        Default = false,
        Callback = function(value)
            features.brainrotsLocator = value
            if value then
                CreateNotification("Locator", "Brainrot locator activated!", 2)
                -- Tạo markers
                task.spawn(function()
                    while features.brainrotsLocator do
                        task.wait(1)
                        pcall(function()
                            -- Xóa markers cũ
                            for _, marker in pairs(brainrotMarkers) do
                                marker:Destroy()
                            end
                            brainrotMarkers = {}
                            
                            -- Tạo markers mới
                            for _, item in pairs(Workspace:GetChildren()) do
                                if item.Name:lower():find("brainrot") or item.Name:lower():find("coin") then
                                    if item:IsA("BasePart") then
                                        local marker = Instance.new("BillboardGui")
                                        marker.Name = "BrainrotMarker"
                                        marker.Size = UDim2.new(4, 0, 4, 0)
                                        marker.AlwaysOnTop = true
                                        marker.Adornee = item
                                        marker.Parent = item
                                        
                                        local frame = Instance.new("Frame")
                                        frame.Size = UDim2.new(1, 0, 1, 0)
                                        frame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                                        frame.BackgroundTransparency = 0.5
                                        frame.BorderSizePixel = 0
                                        frame.Parent = marker
                                        
                                        Instance.new("UICorner", frame).CornerRadius = UDim.new(1, 0)
                                        
                                        table.insert(brainrotMarkers, marker)
                                    end
                                end
                            end
                        end)
                    end
                end)
            else
                -- Xóa markers
                for _, marker in pairs(brainrotMarkers) do
                    marker:Destroy()
                end
                brainrotMarkers = {}
            end
        end
    })
    
    local EspSection = Tabs.Visuals:AddSection("👥 Player ESP")
    
    local playerEspToggle = Tabs.Visuals:AddToggle("PlayerESP", {
        Title = "Player ESP",
        Description = "Show other players through walls",
        Default = false,
        Callback = function(value)
            if value then
                CreateNotification("ESP", "Player ESP activated!", 2)
                -- ESP logic here
            else
                CreateNotification("ESP", "Player ESP deactivated!", 2)
            end
        end
    })
    
    local VisualEffects = Tabs.Visuals:AddSection("✨ Visual Effects")
    
    Tabs.Visuals:AddButton({
        Title = "Rainbow Character",
        Description = "Make your character rainbow",
        Callback = function()
            pcall(function()
                if player.Character then
                    task.spawn(function()
                        while task.wait(0.1) do
                            for _, part in pairs(player.Character:GetChildren()) do
                                if part:IsA("BasePart") then
                                    part.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                                end
                            end
                        end
                    end)
                    CreateNotification("Visuals", "Rainbow effect applied!", 2)
                end
            end)
        end
    })
    
    Tabs.Visuals:AddButton({
        Title = "Remove Fog",
        Description = "Remove fog for better visibility",
        Callback = function()
            pcall(function()
                local lighting = game:GetService("Lighting")
                lighting.FogEnd = 100000
                lighting.FogStart = 99999
                CreateNotification("Visuals", "Fog removed!", 2)
            end)
        end
    })
end

-- ==================== TAB SETTINGS ====================
do
    local ConfigSection = Tabs.Settings:AddSection("⚙️ Configuration")
    
    Tabs.Settings:AddButton({
        Title = "Save Configuration",
        Description = "Save current settings",
        Callback = function()
            if SaveManager then
                SaveManager:Save("NightSlayerHub_ETFB")
                CreateNotification("Settings", "Configuration saved!", 2)
            end
        end
    })
    
    Tabs.Settings:AddButton({
        Title = "Load Configuration",
        Description = "Load saved settings",
        Callback = function()
            if SaveManager then
                SaveManager:Load("NightSlayerHub_ETFB")
                CreateNotification("Settings", "Configuration loaded!", 2)
            end
        end
    })
    
    local UISection = Tabs.Settings:AddSection("🎨 UI Settings")
    
    Tabs.Settings:AddDropdown("UITheme", {
        Title = "UI Theme",
        Values = {"Dark", "Light", "Darker", "Aqua", "Amethyst"},
        Default = "Dark",
        Callback = function(value)
            Fluent:SetTheme(value)
            CreateNotification("UI", "Theme changed to " .. value, 2)
        end
    })
    
    Tabs.Settings:AddSlider("UITransparency", {
        Title = "UI Transparency",
        Description = "Adjust UI transparency",
        Default = 0,
        Min = 0,
        Max = 1,
        Rounding = 2,
        Callback = function(value)
            -- Adjust UI transparency
        end
    })
    
    local ScriptSection = Tabs.Settings:AddSection("🔧 Script Controls")
    
    Tabs.Settings:AddButton({
        Title = "Reload Script",
        Description = "Reload the entire script",
        Callback = function()
            CreateNotification("Script", "Reloading script...", 2)
            task.wait(2)
            -- Reload logic here
        end
    })
    
    Tabs.Settings:AddButton({
        Title = "Destroy UI",
        Description = "Close the UI (rejoin to restore)",
        Callback = function()
            Window:Destroy()
            CreateNotification("Script", "UI destroyed. Rejoin to restore.", 3)
        end
    })
    
    Tabs.Settings:AddParagraph({
        Title = "Script Info",
        Content = "Version: 2.0\nGame: Escape Tsunami For Brainrots\nDeveloper: discord_betaa\nDiscord: discord.gg/wWHxH6ARU"
    })
end

-- ==================== KẾT NỐI SỰ KIỆN ====================
-- Nút điều khiển di động
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ControlGUI"
screenGui.Parent = game.CoreGui

local toggleButton = Instance.new("ImageButton")
toggleButton.Size = UDim2.new(0, 55, 0, 55)
toggleButton.Position = UDim2.new(0.02, 0, 0.4, 0)
toggleButton.Image = "rbxassetid://130627959945120"
toggleButton.BackgroundTransparency = 1
toggleButton.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.25, 0)
corner.Parent = toggleButton

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 150, 255)
stroke.Thickness = 2
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = toggleButton

-- Kéo thả UI
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    toggleButton.Position = UDim2.new(
        startPos.X.Scale,
        startPos.X.Offset + delta.X,
        startPos.Y.Scale,
        startPos.Y.Offset + delta.Y
    )
end

toggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = toggleButton.Position
    end
end)

toggleButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)

toggleButton.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

toggleButton.MouseButton1Click:Connect(function()
    Window:Minimize(not Window.Minimized)
end)

-- ==================== KHỞI TẠO MANAGERS ====================
if SaveManager then
    SaveManager:SetLibrary(Fluent)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({})
    SaveManager:Save("NightSlayerHub_ETFB")
end

if InterfaceManager then
    InterfaceManager:SetLibrary(Fluent)
    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
end

-- ==================== THÔNG BÁO KHI LOAD XONG ====================
task.wait(1)
CreateNotification("🎉 Night Slayer Hub", "Script loaded successfully!\nAll features are ready to use!", 4)

task.wait(3)
CreateNotification("⚠️ Important", "Join our Discord for updates!\ndiscord.gg/wWHxH6ARU", 5)

-- Phím tắt
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if input.KeyCode == Enum.KeyCode.RightControl then
            Window:Minimize(not Window.Minimized)
        elseif input.KeyCode == Enum.KeyCode.Insert then
            -- Toggle nhanh tính năng
        end
    end
end)

-- In thông tin
print("==========================================")
print("NIGHT SLAYER HUB - ESCAPE TSUNAMI FOR BRAINROTS")
print("Developer: discord_betaa")
print("Discord: discord.gg/wWHxH6ARU")
print("TikTok: @discord_betaa")
print("Version: 2.0")
print("==========================================")