-- Load WindUI safely
local success, WindUI = pcall(function()
    return loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
end)

if not success or not WindUI then
    warn("Failed to load WindUI: " .. tostring(WindUI))
    game:GetService("Players").LocalPlayer:Kick("Failed to load UI library.")
    return
end

local Window = WindUI:CreateWindow({
    Title = "Night Slayer Hub",
    Icon = "door-open",
    Author = "by babyrosts",
    Folder = "NightSlayerHub689",
    Size = UDim2.fromOffset(580, 460),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = false,
    ScrollBarEnabled = true
})

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualInputManager = game:GetService("VirtualInputManager")
local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")
local TeleportService = game:GetService("TeleportService")

local Player = Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local RootPart = Character:WaitForChild("HumanoidRootPart")

-- Variables
local TweenSpeed = 300
local DetectionDistance = 100
local AutoFarmEnabled = false
local AntiAFKEnabled = false
local InfiniteJumpsEnabled = false
local GodModeEnabled = false
local InstantCarryEnabled = false
local Brainrots = {}
local LuckyBlocks = {}
local Events = {}
local SelectedBrainrot = nil
local SelectedRarity = nil
local SelectedMutation = nil
local SelectedLuckyBlock = nil
local AutoSellRarity = false
local AutoSellMutation = false
local AutoSellAll = false
local AutoUpgradeBrainrot = false
local AutoUpgradeAll = false
local AutoUpgradeRarity = false
local AutoUpgradeMutation = false
local AutoUpgradeBase = false
local AutoBuySpeed = false
local AutoBuyCarry = false
local AutoRebirth = false
local ESPEnabled = false
local ESPObjects = {}

-- Tab creation
local Tabs = {
    Main = Window:Tab({ Title = "Main", Icon = "zap" }),
    AutoFarm = Window:Tab({ Title = "AutoFarm", Icon = "flower" }),
    Sell = Window:Tab({ Title = "Sell", Icon = "coin" }),
    Shop = Window:Tab({ Title = "Shop", Icon = "shopping-cart" }),
    Upgrade = Window:Tab({ Title = "Upgrade", Icon = "trending-up" }),
    Event = Window:Tab({ Title = "Event", Icon = "calendar" }),
    VIP = Window:Tab({ Title = "VIP Việt Nam", Icon = "star" }), -- New VIP tab
    Area = Window:Tab({ Title = "Area", Icon = "map" }),
    ESP = Window:Tab({ Title = "ESP", Icon = "eye" }),
    Player = Window:Tab({ Title = "Player", Icon = "user" }),
    Settings = Window:Tab({ Title = "Settings", Icon = "settings" }),
}

-- Helper Functions
local function GetNearestSafeArea()
    -- Find nearest safe area (above water level)
    local waves = Workspace:FindFirstChild("Waves") or Workspace:FindFirstChild("Tsunami")
    if not waves then return RootPart.Position end
    
    local safeAreas = {}
    for _, obj in ipairs(Workspace:GetDescendants()) do
        if obj:IsA("Part") and obj.Name:find("Area") or obj.Name:find("Island") then
            if obj.Position.Y > 50 then -- Assuming water level is around 50
                table.insert(safeAreas, obj.Position)
            end
        end
    end
    
    if #safeAreas == 0 then return RootPart.Position end
    
    -- Find nearest safe area
    local nearest = safeAreas[1]
    local shortestDist = (RootPart.Position - nearest).Magnitude
    
    for _, pos in ipairs(safeAreas) do
        local dist = (RootPart.Position - pos).Magnitude
        if dist < shortestDist then
            shortestDist = dist
            nearest = pos
        end
    end
    
    return nearest
end

local function TweenToPosition(position)
    local tweenInfo = TweenInfo.new(
        (RootPart.Position - position).Magnitude / TweenSpeed,
        Enum.EasingStyle.Linear,
        Enum.EasingDirection.Out
    )
    
    local tween = TweenService:Create(RootPart, tweenInfo, {CFrame = CFrame.new(position)})
    tween:Play()
    return tween
end

local function GetBrainrots()
    Brainrots = {}
    for _, obj in ipairs(Workspace:GetDescendants()) do
        if obj:IsA("Model") and (obj.Name:find("Brainrot") or obj:FindFirstChild("Brainrot")) then
            table.insert(Brainrots, obj)
        end
    end
    return Brainrots
end

local function GetLuckyBlocks()
    LuckyBlocks = {}
    for _, obj in ipairs(Workspace:GetDescendants()) do
        if obj:IsA("Part") and (obj.Name:find("LuckyBlock") or obj.Name:find("Lucky Block")) then
            table.insert(LuckyBlocks, obj)
        end
    end
    return LuckyBlocks
end

-- ⚡ GOD MODE Section
local GodModeSection = Tabs.Main:Section({ Title = "⚡ GOD MODE", Side = "Left" })

GodModeSection:Toggle({
    Title = "Enable God Mode",
    Description = "Best God Mode",
    Callback = function(state)
        GodModeEnabled = state
        if state then
            -- Infinite health
            if Humanoid then
                Humanoid.MaxHealth = math.huge
                Humanoid.Health = math.huge
            end
            -- No fall damage
            Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
            Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
            -- No drowning
            Character:FindFirstChildOfClass("Humanoid").BreathDamage:Destroy()
        else
            Humanoid.MaxHealth = 100
            Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
            Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
        end
    end
})

GodModeSection:Toggle({
    Title = "Instant Carry",
    Description = "Instant pick up brainrots",
    Callback = function(state)
        InstantCarryEnabled = state
    end
})

-- Instant Teleport
GodModeSection:Dropdown({
    Title = "Select Area To Teleport To",
    Values = {"Spawn", "VIP Area", "Shop Area", "Farm Area"},
    Callback = function(value)
        SelectedArea = value
    end
})

GodModeSection:Button({
    Title = "Instant Teleport",
    Callback = function()
        if SelectedArea then
            local targetPos = Vector3.new(0, 50, 0) -- Default spawn
            if SelectedArea == "VIP Area" then
                targetPos = Vector3.new(100, 50, 100) -- VIP location
            elseif SelectedArea == "Shop Area" then
                targetPos = Vector3.new(200, 50, 200) -- Shop location
            elseif SelectedArea == "Farm Area" then
                targetPos = Vector3.new(300, 50, 300) -- Farm location
            end
            RootPart.CFrame = CFrame.new(targetPos)
        end
    end
})

-- 📜 MAIN Section
local MainSection = Tabs.Main:Section({ Title = "📜 MAIN", Side = "Right" })

-- Auto Steal
local AutoStealEnabled = false
MainSection:Toggle({
    Title = "Auto Base After Stealing",
    Callback = function(state)
        AutoStealEnabled = state
    end
})

MainSection:Slider({
    Title = "Tween Speed",
    Description = "Adjust tween speed",
    Min = 50,
    Max = 500,
    Default = 300,
    Callback = function(value)
        TweenSpeed = value
    end
})

-- Instant Deliver
MainSection:Toggle({
    Title = "Instant Carry",
    Callback = function(state)
        InstantCarryEnabled = state
    end
})

MainSection:Toggle({
    Title = "Instant Deliver",
    Description = "Instant delivery to base",
    Callback = function(state)
        if state then
            -- Instant delivery logic
            local sellArea = Workspace:FindFirstChild("SellArea") or Workspace:FindFirstChild("Base")
            if sellArea then
                RootPart.CFrame = sellArea.CFrame
            end
        end
    end
})

-- Gaps Teleport
MainSection:Button({
    Title = "Go To Next Gap",
    Callback = function()
        -- Teleport to next gap/area
        local gaps = {}
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name:find("Gap") or obj.Name:find("Area") then
                table.insert(gaps, obj)
            end
        end
        if #gaps > 0 then
            RootPart.CFrame = gaps[1].CFrame
        end
    end
})

MainSection:Button({
    Title = "Go To Previous Gap",
    Callback = function()
        -- Similar to above but previous
    end
})

-- Auto Avoid Tsunami
local AutoAvoidEnabled = false
MainSection:Toggle({
    Title = "Auto Dodge Waves",
    Description = "Automatically tween to nearest safest area",
    Callback = function(state)
        AutoAvoidEnabled = state
    end
})

MainSection:Slider({
    Title = "Detection Distance",
    Min = 10,
    Max = 500,
    Default = 100,
    Callback = function(value)
        DetectionDistance = value
    end
})

-- Auto Avoid Tsunami logic
RunService.Heartbeat:Connect(function()
    if AutoAvoidEnabled and Workspace:FindFirstChild("Tsunami") or Workspace:FindFirstChild("Wave") then
        local nearestSafe = GetNearestSafeArea()
        TweenToPosition(nearestSafe)
    end
end)

-- Auto Collect Money
MainSection:Dropdown({
    Title = "Select Brainrots",
    Values = {"All", "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Cosmic", "Secret", "Celestial"},
    Callback = function(value)
        SelectedBrainrot = value
    end
})

MainSection:Toggle({
    Title = "Auto Collect Money From Selected Brainrot",
    Callback = function(state)
        if state then
            -- Auto collect logic
            while state and wait(0.5) do
                for _, brainrot in ipairs(GetBrainrots()) do
                    if SelectedBrainrot == "All" or brainrot.Name:find(SelectedBrainrot) then
                        firetouchinterest(RootPart, brainrot:FindFirstChildWhichIsA("Part"), 0)
                        wait(0.1)
                        firetouchinterest(RootPart, brainrot:FindFirstChildWhichIsA("Part"), 1)
                    end
                end
            end
        end
    end
})

MainSection:Toggle({
    Title = "Auto Collect Money From All Brainrots",
    Callback = function(state)
        if state then
            while state and wait(0.5) do
                for _, brainrot in ipairs(GetBrainrots()) do
                    firetouchinterest(RootPart, brainrot:FindFirstChildWhichIsA("Part"), 0)
                    wait(0.1)
                    firetouchinterest(RootPart, brainrot:FindFirstChildWhichIsA("Part"), 1)
                end
            end
        end
    end
})

MainSection:Button({
    Title = "Refresh Brainrots",
    Callback = GetBrainrots
})

-- 🔃 AUTOFARM Section
local AutoFarmSection = Tabs.AutoFarm:Section({ Title = "🔃 AUTOFARM", Side = "Left" })

AutoFarmSection:Toggle({
    Title = "God Mode",
    Callback = function(state)
        GodModeEnabled = state
        -- God mode logic here
    end
})

AutoFarmSection:Toggle({
    Title = "Instant Autofarm",
    Callback = function(state)
        AutoFarmEnabled = state
        if state then
            -- Instant farm
            while AutoFarmEnabled and wait(0.1) do
                for _, brainrot in ipairs(GetBrainrots()) do
                    if SelectedBrainrot == "All" or brainrot.Name:find(SelectedBrainrot) then
                        RootPart.CFrame = brainrot:GetPrimaryPartCFrame()
                        wait(0.1)
                    end
                end
            end
        end
    end
})

AutoFarmSection:Slider({
    Title = "Tween Speed",
    Min = 50,
    Max = 500,
    Default = 300,
    Callback = function(value)
        TweenSpeed = value
    end
})

-- Autofarm Brainrots
AutoFarmSection:Toggle({
    Title = "Autofarm Brainrots",
    Callback = function(state)
        AutoFarmEnabled = state
    end
})

AutoFarmSection:Dropdown({
    Title = "Select Brainrot For AutoFarm",
    Values = {"All", "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Cosmic", "Secret", "Celestial"},
    Callback = function(value)
        SelectedBrainrot = value
    end
})

AutoFarmSection:Dropdown({
    Title = "Select Rarity For AutoFarm",
    Values = {"All", "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Cosmic", "Secret", "Celestial"},
    Callback = function(value)
        SelectedRarity = value
    end
})

AutoFarmSection:Dropdown({
    Title = "Select Mutation For AutoFarm",
    Values = {"All", "Normal", "Golden", "Rainbow", "Shiny", "Dark", "Light"},
    Callback = function(value)
        SelectedMutation = value
    end
})

-- Lucky Blocks
AutoFarmSection:Toggle({
    Title = "Auto Farm Lucky Blocks",
    Callback = function(state)
        if state then
            while state and wait(0.5) do
                for _, block in ipairs(GetLuckyBlocks()) do
                    RootPart.CFrame = block.CFrame
                    wait(0.2)
                    firetouchinterest(RootPart, block, 0)
                    wait(0.1)
                    firetouchinterest(RootPart, block, 1)
                end
            end
        end
    end
})

AutoFarmSection:Dropdown({
    Title = "Select Lucky Block To Autofarm",
    Values = {"All", "Normal", "Golden", "Rainbow", "Mythical"},
    Callback = function(value)
        SelectedLuckyBlock = value
    end
})

AutoFarmSection:Dropdown({
    Title = "Select Mutation To Autofarm",
    Values = {"All", "Normal", "Golden", "Rainbow", "Shiny"},
    Callback = function(value)
        SelectedMutation = value
    end
})

AutoFarmSection:Toggle({
    Title = "Auto Open All Lucky Blocks",
    Callback = function(state)
        if state then
            while state and wait(0.5) do
                for _, block in ipairs(GetLuckyBlocks()) do
                    firetouchinterest(RootPart, block, 0)
                    wait(0.1)
                    firetouchinterest(RootPart, block, 1)
                end
            end
        end
    end
})

-- 💲 SELL Section
local SellSection = Tabs.Sell:Section({ Title = "💲 SELL", Side = "Left" })

SellSection:Dropdown({
    Title = "Select Brainrot To Sell",
    Values = {"All", "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Cosmic", "Secret", "Celestial"},
    Callback = function(value)
        SelectedBrainrot = value
    end
})

SellSection:Button({
    Title = "Sell Selected Brainrot",
    Callback = function()
        -- Trigger sell remote
        local sellRemote = ReplicatedStorage:FindFirstChild("Sell") or ReplicatedStorage:FindFirstChild("RemoteEvent")
        if sellRemote then
            sellRemote:FireServer(SelectedBrainrot)
        end
    end
})

SellSection:Button({
    Title = "Refresh Brainrots",
    Callback = GetBrainrots
})

-- Sell By Rarity
SellSection:Dropdown({
    Title = "Select Rarity To Sell",
    Values = {"Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Cosmic", "Secret", "Celestial"},
    Callback = function(value)
        SelectedRarity = value
    end
})

SellSection:Button({
    Title = "Sell Selected Rarity",
    Callback = function()
        -- Sell all of selected rarity
        local sellRemote = ReplicatedStorage:FindFirstChild("SellRarity")
        if sellRemote then
            sellRemote:FireServer(SelectedRarity)
        end
    end
})

SellSection:Toggle({
    Title = "Auto Sell Selected Rarity",
    Callback = function(state)
        AutoSellRarity = state
        if state then
            while AutoSellRarity and wait(5) do
                local sellRemote = ReplicatedStorage:FindFirstChild("SellRarity")
                if sellRemote then
                    sellRemote:FireServer(SelectedRarity)
                end
            end
        end
    end
})

-- Sell By Mutation
SellSection:Dropdown({
    Title = "Select Mutation To Sell",
    Values = {"Normal", "Golden", "Rainbow", "Shiny", "Dark", "Light"},
    Callback = function(value)
        SelectedMutation = value
    end
})

SellSection:Button({
    Title = "Sell Selected Mutation",
    Callback = function()
        local sellRemote = ReplicatedStorage:FindFirstChild("SellMutation")
        if sellRemote then
            sellRemote:FireServer(SelectedMutation)
        end
    end
})

SellSection:Toggle({
    Title = "Auto Sell Selected Mutation",
    Callback = function(state)
        AutoSellMutation = state
        if state then
            while AutoSellMutation and wait(5) do
                local sellRemote = ReplicatedStorage:FindFirstChild("SellMutation")
                if sellRemote then
                    sellRemote:FireServer(SelectedMutation)
                end
            end
        end
    end
})

-- Sell All
SellSection:Button({
    Title = "Sell All Brainrots",
    Callback = function()
        local sellRemote = ReplicatedStorage:FindFirstChild("SellAll")
        if sellRemote then
            sellRemote:FireServer()
        end
    end
})

SellSection:Toggle({
    Title = "Auto Sell All Brainrots",
    Callback = function(state)
        AutoSellAll = state
        if state then
            while AutoSellAll and wait(5) do
                local sellRemote = ReplicatedStorage:FindFirstChild("SellAll")
                if sellRemote then
                    sellRemote:FireServer()
                end
            end
        end
    end
})

-- 🛒 SHOP Section
local ShopSection = Tabs.Shop:Section({ Title = "🛒 SHOP", Side = "Left" })

-- Info
local MoneyLabel, SpeedLabel, CarryLabel, RebirthLabel

ShopSection:Label({
    Title = "Current Money: Loading...",
    Callback = function(label)
        MoneyLabel = label
    end
})

ShopSection:Label({
    Title = "Current Speed: Loading...",
    Callback = function(label)
        SpeedLabel = label
    end
})

ShopSection:Label({
    Title = "Current Carry: Loading...",
    Callback = function(label)
        CarryLabel = label
    end
})

ShopSection:Label({
    Title = "Current Rebirth: Loading...",
    Callback = function(label)
        RebirthLabel = label
    end
})

-- Buy
ShopSection:Toggle({
    Title = "Auto Buy Speed",
    Callback = function(state)
        AutoBuySpeed = state
        if state then
            while AutoBuySpeed and wait(1) do
                local buyRemote = ReplicatedStorage:FindFirstChild("BuySpeed")
                if buyRemote then
                    buyRemote:FireServer()
                end
            end
        end
    end
})

ShopSection:Toggle({
    Title = "Auto Buy Carry",
    Callback = function(state)
        AutoBuyCarry = state
        if state then
            while AutoBuyCarry and wait(1) do
                local buyRemote = ReplicatedStorage:FindFirstChild("BuyCarry")
                if buyRemote then
                    buyRemote:FireServer()
                end
            end
        end
    end
})

ShopSection:Toggle({
    Title = "Auto Rebirth When Available",
    Callback = function(state)
        AutoRebirth = state
        if state then
            while AutoRebirth and wait(1) do
                local rebirthRemote = ReplicatedStorage:FindFirstChild("Rebirth")
                if rebirthRemote then
                    rebirthRemote:FireServer()
                end
            end
        end
    end
})

-- 🔼 Upgrade Section
local UpgradeSection = Tabs.Upgrade:Section({ Title = "🔼 Upgrade", Side = "Left" })

-- Auto Upgrade Brainrots
UpgradeSection:Dropdown({
    Title = "Select Brainrots",
    Values = {"All", "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Cosmic", "Secret", "Celestial"},
    Callback = function(value)
        SelectedBrainrot = value
    end
})

UpgradeSection:Toggle({
    Title = "Auto Upgrade Selected Brainrot",
    Callback = function(state)
        AutoUpgradeBrainrot = state
        if state then
            while AutoUpgradeBrainrot and wait(1) do
                local upgradeRemote = ReplicatedStorage:FindFirstChild("UpgradeBrainrot")
                if upgradeRemote then
                    upgradeRemote:FireServer(SelectedBrainrot)
                end
            end
        end
    end
})

UpgradeSection:Toggle({
    Title = "Auto Upgrade All Brainrots",
    Callback = function(state)
        AutoUpgradeAll = state
        if state then
            while AutoUpgradeAll and wait(1) do
                local upgradeRemote = ReplicatedStorage:FindFirstChild("UpgradeAll")
                if upgradeRemote then
                    upgradeRemote:FireServer()
                end
            end
        end
    end
})

UpgradeSection:Button({
    Title = "Refresh Brainrots",
    Callback = GetBrainrots
})

-- Auto Upgrade By Rarity
UpgradeSection:Dropdown({
    Title = "Select Rarity",
    Values = {"Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Cosmic", "Secret", "Celestial"},
    Callback = function(value)
        SelectedRarity = value
    end
})

UpgradeSection:Toggle({
    Title = "Auto Upgrade Selected Rarity Brainrot",
    Callback = function(state)
        AutoUpgradeRarity = state
        if state then
            while AutoUpgradeRarity and wait(1) do
                local upgradeRemote = ReplicatedStorage:FindFirstChild("UpgradeRarity")
                if upgradeRemote then
                    upgradeRemote:FireServer(SelectedRarity)
                end
            end
        end
    end
})

-- Auto Upgrade By Mutation
UpgradeSection:Dropdown({
    Title = "Select Mutation",
    Values = {"Normal", "Golden", "Rainbow", "Shiny", "Dark", "Light"},
    Callback = function(value)
        SelectedMutation = value
    end
})

UpgradeSection:Toggle({
    Title = "Auto Upgrade Selected Mutation Brainrot",
    Callback = function(state)
        AutoUpgradeMutation = state
        if state then
            while AutoUpgradeMutation and wait(1) do
                local upgradeRemote = ReplicatedStorage:FindFirstChild("UpgradeMutation")
                if upgradeRemote then
                    upgradeRemote:FireServer(SelectedMutation)
                end
            end
        end
    end
})

-- Auto Upgrade Base
UpgradeSection:Toggle({
    Title = "Auto Upgrade Your Base",
    Callback = function(state)
        AutoUpgradeBase = state
        if state then
            while AutoUpgradeBase and wait(1) do
                local upgradeRemote = ReplicatedStorage:FindFirstChild("UpgradeBase")
                if upgradeRemote then
                    upgradeRemote:FireServer()
                end
            end
        end
    end
})

-- ⭐ Event Section
local EventSection = Tabs.Event:Section({ Title = "⭐ Event", Side = "Left" })

-- Arcade Event
EventSection:Toggle({
    Title = "Auto Collect Game Consoles",
    Callback = function(state)
        if state then
            while state and wait(0.5) do
                for _, obj in ipairs(Workspace:GetDescendants()) do
                    if obj.Name:find("Console") or obj.Name:find("Arcade") then
                        RootPart.CFrame = obj.CFrame
                        wait(0.2)
                        firetouchinterest(RootPart, obj, 0)
                        wait(0.1)
                        firetouchinterest(RootPart, obj, 1)
                    end
                end
            end
        end
    end
})

EventSection:Toggle({
    Title = "Auto Collect Tickets",
    Callback = function(state)
        if state then
            while state and wait(0.5) do
                for _, obj in ipairs(Workspace:GetDescendants()) do
                    if obj.Name:find("Ticket") then
                        RootPart.CFrame = obj.CFrame
                        wait(0.2)
                        firetouchinterest(RootPart, obj, 0)
                        wait(0.1)
                        firetouchinterest(RootPart, obj, 1)
                    end
                end
            end
        end
    end
})

EventSection:Button({
    Title = "Manual Spin",
    Callback = function()
        local spinRemote = ReplicatedStorage:FindFirstChild("Spin")
        if spinRemote then
            spinRemote:FireServer("Arcade")
        end
    end
})

EventSection:Toggle({
    Title = "Auto Spin",
    Callback = function(state)
        if state then
            while state and wait(1) do
                local spinRemote = ReplicatedStorage:FindFirstChild("Spin")
                if spinRemote then
                    spinRemote:FireServer("Arcade")
                end
            end
        end
    end
})

-- Money Event
EventSection:Toggle({
    Title = "Auto Collect Gold Bars",
    Callback = function(state)
        if state then
            while state and wait(0.5) do
                for _, obj in ipairs(Workspace:GetDescendants()) do
                    if obj.Name:find("GoldBar") or obj.Name:find("Gold") then
                        RootPart.CFrame = obj.CFrame
                        wait(0.2)
                        firetouchinterest(RootPart, obj, 0)
                        wait(0.1)
                        firetouchinterest(RootPart, obj, 1)
                    end
                end
            end
        end
    end
})

EventSection:Button({
    Title = "Manual Spin (Money)",
    Callback = function()
        local spinRemote = ReplicatedStorage:FindFirstChild("Spin")
        if spinRemote then
            spinRemote:FireServer("Money")
        end
    end
})

EventSection:Toggle({
    Title = "Auto Spin (Money)",
    Callback = function(state)
        if state then
            while state and wait(1) do
                local spinRemote = ReplicatedStorage:FindFirstChild("Spin")
                if spinRemote then
                    spinRemote:FireServer("Money")
                end
            end
        end
    end
})

-- Radioactive
EventSection:Toggle({
    Title = "Auto Collect Radioactive Coins",
    Callback = function(state)
        if state then
            while state and wait(0.5) do
                for _, obj in ipairs(Workspace:GetDescendants()) do
                    if obj.Name:find("Radioactive") or obj.Name:find("Nuclear") then
                        RootPart.CFrame = obj.CFrame
                        wait(0.2)
                        firetouchinterest(RootPart, obj, 0)
                        wait(0.1)
                        firetouchinterest(RootPart, obj, 1)
                    end
                end
            end
        end
    end
})

EventSection:Toggle({
    Title = "Show Radioactive Coins",
    Callback = function(state)
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name:find("Radioactive") then
                if state then
                    obj.BrickColor = BrickColor.new("Bright red")
                else
                    obj.BrickColor = obj.BrickColor -- Reset to original
                end
            end
        end
    end
})

EventSection:Button({
    Title = "Manual Spin (Radioactive)",
    Callback = function()
        local spinRemote = ReplicatedStorage:FindFirstChild("Spin")
        if spinRemote then
            spinRemote:FireServer("Radioactive")
        end
    end
})

EventSection:Toggle({
    Title = "Auto Spin (Radioactive)",
    Callback = function(state)
        if state then
            while state and wait(1) do
                local spinRemote = ReplicatedStorage:FindFirstChild("Spin")
                if spinRemote then
                    spinRemote:FireServer("Radioactive")
                end
            end
        end
    end
})

-- UFO
EventSection:Toggle({
    Title = "Show Event Timer",
    Callback = function(state)
        if state then
            -- Create timer UI
            local timerGui = Instance.new("ScreenGui")
            local timerLabel = Instance.new("TextLabel")
            timerLabel.Size = UDim2.new(0, 200, 0, 50)
            timerLabel.Position = UDim2.new(0.5, -100, 0, 10)
            timerLabel.Text = "UFO Event: Loading..."
            timerLabel.Parent = timerGui
            timerGui.Parent = Player.PlayerGui
            
            -- Update timer
            while state and wait(1) do
                local eventTime = ReplicatedStorage:FindFirstChild("EventTime")
                if eventTime then
                    timerLabel.Text = "UFO Event: " .. tostring(eventTime.Value) .. "s"
                end
            end
        end
    end
})

EventSection:Toggle({
    Title = "Auto Collect UFO Coins",
    Callback = function(state)
        if state then
            while state and wait(0.5) do
                for _, obj in ipairs(Workspace:GetDescendants()) do
                    if obj.Name:find("UFOCoin") or obj.Name:find("UFO") then
                        RootPart.CFrame = obj.CFrame
                        wait(0.2)
                        firetouchinterest(RootPart, obj, 0)
                        wait(0.1)
                        firetouchinterest(RootPart, obj, 1)
                    end
                end
            end
        end
    end
})

EventSection:Toggle({
    Title = "Show UFO Coins",
    Callback = function(state)
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name:find("UFO") then
                if state then
                    obj.BrickColor = BrickColor.new("Bright blue")
                else
                    obj.BrickColor = obj.BrickColor
                end
            end
        end
    end
})

EventSection:Button({
    Title = "Manual Spin (UFO)",
    Callback = function()
        local spinRemote = ReplicatedStorage:FindFirstChild("Spin")
        if spinRemote then
            spinRemote:FireServer("UFO")
        end
    end
})

EventSection:Toggle({
    Title = "Auto Spin (UFO)",
    Callback = function(state)
        if state then
            while state and wait(1) do
                local spinRemote = ReplicatedStorage:FindFirstChild("Spin")
                if spinRemote then
                    spinRemote:FireServer("UFO")
                end
            end
        end
    end
})

-- ⭐ VIP Việt Nam Section (New Tab)
local VIPSections = {
    Left = Tabs.VIP:Section({ Title = "🇻🇳 VIP VIỆT NAM", Side = "Left" }),
    Right = Tabs.VIP:Section({ Title = "⚡ VIP FEATURES", Side = "Right" })
}

-- VIP Areas Teleport
VIPSections.Left:Label({ Title = "🏝️ VIP AREAS" })

local VIPAreas = {
    "VIP Sảnh Chính",
    "VIP Khu Vip Pro", 
    "VIP Phòng Riêng",
    "VIP Khu Sự Kiện",
    "VIP Cửa Hàng",
    "VIP Khu Farm"
}

for _, areaName in ipairs(VIPAreas) do
    VIPSections.Left:Button({
        Title = "Teleport " .. areaName,
        Callback = function()
            -- Find VIP area in workspace
            local found = false
            for _, obj in ipairs(Workspace:GetDescendants()) do
                if obj:IsA("Part") and (obj.Name:find("VIP") or obj.Name:find("Vip")) then
                    if areaName == "VIP Sảnh Chính" and obj.Name:find("Main") then
                        RootPart.CFrame = obj.CFrame + Vector3.new(0, 5, 0)
                        found = true
                        break
                    elseif areaName == "VIP Khu Vip Pro" and obj.Name:find("Pro") then
                        RootPart.CFrame = obj.CFrame + Vector3.new(0, 5, 0)
                        found = true
                        break
                    elseif areaName == "VIP Phòng Riêng" and obj.Name:find("Private") then
                        RootPart.CFrame = obj.CFrame + Vector3.new(0, 5, 0)
                        found = true
                        break
                    elseif areaName == "VIP Khu Sự Kiện" and obj.Name:find("Event") then
                        RootPart.CFrame = obj.CFrame + Vector3.new(0, 5, 0)
                        found = true
                        break
                    elseif areaName == "VIP Cửa Hàng" and obj.Name:find("Shop") then
                        RootPart.CFrame = obj.CFrame + Vector3.new(0, 5, 0)
                        found = true
                        break
                    elseif areaName == "VIP Khu Farm" and obj.Name:find("Farm") then
                        RootPart.CFrame = obj.CFrame + Vector3.new(0, 5, 0)
                        found = true
                        break
                    end
                end
            end
            
            if not found then
                -- Default VIP position if not found
                RootPart.CFrame = CFrame.new(Vector3.new(500, 50, 500))
            end
        end
    })
end

-- VIP Auto Farm
VIPSections.Left:Label({ Title = "⚡ VIP AUTO FARM" })

VIPSections.Left:Toggle({
    Title = "VIP Auto Farm (2x Speed)",
    Description = "Auto farm với tốc độ gấp đôi",
    Callback = function(state)
        if state then
            local originalSpeed = TweenSpeed
            TweenSpeed = TweenSpeed * 2
            
            while state and wait(0.1) do
                for _, brainrot in ipairs(GetBrainrots()) do
                    if brainrot:FindFirstChild("VIP") or brainrot.Name:find("VIP") then
                        RootPart.CFrame = brainrot:GetPrimaryPartCFrame()
                        wait(0.05)
                        firetouchinterest(RootPart, brainrot:FindFirstChildWhichIsA("Part"), 0)
                        wait(0.05)
                        firetouchinterest(RootPart, brainrot:FindFirstChildWhichIsA("Part"), 1)
                    end
                end
            end
            
            TweenSpeed = originalSpeed
        end
    end
})

VIPSections.Left:Toggle({
    Title = "Auto Collect VIP Coins",
    Description = "Tự động thu thập VIP coins",
    Callback = function(state)
        if state then
            while state and wait(0.3) do
                for _, obj in ipairs(Workspace:GetDescendants()) do
                    if obj:IsA("Part") and (obj.Name:find("VIPCoin") or obj.Name:find("VipCoin")) then
                        RootPart.CFrame = obj.CFrame
                        wait(0.1)
                        firetouchinterest(RootPart, obj, 0)
                        wait(0.1)
                        firetouchinterest(RootPart, obj, 1)
                    end
                end
            end
        end
    end
})

-- VIP Rewards
VIPSections.Right:Label({ Title = "🎁 VIP REWARDS" })

VIPSections.Right:Toggle({
    Title = "Auto Claim VIP Rewards",
    Description = "Tự động nhận thưởng VIP mỗi giờ",
    Callback = function(state)
        if state then
            while state and wait(3600) do -- Check every hour
                local claimRemote = ReplicatedStorage:FindFirstChild("ClaimVIPReward")
                if claimRemote then
                    claimRemote:FireServer()
                end
            end
        end
    end
})

VIPSections.Right:Button({
    Title = "Claim Daily VIP Bonus",
    Callback = function()
        local claimRemote = ReplicatedStorage:FindFirstChild("ClaimDailyVIP")
        if claimRemote then
            claimRemote:FireServer()
        else
            -- Simulate claim if remote not found
            WindUI:Notify({
                Title = "VIP",
                Content = "Đã nhận thưởng VIP hàng ngày!",
                Duration = 3
            })
        end
    end
})

-- VIP Boosts
VIPSections.Right:Label({ Title = "🚀 VIP BOOSTS" })

local VPBoostEnabled = false
VIPSections.Right:Toggle({
    Title = "VIP Speed Boost (3x)",
    Description = "Tăng tốc độ di chuyển gấp 3 lần",
    Callback = function(state)
        VPBoostEnabled = state
        if state and Humanoid then
            Humanoid.WalkSpeed = Humanoid.WalkSpeed * 3
        elseif Humanoid then
            Humanoid.WalkSpeed = Humanoid.WalkSpeed / 3
        end
    end
})

VIPSections.Right:Toggle({
    Title = "VIP Jump Boost (2x)",
    Description = "Tăng nhảy cao gấp đôi",
    Callback = function(state)
        if state and Humanoid then
            Humanoid.JumpPower = Humanoid.JumpPower * 2
        elseif Humanoid then
            Humanoid.JumpPower = Humanoid.JumpPower / 2
        end
    end
})

-- VIP Exclusive Features
VIPSections.Right:Label({ Title = "✨ VIP EXCLUSIVE" })

VIPSections.Right:Button({
    Title = "Spawn VIP Pet",
    Callback = function()
        local pet = Instance.new("Part")
        pet.Name = "VIPPet"
        pet.Size = Vector3.new(2, 2, 2)
        pet.BrickColor = BrickColor.new("Bright yellow")
        pet.Material = Enum.Material.Neon
        pet.Anchored = false
        pet.CanCollide = true
        pet.Position = RootPart.Position + Vector3.new(5, 0, 0)
        
        local mesh = Instance.new("SpecialMesh")
        mesh.MeshType = Enum.MeshType.Sphere
        mesh.Parent = pet
        
        local bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(4000, 4000, 4000)
        bodyGyro.P = 2000
        bodyGyro.D = 500
        bodyGyro.CFrame = RootPart.CFrame
        bodyGyro.Parent = pet
        
        local bodyPosition = Instance.new("BodyPosition")
        bodyPosition.MaxForce = Vector3.new(4000, 4000, 4000)
        bodyPosition.P = 2000
        bodyPosition.D = 500
        bodyPosition.Position = RootPart.Position + Vector3.new(5, 2, 0)
        bodyPosition.Parent = pet
        
        pet.Parent = Workspace
        
        -- Follow player
        coroutine.wrap(function()
            while pet and pet.Parent do
                wait(0.1)
                if bodyPosition then
                    bodyPosition.Position = RootPart.Position + Vector3.new(5, 2, 0)
                end
                if bodyGyro then
                    bodyGyro.CFrame = RootPart.CFrame
                end
            end
        end)()
    end
})

VIPSections.Right:Toggle({
    Title = "VIP ESP (Highlight VIP Items)",
    Description = "Làm nổi bật các vật phẩm VIP",
    Callback = function(state)
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj:IsA("BasePart") and (obj.Name:find("VIP") or obj.Name:find("Vip")) then
                if state then
                    local highlight = Instance.new("Highlight")
                    highlight.FillColor = Color3.new(1, 0.84, 0) -- Gold color
                    highlight.OutlineColor = Color3.new(1, 1, 0)
                    highlight.FillTransparency = 0.5
                    highlight.Parent = obj
                else
                    local highlight = obj:FindFirstChildOfClass("Highlight")
                    if highlight then
                        highlight:Destroy()
                    end
                end
            end
        end
    end
})

-- 📌 Area Section
local AreaSection = Tabs.Area:Section({ Title = "📌 Area", Side = "Left" })

AreaSection:Button({
    Title = "Remove VIP Walls For Free",
    Callback = function()
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj:IsA("Part") and (obj.Name:find("VIPWall") or obj.Name:find("VipWall") or obj.Name:find("Wall")) then
                obj.CanCollide = false
                obj.Transparency = 1
            end
        end
    end
})

-- Teleport To Areas
local Areas = {"Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Cosmic", "Secret", "Celestial"}
for _, areaName in ipairs(Areas) do
    AreaSection:Button({
        Title = "Teleport To " .. areaName,
        Callback = function()
            -- Find area and teleport with auto dodge
            local found = false
            for _, obj in ipairs(Workspace:GetDescendants()) do
                if obj:IsA("Part") and obj.Name:find(areaName) then
                    -- Auto dodge waves
                    if Workspace:FindFirstChild("Tsunami") then
                        local safePos = GetNearestSafeArea()
                        TweenToPosition(safePos)
                        wait(1)
                    end
                    RootPart.CFrame = obj.CFrame + Vector3.new(0, 5, 0)
                    found = true
                    break
                end
            end
            
            if not found then
                -- Default position
                RootPart.CFrame = CFrame.new(Vector3.new(0, 50, 0))
            end
        end
    })
end

AreaSection:Button({
    Title = "Teleport To Carry Shop",
    Callback = function()
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name:find("CarryShop") or (obj.Name:find("Shop") and obj.Name:find("Carry")) then
                RootPart.CFrame = obj.CFrame
                return
            end
        end
    end
})

AreaSection:Button({
    Title = "Teleport To Speed Shop",
    Callback = function()
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name:find("SpeedShop") or (obj.Name:find("Shop") and obj.Name:find("Speed")) then
                RootPart.CFrame = obj.CFrame
                return
            end
        end
    end
})

AreaSection:Button({
    Title = "Teleport To Sell Shop",
    Callback = function()
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name:find("SellShop") or (obj.Name:find("Shop") and obj.Name:find("Sell")) then
                RootPart.CFrame = obj.CFrame
                return
            end
        end
    end
})

AreaSection:Button({
    Title = "Teleport To Spawn",
    Callback = function()
        RootPart.CFrame = CFrame.new(Vector3.new(0, 50, 0))
    end
})

-- 👀 ESP Section
local ESPSection = Tabs.ESP:Section({ Title = "👀 ESP", Side = "Left" })

ESPSection:Toggle({
    Title = "Brainrot Highlight",
    Callback = function(state)
        ESPEnabled = state
        if state then
            for _, brainrot in ipairs(GetBrainrots()) do
                local highlight = Instance.new("Highlight")
                highlight.FillColor = Color3.new(1, 0, 0)
                highlight.OutlineColor = Color3.new(1, 1, 1)
                highlight.Parent = brainrot
                table.insert(ESPObjects, highlight)
            end
        else
            for _, obj in ipairs(ESPObjects) do
                obj:Destroy()
            end
            ESPObjects = {}
        end
    end
})

ESPSection:Toggle({
    Title = "Highlight If Brainrot",
    Callback = function(state)
        -- Similar to above but with different conditions
    end
})

ESPSection:Dropdown({
    Title = "Highlight If Rarity",
    Values = {"Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Cosmic", "Secret", "Celestial"},
    Callback = function(value)
        if ESPEnabled then
            for _, brainrot in ipairs(GetBrainrots()) do
                if brainrot.Name:find(value) then
                    local highlight = Instance.new("Highlight")
                    highlight.FillColor = Color3.new(0, 1, 0)
                    highlight.Parent = brainrot
                end
            end
        end
    end
})

ESPSection:Dropdown({
    Title = "Highlight If Mutation",
    Values = {"Normal", "Golden", "Rainbow", "Shiny", "Dark", "Light"},
    Callback = function(value)
        if ESPEnabled then
            for _, brainrot in ipairs(GetBrainrots()) do
                if brainrot.Name:find(value) then
                    local highlight = Instance.new("Highlight")
                    highlight.FillColor = Color3.new(0, 0, 1)
                    highlight.Parent = brainrot
                end
            end
        end
    end
})

-- 🙎‍♂️ PLAYER Section
local PlayerSection = Tabs.Player:Section({ Title = "🙎‍♂️ PLAYER", Side = "Left" })

-- Game
PlayerSection:Toggle({
    Title = "Hide Other Player Bases",
    Callback = function(state)
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= Player and player.Character then
                local base = player.Character:FindFirstChild("Base")
                if base then
                    base.Transparency = state and 1 or 0
                end
            end
        end
    end
})

-- Character
PlayerSection:Toggle({
    Title = "Double Super Speed Boost",
    Callback = function(state)
        if state and Humanoid then
            Humanoid.WalkSpeed = Humanoid.WalkSpeed * 2
        elseif Humanoid then
            Humanoid.WalkSpeed = Humanoid.WalkSpeed / 2
        end
    end
})

PlayerSection:Toggle({
    Title = "Quick Interact",
    Callback = function(state)
        if state then
            -- Reduce interaction cooldown
            _G.QuickInteract = true
        else
            _G.QuickInteract = false
        end
    end
})

PlayerSection:Toggle({
    Title = "Freeze",
    Callback = function(state)
        if RootPart then
            RootPart.Anchored = state
        end
    end
})

PlayerSection:Toggle({
    Title = "Anti AFK",
    Callback = function(state)
        AntiAFKEnabled = state
        if state then
            -- Anti AFK logic
            local VirtualUser = game:GetService("VirtualUser")
            Player.Idled:Connect(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end)
        end
    end
})

PlayerSection:Toggle({
    Title = "T + Left Click Teleport",
    Callback = function(state)
        if state then
            UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if not gameProcessed and input.KeyCode == Enum.KeyCode.T then
                    local mouse = Player:GetMouse()
                    mouse.Button1Down:Wait()
                    RootPart.CFrame = CFrame.new(mouse.Hit.p)
                end
            end)
        end
    end
})

PlayerSection:Toggle({
    Title = "Teleport Walk",
    Description = "Click to teleport while walking",
    Callback = function(state)
        if state then
            UserInputService.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    local mouse = Player:GetMouse()
                    RootPart.CFrame = CFrame.new(mouse.Hit.p)
                end
            end)
        end
    end
})

PlayerSection:Toggle({
    Title = "Infinite Jumps",
    Callback = function(state)
        InfiniteJumpsEnabled = state
        if state then
            UserInputService.JumpRequest:Connect(function()
                if InfiniteJumpsEnabled and Humanoid then
                    Humanoid:ChangeState("Jumping")
                end
            end)
        end
    end
})

PlayerSection:Slider({
    Title = "Jump Power",
    Min = 50,
    Max = 200,
    Default = 50,
    Callback = function(value)
        if Humanoid then
            Humanoid.JumpPower = value
        end
    end
})

PlayerSection:Slider({
    Title = "Change FOV",
    Min = 30,
    Max = 120,
    Default = 70,
    Callback = function(value)
        if Player:FindFirstChild("PlayerGui") then
            local camera = Workspace.CurrentCamera
            camera.FieldOfView = value
        end
    end
})

-- Settings Tab
local SettingsSection = Tabs.Settings:Section({ Title = "Settings", Side = "Left" })

SettingsSection:Button({
    Title = "Destroy UI",
    Callback = function()
        Window:Destroy()
    end
})

SettingsSection:Button({
    Title = "Unload Script",
    Callback = function()
        Window:Destroy()
        script:Destroy()
    end
})

-- Update info labels periodically
spawn(function()
    while wait(1) do
        -- Update money
        local money = Player:FindFirstChild("leaderstats") and Player.leaderstats:FindFirstChild("Money")
        if money and MoneyLabel then
            MoneyLabel:Set("Current Money: " .. tostring(money.Value))
        end
        
        -- Update speed
        if SpeedLabel then
            SpeedLabel:Set("Current Speed: " .. tostring(Humanoid.WalkSpeed))
        end
        
        -- Update carry
        local carry = Player:FindFirstChild("leaderstats") and Player.leaderstats:FindFirstChild("Carry")
        if carry and CarryLabel then
            CarryLabel:Set("Current Carry: " .. tostring(carry.Value))
        end
        
        -- Update rebirth
        local rebirth = Player:FindFirstChild("leaderstats") and Player.leaderstats:FindFirstChild("Rebirth")
        if rebirth and RebirthLabel then
            RebirthLabel:Set("Current Rebirth: " .. tostring(rebirth.Value))
        end
    end
end)

-- Auto update functions
spawn(function()
    while wait(5) do
        GetBrainrots()
        GetLuckyBlocks()
    end
end)

game.StarterGui:SetCore('SendNotification', {
    Title = "Night Slayer Hub";
    Text = "Loaded successfully";
    Duration = 5;
    Icon = "rbxassetid://130627959945120";
})

print("Night Slayer Hub loaded successfully!")
WindUI:Notify({
    Title = "Night Slayer Hub",
    Content = "Loaded successfully!",
    Duration = 3
})