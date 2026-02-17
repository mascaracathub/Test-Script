local KeySystem = {}

if not game:IsLoaded() then
    repeat
        game.Loaded:Wait()
    until game:IsLoaded()
end

repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

local HttpService = game:GetService("HttpService")

-- Non-premium valid keys (simple list)
local ValidKeys = {
    "NX-NazuXHubNew",
    "NX-NazuXHub2279",
}

-- Premium Keys Dictionary (không có = nil)
local PremiumKeys = {
    ["Kao028PaajOjwnapQks"] = false,
}

-- Hàm XOR 32-bit cực mạnh (không cần bit32)
local function bxor_32(a, b)
    local res = 0
    local a32 = a % 4294967296
    local b32 = b % 4294967296
    
    for i = 0, 31 do
        local bit = 2^i
        local a_bit = math.floor(a32 / bit) % 2
        local b_bit = math.floor(b32 / bit) % 2
        
        -- XOR logic: khác nhau thì = 1
        if a_bit ~= b_bit then
            res = res + bit
        end
    end
    
    return res % 4294967296
end

-- FNV-1a hash 32-bit với XOR cực chuẩn
local function fnv1a_hash(str)
    local FNV_OFFSET_BASIS = 2166136261
    local FNV_PRIME = 16777619
    local MOD = 4294967296  -- 2^32
    
    local hash = FNV_OFFSET_BASIS
    
    for i = 1, #str do
        local byte = string.byte(str, i)
        
        -- XOR với byte trước
        hash = bxor_32(hash, byte)
        
        -- Nhân với số nguyên tố
        hash = (hash * FNV_PRIME) % MOD
    end
    
    return tostring(hash)
end

-- HWID cực căng: kết hợp nhiều yếu tố
local function GetUltimateHWID()
    -- Nếu user set HWID manual
    if getgenv().HWID and type(getgenv().HWID) == "string" and #getgenv().HWID > 0 then
        return getgenv().HWID
    end
    
    local components = {}
    
    -- 1. Exploit HWID (nếu có)
    local exploit_hwid = nil
    local ok, info = pcall(function()
        if syn and syn.getexecutorinfo then
            return syn.getexecutorinfo()
        elseif getexecutor then
            return getexecutor()
        elseif identifyexecutor then
            return identifyexecutor()
        end
        return nil
    end)
    
    if ok and type(info) == "table" then
        local hwid_fields = {"HardwareID", "HWID", "hardware", "hwid", "Hardware", "MachineID"}
        for _, field in ipairs(hwid_fields) do
            if info[field] then
                exploit_hwid = tostring(info[field])
                table.insert(components, "EXPLOIT:" .. exploit_hwid)
                break
            end
        end
    end
    
    -- 2. UserId + Account info
    local player = game.Players.LocalPlayer
    if player then
        table.insert(components, "USERID:" .. player.UserId)
        table.insert(components, "ACC:" .. player.Name)
        table.insert(components, "DISPLAY:" .. (player.DisplayName or ""))
    end
    
    -- 3. Time-based salt (thay đổi mỗi ngày)
    local time_salt = os.date("%Y%m%d")
    table.insert(components, "DATE:" .. time_salt)
    
    -- 4. Game-specific
    table.insert(components, "GAME:" .. game.PlaceId)
    
    -- 5. Random persistent seed
    if not getgenv().__persistent_seed then
        getgenv().__persistent_seed = tostring(math.random(1, 999999))
    end
    table.insert(components, "SEED:" .. getgenv().__persistent_seed)
    
    -- Tạo chuỗi duy nhất từ tất cả components
    local combined = table.concat(components, "|")
    
    -- Hash cực mạnh
    local hwid = fnv1a_hash(combined)
    
    -- Thêm checksum
    local checksum = fnv1a_hash(hwid .. "CHECKSUM")
    hwid = hwid:sub(1, 16) .. checksum:sub(1, 16)
    
    -- Lưu cache
    if not getgenv().__cached_hwid then
        getgenv().__cached_hwid = hwid
    end
    
    return getgenv().__cached_hwid
end

-- Validate normal key
function KeySystem:ValidateKey(inputKey)
    if not inputKey or inputKey == "" then
        game.Players.LocalPlayer:Kick("[Key System] ❌ Key cannot be empty")
        return false, "Key cannot be empty"
    end

    for _, validKey in ipairs(ValidKeys) do
        if inputKey == validKey then
            return true, "Valid key ✓ (standard)"
        end
    end

    -- Check premium
    if PremiumKeys[inputKey] ~= nil then
        return self:ValidatePremiumKey(inputKey)
    end

    game.Players.LocalPlayer:Kick("[Key System] ❌ Invalid key")
    return false, "Invalid key ✗"
end

-- Validate premium key với HWID siêu bảo mật (ĐÃ SỬA LỖI)
function KeySystem:ValidatePremiumKey(inputKey)
    local hwid = GetUltimateHWID()
    
    if not inputKey or inputKey == "" then
        game.Players.LocalPlayer:Kick("[Key System] ❌ Premium key cannot be empty")
        return false, "Premium key cannot be empty"
    end
    
    local stored = PremiumKeys[inputKey]
    
    -- Key tồn tại trong premium list
    if stored ~= nil then
        -- Nếu chưa bind (false)
        if stored == false then
            PremiumKeys[inputKey] = hwid
            print("[Key System] 🔐 Premium key auto-bound to HWID")
            print("[Key System] HWID: " .. hwid:sub(1, 8) .. "...")
            return true, "Premium key bound ✓"
        
        -- Nếu đã bind và khớp HWID
        elseif stored == hwid then
            return true, "Premium key verified ✓ (HWID match)"
        
        -- HWID không khớp - KICK NGAY LẬP TỨC
        else
            print("[Key System] ❌ HWID mismatch!")
            print("Stored HWID: " .. (stored and stored:sub(1, 8) or "none") .. "...")
            print("Current HWID: " .. hwid:sub(1, 8) .. "...")
            
            -- Kick player với thông tin HWID
            game.Players.LocalPlayer:Kick(string.format(
                "[Key System] ❌ HWID Mismatch\nExpected: %s\nGot: %s",
                stored and stored:sub(1, 12) or "none",
                hwid:sub(1, 12)
            ))
            return false, "HWID mismatch ✗"
        end
    end
    
    game.Players.LocalPlayer:Kick("[Key System] ❌ Premium key not found")
    return false, "Premium key not found ✗"
end

-- Check và kick
function KeySystem:CheckKeyAndKick()
    local inputKey = getgenv().Key
    
    if not inputKey then
        warn("[Key System] ❌ Key not set!")
        warn("[Key System] Set: getgenv().Key = 'YOUR_KEY'")
        wait(1)
        game.Players.LocalPlayer:Kick("[Key System] ❌ Key not set\nSet: getgenv().Key = 'YOUR_KEY'")
        return false
    end
    
    -- Premium check first
    if PremiumKeys[inputKey] ~= nil then
        local ok, msg = self:ValidatePremiumKey(inputKey)
        print("[Key System] " .. msg)
        
        if not ok then
            -- Hàm ValidatePremiumKey đã tự động kick nếu sai
            return false
        end
        
        print("[Key System] ✅ PREMIUM ACCESS GRANTED!")
        return true
    end
    
    -- Standard check
    local ok, msg = self:ValidateKey(inputKey)
    print("[Key System] " .. msg)
    
    if not ok then
        -- Hàm ValidateKey đã tự động kick nếu sai
        return false
    end
    
    print("[Key System] ✅ Access granted!")
    return true
end

-- Các hàm utility
function KeySystem:IsKeyValid()
    local inputKey = getgenv().Key
    if not inputKey then return false end
    
    if PremiumKeys[inputKey] ~= nil then
        local ok, _ = self:ValidatePremiumKey(inputKey)
        return ok
    end
    
    local ok, _ = self:ValidateKey(inputKey)
    return ok
end

function KeySystem:AddPremiumKey(key, hwid)
    if not key then return false end
    PremiumKeys[key] = hwid or false
    print("[Key System] ✅ Added premium key: " .. key)
    return true
end

function KeySystem:GetHWID()
    return GetUltimateHWID()
end

-- Auto execute
print("[Key System] 🔐 Ultimate Key System v2.0")
local hwid = GetUltimateHWID()
print("[Key System] HWID Generation: " .. hwid:sub(1, 12) .. "...")
getgenv().__hwid = hwid  -- Lưu HWID vào biến toàn cục

if game:IsLoaded() and game.Players.LocalPlayer then
    KeySystem:CheckKeyAndKick()
else
    game.Loaded:Wait()
    game.Players.LocalPlayerAdded:Wait()
    wait(0.5)
    KeySystem:CheckKeyAndKick()
end

-- Export
getgenv().KeySystem = KeySystem
getgenv().GetUltimateHWID = GetUltimateHWID
-- SERVICES
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local VirtualUser = game:GetService("VirtualUser")
local Lighting = game:GetService("Lighting")
local CollectionService = game:GetService("CollectionService")
local Stats = game:GetService("Stats")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF_Remote = Remotes:WaitForChild("CommF_")

-- PLAYER
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui", 5)
local MainGui = PlayerGui:WaitForChild("Main", 5)

-- CHARACTER
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

-- FISHING
local RFCraft = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/Craft")
local FishReplicated = ReplicatedStorage:WaitForChild("FishReplicated")
local FishingRequest = FishReplicated:WaitForChild("FishingRequest")
local FishingConfig = require(FishReplicated.FishingClient.Config)
local JobsRemoteFunction = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/JobsRemoteFunction")
local JobToolAbilities = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/JobToolAbilities")
local GetWaterHeightAtLocation = require(ReplicatedStorage.Util.GetWaterHeightAtLocation)

-- WEBHOOK
local reportWebhookURL = "https://discordapp.com/api/webhooks/1441609595070976061/F1bfrAoQ5ZCIBIg5FXXuiGODzPNfKxwMasJ6H1_QUCiUaTgStyVLX9fq3TdoM3D8Q0f9"
local ideasWebhookURL = "https://discordapp.com/api/webhooks/1454275796125483070/LW8SFhuXrZtj1Teu7xPrfgUcZWv0d-q85Hk_4uG7Ce7gFHfAG4j8QMAmP-uYfxUxT7zf"

-- EXPLOIT
local executor = getexecutorname() or identifyexecutor()
if executor then
    if
            string.find(executor, "Bunni") or 
            string.find(executor, "FluxusZ") or 
            string.find(executor, "Delta") or 
            string.find(executor, "Arceus") or
            string.find(executor, "Xeno") or
            string.find(executor, "Swift") or
            string.find(executor, "Awp") or
            string.find(executor, "Volcano") or
            string.find(executor, "Argon") or
            string.find(executor, "Macsploit") or
            string.find(executor, "Potassium") or
            string.find(executor, "CodeX") or
            string.find(executor, "Velocity") or
            string.find(executor, "Romix")
     then
        print("ok")
    else
        game.Players.LocalPlayer:Kick("Please use Delta Exploit or PC use volcano or Exploit paid!")
    end
end

function playDlg(id)
    local rs = game:GetService("ReplicatedStorage")
    local dlgCtrl = require(rs.DialogueController)
    local dlgList = require(rs.DialoguesList)

    for k, v in pairs(dlgList) do
        if tostring(k) == id then
            dlgCtrl:Start(v)
        end
    end
end

-- Toggle FLuent
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Tạo ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Name = "NazuXWindowsToggleUltimate"

-- Tạo main ImageButton
local mainButton = Instance.new("ImageButton")
mainButton.Name = "ToggleButton"
mainButton.Parent = ScreenGui
mainButton.Size = UDim2.new(0, 60, 0, 60)
mainButton.Position = UDim2.new(0.1, 0, 0.9, 0)
mainButton.Draggable = true
mainButton.AnchorPoint = Vector2.new(0.5, 0.5)
mainButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
mainButton.BackgroundTransparency = 0.2
mainButton.BorderSizePixel = 0
mainButton.AutoButtonColor = false
mainButton.Image = ""

-- Tạo UICorner để bo tròn
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = mainButton

-- Tạo UIStroke
local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = mainButton
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Thickness = 1.5
UIStroke.Transparency = 0.7

-- Tạo ImageLabel cho icon - SỬ DỤNG ASSET ID BẠN YÊU CẦU
local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Parent = mainButton
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0, 40, 0, 40)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 0
ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Image = "rbxassetid://72077522197705" -- Asset ID bạn yêu cầu

-- Biến và cài đặt
local isToggled = false
local isHovering = false
local zoomedIn = false
local faded = false

-- Tween info
local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local hoverTweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local defaultTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local fluentTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local clickTweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

-- Tween objects
local fadeInTween = TweenService:Create(mainButton, tweenInfo, {BackgroundTransparency = 0.25})
local fadeOutTween = TweenService:Create(mainButton, tweenInfo, {BackgroundTransparency = 0.2})

-- DRAG FUNCTIONALITY
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    mainButton.Position = UDim2.new(
        startPos.X.Scale,
        startPos.X.Offset + delta.X,
        startPos.Y.Scale,
        startPos.Y.Offset + delta.Y
    )
end

mainButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = mainButton.Position
        
        -- Hiệu ứng khi bắt đầu kéo (từ code Fluent)
        TweenService:Create(mainButton, fluentTweenInfo, {
            Size = UDim2.new(0, 66, 0, 66),
            BackgroundTransparency = 0.05
        }):Play()
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

mainButton.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        TweenService:Create(mainButton, fluentTweenInfo, {
            Size = UDim2.new(0, 60, 0, 60),
            BackgroundTransparency = 0.2
        }):Play()
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)

-- Hiệu ứng hover kết hợp - ĐÃ SỬA: Đổi màu xanh biển thành đen
mainButton.MouseEnter:Connect(function()
    isHovering = true
    
    -- Hiệu ứng từ Fluent
    TweenService:Create(mainButton, fluentTweenInfo, {
        Size = UDim2.new(0, 64, 0, 64),
        BackgroundTransparency = 0.1
    }):Play()
    
    TweenService:Create(UIStroke, fluentTweenInfo, {
        Transparency = 0.4
    }):Play()
    
    -- Hiệu ứng từ Windows 11 - ĐÃ SỬA: Đổi thành màu đen
    TweenService:Create(mainButton, hoverTweenInfo, {
        BackgroundColor3 = Color3.fromRGB(20, 20, 20)  -- Đổi từ xanh biển (30, 150, 255) thành đen tối
    }):Play()
end)

mainButton.MouseLeave:Connect(function()
    isHovering = false
    local targetColor = isToggled and Color3.fromRGB(15, 15, 15) or Color3.fromRGB(45, 45, 45)  -- Đổi thành màu đen
    
    -- Hiệu ứng từ Fluent
    TweenService:Create(mainButton, fluentTweenInfo, {
        Size = UDim2.new(0, 60, 0, 60),
        BackgroundTransparency = 0.2
    }):Play()
    
    TweenService:Create(UIStroke, fluentTweenInfo, {
        Transparency = 0.7
    }):Play()
    
    -- Hiệu ứng từ Windows 11 - ĐÃ SỬA: Đổi thành màu đen
    TweenService:Create(mainButton, defaultTweenInfo, {
        BackgroundColor3 = targetColor
    }):Play()
end)

-- Hiệu ứng click kết hợp - ĐÃ SỬA: Đổi màu xanh biển thành đen
mainButton.MouseButton1Down:Connect(function()
    -- Hiệu ứng từ Windows 11 - ĐÃ SỬA: Đổi thành màu đen
    TweenService:Create(mainButton, hoverTweenInfo, {
        Size = UDim2.new(0, 58, 0, 58),
        BackgroundColor3 = Color3.fromRGB(10, 10, 10)  -- Đổi từ xanh biển (0, 80, 180) thành đen đậm
    }):Play()
end)

-- Main toggle function kết hợp tất cả tính năng
mainButton.MouseButton1Click:Connect(function()
    isToggled = not isToggled
    print("Toggle:", isToggled)
    
    -- Hiệu ứng scale Fluent
    local scaleTween = TweenService:Create(mainButton, clickTweenInfo, {
        Size = UDim2.new(0, 55, 0, 55)
    })
    
    local scaleBackTween = TweenService:Create(mainButton, clickTweenInfo, {
        Size = UDim2.new(0, 60, 0, 60)
    })
    
    -- Hiệu ứng icon scale Fluent
    local iconScaleTween = TweenService:Create(ImageLabel, clickTweenInfo, {
        Size = isToggled and UDim2.new(0, 27, 0, 27) or UDim2.new(0, 40, 0, 40)
    })
    
    -- Hiệu ứng từ Windows 11 - ĐÃ SỬA: Đổi màu xanh biển thành đen
    local targetColor = isToggled and Color3.fromRGB(15, 15, 15) or Color3.fromRGB(45, 45, 45)  -- Đổi thành màu đen
    local colorTween = TweenService:Create(mainButton, defaultTweenInfo, {
        BackgroundColor3 = targetColor
    })
    
    -- Hiệu ứng từ NazuX (Background fade)
    if faded then
        fadeOutTween:Play()
    else
        fadeInTween:Play()
    end
    faded = not faded
    
    -- Chạy tất cả hiệu ứng
    scaleTween:Play()
    iconScaleTween:Play()
    colorTween:Play()
    
    -- Gửi phím
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "LeftControl", false, game)  
        task.wait(0.1)  
    game:GetService("VirtualInputManager"):SendKeyEvent(false, "LeftControl", false, game)  
    
    -- Delay scale back để tạo hiệu ứng nảy
    spawn(function()
        wait(0.15)
        scaleBackTween:Play()
    end)
    
    -- Thông báo trạng thái
    if isToggled then
        print("Toggle ON - Ultimate Toggle Activated")
    else
        print("Toggle OFF - Ultimate Toggle Deactivated")
    end
end)

-- WORLD CHECK
local placeId = game.PlaceId
local World1 = game.PlaceId == 2753915549 or 85211729168715 or 73902483975735
local World2 = game.PlaceId == 4442272183 or 79091703265657 or 73902483975735
local World3 = game.PlaceId == 7449423635 or 85211729168715 or 73902483975735
local Sea = World1 or World2 or World3

-- GAME REFERENCES (giữ từ script cũ)
local Enemies = Workspace.Enemies
local replicated = ReplicatedStorage
local plr = Player
local Root = HumanoidRootPart
local Lv = Player.Data.Level.Value
local TeamSelf = Player.Team
local Energy = Character.Energy.Value
local vim1 = VirtualInputManager
local vim2 = VirtualUser
local TW = TweenService

-- NOTIFICATION CONFIG
local lastNotificationTime = 0
local notificationCooldown = 10

-- ALIASES để tương thích với code cũ
local ply = Players
local replicated = ReplicatedStorage
local RunSer = RunService

-- Khai báo với local
local Boss = {}
local BringConnections = {}
local MaterialList = {}
local NPCList = {}  
local shouldTween = false
local SoulGuitar = false
local KenTest = true
local debug = false
local Brazier1 = false
local Brazier2 = false
local Brazier3 = false  
local Sec = 0.1
local ClickState = 0
local Num_self = 25

-- Team mặc định
getgenv().Team = getgenv().Team or "Pirates"

repeat 
    local start = plr.PlayerGui:WaitForChild("Main"):WaitForChild("Loading") 
    wait() 
until start and game:IsLoaded()

-- Thiết lập team
if getgenv().Team == "Pirates" then
    replicated.Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
elseif getgenv().Team == "Marines" then
    replicated.Remotes.CommF_:InvokeServer("SetTeam", "Marines")
else
    replicated.Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
end

local fruitsOnSale = {}
local function addCommas(number)
    local formatted = tostring(number)
    while true do  
        formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", '%1,%2')
        if k == 0 then break end
    end
    return formatted
end
for _, fruitData in pairs(replicated.Remotes.CommF_:InvokeServer("GetFruits",true)) do
    if fruitData["OnSale"] == true then
        local priceWithCommas = addCommas(fruitData["Price"])
        local fruitInfo = fruitData["Name"]
        table.insert(fruitsOnSale, fruitInfo)
    end
end
local Nms = {}
for _, fruitData in pairs(replicated.Remotes.CommF_:InvokeServer("GetFruits",false)) do
    if fruitData["OnSale"] == true then
        local price = addCommas(fruitData["Price"])
        local NormalInFO = fruitData["Name"]
        table.insert(Nms, NormalInFO)
    end
end

if World1 then
    Boss = {
        "The Gorilla King",
        "Bobby",
        "The Saw",
        "Yeti",
        "Mob Leader",
        "Vice Admiral",
        "Saber Expert",
        "Warden",
        "Chief Warden",
        "Swan",
        "Magma Admiral",
        "Fishman Lord",
        "Wysper",
        "Thunder God",
        "Cyborg",
        "Ice Admiral",
        "Greybeard"
    }
elseif World2 then
    Boss = {
        "Diamond",
        "Jeremy",
        "Fajita",
        "Don Swan",
        "Smoke Admiral",
        "Awakened Ice Admiral",
        "Tide Keeper",
        "Darkbeard",
        "Cursed Captain",
        "Order"
    }
elseif World3 then
    Boss = {
        "Tyrant of the Skies",
        "Stone",
        "Hydra Leader",
        "Kilo Admiral",
        "Captain Elephant",
        "Beautiful Pirate",
        "Cake Queen",
        "Longma",
        "Soul Reaper"
    }
end
if World1 then
    MaterialList = {"Leather + Scrap Metal", "Angel Wings", "Magma Ore", "Fish Tail"}
elseif World2 then
    MaterialList = {
        "Leather + Scrap Metal",
        "Radioactive Material",
        "Ectoplasm",
        "Mystic Droplet",
        "Magma Ore",
        "Vampire Fang"
    }
elseif World3 then
    MaterialList = {
        "Scrap Metal",
        "Demonic Wisp",
        "Conjured Cocoa",
        "Dragon Scale",
        "Gunpowder",
        "Fish Tail",
        "Mini Tusk"
    }
end
local DungeonTables = {
    "Flame",
    "Ice",
    "Quake",
    "Light",
    "Dark",
    "String",
    "Rumble",
    "Magma",
    "Human: Buddha",
    "Sand",
    "Bird: Phoenix",
    "Dough"
}
local ListSeaBoat = {
    "Guardian",
    "PirateGrandBrigade",
    "MarineGrandBrigade",
    "PirateBrigade",
    "MarineBrigade",
    "PirateSloop",
    "MarineSloop",
    "Beast Hunter"
}

code = {
    "LIGHTNINGABUSE",
    "1LOSTADMIN",
    "ADMINFIGHT",
    "NOMOREHACK",
    "BANEXPLOIT",
    "krazydares",
    "TRIPLEABUSE",
    "24NOADMIN",
    "REWARDFUN",
    "Chandler",
    "NEWTROLL",
    "KITT_RESET",
    "Magicbus",
    "Starcodeheo",
    "fudd10_v2",
    "Sub2UncleKizaru",
    "Fudd10",
    "Bignews",
    "SECRET_ADMIN",
    "SUB2GAMERROBOT_RESET1",
    "SUB2OFFICIALNOOBIE",
    "AXIORE",
    "BIGNEWS",
    "BLUXXY",
    "CHANDLER",
    "ENYU_IS_PRO",
    "FUDD10",
    "FUDD10_V2",
    "KITTGAMING",
    "MAGICBUS",
    "STARCODEHEO",
    "STRAWHATMAINE",
    "SUB2CAPTAINMAUI",
    "SUB2DAIGROCK",
    "SUB2FER999",
    "SUB2NOOBMASTER123",
    "SUB2UNCLEKIZARU",
    "TANTAIGAMING",
    "THEGREATACE",
    "WildDares",
    "BossBuild",
    "GetPranked",
    "FIGHT4FRUIT",
    "EARN_FRUITS"
}

local ListSeaZone = {"Lv 1", "Lv 2", "Lv 3", "Lv 4", "Lv 5", "Lv 6", "Lv Infinite"}

local RenMon = {"Snow Lurker", "Arctic Warrior", "Hidden Key", "Awakened Ice Admiral"}
local CursedTables = {
    ["Mob"] = "Mythological Pirate",
    ["Mob2"] = "Cursed Skeleton",
    "Hell's Messenger",
    ["Mob3"] = "Cursed Skeleton",
    "Heaven's Guardian"
}
local Past = {"Part", "SpawnLocation", "Terrain", "WedgePart", "MeshPart"}
local BartMon = {"Swan Pirate", "Jeremy"}
local CitizenTable = {"Forest Pirate", "Captain Elephant"}
local Human_v3_Mob = {"Fajita", "Jeremy", "Diamond"}
local AllBoats = {"Beast Hunter", "Lantern", "Guardian", "Grand Brigade", "Dinghy", "Sloop", "The Sentinel"}
local mastery1 = {"Cookie Crafter"}
local mastery2 = {"Reborn Skeleton"}

PosMsList = {
    ["Pirate Millionaire"] = CFrame.new(-712.8272705078125, 98.5770492553711, 5711.9541015625),
    ["Pistol Billionaire"] = CFrame.new(-723.4331665039062, 147.42906188964844, 5931.9931640625),
    ["Dragon Crew Warrior"] = CFrame.new(7021.50439453125, 55.76270294189453, -730.1290893554688),
    ["Dragon Crew Archer"] = CFrame.new(6625, 378, 244),
    ["Female Islander"] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
    ["Venomous Assailant"] = CFrame.new(4902, 670, 39),
    ["Marine Commodore"] = CFrame.new(2401, 123, -7589),
    ["Marine Rear Admiral"] = CFrame.new(3588, 229, -7085),
    ["Fishman Raider"] = CFrame.new(-10941, 332, -8760),
    ["Fishman Captain"] = CFrame.new(-11035, 332, -9087),
    ["Forest Pirate"] = CFrame.new(-13446, 413, -7760),
    ["Mythological Pirate"] = CFrame.new(-13510, 584, -6987),
    ["Jungle Pirate"] = CFrame.new(-11778, 426, -10592),
    ["Musketeer Pirate"] = CFrame.new(-13282, 496, -9565),
    ["Reborn Skeleton"] = CFrame.new(-8764, 142, 5963),
    ["Living Zombie"] = CFrame.new(-10227, 421, 6161),
    ["Demonic Soul"] = CFrame.new(-9579, 6, 6194),
    ["Posessed Mummy"] = CFrame.new(-9579, 6, 6194),
    ["Peanut Scout"] = CFrame.new(-1993, 187, -10103),
    ["Peanut President"] = CFrame.new(-2215, 159, -10474),
    ["Ice Cream Chef"] = CFrame.new(-877, 118, -11032),
    ["Ice Cream Commander"] = CFrame.new(-877, 118, -11032),
    ["Cookie Crafter"] = CFrame.new(-2021, 38, -12028),
    ["Cake Guard"] = CFrame.new(-2024, 38, -12026),
    ["Baking Staff"] = CFrame.new(-1932, 38, -12848),
    ["Head Baker"] = CFrame.new(-1932, 38, -12848),
    ["Cocoa Warrior"] = CFrame.new(95, 73, -12309),
    ["Chocolate Bar Battler"] = CFrame.new(647, 42, -12401),
    ["Sweet Thief"] = CFrame.new(116, 36, -12478),
    ["Candy Rebel"] = CFrame.new(47, 61, -12889),
    ["Ghost"] = CFrame.new(5251, 5, 1111)
}

-- Hàm EquipWeapon
EquipWeapon = function(text)
    if not text then return end
    if plr.Backpack:FindFirstChild(text) then
        plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild(text))
    end
end

weaponSc = function(weapon)
    for __in, v in pairs(plr.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v.ToolTip == weapon then 
                EquipWeapon(v.Name) 
            end
        end
    end
end

-- Hook các hàm
hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function() end)
hookfunction(require(game:GetService("ReplicatedStorage"):WaitForChild("GuideModule")).ChangeDisplayedNPC, function() end)
hookfunction(error, function() end)
hookfunction(warn, function() end)

-- Xóa Rocks
Rock = workspace:FindFirstChild("Rocks")
if Rock then 
    Rock:Destroy()
end

-- Tối ưu lighting
gay = (function()
    local lightingLayers = Lighting:FindFirstChild("LightingLayers")
    if lightingLayers and Lighting then
        local darkFog = lightingLayers:FindFirstChild("DarkFog")
        if darkFog then 
            darkFog:Destroy() 
        end
    end
    
    Water = workspace._WorldOrigin["Foam;"]
    if Water and workspace._WorldOrigin["Foam;"] then 
        Water:Destroy() 
    end        
end)()

-- Attack class
Attack = {}
Attack.__index = Attack

Attack.Alive = function(model) 
    if not model then return end 
    Humanoid = model:FindFirstChild("Humanoid")
    return Humanoid and Humanoid.Health > 0 
end

Attack.Pos = function(model, dist) 
    return (Root.Position - model.Position).Magnitude <= dist 
end

Attack.Dist = function(model, dist) 
    return (Root.Position - model:FindFirstChild("HumanoidRootPart").Position).Magnitude <= dist 
end

Attack.DistH = function(model, dist) 
    return (Root.Position - model:FindFirstChild("HumanoidRootPart").Position).Magnitude > dist 
end

Attack.Kill = function(model, Succes)
    if model and Succes then
        if not model:GetAttribute("Locked") then 
            model:SetAttribute("Locked", model.HumanoidRootPart.CFrame) 
        end
        PosMon = model:GetAttribute("Locked").Position
        BringEnemy()
        EquipWeapon(_G.SelectWeapon)
        Equipped = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        ToolTip = Equipped.ToolTip
        
        if ToolTip == "Blox Fruit" then 
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,10,0) * CFrame.Angles(0,math.rad(90),0)) 
        else 
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,30,0) * CFrame.Angles(0,math.rad(180),0))
        end
        
        if RandomCFrame then 
            wait(.5)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25)) 
            wait(.5)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0)) 
            wait(.5)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(-25, 30 ,0)) 
            wait(.5)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25)) 
            wait(.5)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0))
        end
    end
end

Attack.Kill2 = function(model, Succes)
    if model and Succes then
        if not model:GetAttribute("Locked") then 
            model:SetAttribute("Locked", model.HumanoidRootPart.CFrame) 
        end
        PosMon = model:GetAttribute("Locked").Position
        BringEnemy()
        EquipWeapon(_G.SelectWeapon)
        Equipped = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        ToolTip = Equipped.ToolTip
        
        if ToolTip == "Blox Fruit" then 
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,10,0) * CFrame.Angles(0,math.rad(90),0)) 
        else 
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,30,8) * CFrame.Angles(0,math.rad(180),0))
        end
        
        if RandomCFrame then 
            wait(0.1)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25)) 
            wait(0.1)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0)) 
            wait(0.1)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(-25, 30 ,0)) 
            wait(0.1)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25)) 
            wait(0.1)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0))
        end
    end
end

Attack.KillSea = function(model, Succes)
    if model and Succes then
        if not model:GetAttribute("Locked") then 
            model:SetAttribute("Locked", model.HumanoidRootPart.CFrame) 
        end
        PosMon = model:GetAttribute("Locked").Position
        BringEnemy()
        EquipWeapon(_G.SelectWeapon)
        Equipped = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        ToolTip = Equipped.ToolTip
        
        if ToolTip == "Blox Fruit" then 
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,10,0) * CFrame.Angles(0,math.rad(90),0)) 
        else 
            notween(model.HumanoidRootPart.CFrame * CFrame.new(0,50,8)) 
            wait(.85)
            notween(model.HumanoidRootPart.CFrame * CFrame.new(0,400,0)) 
            wait(1)
        end
    end
end

Attack.Sword = function(model, Succes)
    if model and Succes then
        if not model:GetAttribute("Locked") then 
            model:SetAttribute("Locked", model.HumanoidRootPart.CFrame) 
        end
        PosMon = model:GetAttribute("Locked").Position
        BringEnemy()
        weaponSc("Sword")
        _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
        
        if RandomCFrame then 
            wait(0.1)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25)) 
            wait(0.1)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(25, 30, 0)) 
            wait(0.1)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(-25, 30 ,0)) 
            wait(0.1)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0, 30, 25)) 
            wait(0.1)
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0))
        end
    end
end

Attack.Mas = function(model, Succes)
    if model and Succes then
        if not model:GetAttribute("Locked") then 
            model:SetAttribute("Locked", model.HumanoidRootPart.CFrame) 
        end
        PosMon = model:GetAttribute("Locked").Position
        BringEnemy()
        
        if model.Humanoid.Health <= HealthM then
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
            Useskills("Blox Fruit","Z")
            Useskills("Blox Fruit","X")
            Useskills("Blox Fruit","C")
        else
            weaponSc("Melee")
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
        end
    end
end

Attack.Masgun = function(model, Succes)
    if model and Succes then
        if not model:GetAttribute("Locked") then 
            model:SetAttribute("Locked", model.HumanoidRootPart.CFrame) 
        end
        PosMon = model:GetAttribute("Locked").Position
        BringEnemy()
        
        if model.Humanoid.Health <= HealthM then
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,35,8))
            Useskills("Gun","Z")
            Useskills("Gun","X")
        else
            weaponSc("Melee")
            _tp(model.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
        end
    end
end

-- Hàm stats settings
statsSetings = function(Num, value)
    if Num == "Melee" then
        if plr.Data.Points.Value ~= 0 then
            replicated.Remotes.CommF_:InvokeServer("AddPoint","Melee",value)
        end
    elseif Num == "Defense" then
        if plr.Data.Points.Value ~= 0 then
            replicated.Remotes.CommF_:InvokeServer("AddPoint","Defense",value)
        end
    elseif Num == "Sword" then
        if plr.Data.Points.Value ~= 0 then
            replicated.Remotes.CommF_:InvokeServer("AddPoint","Sword",value)
        end
    elseif Num == "Gun" then
        if plr.Data.Points.Value ~= 0 then
            replicated.Remotes.CommF_:InvokeServer("AddPoint","Gun",value)
        end
    elseif Num == "Devil" then
        if plr.Data.Points.Value ~= 0 then
            replicated.Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",value)
        end
    end
end

-- Hàm BringEnemy
BringEnemy = function()
    if not _B then return end
    for _,v in pairs(workspace.Enemies:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            if (v.PrimaryPart.Position - PosMon).Magnitude <= 300 then
                v.PrimaryPart.CFrame = CFrame.new(PosMon)
                v.PrimaryPart.CanCollide = true
                v:FindFirstChild("Humanoid").WalkSpeed = 0
                v:FindFirstChild("Humanoid").JumpPower = 0
                if v.Humanoid:FindFirstChild("Animator") then 
                    v.Humanoid.Animator:Destroy()
                end
                plr.SimulationRadius = math.huge
            end
        end                               
    end                    	
end

-- Hàm UseSkills
Useskills = function(weapon, skill)
    if weapon == "Melee" then
        weaponSc("Melee")
        if skill == "Z" then
            vim1:SendKeyEvent(true, "Z", false, game)
            vim1:SendKeyEvent(false, "Z", false, game)
        elseif skill == "X" then
            vim1:SendKeyEvent(true, "X", false, game)
            vim1:SendKeyEvent(false, "X", false, game)
        elseif skill == "C" then
            vim1:SendKeyEvent(true, "C", false, game)
            vim1:SendKeyEvent(false, "C", false, game)
        end
    elseif weapon == "Sword" then
        weaponSc("Sword")
        if skill == "Z" then
            vim1:SendKeyEvent(true, "Z", false, game)
            vim1:SendKeyEvent(false, "Z", false, game)
        elseif skill == "X" then
            vim1:SendKeyEvent(true, "X", false, game)
            vim1:SendKeyEvent(false, "X", false, game)
        end
    elseif weapon == "Blox Fruit" then
        weaponSc("Blox Fruit")
        if skill == "Z" then
            vim1:SendKeyEvent(true, "Z", false, game)
            vim1:SendKeyEvent(false, "Z", false, game)
        elseif skill == "X" then
            vim1:SendKeyEvent(true, "X", false, game)
            vim1:SendKeyEvent(false, "X", false, game)
        elseif skill == "C" then
            vim1:SendKeyEvent(true, "C", false, game)
            vim1:SendKeyEvent(false, "C", false, game)        
        elseif skill == "V" then
            vim1:SendKeyEvent(true, "V", false, game)
            vim1:SendKeyEvent(false, "V", false, game)
        end
    elseif weapon == "Gun" then
        weaponSc("Gun")
        if skill == "Z" then
            vim1:SendKeyEvent(true, "Z", false, game)
            vim1:SendKeyEvent(false, "Z", false, game)
        elseif skill == "X" then
            vim1:SendKeyEvent(true, "X", false, game)
            vim1:SendKeyEvent(false, "X", false, game)
        end
    end
    
    if weapon == "nil" and skill == "Y" then
        vim1:SendKeyEvent(true, "Y", false, game)
        vim1:SendKeyEvent(false, "Y", false, game)
    end
end

-- Hook __namecall
gg = getrawmetatable(game)
old = gg.__namecall
setreadonly(gg, false)

gg.__namecall = newcclosure(function(...)
    local method = getnamecallmethod()
    local args = {...}    
    if tostring(method) == "FireServer" then
        if tostring(args[1]) == "RemoteEvent" then
            if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                if (_G.FarmMastery_G and not SoulGuitar) or (_G.FarmMastery_Dev) or (_G.FarmBlazeEM) or (_G.Prehis_Skills) or (_G.SeaBeast1 or _G.FishBoat or _G.PGB or _G.Leviathan1 or _G.Complete_Trials) or (_G.AimMethod and ABmethod == "AimBots Skill") or (_G.AimMethod and ABmethod == "Auto Aimbots") then
                    args[2] = MousePos
                    return old(unpack(args))
                end
            end
        end
    end
    return old(...)
end)

GetConnectionEnemies = function(a)
    for i,v in pairs(replicated:GetChildren()) do
        if v:IsA("Model") and ((typeof(a) == "table" and table.find(a, v.Name)) or v.Name == a) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            return v
        end
    end
    
    for i,v in next, game.Workspace.Enemies:GetChildren() do
        if v:IsA("Model") and ((typeof(a) == "table" and table.find(a, v.Name)) or v.Name == a) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            return v
        end
    end
end

LowCpu = function()
    decalsyeeted = true
    g = game
    w = g.Workspace
    l = g.Lighting
    t = w.Terrain
    
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
end

CheckF = function()
    if GetBP("Dragon-Dragon") or GetBP("Gas-Gas") or GetBP("Yeti-Yeti") or GetBP("Kitsune-Kitsune") or GetBP("T-Rex-T-Rex") then 
        return true 
    end
end

CheckBoat = function()
    for i, v in pairs(workspace.Boats:GetChildren()) do
        if tostring(v.Owner.Value) == tostring(plr.Name) then
            return v    
        end
    end
    return false
end

CheckEnemiesBoat = function()
    for _,v in pairs(workspace.Enemies:GetChildren()) do
        if (v.Name == "FishBoat") and v:FindFirstChild("Health").Value > 0 then
            return true    
        end
    end
    return false
end

CheckPirateGrandBrigade = function()
    for _,v in pairs(workspace.Enemies:GetChildren()) do
        if (v.Name == "PirateGrandBrigade" or v.Name == "PirateBrigade") and v:FindFirstChild("Health").Value > 0 then
            return true
        end
    end
    return false
end

CheckShark = function()
    for _,v in pairs(workspace.Enemies:GetChildren()) do
        if v.Name == "Shark" and Attack.Alive(v) then
            return true    
        end
    end
    return false
end

CheckTerrorShark = function()
    for _,v in pairs(workspace.Enemies:GetChildren()) do
        if v.Name == "Terrorshark" and Attack.Alive(v) then
            return true    
        end
    end
    return false
end

CheckPiranha = function()
    for _,v in pairs(workspace.Enemies:GetChildren()) do
        if v.Name == "Piranha" and Attack.Alive(v) then
            return true    
        end
    end
    return false
end

CheckFishCrew = function()
    for _,v in pairs(workspace.Enemies:GetChildren()) do
        if (v.Name == "Fish Crew Member" or v.Name == "Haunted Crew Member") and Attack.Alive(v) then
            return true    
        end
    end
    return false
end

CheckHauntedCrew = function()
    for _,v in pairs(workspace.Enemies:GetChildren()) do
        if (v.Name == "Haunted Crew Member") and Attack.Alive(v) then
            return true    
        end
    end
    return false
end

GetQuestDracoLevel = function()
  local v371 = {[1] = {NPC = "Dragon Wizard",Command = "Upgrade"}};
  return replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(v371))
end

CheckSeaBeast = function()
    if workspace.SeaBeasts:FindFirstChild("SeaBeast1") then
        return true  
    end
    return false
end

CheckLeviathan = function()
    if workspace.SeaBeasts:FindFirstChild("Leviathan") then
        return true  
    end
    return false
end

UpdStFruit = function()
    for z,x in next, plr.Backpack:GetChildren() do
        StoreFruit = x:FindFirstChild("EatRemote", true)
        if StoreFruit then
            replicated.Remotes.CommF_:InvokeServer("StoreFruit", StoreFruit.Parent:GetAttribute("OriginalName"), plr.Backpack:FindFirstChild(x.Name))
        end
    end
end

collectFruits = function(Succes)
    if Succes then
        Character = plr.Character
        for _,v1 in pairs(workspace:GetChildren()) do
            if string.find(v1.Name, "Fruit") then 
                v1.Handle.CFrame = Character.HumanoidRootPart.CFrame 
            end
        end
    end
end

Getmoon = function()
    if World1 then
        return Lighting.FantasySky.MoonTextureId
    elseif World2 then
        return Lighting.FantasySky.MoonTextureId
    elseif World3 then
        return Lighting.Sky.MoonTextureId
    end
end

DropFruits = function()
    for _,v3 in next, plr.Backpack:GetChildren() do
        if string.find(v3.Name, "Fruit") then
            EquipWeapon(v3.Name) 
            wait(.1)
            if plr.PlayerGui.Main.Dialogue.Visible == true then 
                plr.PlayerGui.Main.Dialogue.Visible = false 
            end 
            EquipWeapon(v3.Name) 
            plr.Character:FindFirstChild(v3.Name).EatRemote:InvokeServer("Drop")
        end
    end
    
    for a,b2 in pairs(plr.Character:GetChildren()) do
        if string.find(b2.Name, "Fruit") then 
            EquipWeapon(b2.Name) 
            wait(.1)
            if plr.PlayerGui.Main.Dialogue.Visible == true then 
                plr.PlayerGui.Main.Dialogue.Visible = false 
            end 
            EquipWeapon(b2.Name) 
            plr.Character:FindFirstChild(b2.Name).EatRemote:InvokeServer("Drop")
        end
    end
end

GetBP = function(v)
    return plr.Backpack:FindFirstChild(v) or plr.Character:FindFirstChild(v)
end

GetIn = function(Name)
    for _ ,v1 in pairs(replicated.Remotes.CommF_:InvokeServer("getInventory")) do
        if type(v1) == "table" then
            if v1.Name == Name or plr.Character:FindFirstChild(Name) or plr.Backpack:FindFirstChild(Name) then
                return true
            end
        end
    end
    return false
end

GetM = function(Name)
    for _,tab in pairs(replicated.Remotes.CommF_:InvokeServer("getInventory")) do
        if type(tab) == "table" then
            if tab.Type == "Material" then
                if tab.Name == Name then
                    return tab.Count
                end
            end
        end
    end
    return 0
end

GetWP = function(nametool)
    for _,v4 in pairs(replicated.Remotes.CommF_:InvokeServer("getInventory")) do
        if type(v4) == "table" then
            if v4.Type == "Sword" then
                if v4.Name == nametool or plr.Character:FindFirstChild(nametool) or plr.Backpack:FindFirstChild(nametool) then
                    return true
                end
            end
        end
    end
    return false
end

getInfinity_Ability = function(Method, Var)
    if not Root then return end
    if Method == "Soru" and Var then
        for _,gc in next, getgc() do
            if plr.Character.Soru then
                if (typeof(gc) == "function") and (getfenv(gc).script == plr.Character.Soru) then
                    for _, v in next, getupvalues(gc) do
                        if (typeof(v) == "table") then
                            repeat 
                                wait(Sec) 
                                v.LastUse = 0 
                            until not Var or (plr.Character.Humanoid.Health <= 0)
                        end
                    end
                end
            end
        end    
    elseif Method == "Energy" and Var then
        plr.Character.Energy.Changed:connect(function()
            if Var then 
                plr.Character.Energy.Value = Energy 
            end 
        end)
    elseif Method == "Observation" and Var then
        VisionRadius = plr.VisionRadius
        VisionRadius.Value = math.huge
    end
end

Hop = function()
    pcall(function()
        for count = math.random(1, math.random(40, 75)), 100 do
            remote = replicated.__ServerBrowser:InvokeServer(count)
            for _, v in next, remote do
                if tonumber(v['Count']) < 12 then 
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, _) 
                end
            end    
        end
    end)
end

block = Instance.new("Part", workspace)
block.Size = Vector3.new(1, 1, 1)
block.Name = "Rip_Indra"
block.Anchored = true
block.CanCollide = false
block.CanTouch = false
block.Transparency = 1
local blockfind = workspace:FindFirstChild(block.Name)
if blockfind and blockfind ~= block then blockfind:Destroy() end
task.spawn(function()while task.wait()do if block and block.Parent==workspace then if shouldTween then getgenv().OnFarm=true else getgenv().OnFarm=false end else getgenv().OnFarm=false end end end)
task.spawn(function()local a=game.Players.LocalPlayer;repeat task.wait()until a.Character and a.Character.PrimaryPart;block.CFrame=a.Character.PrimaryPart.CFrame;while task.wait()do pcall(function()if getgenv().OnFarm then if block and block.Parent==workspace then local b=a.Character and a.Character.PrimaryPart;if b and(b.Position-block.Position).Magnitude<=200 then b.CFrame=block.CFrame else block.CFrame=b.CFrame end end;local c=a.Character;if c then for d,e in pairs(c:GetChildren())do if e:IsA("BasePart")then e.CanCollide=false end end end else local c=a.Character;if c then for d,e in pairs(c:GetChildren())do if e:IsA("BasePart")then e.CanCollide=true end end end end end)end end)
_tp = function(target)
  local character = plr.Character
  if not character or not character:FindFirstChild("HumanoidRootPart") then return end
  local rootPart = character.HumanoidRootPart
  local distance = (target.Position - rootPart.Position).Magnitude
  
  -- DÒNG NÀY ĐÃ ĐƯỢC SỬA: dùng biến từ slider
  local tweenInfo = TweenInfo.new(distance / (getgenv().TweenSpeed or 300), Enum.EasingStyle.Linear)
  
  local tween = game:GetService("TweenService"):Create(block, tweenInfo, {CFrame = target})    
  if plr.Character.Humanoid.Sit == true then
    block.CFrame = CFrame.new(block.Position.X, target.Y, block.Position.Z)
  end  
  tween:Play()    
  task.spawn(function() while tween.PlaybackState == Enum.PlaybackState.Playing do if not shouldTween then tween:Cancel() break end task.wait(0.1) end end)
end
TeleportToTarget = function(targetCFrame) if (targetCFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude > 1000 then _tp(targetCFrame)else _tp(targetCFrame)end end
notween = function(p) plr.Character.HumanoidRootPart.CFrame = p end
function BTP(p)
    local player = game.Players.LocalPlayer
    local humanoidRootPart = player.Character.HumanoidRootPart
    local humanoid = player.Character.Humanoid
    local playerGui = player.PlayerGui.Main
    local targetPosition = p.Position
    local lastPosition = humanoidRootPart.Position
    repeat
        humanoid.Health = 0
        humanoidRootPart.CFrame = p
        playerGui.Quest.Visible = false
        if (humanoidRootPart.Position - lastPosition).Magnitude > 1 then
            lastPosition = humanoidRootPart.Position
            humanoidRootPart.CFrame = p
        end
        task.wait(0.5)
    until (p.Position - humanoidRootPart.Position).Magnitude <= 2000
end
spawn(function()
  while task.wait() do
    pcall(function()
      if _G.SailBoat_Hydra or _G.WardenBoss or _G.AutoFactory or _G.HighestMirage or _G.HCM or _G.PGB or _G.Leviathan1 or _G.UPGDrago or _G.Complete_Trials or _G.TpDrago_Prehis or _G.BuyDrago or _G.AutoFireFlowers or _G.DT_Uzoth or _G.AutoBerry or _G.Prehis_Find or _G.Prehis_Skills or _G.Prehis_DB or _G.Prehis_DE or _G.FarmBlazeEM or _G.Dojoo or _G.CollectPresent or _G.AutoLawKak or _G.TpLab or _G.AutoPhoenixF or _G.AutoFarmChest or _G.AutoHytHallow or _G.LongsWord or _G.BlackSpikey or _G.AutoHolyTorch or _G.TrainDrago  or _G.AutoSaber or _G.FarmMastery_Dev or _G.CitizenQuest or _G.AutoEctoplasm or _G.KeysRen or _G.Auto_Rainbow_Haki or _G.obsFarm or _G.AutoBigmom or _G.Doughv2 or _G.AuraBoss or _G.Raiding or _G.Auto_Cavender or _G.TpPly or _G.Bartilo_Quest or _G.Level or _G.FarmEliteHunt or _G.AutoZou or _G.AutoFarm_Bone or getgenv().AutoMaterial or _G.CraftVM or _G.FrozenTP or _G.TPDoor or _G.AcientOne or _G.AutoFarmNear or _G.AutoRaidCastle or _G.DarkBladev3 or _G.AutoFarmRaid or _G.Auto_Cake_Prince or _G.Addealer or _G.TPNpc or _G.TwinHook or _G.FindMirage or _G.FarmChestM or _G.Shark or _G.TerrorShark or _G.Piranha or _G.MobCrew or _G.SeaBeast1 or _G.FishBoat or _G.AutoPole or _G.AutoPoleV2 or _G.Auto_SuperHuman or _G.AutoDeathStep or _G.Auto_SharkMan_Karate or _G.Auto_Electric_Claw or _G.AutoDragonTalon or _G.Auto_Def_DarkCoat or _G.Auto_God_Human or _G.Auto_Tushita or _G.AutoMatSoul or _G.AutoKenVTWO or _G.AutoSerpentBow or _G.AutoFMon or _G.Auto_Soul_Guitar or _G.TPGEAR or _G.AutoSaw or _G.AutoTridentW2 or _G.Auto_StartRaid or _G.AutoEvoRace or _G.AutoGetQuestBounty or _G.MarinesCoat or _G.TravelDres or _G.Defeating or _G.DummyMan or _G.Auto_Yama or _G.Auto_SwanGG or _G.SwanCoat or _G.AutoEcBoss or _G.Auto_Mink or _G.Auto_Human or _G.Auto_Skypiea or _G.Auto_Fish or _G.CDK_TS or _G.CDK_YM or _G.CDK or _G.AutoFarmGodChalice or _G.AutoFistDarkness or _G.AutoMiror or _G.Teleport or _G.AutoKilo or _G.AutoGetUsoap or _G.Praying or _G.TryLucky or _G.AutoColShad or _G.AutoUnHaki or _G.Auto_DonAcces or _G.AutoRipIngay or _G.DragoV3 or _G.DragoV1 or _G.SailBoats or NextIs or _G.FarmGodChalice or _G.IceBossRen or senth or senth2 or _G.Lvthan or _G.beasthunter or _G.DangerLV or _G.Relic123 or _G.tweenKitsune or _G.Collect_Ember or _G.AutofindKitIs or _G.snaguine or _G.TwFruits or _G.tweenKitShrine or _G.Tp_LgS or _G.Tp_MasterA or _G.tweenShrine or _G.FarmMastery_G or _G.FarmMastery_S or _G.ChestHOP or _G.RipHOP or _G.DoughKingHOP or _G.FarmTyrantHOP or _G.SoulReaperHOP or _G.FarmEliteHunterHOP or _G.DarkbeardHOP or _G.Auto_Def_DarkCoat or _G.FarmEliteHunt or _G.StartFarm or _G.AutoFightingStyle or _G.StartMastery or _G.Select_CDK_Type or _G.Auto_CDK_Quest or _G.AutoGhoul or _G.UpgradeRaceV2 then
        shouldTween = true
      if not plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
          local Noclip = Instance.new("BodyVelocity")
          Noclip.Name = "BodyClip"
          Noclip.Parent = plr.Character.HumanoidRootPart
          Noclip.MaxForce = Vector3.new(100000,100000,100000)
          Noclip.Velocity = Vector3.new(0,0,0)
        end        
        if not plr.Character:FindFirstChild('highlight') then
          Test = Instance.new('Highlight')
          Test.Name = "highlight"
          Test.Enabled = true
          Test.FillColor = Color3.fromRGB(255, 255, 255)
          Test.OutlineColor = Color3.fromRGB(255,255,255)
          Test.FillTransparency = 1
          Test.OutlineTransparency = 1
          Test.Parent = plr.Character
        end
        for _, no in pairs(plr.Character:GetDescendants()) do if no:IsA("BasePart") then no.CanCollide = false end end
      else
        shouldTween = false
        if plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then plr.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy() end
        if plr.Character:FindFirstChild('highlight') then plr.Character:FindFirstChild('highlight'):Destroy() end	        
      end
    end)
  end
end)
QuestB = function()
		if World1 then
			if _G.FindBoss == "The Gorilla King" then
				bMon = "The Gorilla King"
				Qname = "JungleQuest"
				Qdata = 3;
				PosQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
				PosB = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
			elseif _G.FindBoss == "Bobby" then
				bMon = "Bobby"
				Qname = "BuggyQuest1"
				Qdata = 3;
				PosQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
				PosB = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
			elseif _G.FindBoss == "The Saw" then
				bMon = "The Saw"
				PosB = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
			elseif _G.FindBoss == "Yeti" then
				bMon = "Yeti"
				Qname = "SnowQuest"
				Qdata = 3;
				PosQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
				PosB = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
			elseif _G.FindBoss == "Mob Leader" then
				bMon = "Mob Leader"
				PosB = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
			elseif _G.FindBoss == "Vice Admiral" then
				bMon = "Vice Admiral"
				Qname = "MarineQuest2"
				Qdata = 2;
				PosQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
				PosB = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
			elseif _G.FindBoss == "Saber Expert" then
				bMon = "Saber Expert"
				PosB = CFrame.new(-1458.89502, 29.8870335, -50.633564)
			elseif _G.FindBoss == "Warden" then
				bMon = "Warden"
				Qname = "ImpelQuest"
				Qdata = 1;
				PosB = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.49946401e-06, 0.975376427, -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, 0.220546961)
				PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
			elseif _G.FindBoss == "Chief Warden" then
				bMon = "Chief Warden"
				Qname = "ImpelQuest"
				Qdata = 2;
				PosB = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939)
				PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
			elseif _G.FindBoss == "Swan" then
				bMon = "Swan"
				Qname = "ImpelQuest"
				Qdata = 3;
				PosB = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
				PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
			elseif _G.FindBoss == "Magma Admiral" then
				bMon = "Magma Admiral"
				Qname = "MagmaQuest"
				Qdata = 3;
				PosQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
				PosB = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
			elseif _G.FindBoss == "Fishman Lord" then
				bMon = "Fishman Lord"
				Qname = "FishmanQuest"
				Qdata = 3;
				PosQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
				PosB = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
			elseif _G.FindBoss == "Wysper" then
				bMon = "Wysper"
				Qname = "SkyExp1Quest"
				Qdata = 3;
				PosQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
				PosB = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
			elseif _G.FindBoss == "Thunder God" then
				bMon = "Thunder God"
				Qname = "SkyExp2Quest"
				Qdata = 3;
				PosQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
				PosB = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
			elseif _G.FindBoss == "Cyborg" then
				bMon = "Cyborg"
				Qname = "FountainQuest"
				Qdata = 3;
				PosQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
				PosB = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
			elseif _G.FindBoss == "Ice Admiral" then
				bMon = "Ice Admiral"
				Qdata = nil;
				PosQBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
				PosB = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
			elseif _G.FindBoss == "Greybeard" then
				bMon = "Greybeard"
				Qdata = nil;
				PosQBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
				PosB = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
			end
		end;
		if World2 then
			if _G.FindBoss == "Diamond" then
				bMon = "Diamond"
				Qname = "Area1Quest"
				Qdata = 3;
				PosQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
				PosB = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
			elseif _G.FindBoss == "Jeremy" then
				bMon = "Jeremy"
				Qname = "Area2Quest"
				Qdata = 3;
				PosQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
				PosB = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
			elseif _G.FindBoss == "Fajita" then
				bMon = "Fajita"
				Qname = "MarineQuest3"
				Qdata = 3;
				PosQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
				PosB = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
			elseif _G.FindBoss == "Don Swan" then
				bMon = "Don Swan"
				PosB = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
			elseif _G.FindBoss == "Smoke Admiral" then
				bMon = "Smoke Admiral"
				Qname = "IceSideQuest"
				Qdata = 3;
				PosQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
				PosB = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
			elseif _G.FindBoss == "Awakened Ice Admiral" then
				bMon = "Awakened Ice Admiral"
				Qname = "FrostQuest"
				Qdata = 3;
				PosQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
				PosB = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
			elseif _G.FindBoss == "Tide Keeper" then
				bMon = "Tide Keeper"
				Qname = "ForgottenQuest"
				Qdata = 3;
				PosQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
				PosB = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
			elseif _G.FindBoss == "Darkbeard" then
				bMon = "Darkbeard"
				Qdata = nil;
				PosQBoss = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
				PosB = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
			elseif _G.FindBoss == "Cursed Captaim" then
				bMon = "Cursed Captain"
				Qdata = nil;
				PosQBoss = CFrame.new(916.928589, 181.092773, 33422)
				PosB = CFrame.new(916.928589, 181.092773, 33422)
			elseif _G.FindBoss == "Order" then
				bMon = "Order"
				Qdata = nil;
				PosQBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
				PosB = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
			end
		end;
		if World3 then
			if _G.FindBoss == "Stone" then
				bMon = "Stone"
				Qname = "PiratePortQuest"
				Qdata = 3;
				PosQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
				PosB = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
			elseif _G.FindBoss == "Hydra Leader" then
				bMon = "Hydra Leader"
				Qname = "VenomCrewQuest"
				Qdata = 3;
				PosQBoss = CFrame.new(5211.021484375, 1004.35778859375, 758.1847534179688)
				PosB = CFrame.new(5821.89794921875, 1019.0950927734375, -73.71923065185547)
			elseif _G.FindBoss == "Kilo Admiral" then
				bMon = "Kilo Admiral"
				Qname = "MarineTreeIsland"
				Qdata = 3;
				PosQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
				PosB = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
			elseif _G.FindBoss == "Captain Elephant" then
				bMon = "Captain Elephant"
				Qname = "DeepForestIsland"
				Qdata = 3;
				PosQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
				PosB = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
			elseif _G.FindBoss == "Beautiful Pirate" then
				bMon = "Beautiful Pirate"
				Qname = "DeepForestIsland2"
				Qdata = 3;
				PosQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
				PosB = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
			elseif _G.FindBoss == "Cake Queen" then
				bMon = "Cake Queen"
				Qname = "IceCreamIslandQuest"
				Qdata = 3;
				PosQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
				PosB = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
			elseif _G.FindBoss == "Longma" then
				bMon = "Longma"
				Qdata = nil;
				PosQBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
				PosB = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
			elseif _G.FindBoss == "Soul Reaper" then
				bMon = "Soul Reaper"
				Qdata = nil;
				PosQBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
				PosB = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
			end
		end
	end
	QuestBeta = function()
		local Neta = QuestB()
		return {
			[0] = _G.FindBoss,
			[1] = bMon,
			[2] = Qdata,
			[3] = Qname,
			[4] = PosB,
			[5] = PosQBoss,
		}  
	end
	QuestCheck = function()
		local a = game.Players.LocalPlayer.Data.Level.Value;
		if World1 then
			if a == 1 or a <= 9 then
				if tostring(TeamSelf) == "Marines" then
					Mon = "Trainee"
					Qname = "MarineQuest"
					Qdata = 1;
					NameMon = "Trainee"
					PosM = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
					PosQ = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
				elseif tostring(TeamSelf) == "Pirates" then
					Mon = "Bandit"
					Qdata = 1;
					Qname = "BanditQuest1"
					NameMon = "Bandit"
					PosM = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
					PosQ = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
				end
			elseif a == 10 or a <= 14 then
				Mon = "Monkey"
				Qdata = 1;
				Qname = "JungleQuest"
				NameMon = "Monkey"
				PosQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				PosM = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
			elseif a == 15 or a <= 29 then
				Mon = "Gorilla"
				Qdata = 2;
				Qname = "JungleQuest"
				NameMon = "Gorilla"
				PosQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				PosM = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
			elseif a == 30 or a <= 39 then
				Mon = "Pirate"
				Qdata = 1;
				Qname = "BuggyQuest1"
				NameMon = "Pirate"
				PosQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				PosM = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
			elseif a == 40 or a <= 59 then
				Mon = "Brute"
				Qdata = 2;
				Qname = "BuggyQuest1"
				NameMon = "Brute"
				PosQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				PosM = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
			elseif a == 60 or a <= 74 then
				Mon = "Desert Bandit"
				Qdata = 1;
				Qname = "DesertQuest"
				NameMon = "Desert Bandit"
				PosQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
				PosM = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
			elseif a == 75 or a <= 89 then
				Mon = "Desert Officer"
				Qdata = 2;
				Qname = "DesertQuest"
				NameMon = "Desert Officer"
				PosQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
				PosM = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
			elseif a == 90 or a <= 99 then
				Mon = "Snow Bandit"
				Qdata = 1;
				Qname = "SnowQuest"
				NameMon = "Snow Bandit"
				PosQ = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
				PosM = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
			elseif a == 100 or a <= 119 then
				Mon = "Snowman"
				Qdata = 2;
				Qname = "SnowQuest"
				NameMon = "Snowman"
				PosQ = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
				PosM = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
			elseif a == 120 or a <= 149 then
				Mon = "Chief Petty Officer"
				Qdata = 1;
				Qname = "MarineQuest2"
				NameMon = "Chief Petty Officer"
				PosQ = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				PosM = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
			elseif a == 150 or a <= 174 then
				Mon = "Sky Bandit"
				Qdata = 1;
				Qname = "SkyQuest"
				NameMon = "Sky Bandit"
				PosQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				PosM = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
			elseif a == 175 or a <= 189 then
				Mon = "Dark Master"
				Qdata = 2;
				Qname = "SkyQuest"
				NameMon = "Dark Master"
				PosQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				PosM = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
			elseif a == 190 or a <= 209 then
				Mon = "Prisoner"
				Qdata = 1;
				Qname = "PrisonerQuest"
				NameMon = "Prisoner"
				PosQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
				PosM = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
			elseif a == 210 or a <= 249 then
				Mon = "Dangerous Prisoner"
				Qdata = 2;
				Qname = "PrisonerQuest"
				NameMon = "Dangerous Prisoner"
				PosQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
				PosM = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
			elseif a == 250 or a <= 274 then
				Mon = "Toga Warrior"
				Qdata = 1;
				Qname = "ColosseumQuest"
				NameMon = "Toga Warrior"
				PosQ = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
				PosM = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
			elseif a == 275 or a <= 299 then
				Mon = "Gladiator"
				Qdata = 2;
				Qname = "ColosseumQuest"
				NameMon = "Gladiator"
				PosQ = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
				PosM = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
			elseif a == 300 or a <= 324 then
				Boubty = false;
				Mon = "Military Soldier"
				Qdata = 1;
				Qname = "MagmaQuest"
				NameMon = "Military Soldier"
				PosQ = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
				PosM = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
			elseif a == 325 or a <= 374 then
				Mon = "Military Spy"
				Qdata = 2;
				Qname = "MagmaQuest"
				NameMon = "Military Spy"
				PosQ = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
				PosM = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
			elseif a == 375 or a <= 399 then
				Mon = "Fishman Warrior"
				Qdata = 1;
				Qname = "FishmanQuest"
				NameMon = "Fishman Warrior"
				PosQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
				PosM = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				end
			elseif a == 400 or a <= 449 then
				Mon = "Fishman Commando"
				Qdata = 2;
				Qname = "FishmanQuest"
				NameMon = "Fishman Commando"
				PosQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
				PosM = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				end
			elseif a == 450 or a <= 474 then
				Mon = "God's Guard"
				Qdata = 1;
				Qname = "SkyExp1Quest"
				NameMon = "God's Guard"
				PosQ = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
				PosM = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688))
				end
			elseif a == 475 or a <= 524 then
				Mon = "Shanda"
				Qdata = 2;
				Qname = "SkyExp1Quest"
				NameMon = "Shanda"
				PosQ = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
				PosM = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				end
			elseif a == 525 or a <= 549 then
				Mon = "Royal Squad"
				Qdata = 1;
				Qname = "SkyExp2Quest"
				NameMon = "Royal Squad"
				PosQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				PosM = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
			elseif a == 550 or a <= 624 then
				Mon = "Royal Soldier"
				Qdata = 2;
				Qname = "SkyExp2Quest"
				NameMon = "Royal Soldier"
				PosQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				PosM = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
			elseif a == 625 or a <= 649 then
				Mon = "Galley Pirate"
				Qdata = 1;
				Qname = "FountainQuest"
				NameMon = "Galley Pirate"
				PosQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
				PosM = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
			elseif a >= 650 then
				Mon = "Galley Captain"
				Qdata = 2;
				Qname = "FountainQuest"
				NameMon = "Galley Captain"
				PosQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
				PosM = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
			end
		elseif World2 then
			if a == 700 or a <= 724 then
				Mon = "Raider"
				Qdata = 1;
				Qname = "Area1Quest"
				NameMon = "Raider"
				PosQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
				PosM = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
			elseif a == 725 or a <= 774 then
				Mon = "Mercenary"
				Qdata = 2;
				Qname = "Area1Quest"
				NameMon = "Mercenary"
				PosQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
				PosM = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
			elseif a == 775 or a <= 799 then
				Mon = "Swan Pirate"
				Qdata = 1;
				Qname = "Area2Quest"
				NameMon = "Swan Pirate"
				PosQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
				PosM = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
			elseif a == 800 or a <= 874 then
				Mon = "Factory Staff"
				Qname = "Area2Quest"
				Qdata = 2;
				NameMon = "Factory Staff"
				PosQ = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
				PosM = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
			elseif a == 875 or a <= 899 then
				Mon = "Marine Lieutenant"
				Qdata = 1;
				Qname = "MarineQuest3"
				NameMon = "Marine Lieutenant"
				PosQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				PosM = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
			elseif a == 900 or a <= 949 then
				Mon = "Marine Captain"
				Qdata = 2;
				Qname = "MarineQuest3"
				NameMon = "Marine Captain"
				PosQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				PosM = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
			elseif a == 950 or a <= 974 then
				Mon = "Zombie"
				Qdata = 1;
				Qname = "ZombieQuest"
				NameMon = "Zombie"
				PosQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
				PosM = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
			elseif a == 975 or a <= 999 then
				Mon = "Vampire"
				Qdata = 2;
				Qname = "ZombieQuest"
				NameMon = "Vampire"
				PosQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
				PosM = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
			elseif a == 1000 or a <= 1049 then
				Mon = "Snow Trooper"
				Qdata = 1;
				Qname = "SnowMountainQuest"
				NameMon = "Snow Trooper"
				PosQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
				PosM = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
			elseif a == 1050 or a <= 1099 then
				Mon = "Winter Warrior"
				Qdata = 2;
				Qname = "SnowMountainQuest"
				NameMon = "Winter Warrior"
				PosQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
				PosM = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
			elseif a == 1100 or a <= 1124 then
				Mon = "Lab Subordinate"
				Qdata = 1;
				Qname = "IceSideQuest"
				NameMon = "Lab Subordinate"
				PosQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
				PosM = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
			elseif a == 1125 or a <= 1174 then
				Mon = "Horned Warrior"
				Qdata = 2;
				Qname = "IceSideQuest"
				NameMon = "Horned Warrior"
				PosQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
				PosM = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
			elseif a == 1175 or a <= 1199 then
				Mon = "Magma Ninja"
				Qdata = 1;
				Qname = "FireSideQuest"
				NameMon = "Magma Ninja"
				PosQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				PosM = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
			elseif a == 1200 or a <= 1249 then
				Mon = "Lava Pirate"
				Qdata = 2;
				Qname = "FireSideQuest"
				NameMon = "Lava Pirate"
				PosQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				PosM = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
			elseif a == 1250 or a <= 1274 then
				Mon = "Ship Deckhand"
				Qdata = 1;
				Qname = "ShipQuest1"
				NameMon = "Ship Deckhand"
				PosQ = CFrame.new(1037.80127, 125.092171, 32911.6016)
				PosM = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
			elseif a == 1275 or a <= 1299 then
				Mon = "Ship Engineer"
				Qdata = 2;
				Qname = "ShipQuest1"
				NameMon = "Ship Engineer"
				PosQ = CFrame.new(1037.80127, 125.092171, 32911.6016)
				PosM = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
			elseif a == 1300 or a <= 1324 then
				Mon = "Ship Steward"
				Qdata = 1;
				Qname = "ShipQuest2"
				NameMon = "Ship Steward"
				PosQ = CFrame.new(968.80957, 125.092171, 33244.125)
				PosM = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
			elseif a == 1325 or a <= 1349 then
				Mon = "Ship Officer"
				Qdata = 2;
				Qname = "ShipQuest2"
				NameMon = "Ship Officer"
				PosQ = CFrame.new(968.80957, 125.092171, 33244.125)
				PosM = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
			elseif a == 1350 or a <= 1374 then
				Mon = "Arctic Warrior"
				Qdata = 1;
				Qname = "FrostQuest"
				NameMon = "Arctic Warrior"
				PosQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
				PosM = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
					BTP(PosM)
				end
			elseif a == 1375 or a <= 1424 then
				Mon = "Snow Lurker"
				Qdata = 2;
				Qname = "FrostQuest"
				NameMon = "Snow Lurker"
				PosQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
				PosM = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
			elseif a == 1425 or a <= 1449 then
				Mon = "Sea Soldier"
				Qdata = 1;
				Qname = "ForgottenQuest"
				NameMon = "Sea Soldier"
				PosQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
				PosM = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
			elseif a >= 1450 then
				Mon = "Water Fighter"
				Qdata = 2;
				Qname = "ForgottenQuest"
				NameMon = "Water Fighter"
				PosQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
				PosM = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
			end
		elseif World3 then
			if a == 1500 or a <= 1524 then
				Mon = "Pirate Millionaire"
				Qdata = 1;
				Qname = "PiratePortQuest"
				NameMon = "Pirate Millionaire"
				PosQ = CFrame.new(-712.8272705078125, 98.5770492553711, 5711.9541015625)
				PosM = CFrame.new(-712.8272705078125, 98.5770492553711, 5711.9541015625)
			elseif a == 1525 or a <= 1574 then
				Mon = "Pistol Billionaire"
				Qdata = 2;
				Qname = "PiratePortQuest"
				NameMon = "Pistol Billionaire"
				PosQ = CFrame.new(-723.4331665039062, 147.42906188964844, 5931.9931640625)
				PosM = CFrame.new(-723.4331665039062, 147.42906188964844, 5931.9931640625)
			elseif a == 1575 or a <= 1599 then
				Mon = "Dragon Crew Warrior"
				Qdata = 1;
				Qname = "AmazonQuest"
				NameMon = "Dragon Crew Warrior"
				PosQ = CFrame.new(6779.03271484375, 111.16865539550781, -801.2130737304688)
				PosM = CFrame.new(6779.03271484375, 111.16865539550781, -801.2130737304688)
			elseif a == 1600 or a <= 1624 then
				Mon = "Dragon Crew Archer"
				Qname = "AmazonQuest"
				Qdata = 2;
				NameMon = "Dragon Crew Archer"
				PosQ = CFrame.new(6955.8974609375, 546.6658935546875, 309.0401306152344)
				PosM = CFrame.new(6955.8974609375, 546.6658935546875, 309.0401306152344)
			elseif a == 1625 or a <= 1649 then
				Mon = "Hydra Enforcer"
				Qname = "VenomCrewQuest"
				Qdata = 1;
				NameMon = "Hydra Enforcer"
				PosQ = CFrame.new(4620.61572265625, 1002.2954711914062, 399.0868835449219)
				PosM = CFrame.new(4620.61572265625, 1002.2954711914062, 399.0868835449219)
			elseif a == 1650 or a <= 1699 then
				Mon = "Venomous Assailant"
				Qname = "VenomCrewQuest"
				Qdata = 2;
				NameMon = "Venomous Assailant"
				PosQ = CFrame.new(4697.5918, 1100.65137, 946.401978, 0.579397917, -4.19689783e-10, 0.81504482, -1.49287818e-10, 1, 6.21053986e-10, -0.81504482, -4.81513662e-10, 0.579397917)
				PosM = CFrame.new(4697.5918, 1100.65137, 946.401978, 0.579397917, -4.19689783e-10, 0.81504482, -1.49287818e-10, 1, 6.21053986e-10, -0.81504482, -4.81513662e-10, 0.579397917)
			elseif a == 1700 or a <= 1724 then
				Mon = "Marine Commodore"
				Qdata = 1;
				Qname = "MarineTreeIsland"
				NameMon = "Marine Commodore"
				PosQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
				PosM = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
			elseif a == 1725 or a <= 1774 then
				Mon = "Marine Rear Admiral"
				NameMon = "Marine Rear Admiral"
				Qname = "MarineTreeIsland"
				Qdata = 2;
				PosQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
				PosM = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
			elseif a == 1775 or a <= 1799 then
				Mon = "Fishman Raider"
				Qdata = 1;
				Qname = "DeepForestIsland3"
				NameMon = "Fishman Raider"
				PosQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				PosM = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
			elseif a == 1800 or a <= 1824 then
				Mon = "Fishman Captain"
				Qdata = 2;
				Qname = "DeepForestIsland3"
				NameMon = "Fishman Captain"
				PosQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				PosM = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625)
			elseif a == 1825 or a <= 1849 then
				Mon = "Forest Pirate"
				Qdata = 1;
				Qname = "DeepForestIsland"
				NameMon = "Forest Pirate"
				PosQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				PosM = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
			elseif a == 1850 or a <= 1899 then
				Mon = "Mythological Pirate"
				Qdata = 2;
				Qname = "DeepForestIsland"
				NameMon = "Mythological Pirate"
				PosQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				PosM = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
			elseif a == 1900 or a <= 1924 then
				Mon = "Jungle Pirate"
				Qdata = 1;
				Qname = "DeepForestIsland2"
				NameMon = "Jungle Pirate"
				PosQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				PosM = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
			elseif a == 1925 or a <= 1974 then
				Mon = "Musketeer Pirate"
				Qdata = 2;
				Qname = "DeepForestIsland2"
				NameMon = "Musketeer Pirate"
				PosQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				PosM = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
			elseif a == 1975 or a <= 1999 then
				Mon = "Reborn Skeleton"
				Qdata = 1;
				Qname = "HauntedQuest1"
				NameMon = "Reborn Skeleton"
				PosQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				PosM = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
			elseif a == 2000 or a <= 2024 then
				Mon = "Living Zombie"
				Qdata = 2;
				Qname = "HauntedQuest1"
				NameMon = "Living Zombie"
				PosQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				PosM = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
			elseif a == 2025 or a <= 2049 then
				Mon = "Demonic Soul"
				Qdata = 1;
				Qname = "HauntedQuest2"
				NameMon = "Demonic Soul"
				PosQ = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				PosM = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
			elseif a == 2050 or a <= 2074 then
				Mon = "Posessed Mummy"
				Qdata = 2;
				Qname = "HauntedQuest2"
				NameMon = "Posessed Mummy"
				PosQ = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				PosM = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
			elseif a == 2075 or a <= 2099 then
				Mon = "Peanut Scout"
				Qdata = 1;
				Qname = "NutsIslandQuest"
				NameMon = "Peanut Scout"
				PosQ = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				PosM = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
			elseif a == 2100 or a <= 2124 then
				Mon = "Peanut President"
				Qdata = 2;
				Qname = "NutsIslandQuest"
				NameMon = "Peanut President"
				PosQ = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				PosM = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
			elseif a == 2125 or a <= 2149 then
				Mon = "Ice Cream Chef"
				Qdata = 1;
				Qname = "IceCreamIslandQuest"
				NameMon = "Ice Cream Chef"
				PosQ = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				PosM = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
			elseif a == 2150 or a <= 2199 then
				Mon = "Ice Cream Commander"
				Qdata = 2;
				Qname = "IceCreamIslandQuest"
				NameMon = "Ice Cream Commander"
				PosQ = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				PosM = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
			elseif a == 2200 or a <= 2224 then
				Mon = "Cookie Crafter"
				Qdata = 1;
				Qname = "CakeQuest1"
				NameMon = "Cookie Crafter"
				PosQ = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
				PosM = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
			elseif a == 2225 or a <= 2249 then
				Mon = "Cake Guard"
				Qdata = 2;
				Qname = "CakeQuest1"
				NameMon = "Cake Guard"
				PosQ = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
				PosM = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
			elseif a == 2250 or a <= 2274 then
				Mon = "Baking Staff"
				Qdata = 1;
				Qname = "CakeQuest2"
				NameMon = "Baking Staff"
				PosQ = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
				PosM = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
			elseif a == 2275 or a <= 2299 then
				Mon = "Head Baker"
				Qdata = 2;
				Qname = "CakeQuest2"
				NameMon = "Head Baker"
				PosQ = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
				PosM = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
			elseif a == 2300 or a <= 2324 then
				Mon = "Cocoa Warrior"
				Qdata = 1;
				Qname = "ChocQuest1"
				NameMon = "Cocoa Warrior"
				PosQ = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
				PosM = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
			elseif a == 2325 or a <= 2349 then
				Mon = "Chocolate Bar Battler"
				Qdata = 2;
				Qname = "ChocQuest1"
				NameMon = "Chocolate Bar Battler"
				PosQ = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
				PosM = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
			elseif a == 2350 or a <= 2374 then
				Mon = "Sweet Thief"
				Qdata = 1;
				Qname = "ChocQuest2"
				NameMon = "Sweet Thief"
				PosQ = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
				PosM = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
			elseif a == 2375 or a <= 2399 then
				Mon = "Candy Rebel"
				Qdata = 2;
				Qname = "ChocQuest2"
				NameMon = "Candy Rebel"
				PosQ = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
				PosM = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
			elseif a == 2400 or a <= 2449 then
				Mon = "Candy Pirate"
				Qdata = 1;
				Qname = "CandyQuest1"
				NameMon = "Candy Pirate"
				PosQ = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
				PosM = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
			elseif a == 2450 or a <= 2474 then
				Mon = "Isle Outlaw"
				Qdata = 1;
				Qname = "TikiQuest1"
				NameMon = "Isle Outlaw"
				PosQ = CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
				PosM = CFrame.new(-16479.900390625, 226.6117401123047, -300.3114318847656)
			elseif a == 2475 or a <= 2499 then
				Mon = "Island Boy"
				Qdata = 2;
				Qname = "TikiQuest1"
				NameMon = "Island Boy"
				PosQ = CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
				PosM = CFrame.new(-16849.396484375, 192.86505126953125, -150.7853240966797)
			elseif a == 2500 or a <= 2524 then
				Mon = "Sun-kissed Warrior"
				Qdata = 1;
				Qname = "TikiQuest2"
				NameMon = "kissed Warrior"
				PosM = CFrame.new(-16347, 64, 984)
				PosQ = CFrame.new(-16538, 55, 1049)
			elseif a == 2525 or a <= 2550 then
				Mon = "Isle Champion"
				Qdata = 2;
				Qname = "TikiQuest2"
				NameMon = "Isle Champion"
				PosQ = CFrame.new(-16541.0215, 57.3082275, 1051.46118, 0.0410757065, -0, -0.999156058, 0, 1, -0, 0.999156058, 0, 0.0410757065)
				PosM = CFrame.new(-16602.1015625, 130.38734436035156, 1087.24560546875)-- Tiki Outpost
	-- TIKI OUTPOST
			elseif a >= 2551 and a <= 2574 then
				Mon = "Serpent Hunter"
				Qdata = 1;
				Qname = "TikiQuest3";
				NameMon = "Serpent Hunter"
				PosQ = CFrame.new(-16679.4785, 176.7473, 1474.3995)
				PosM = CFrame.new(-16679.4785, 176.7473, 1474.3995)
			elseif a >= 2575 and a <= 2599 then
				Mon = "Skull Slayer"
				Qdata = 2;
				Qname = "TikiQuest3";
				NameMon = "Skull Slayer"
				PosQ = CFrame.new(-16759.5898, 71.2837, 1595.3399)
				PosM = CFrame.new(-16759.5898, 71.2837, 1595.3399)
			elseif a >= 2600 and a <= 2624 then
				Mon = "Reef Bandit"
				Qdata = 1;
				Qname = "SubmergedQuest1";
				NameMon = "Reef Bandit"
				PosQ = CFrame.new(10882.264, -2086.322, 10034.226) -- NPC Submerged
				PosM = CFrame.new(10736.6191, -2087.8439, 9338.4882)
			elseif a >= 2625 and a <= 2649 then
				Mon = "Coral Pirate"
				Qdata = 2;
				Qname = "SubmergedQuest1";
				NameMon = "Coral Pirate"
				PosQ = CFrame.new(10882.264, -2086.322, 10034.226)
				PosM = CFrame.new(10965.1025, -2158.8842, 9177.2597)
			elseif a >= 2650 and a <= 2674 then
				Mon = "Sea Chanter"
				Qdata = 1;
				Qname = "SubmergedQuest2";
				NameMon = "Sea Chanter"
				PosQ = CFrame.new(10882.264, -2086.322, 10034.226)
				PosM = CFrame.new(10621.0342, -2087.8440, 10102.0332)
			elseif a >= 2675 and a <= 2699 then
				Mon = "Ocean Prophet"
				Qdata = 2;
				Qname = "SubmergedQuest2";
				NameMon = "Ocean Prophet"
				PosQ = CFrame.new(10882.264, -2086.322, 10034.226)
				PosM = CFrame.new(11056.1445, -2001.6717, 10117.4493)
			elseif a >= 2700 and a <= 2724 then
				Mon = "High Disciple"
				Qdata = 1;
				Qname = "SubmergedQuest3";
				NameMon = "High Disciple"
				PosQ = CFrame.new(9636.52441, -1992.19507, 9609.52832)
				PosM = CFrame.new(9828.087890625, -1940.908935546875, 9693.0634765625)
			elseif a >= 2725 and a <= 2800 then
				Mon = "Grand Devotee"
				Qdata = 2;
				Qname = "SubmergedQuest3";
				NameMon = "Grand Devotee"
				PosQ = CFrame.new(9636.52441, -1992.19507, 9609.52832)
				PosM = CFrame.new(9557.5849609375, -1928.0404052734375, 9859.1826171875)
			end
		end
	end
	MaterialMon = function()
		local a = game.Players.LocalPlayer;
		local b = a.Character and a.Character:FindFirstChild("HumanoidRootPart")
		if not b then
			return
		end;
		shouldRequestEntrance = function(c, d)
			local e = (b.Position - c).Magnitude;
			if e >= d then
				replicated.Remotes.CommF_:InvokeServer("requestEntrance", c)
			end
		end;
		if World1 then
			if SelectMaterial == "Angel Wings" then
				MMon = {
					"Shanda",
					"Royal Squad",
					"Royal Soldier",
					"Wysper",
					"Thunder God"
				}
				MPos = CFrame.new(-4698, 845, -1912)
				SP = "Default"
				local c = Vector3.new(-4607.82275, 872.54248, -1667.55688)
				shouldRequestEntrance(c, 10000)
			elseif SelectMaterial == "Leather + Scrap Metal" then
				MMon = {
					"Brute",
					"Pirate"
				}
				MPos = CFrame.new(-1145, 15, 4350)
				SP = "Default"
			elseif SelectMaterial == "Magma Ore" then
				MMon = {
					"Military Soldier",
					"Military Spy",
					"Magma Admiral"
				}
				MPos = CFrame.new(-5815, 84, 8820)
				SP = "Default"
			elseif SelectMaterial == "Fish Tail" then
				MMon = {
					"Fishman Warrior",
					"Fishman Commando",
					"Fishman Lord"
				}
				MPos = CFrame.new(61123, 19, 1569)
				SP = "Default"
				local c = Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)
				shouldRequestEntrance(c, 17000)
			end
		elseif World2 then
			if SelectMaterial == "Leather + Scrap Metal" then
				MMon = {
					"Marine Captain"
				}
				MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
				SP = "Default"
			elseif SelectMaterial == "Magma Ore" then
				MMon = {
					"Magma Ninja",
					"Lava Pirate"
				}
				MPos = CFrame.new(-5428, 78, -5959)
				SP = "Default"
			elseif SelectMaterial == "Ectoplasm" then
				MMon = {
					"Ship Deckhand",
					"Ship Engineer",
					"Ship Steward",
					"Ship Officer"
				}
				MPos = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)
				SP = "Default"
				local c = Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)
				shouldRequestEntrance(c, 18000)
			elseif SelectMaterial == "Mystic Droplet" then
				MMon = {
					"Water Fighter"
				}
				MPos = CFrame.new(-3385, 239, -10542)
				SP = "Default"
			elseif SelectMaterial == "Radioactive Material" then
				MMon = {
					"Factory Staff"
				}
				MPos = CFrame.new(295, 73, -56)
				SP = "Default"
			elseif SelectMaterial == "Vampire Fang" then
				MMon = {
					"Vampire"
				}
				MPos = CFrame.new(-6033, 7, -1317)
				SP = "Default"
			end
		elseif World3 then
			if SelectMaterial == "Scrap Metal" then
				MMon = {
					"Jungle Pirate",
					"Forest Pirate"
				}
				MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
				SP = "Default"
			elseif SelectMaterial == "Fish Tail" then
				MMon = {
					"Fishman Raider",
					"Fishman Captain"
				}
				MPos = CFrame.new(-10993, 332, -8940)
				SP = "Default"
			elseif SelectMaterial == "Conjured Cocoa" then
				MMon = {
					"Chocolate Bar Battler",
					"Cocoa Warrior"
				}
				MPos = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
				SP = "Default"
			elseif SelectMaterial == "Dragon Scale" then
				MMon = {
					"Dragon Crew Archer",
					"Dragon Crew Warrior"
				}
				MPos = CFrame.new(6594, 383, 139)
				SP = "Default"
			elseif SelectMaterial == "Gunpowder" then
				MMon = {
					"Pistol Billionaire"
				}
				MPos = CFrame.new(-84.8556900024414, 85.62061309814453, 6132.0087890625)
				SP = "Default"
			elseif SelectMaterial == "Mini Tusk" then
				MMon = {
					"Mythological Pirate"
				}
				MPos = CFrame.new(-13545, 470, -6917)
				SP = "Default"
			elseif SelectMaterial == "Demonic Wisp" then
				MMon = {
					"Demonic Soul"
				}
				MPos = CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125)
				SP = "Default"
			end
		end
	end
	QuestNeta = function()
		local Neta = QuestCheck()
		return {
			[1] = Mon,
			[2] = Qdata,
			[3] = Qname,
			[4] = PosM,
			[5] = NameMon,
			[6] = PosQ
		}
	end
QuestNeta = function()
  local Neta = QuestCheck()
  return {
    [1] = Mon,
    [2] = Qdata,
    [3] = Qname,
    [4] = PosM,
    [5] = NameMon,
    [6] = PosQ
  }
end

-- Fast Attack
local FastAttackModule = {}
local HitRegistrationModule = {}
local MainController = {}

-- Services
local GameService = game
local Players = GameService:GetService("Players")
local RunService = GameService:GetService("RunService")
local ReplicatedStorage = GameService:GetService("ReplicatedStorage")
local Workspace = GameService:GetService("Workspace")

-- Player
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

-- Helper function
local function SafeWaitForChild(parent, childName)
    local success, result = pcall(function()
        return parent:WaitForChild(childName)
    end)
    return result
end

-- Game objects
local Enemies = SafeWaitForChild(Workspace, "Enemies")
local Characters = SafeWaitForChild(Workspace, "Characters")
local Modules = SafeWaitForChild(ReplicatedStorage, "Modules")
local Net = SafeWaitForChild(Modules, "Net")

-- Configuration
FastAttackModule.Rate = 0.000000002
FastAttackModule.Enabled = true

-- Core functions
function FastAttackModule.IsAlive(target)
    local humanoid = target:FindFirstChild("Humanoid")
    if humanoid and humanoid.Health > 0 then
        return true
    end
    return false
end

function FastAttackModule.GetNearbyTargets(character, folder)
    local characterPosition = character:GetPivot().Position
    local nearbyTargets = {}
    local children = folder:GetChildren()
    
    for i = 1, #children do
        local target = children[i]
        local humanoid = target:FindFirstChild("Humanoid")
        local rootPart = target:FindFirstChild("HumanoidRootPart")
        
        if humanoid and rootPart and humanoid.Health > 0 then
            local distance = (rootPart.Position - characterPosition).Magnitude
            if distance <= 60 then
                table.insert(nearbyTargets, target)
            end
        end
    end
    return nearbyTargets
end

function FastAttackModule.GetTargetParts(targetList)
    local result = {}
    local count = #targetList
    
    for i = 1, count do
        local target = targetList[i]
        local head = target:FindFirstChild("Head") or target.PrimaryPart
        if head then
            table.insert(result, {target, head})
        end
    end
    return result
end

function FastAttackModule.GetAllTargets(character)
    local enemies = FastAttackModule.GetNearbyTargets(character, Enemies)
    local otherCharacters = FastAttackModule.GetNearbyTargets(character, Characters)
    
    local allTargets = {}
    for i = 1, #enemies do
        table.insert(allTargets, enemies[i])
    end
    for i = 1, #otherCharacters do
        table.insert(allTargets, otherCharacters[i])
    end
    return allTargets
end

function FastAttackModule.ExecuteFastAttack()
    local character = LocalPlayer.Character
    if not character then return end
    
    local tool = character:FindFirstChildOfClass("Tool")
    if not tool then return end
    
    local targets = FastAttackModule.GetAllTargets(character)
    if #targets < 1 then return end
    
    local targetParts = FastAttackModule.GetTargetParts(targets)
    if #targetParts < 1 then return end
    
    local attackRemote = Net["RE/RegisterAttack"]
    local hitRemote = Net["RE/RegisterHit"]
    
    attackRemote:FireServer(FastAttackModule.Rate)
    local targetHead = targetParts[1][2]
    hitRemote:FireServer(targetHead, targetParts)
end

-- Hit Registration System
local AttackRemoteTarget
local AttackRemoteId

local function InitializeHitRegistration()
    local foldersToCheck = {
        ReplicatedStorage.Util,
        ReplicatedStorage.Common,
        ReplicatedStorage.Remotes,
        ReplicatedStorage.Assets,
        ReplicatedStorage.FX
    }

    for _, folder in ipairs(foldersToCheck) do
        local children = folder:GetChildren()
        
        for _, child in ipairs(children) do
            if child:IsA("RemoteEvent") and child:GetAttribute("Id") then
                AttackRemoteTarget = child
                AttackRemoteId = child:GetAttribute("Id")
            end
        end

        folder.ChildAdded:Connect(function(child)
            if child:IsA("RemoteEvent") and child:GetAttribute("Id") then
                AttackRemoteTarget = child
                AttackRemoteId = child:GetAttribute("Id")
            end
        end)
    end
end

InitializeHitRegistration()

function HitRegistrationModule.Execute()
    local character = LocalPlayer.Character
    if not character then return end
    
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    
    local hitTargets = {}

    local function ScanFolder(folder)
        local children = folder:GetChildren()
        for i = 1, #children do
            local target = children[i]
            local humanoid = target:FindFirstChild("Humanoid")
            local rootPart = target:FindFirstChild("HumanoidRootPart")
            
            if humanoid and rootPart and humanoid.Health > 0 and target ~= character then
                local distance = (rootPart.Position - humanoidRootPart.Position).Magnitude
                if distance <= 60 then
                    local targetChildren = target:GetChildren()
                    for _, child in ipairs(targetChildren) do
                        if child:IsA("BasePart") then
                            table.insert(hitTargets, {target, child})
                        end
                    end
                end
            end
        end
    end

    ScanFolder(Enemies)
    ScanFolder(Characters)

    local tool = character:FindFirstChildOfClass("Tool")
    
    if #hitTargets > 0 and tool and (tool:GetAttribute("WeaponType") == "Melee" or tool:GetAttribute("WeaponType") == "Sword") then
        local seed = Modules.Net.seed:InvokeServer()
        
        local attackRemote = Net["RE/RegisterAttack"]
        local hitRemote = Net["RE/RegisterHit"]
        
        attackRemote:FireServer()
        
        local targetHead = hitTargets[1][1]:FindFirstChild("Head")
        if not targetHead then return end

        hitRemote:FireServer(targetHead, hitTargets, {})
        
        if AttackRemoteTarget then
            local remoteCode = "RE/RegisterHit"
            local encryptionKey = math.floor(Workspace:GetServerTimeNow() / 10 % 10) + 1
            
            local encodedString = string.gsub(remoteCode, ".", function(char)
                return string.char(bit32.bxor(string.byte(char), encryptionKey))
            end)

            local finalId = bit32.bxor(AttackRemoteId + 909090, seed * 2)
            
            cloneref(AttackRemoteTarget):FireServer(
                encodedString,
                finalId,
                targetHead,
                hitTargets
            )
        end
    end
end

-- Camera Control
local function DisableCameraShake()
    local cameraModule = require(ReplicatedStorage.Util.CameraShaker)
    cameraModule:Stop()
end

-- Main Loop Initialization
local function StartMainLoops()
    task.spawn(function()
        while task.wait(FastAttackModule.Rate) do
            FastAttackModule.ExecuteFastAttack()
        end
    end)

    RunService.Heartbeat:Connect(function()
        pcall(HitRegistrationModule.Execute)
    end)
end

-- Main Controller
function MainController.Start()
    DisableCameraShake()
    StartMainLoops()
end

-- Start the system
MainController.Start()

-- Unused variables (cleanup)
local unusedData1 = {}
local unusedData2 = {}
local unusedData3 = {}
local unusedData4 = {}
local unusedData5 = {}

local function GeneratePadding(text)
    return text .. text .. text
end

unusedData1.a = GeneratePadding("d")
unusedData2.b = GeneratePadding("x")
unusedData3.c = GeneratePadding("o")
unusedData4.d = GeneratePadding("k")
unusedData5.e = GeneratePadding("p")

-- Clean up unused calculations
local totalSum = 0
for i = 1, 1000 do
    totalSum = totalSum + i
end

local temporaryData = {}
for i = 1, 250 do
    temporaryData[i] = i * 3
end

local function GenerateString(length)
    local result = ""
    for i = 1, length do
        result = result .. string.char((i % 26) + 97)
    end
    return result
end

-- Clean up unused strings
local unusedString1 = GenerateString(5000)
local unusedString2 = GenerateString(3000)
local unusedString3 = GenerateString(2000) 
-- Hop Server
local function HopServer()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    
    local function TPReturner()
        local Site
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(
                game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100")
            )
        else
            Site = game.HttpService:JSONDecode(
                game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything)
            )
        end
        
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        
        local num = 0
        for i, v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _, Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                
                if Possible then
                    table.insert(AllIDs, ID)
                    wait(0.1)
                    pcall(function()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(1)
                    break
                end
            end
        end
    end
    
    local function Teleport()
        while true do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
            wait(2)
        end
    end
    
    Teleport()
end

function FPSBooster()
    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    
    -- Sử dụng pcall để tránh lỗi nếu không có quyền
    pcall(function()
        sethiddenproperty(l, "Technology", "Compatibility")
        sethiddenproperty(t, "Decoration", false)
    end)
    
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    
    -- Tối ưu hóa các hiệu ứng
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") 
           or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
    
    local function optimizePart(v)
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") or v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            if v:IsA("MeshPart") then
                v.TextureID = ""
            end
        elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        end
    end
    
    -- Tối ưu hóa các part hiện có
    for i, v in pairs(w:GetDescendants()) do
        optimizePart(v)
    end
    
    -- Tối ưu hóa part mới được thêm vào
    w.DescendantAdded:Connect(function(v)
        optimizePart(v)
    end)
    
    print("FPS Booster activated!")
end

local isDancing = false
local isShooting = false
local DanceAnim

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Humanoid = LocalPlayer.Character:WaitForChild("Humanoid")

local function GetRigType()
    return Humanoid.RigType == Enum.HumanoidRigType.R15 and "R15" or "R6"
end

local DanceAnimation = Instance.new("Animation")
DanceAnimation.AnimationId = (GetRigType() == "R15") and "rbxassetid://698251653" or "rbxassetid://72042024"

local function DanceLoop()
    while isDancing do
        if not DanceAnim then
            DanceAnim = Humanoid:LoadAnimation(DanceAnimation)
        end
        DanceAnim:Play()
        DanceAnim:AdjustSpeed(1.5) -- Tăng tốc độ nhảy lên 1.5x (nhanh hơn)
        DanceAnim.TimePosition = 0.3
        task.wait(0.15) -- Giảm thời gian chờ xuống 0.15s (nhanh hơn)
        if DanceAnim then
            DanceAnim:Stop()
            DanceAnim:Destroy()
            DanceAnim = nil
        end
    end
end

local function CreateBullet()
    local bullet = Instance.new("Part")
    bullet.Name = "WhiteBullet"
    bullet.BrickColor = BrickColor.new("White")
    bullet.Material = Enum.Material.Neon
    bullet.Shape = Enum.PartType.Block
    bullet.Size = Vector3.new(1, 1, 8) -- TO HƠN: 1x1x8 (rộng và dài hơn)
    bullet.Anchored = true
    bullet.CanCollide = false
    bullet.CastShadow = false
    
    -- Thêm hiệu ứng ánh sáng mạnh hơn
    local pointLight = Instance.new("PointLight")
    pointLight.Brightness = 5 -- Sáng hơn
    pointLight.Range = 15 -- Xa hơn
    pointLight.Color = Color3.new(1, 1, 1)
    pointLight.Parent = bullet
    
    -- Thêm hiệu ứng Beam (tia sáng)
    local beam = Instance.new("Beam")
    beam.Color = ColorSequence.new(Color3.new(1, 1, 1))
    beam.Brightness = 3
    beam.Width0 = 0.5
    beam.Width1 = 0.5
    beam.Parent = bullet
    
    local attachment0 = Instance.new("Attachment")
    attachment0.Parent = bullet
    local attachment1 = Instance.new("Attachment")
    attachment1.Position = Vector3.new(0, 0, -4)
    attachment1.Parent = bullet
    
    beam.Attachment0 = attachment0
    beam.Attachment1 = attachment1
    
    return bullet
end

local function ShootLoop()
    while isShooting do
        local character = LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            local rootPart = character.HumanoidRootPart
            local shootPosition = rootPart.Position + rootPart.CFrame.LookVector * 3
            local direction = rootPart.CFrame.LookVector
            
            -- Tạo đạn TO
            local bullet = CreateBullet()
            bullet.Position = shootPosition
            bullet.CFrame = CFrame.lookAt(shootPosition, shootPosition + direction)
            bullet.Parent = workspace
            
            -- Di chuyển đạn với tốc độ nhanh
            local speed = 120 -- Tốc độ nhanh hơn
            local distance = 0
            local maxDistance = 600
            
            coroutine.wrap(function()
                while bullet and bullet.Parent and distance < maxDistance and isShooting do
                    local moveDistance = speed * task.wait()
                    bullet.Position = bullet.Position + direction * moveDistance
                    distance = distance + moveDistance
                    
                    -- Kiểm tra va chạm
                    local rayOrigin = bullet.Position
                    local rayDirection = direction * 3
                    local raycastParams = RaycastParams.new()
                    raycastParams.FilterDescendantsInstances = {character}
                    raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                    
                    local raycastResult = workspace:Raycast(rayOrigin, rayDirection, raycastParams)
                    
                    if raycastResult then
                        -- Hiệu ứng nổ TO hơn
                        local explosion = Instance.new("Part")
                        explosion.BrickColor = BrickColor.new("White")
                        explosion.Material = Enum.Material.Neon
                        explosion.Size = Vector3.new(3, 3, 3) -- Nổ to hơn
                        explosion.Position = raycastResult.Position
                        explosion.Anchored = true
                        explosion.CanCollide = false
                        explosion.Parent = workspace
                        
                        local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                        local tween = game:GetService("TweenService"):Create(
                            explosion,
                            tweenInfo,
                            {Size = Vector3.new(8, 8, 8), Transparency = 1} -- Nổ rất to
                        )
                        tween:Play()
                        
                        task.delay(0.6, function()
                            if explosion then
                                explosion:Destroy()
                            end
                        end)
                        
                        bullet:Destroy()
                        break
                    end
                    
                    task.wait()
                end
                
                if bullet and bullet.Parent then
                    bullet:Destroy()
                end
            end)()
        end
        
        task.wait(0.03) -- Tốc độ bắn NHANH HƠN: 0.03s thay vì 0.05s
    end
end

-- Load Fluent 
local Fluent = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau"))()
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau"))()
-- Window Fluent
local Window = Fluent:CreateWindow({
    Title = "NX-NazuX Hub Main",
    SubTitle = "by Real_AnhKhoa_2279 ",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 350),
    Resize = false,
    MinSize = Vector2.new(470, 460),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Info = Window:CreateTab{Title = "Tab Info User",Icon = "circle-user-round"},
    Webhook = Window:CreateTab{Title = "Tab Report And Ideas",Icon = "zap"},
    Settings = Window:CreateTab{Title = "Tab Settings Farming",Icon = "rbxassetid://10734950309"},
    Status = Window:CreateTab{Title = "Tab Status",Icon = "rbxassetid://10709773755"},
    Shop = Window:CreateTab{Title = "Tab Shop",Icon = "rbxassetid://10734952479"},
    Main = Window:CreateTab{Title = "Tab Main Farming",Icon = "rbxassetid://10723407389"},
    Stack = Window:CreateTab{Title = "Tab Farming Stack",Icon = "rbxassetid://10709769508"},
    Server = Window:CreateTab{Title = "Tab Hop Server",Icon = "rbxassetid://10747382504"},
    Items = Window:CreateTab{Title = "Tab Items",Icon = "rbxassetid://10734975486"},
    Sea = Window:CreateTab{Title = "Tab Sea Event",Icon = "rbxassetid://10709761530"},
    Dojo = Window:CreateTab{Title = "Tab Dojo Event",Icon = "bolt"},
    Fruits = Window:CreateTab{Title = "Tab Fruits",Icon = "rbxassetid://10709761889"},
    Rd = Window:CreateTab{Title = "Tab Raid And Dungeon",Icon = "atom"},
    Race = Window:CreateTab{Title = "Tabs Upgrade Race",Icon = "rbxassetid://10709797382"},
    Teleport = Window:CreateTab{Title = "Tab Teleport Sea",Icon = "rbxassetid://10734910680"},
    Virtual = Window:CreateTab{Title = "Tab Virtual Player",Icon = "leaf"},
    ListMisc = Window:CreateTab{Title = "Tab Local Player",Icon = "rbxassetid://75493387882361"}
}

Tabs.Info:CreateSection("Link NX-NazuX Hub")

Tabs.Info:CreateButton{
    Title = "Get Link NazuX",
    Description = "",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "What Link You Copy ?",
            Buttons = {
                {
                    Title = "Discord",
                    Callback = function()
                        setclipboard("https://discord.gg/ZAEDZ8b8M")
                    end
                },
                {
                    Title = "TikTok",
                    Callback = function()
                        setclipboard("https://www.tiktok.com/@real_anhkhoa_2279?_r=1&_t=ZS-93WLHMDIxzY")
                    end
                },
                {
                    Title = "YouTube",
                    Callback = function()
                        setclipboard("https://youtube.com/@real_anhkhoa_2279?si=Vk6-oSe5XVPzAQve")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Info:CreateSection("Info Player")

Tabs.Info:CreateParagraph("Usser_Exploit", {
    Title = "Exexutor",
    Content = ""..executor
})

Tabs.Info:CreateParagraph("Usser_Name", {
    Title = "Player Name",
    Content = ""..game.Players.LocalPlayer.DisplayName.." (@"..game.Players.LocalPlayer.Name..")"
})

Tabs.Info:CreateParagraph("Usser_Levels", {
    Title = "Level",
    Content = ""..game:GetService("Players").LocalPlayer.Data.Level.Value
})

Tabs.Info:CreateParagraph("Usser_Beli", {
    Title = "Money",
    Content = ""..game:GetService("Players").LocalPlayer.Data.Beli.Value
})

Tabs.Info:CreateParagraph("Usser_PointF", {
    Title = "Fragments",
    Content = ""..game:GetService("Players").LocalPlayer.Data.Fragments.Value
})

Tabs.Info:CreateParagraph("Usser_Bounty", {
    Title = "Bounty",
    Content = ""..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
})

Tabs.Info:CreateParagraph("Usser_Health", {
    Title = "Health",
    Content = ""..game.Players.LocalPlayer.Character.Humanoid.Health.."/"..game.Players.LocalPlayer.Character.Humanoid.MaxHealth
})

Tabs.Info:CreateParagraph("Usser_Energy", {
    Title = "Energy",
    Content = ""..game.Players.LocalPlayer.Character.Energy.Value.."/"..game.Players.LocalPlayer.Character.Energy.MaxValue
})

Tabs.Info:CreateParagraph("Usser_Race", {
    Title = "Race",
    Content = ""..game:GetService("Players").LocalPlayer.Data.Race.Value
})

Tabs.Info:CreateParagraph("Usser_DevilFruit", {
    Title = "Devil Fruits",
    Content = ""..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
})

SelectWebhook = Tabs.Webhook:CreateDropdown("SelectWebhook", {
    Title = "Select Type",
    Values = {"Report", "Ideas"},
    Multi = false,
    Default = 1,
})

SelectWebhook:OnChanged(function(Value)
    selectedType = Value
end)

InputMessage = Tabs.Webhook:CreateInput("InputMessage", {
    Title = "Input Message Here",
    Default = "",
    Placeholder = "Type your feedback...",
    Numeric = false,
    Finished = false,
    Callback = function(value)
        userMessage = value
    end
})

Tabs.Webhook:CreateButton{
    Title = "Send To Developer",
    Description = "",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Submit this?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        local time = os.date("%Y-%m-%d %H:%M:%S")
                        local finalMessage = (userMessage ~= "" and userMessage) or "No message provided!"
                        
                        -- Xác định webhook và thông tin embed
                        local webhookURL, embedColor, embedTitle
                        
                        if selectedType == "Report" then
                            webhookURL = reportWebhookURL
                            embedColor = tonumber("0xFF0000")  -- Red
                            embedTitle = "🚨 Bug Report"
                        elseif selectedType == "Ideas" then
                            webhookURL = ideasWebhookURL
                            embedColor = tonumber("0x7f705f")  -- Brown/Gold
                            embedTitle = "💡 New Idea"
                        else -- PC
                            webhookURL = reportWebhookURL
                            embedColor = tonumber("0x00FF00")  -- Green
                            embedTitle = "💻 PC Issue"
                        end
                        
                        -- Tạo embed data
                        local data = {
                            ["username"] = "NX-NazuX Hub Reporter",
                            ["avatar_url"] = "https://cdn.discordapp.com/attachments/...", -- Thêm avatar URL nếu muốn
                            ["embeds"] = {{
                                ["title"] = embedTitle,
                                ["color"] = embedColor,
                                ["thumbnail"] = {
                                    ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420&format=png"
                                },
                                ["fields"] = {
                                    {
                                        ["name"] = "👤 User Name",
                                        ["value"] = "```" .. player.Name .. "```",
                                        ["inline"] = true
                                    },
                                    {
                                        ["name"] = "🔔 User ID",
                                        ["value"] = "```" .. player.UserId .. "```",
                                        ["inline"] = true
                                    },
                                    {
                                        ["name"] = "📌 Type",
                                        ["value"] = "```" .. selectedType .. "```",
                                        ["inline"] = true
                                    },
                                    {
                                        ["name"] = "📝 Message",
                                        ["value"] = "```" .. finalMessage .. "```",
                                        ["inline"] = false
                                    }
                                },
                                ["footer"] = {
                                    ["text"] = "NX-NazuX Hub • " .. time,
                                    ["icon_url"] = "https://cdn.discordapp.com/attachments/..."
                                },
                                ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
                            }}
                        }
                        
                        -- Gửi webhook request
                        local success, response = pcall(function()
                            -- Kiểm tra các request function có sẵn
                            local requestFunc = (syn and syn.request) or 
                                                (request) or 
                                                (http and http.request) or
                                                (http_request) or
                                                (fluxus and fluxus.request) or
                                                (Krnl and Krnl.request)
                            
                            if not requestFunc then
                                error("No HTTP request function found!")
                            end
                            
                            return requestFunc({
                                Url = webhookURL,
                                Method = "POST",
                                Headers = {
                                    ["Content-Type"] = "application/json"
                                },
                                Body = HttpService:JSONEncode(data)
                            })
                        end)
                        
                        -- Hiển thị kết quả
                        if success then
                            Input:Set("")
                        end
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

plr.Idled:connect(function()
  vim2:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  wait(1)
  vim2:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

Tabs.Settings:CreateSection("Settings Tween")

Tabs.Settings:CreateSlider("Slider", {
    Title = "Tween Speed",
    Description = "",
    Default = 300,
    Min = 0,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        getgenv().TweenSpeed = Value
    end
})

Tabs.Settings:CreateSection("Settings Hop Value")

HopDelay = 1

DelaySlider = Tabs.Settings:CreateSlider("HopDelaySlider", {
    Title = "Hop Delay Time (seconds)",
    Description = "Only For Hop Normal, Ping and less player, Boss And Job Server need Wait",
    Min = 0,
    Max = 10,
    Default = 1,
    Rounding = 1,
    Callback = function(Value)
        HopDelay = Value
    end
})

DelaySlider:SetValue(1)

Tabs.Settings:CreateSection("Settings Player")

Clip = Tabs.Settings:CreateToggle("Toggle", {
    Title = "No Clip", 
    Default = true
})

Clip:OnChanged(function(Value)
    getgenv().NoClip = Value
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().NoClip then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") or v:IsA("Part") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

Bring = Tabs.Settings:CreateToggle("Toggle", {
    Title = "Bring Mob", 
    Default = false 
})

Bring:OnChanged(function(Value)
    _B = Value
end)

Position = Tabs.Settings:CreateToggle("Toggle", {
    Title = "Spin Position", 
    Default = false 
})

Position:OnChanged(function(Value)
    RandomCFrame = Value
end)

AFK = Tabs.Settings:CreateToggle("Toggle", {
    Title = "Anti AFK", 
    Default = true
})

AFK:OnChanged(function(Value)
    _G.AntiAFK = Value
end)

SafePlayer = Tabs.Settings:CreateToggle("Toggle", {
    Title = "Teleport Y if Low Heart Farming",
    Default = true
})

SafePlayer:OnChanged(function(Value)
    _G.Safemode = Value
end)

spawn(function()
  while task.wait(Sec) do
    pcall(function()
	  if _G.Safemode then
  	  local Calc_Health = plr.Character.Humanoid.Health / plr.Character.Humanoid.MaxHealth * 100
  	  if Calc_Health < Num_self then shouldTween=true _tp(Root.CFrame * CFrame.new(0,500,0)) else shouldTween=false end
      end
    end)
  end
end)

Tabs.Settings:CreateSection("Settings Fluent")

ThemeSelector = Tabs.Settings:AddDropdown("ThemeSelector", {
    Title = "Select Themes",
    Description = "Change UI theme",
    Values = Fluent.Themes,
    Default = "Darker",
    Callback = function(Value)
        Fluent:SetTheme(Value)
    end
})

Tabs.Status:CreateSection("Status Boss")

-- Elite Hunter
EliteHunter = Tabs.Status:CreateParagraph("EliteHunter", {
    Title = "Elite Hunter",
    Content = "Status: Loading..."
})

spawn(function()
    while wait(1) do
        local currentStatus = (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or 
                              game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or 
                              game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or 
                              game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or 
                              game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or 
                              game:GetService("Workspace").Enemies:FindFirstChild("Urban")) and '🟢' or '🔴'
        EliteHunter:SetContent("Status: " .. currentStatus)
    end
end)

-- Cake Prince
MobCakePrince = Tabs.Status:CreateParagraph("CakePrince", {
    Title = "Cake Prince",
    Content = "Status: Loading..."
})

spawn(function()
    while wait(1) do
        local cakePrince = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
        local status = "🔴"
        if string.len(cakePrince) >= 86 then
            local killCount = string.sub(cakePrince, 39, 41)
            MobCakePrince:SetContent("Status: 🔴 Need Kill " .. killCount .. " Mobs")
        else
            MobCakePrince:SetContent("Status: " .. status)
        end
    end
end)

-- Tyrant
TyrantStatus = Tabs.Status:CreateParagraph("CakePrince", {
    Title = "Tyrant of the Skies",
    Content = "Status: Loading..."
})

spawn(function()
	pcall(function()
		while wait(1) do
			if workspace["Enemies"]:FindFirstChild("Tyrant of the Skies") then
				TyrantStatus:SetContent("Status: ✅")
			else
				TyrantStatus:SetContent("Status: ❌")
			end
		end
	end)
end)

-- Dough King
SPYING = Tabs.Status:CreateParagraph("DoughKing", {
    Title = "Spy Buy",
    Content = "Status: Loading..."
})

spawn(function()
  while wait(.2) do
    pcall(function()
      local spycheck = string.match(replicated.Remotes.CommF_:InvokeServer("InfoLeviathan","1"),"%d+")
      if spycheck then SPYING:SetContent(" Spy Leviathan  : "..tostring(spycheck))
        if tostring(spycheck) == 5 then
          SPYING:SetContent("Status: 🟢")
        end
      end
    end)
  end
end)

-- Dough King
CheckDoughKing = Tabs.Status:CreateParagraph("DoughKing", {
    Title = "Dough King",
    Content = "Status: Loading..."
})

spawn(function()
    while wait(1) do
        local currentStatus = (game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or 
                              game:GetService("Workspace").Enemies:FindFirstChild("Dough King")) and '🟢' or '🔴'
        CheckDoughKing:SetContent("Status: " .. currentStatus)
    end
end)

-- rip_indra True Form
CheckRip = Tabs.Status:CreateParagraph("RipIndra", {
    Title = "rip_indra True Form",
    Content = "Status: Loading..."
})

spawn(function()
    while wait(1) do
        local currentStatus = (game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or 
                              game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")) and '🟢' or '🔴'
        CheckRip:SetContent("Status: " .. currentStatus)
    end
end)

Tabs.Status:CreateSection("Event Status")

-- Full Moon
FM = Tabs.Status:CreateParagraph("FullMoon", {
    Title = "Full Moon",
    Content = "Status: Loading..."
})

task.spawn(function()
    while task.wait(1) do
        local moonTextureId = game:GetService("Lighting").Sky.MoonTextureId
        local moonStatus = "Bad Moon | 0"
        
        if moonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
            moonStatus = "Full Moon | 5"
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
            moonStatus = "Near Full Moon | 4"
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
            moonStatus = "Bad Moon | 3"
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
            moonStatus = "Bad Moon | 2"
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
            moonStatus = "Bad Moon | 1"
        end
        
        FM:SetContent("Status: " .. moonStatus)
    end
end)

-- Legendary Sword
LegendarySword = Tabs.Status:CreateParagraph("LegendarySword", {
    Title = "Legendary Sword",
    Content = "Status: Loading..."
})

spawn(function()
    while wait(1) do
        local swordStatus = "🔴"
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") then
            swordStatus = "🟢"
        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2") then
            swordStatus = "🟢"
        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3") then
            swordStatus = "🟢"
        end
        LegendarySword:SetContent("Status: " .. swordStatus)
    end
end)

Tabs.Status:CreateSection("Island Status")

-- Frozen Dimension
FrozenIsland = Tabs.Status:CreateParagraph("FrozenDimension", {
    Title = "Frozen Dimension",
    Content = "Status: Loading..."
})

spawn(function()
    while wait(1) do
        local currentStatus = game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') and '🟢' or '🔴'
        FrozenIsland:SetContent("Status: " .. currentStatus)
    end
end)

-- Volcano Island
CPrehistoriccheck = Tabs.Status:CreateParagraph("VolcanoIsland", {
    Title = "Volcano Island",
    Content = "Status: Loading..."
})

task.spawn(function()
    while task.wait(1) do
        local currentStatus = game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") and '🟢' or '🔴'
        CPrehistoriccheck:SetContent("Status: " .. currentStatus)
    end
end)

-- Mirage Island
Miragecheck = Tabs.Status:CreateParagraph("MirageIsland", {
    Title = "Mirage Island",
    Content = "Status: Loading..."
})

spawn(function()
    while wait(1) do
        local mirageIslandExists = game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') ~= nil
        local currentStatus = mirageIslandExists and '🟢' or '🔴'
        Miragecheck:SetContent("Status: " .. currentStatus)
    end
end)

Tabs.Shop:CreateSection("Sword Shop")

Tabs.Shop:CreateButton{
    Title = "Katana Sword",
    Description = "1.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Katana Sword ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        replicated.Remotes.CommF_:InvokeServer("BuyItem","Katana")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Cutlass Sword",
    Description = "1.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Cutlass Sword ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        replicated.Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Dual Katana Sword",
    Description = "25.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Dual Katana Sword ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        replicated.Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")         
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Iran Mace Sword",
    Description = "25.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Iron Mace Sword ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Triple Katana Sword",
    Description = "60.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Triple Katana Sword ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Pipe Sword",
    Description = "100.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Pipe Sword ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Pipe Sword",
    Description = "100.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Pipe Sword ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Dual-Headed Sword",
    Description = "400.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Dual-Headed Sword ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Soul Cane Sword",
    Description = "700.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Soul Cane Sword ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Bisento Sword",
    Description = "1.000.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Bisento Sword ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Pole V2 Sword",
    Description = "2.000.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy True Triple Katana Sword ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Legendary Sword",
    Description = "2.000.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Legendary Sword ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
replicated.Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
  replicated.Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
  replicated.Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "True Triple Katana Sword",
    Description = "2.000.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy True Triple Katana Sword ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
replicated.Remotes.CommF_:InvokeServer("MysteriousMan","2")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateSection("Fighting Styles Shop")

Tabs.Shop:CreateButton{
    Title = "Dark Step",
    Description = "150.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Dark Step ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
CommF_Remote:InvokeServer("BuyBlackLeg")
end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Electric",
    Description = "500.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Electric ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
CommF_Remote:InvokeServer("BuyElectro")
end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Fishman Karate",
    Description = "500.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Fishman Karate ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
CommF_Remote:InvokeServer("BuyFishmanKarate")
end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Dragon Breath",
    Description = "1.500 Fragments",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Dragon Breath ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
        local success1, result1 = pcall(function()
            return CommF_Remote:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        end)
        if not success1 then
            return
        end
        local success2, result2 = pcall(function()
            return CommF_Remote:InvokeServer("BlackbeardReward", "DragonClaw", "2")
        end)
        if not success2 then
            return
        end
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "SuperHuman",
    Description = "3.000.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy SuperHuman ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
        CommF_:InvokeServer("BuySuperhuman")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Death Step",
    Description = "2.500.000 Beli\n5.000 Fragments",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Death Step ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
        CommF_:InvokeServer("BuyDeathStep")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Sharkman Karate",
    Description = "2.500.000 Beli\n5.000 Fragments",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Sharkman Karate ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
        CommF_:InvokeServer("BuySharkmanKarate", true)
        wait(0.2)
        CommF_:InvokeServer("BuySharkmanKarate")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Electric Claw",
    Description = "3.000.000 Beli\n5.000 Fragments",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Electric Claw ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
        CommF_:InvokeServer("BuyElectricClaw")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Dragon Talon",
    Description = "3.000.000 Beli\n5.000 Fragments",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Dragon Talon ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
        CommF_:InvokeServer("BuyDragonTalon")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "GodHuman",
    Description = "5.000.000 Beli\n5.000 Fragments",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy GodHuman ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
        CommF_:InvokeServer("BuyGodhuman")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Sanguine Art",
    Description = "5.000.000 Beli\n5.000 Fragments",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Sanguine Art ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
        CommF_:InvokeServer("BuySanguineArt", true)
        wait(0.2)
        CommF_:InvokeServer("BuySanguineArt")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateSection("Gun Shop")

Tabs.Shop:CreateButton{
    Title = "Slingshot",
    Description = "5.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Slingshot Gun ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Musket",
    Description = "8.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Musket Gun ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Flintlock",
    Description = "10.500 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Flintlock Gun ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Refined Flintlock",
    Description = "30.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Refined Flintlock Gun ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Dual Flintlock",
    Description = "65.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Dual Flintlock Gun ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
replicated.Remotes.CommF_:InvokeServer("BuyItem","Dual Flintlock")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Cannon",
    Description = "100.000 Beli",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Cannon Gun ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Kabucha",
    Description = "2.500 Fragments",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Kabucha Gun ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateSection("Race Shop")

Tabs.Shop:CreateButton{
    Title = "Ghoul Race",
    Description = "",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Race Ghoul ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
        local args = {
            [1] = "Ectoplasm",
            [2] = "Change",
            [3] = 4
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Cyborg Race",
    Description = "",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Race Cyborg ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
        local args = {
            [1] = "CyborgTrainer",
            [2] = "Buy"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Draco Race",
    Description = "",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Buy Race Draco ?",
            Buttons = {
                {
                    Title = "Yes",
                    Callback = function()
                        topos(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
                        local targetPosition = Vector3.new(5814.42724609375, 1208.3267822265625, 884.5785522460938)
                        local player = game.Players.LocalPlayer
                        local character = player.Character or player.CharacterAdded:Wait()
                        
                        repeat wait()
                        until (character.HumanoidRootPart.Position - targetPosition).Magnitude < 1
                        
                        local args = {
                            [1] = {
                                ["NPC"] = "Dragon Wizard",
                                ["Command"] = "DragonRace"
                            }
                        }
                        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(args))
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateButton{
    Title = "Ramdom Race",
    Description = "3.000 Fragments",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Ramdom Race ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
replicated.Remotes.CommF_:InvokeServer("BuyItem","Dual Flintlock")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Tabs.Shop:CreateSection("Reset Stats")

Tabs.Shop:CreateButton{
    Title = "Reset Stats",
    Description = "2.500 Fragments",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Reset Stas ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
replicated.Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
        end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

Weapon = Tabs.Main:CreateDropdown("Weapon", {
    Title = "Select Weapon",
    Values = {"Melee", "Sword", "Blox Fruit", "Gun"},
    Multi = false,
    Default = 1,
})

Weapon:OnChanged(function(Value)
    _G.ChooseWP = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.ChooseWP == "Melee" then
        for _,v in pairs(plr.Backpack:GetChildren()) do
	      if v.ToolTip == "Melee" then
		    if plr.Backpack:FindFirstChild(tostring(v.Name)) then
	          _G.SelectWeapon = v.Name              
            end
          end
        end
   	  elseif _G.ChooseWP == "Sword" then     
	    for _,v in pairs(plr.Backpack:GetChildren()) do
	      if v.ToolTip == "Sword" then
		    if plr.Backpack:FindFirstChild(tostring(v.Name)) then
		      _G.SelectWeapon = v.Name              
            end
          end
        end
      elseif _G.ChooseWP == "Gun" then     
	     for _,v in pairs(plr.Backpack:GetChildren()) do
	       if v.ToolTip == "Gun" then
		    if plr.Backpack:FindFirstChild(tostring(v.Name)) then
		      _G.SelectWeapon = v.Name              
            end
          end
        end
      elseif _G.ChooseWP == "Blox Fruit" then     
	    for _,v in pairs(plr.Backpack:GetChildren()) do
	      if v.ToolTip == "Blox Fruit" then
		    if plr.Backpack:FindFirstChild(tostring(v.Name)) then
		      _G.SelectWeapon = v.Name		                    
            end
          end
        end        
      end
    end)
  end
end)

MethodFarm = Tabs.Main:AddDropdown("MethodFarm", {
    Title = "Select Farming",
    Values = {"Level Farming", "Bone Farming", "Cake Prince Farming", "Aura Farming"},
    Multi = false,
    Default = 1,
})

MethodFarm:OnChanged(function(Value)
    _G.MethodSelect = Value
end)

AcceptQuests = Tabs.Main:AddToggle("AcceptQuests", {
    Title = "Accept Quests",
    Default = true
})

AcceptQuests:OnChanged(function(Value)
    _G.AcceptQuestC = Value
end)

Distance = Tabs.Main:AddSlider("Distance", {
    Title = "Farm Distance",
    Description = "",
    Default = 30,
    Min = 0,
    Max = 50,
    Rounding = 5,
    Callback = function(Value)
        _G.Safemode = Value
    end
})

StartFarming = Tabs.Main:AddToggle("StartFarming", {
    Title = "Start Farming",
    Default = false
})

StartFarming:OnChanged(function(Value)
    _G.StartFarm = Value
end)

-- Khai báo biến cho Submerged Island
local SubNPC = Vector3.new(-16267.8, 25.4, 1373.2)
local TeleportedToSub = false

local function IsInSubmergedIsland()
    if not plr or not plr:FindFirstChild("Data") then return false end
    local data = plr.Data
    local currentIsland = data:FindFirstChild("SpawnPoint") or data:FindFirstChild("CurrentIsland")
    if not currentIsland then return false end
    local name = tostring(currentIsland.Value):lower()
    return string.find(name, "submerged") or string.find(name, "underwater")
end

-- Theo dõi khi nhân vật respawn
plr.CharacterAdded:Connect(function(char)
    Root = char:WaitForChild("HumanoidRootPart", 10)
    task.defer(function()
        task.wait(2)
        if Root then
            TeleportedToSub = IsInSubmergedIsland()
        end
    end)
end)

-- Function cho Level Farming
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.StartFarm and _G.MethodSelect == "Level Farming" then
                -- Xử lý Submerged Island cho level >= 2600
                local lvl = plr.Data.Level.Value
                if lvl >= 2600 and not TeleportedToSub then
                    if not IsInSubmergedIsland() then
                        TeleportedToSub = true
                        repeat 
                            task.wait() 
                            _tp(CFrame.new(SubNPC))
                        until not _G.StartFarm or (Root.Position - SubNPC).Magnitude <= 80
                        
                        -- Gọi NPC để đến Submerged Island
                        pcall(function()
                            game:GetService("ReplicatedStorage")
                                .Modules.Net["RF/SubmarineWorkerSpeak"]
                                :InvokeServer("TravelToSubmergedIsland")
                        end)
                        task.wait(3) -- Chờ teleport
                        return -- Chờ vòng lặp tiếp theo
                    else
                        TeleportedToSub = true
                    end
                end

                -- Farm level bình thường
                if not plr.PlayerGui.Main.Quest.Visible then
                    _tp(QuestNeta()[6])
                    if (Root.Position - QuestNeta()[6].Position).Magnitude <= 5 then 
                        replicated.Remotes.CommF_:InvokeServer("StartQuest", QuestNeta()[3], QuestNeta()[2])
                    end
                elseif plr.PlayerGui.Main.Quest.Visible then
                    local QuestTitle = plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    
                    if not string.find(QuestTitle, QuestNeta()[5]) then 
                        replicated.Remotes.CommF_:InvokeServer("AbandonQuest")
                        return
                    end
                    
                    if workspace.Enemies:FindFirstChild(QuestNeta()[1]) then
                        for i, v in pairs(workspace.Enemies:GetChildren()) do
                            if Attack.Alive(v) then
                                if v.Name == QuestNeta()[1] then
                                    if string.find(QuestTitle, QuestNeta()[5]) then
                                        repeat 
                                            wait() 
                                            Attack.Kill(v, _G.StartFarm)
                                        until not _G.StartFarm or v.Humanoid.Health <= 0 or not v.Parent or not plr.PlayerGui.Main.Quest.Visible
                                    else
                                        replicated.Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else 
                        _tp(QuestNeta()[4])
                        if replicated:FindFirstChild(QuestNeta()[1]) then 
                            _tp(replicated:FindFirstChild(QuestNeta()[1]).HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        end 
                    end
                end
            end
        end)
    end
end)

-- Function cho Bone Farming
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.StartFarm and _G.MethodSelect == "Bone Farming" then
                local player = game.Players.LocalPlayer
                local root = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                local questUI = player.PlayerGui.Main.Quest
                local BonesTable = {"Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy"}
                if not root then return end
                
                local bone = GetConnectionEnemies(BonesTable)
                if bone then
                    if _G.AcceptQuestC and not questUI.Visible then
                        local questPos = CFrame.new(-9516.99316,172.017181,6078.46533,0,0,-1,0,1,0,1,0,0)
                        _tp(questPos)
                        while (questPos.Position - root.Position).Magnitude > 50 do
                            wait(0.2)
                        end
                        local randomQuest = math.random(1, 4)
                        local questData = {
                            [1] = {"StartQuest", "HauntedQuest2", 2},
                            [2] = {"StartQuest", "HauntedQuest2", 1},
                            [3] = {"StartQuest", "HauntedQuest1", 1},
                            [4] = {"StartQuest", "HauntedQuest1", 2}
                        }                    
                        local success, response = pcall(function()
                            return game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(questData[randomQuest]))
                        end)
                    end
                    repeat task.wait() Attack.Kill(bone, _G.StartFarm) until not _G.StartFarm or bone.Humanoid.Health <= 0 or not bone.Parent or (_G.AcceptQuestC and not questUI.Visible)
                else
                    _tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125)) 	      
                end
            end
        end)
    end
end)

-- Function cho Cake Prince Farming
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.StartFarm and _G.MethodSelect == "Cake Prince Farming" then
                local player = game.Players.LocalPlayer
                local root = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                local questUI = player.PlayerGui.Main.Quest
                local enemies = workspace.Enemies
                local bigMirror = workspace.Map.CakeLoaf.BigMirror
                if not root then return end
                
                if not bigMirror:FindFirstChild("Other") then
                    _tp(CFrame.new(-2077, 252, -12373))
                end        
                
                if bigMirror.Other.Transparency == 0 or enemies:FindFirstChild("Cake Prince") then
                    local v = GetConnectionEnemies("Cake Prince")
                    if v then
                        repeat wait() Attack.Kill2(v, _G.StartFarm) until not _G.StartFarm or not v.Parent or v.Humanoid.Health <= 0
                    else
                        if bigMirror.Other.Transparency == 0 and (CFrame.new(-1990.67, 4533, -14973.67).Position - root.Position).Magnitude >= 2000 then
                            _tp(CFrame.new(-2151.82, 149.32, -12404.91))
                        end
                    end
                else
                    local CakePrince = {"Cookie Crafter","Cake Guard","Baking Staff","Head Baker"}
                    local v = GetConnectionEnemies(CakePrince)
                    if v then
                        if _G.AcceptQuestC and not questUI.Visible then
                            local questPos = CFrame.new(-1927.92, 37.8, -12842.54)
                            _tp(questPos)
                            while (questPos.Position - root.Position).Magnitude > 50 do
                                wait(0.2)
                            end
                            local randomQuest = math.random(1, 4)
                            local questData = {
                                [1] = {"StartQuest", "CakeQuest2", 2},
                                [2] = {"StartQuest", "CakeQuest2", 1},
                                [3] = {"StartQuest", "CakeQuest1", 1},
                                [4] = {"StartQuest", "CakeQuest1", 2}
                            }                    
                            local success, response = pcall(function()
                                return game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(questData[randomQuest]))
                            end)
                        end
                        repeat wait() Attack.Kill(v, _G.StartFarm) until not _G.StartFarm or v.Humanoid.Health <= 0 or bigMirror.Other.Transparency == 0 or (_G.AcceptQuestC and not questUI.Visible)                
                    else
                        _tp(CFrame.new(-2077, 252, -12373))
                    end
                end
            end
        end)
    end
end)

-- Function cho Aura Farming (Farm Near)
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.StartFarm and _G.MethodSelect == "Aura Farming" then
                for i,v in pairs(workspace.Enemies:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                        if v.Humanoid.Health > 0 then
                            repeat wait() Attack.Kill(v, _G.StartFarm) until not _G.StartFarm or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end
        end)
    end
end)

Tabs.Main:CreateSection("Meterial Farming")

MeterialSelect = Tabs.Main:AddDropdown("MeterialSelect", {
    Title = "Select Meterial",
    Values = MaterialList,
    Multi = false,
    Default = 1,
})

MeterialSelect:OnChanged(function(Value)
    getgenv().SelectMaterial = Value
end)

StartFarming = Tabs.Main:AddToggle("StartFarming", {
    Title = "Meterial Farming",
    Default = false
})

StartFarming:OnChanged(function(Value)
    getgenv().AutoMaterial = Value
end)


spawn(function()
  local function processEnemy(v, EnemyName)
    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
      if v.Name == EnemyName then repeat wait() Attack.Kill(v,getgenv().AutoMaterial) until not getgenv().AutoMaterial or not v.Parent or v.Humanoid.Health <= 0 end
    end
  end
  local function handleEnemySpawns()
    for _, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
      for _, EnemyName in ipairs(MMon) do
        if string.find(v.Name, EnemyName) then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
            _tp(v.CFrame * Pos)
          end
        end
      end
    end
  end
  while wait() do
    if getgenv().AutoMaterial then
      pcall(function()
        if getgenv().SelectMaterial then MaterialMon(getgenv().SelectMaterial) _tp(MPos) end
        for _, EnemyName in ipairs(MMon) do
          for _, v in pairs(workspace.Enemies:GetChildren()) do processEnemy(v, EnemyName) end
        end
        handleEnemySpawns()
      end)
    end
  end
end)

Tabs.Main:CreateSection("Mastery Farming")

MasteryType = {"Fruits", "Gun"}
MasteryConfig = Tabs.Main:CreateDropdown("MasteryConfig", {
    Title = "Select Mastery", 
    Values = MasteryType, 
    Multi = false, 
    Default = 1
})

MasteryConfig:OnChanged(function(Value)
    _G.MasteryTypeSelect = Value
end)

MasteryToggle = Tabs.Main:CreateToggle("MasteryToggle", {
    Title = "Auto Mastery",
    Description = "",
    Default = false
})

MasteryToggle:OnChanged(function(Value)
    _G.StartMastery = Value
end)

spawn(function()
    RunSer.RenderStepped:Connect(function() 
        pcall(function()
            if _G.StartMastery then 
                for a,b in pairs(plr.PlayerGui.Notifications:GetChildren()) do 
                    if b.Name == "NotificationTemplate" then 
                        if string.find(b.Text, "Skill locked!") then 
                            b:Destroy()
                        end 
                    end 
                end 
            end 
        end)
    end) 
end)

-- Chỉ dùng Bone Island
spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.StartMastery then
                if _G.MasteryTypeSelect == "Fruits" then
                    local v = GetConnectionEnemies(mastery2)
                    if v then		
                        HealthM = v.Humanoid.MaxHealth * 70 / 100
                        repeat wait()
                            MousePos = v.HumanoidRootPart.Position
                            Attack.Mas(v, _G.StartMastery)
                        until not _G.StartMastery or v.Humanoid.Health <= 0 or not v.Parent		        
                    else
                        _tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125)) 		    
                    end
                elseif _G.MasteryTypeSelect == "Gun" then
                    local v = GetConnectionEnemies(mastery2)
                    if v then		      
                        HealthM = v.Humanoid.MaxHealth * 70 / 100
                        repeat wait()
                            MousePos = v.HumanoidRootPart.Position
                            Attack.Masgun(v, _G.StartMastery)
                            local Modules = replicated:FindFirstChild("Modules")
                            local Net = Modules:FindFirstChild("Net")
                            local RE_ShootGunEvent = Net:FindFirstChild("RE/ShootGunEvent")    
                            
                            if plr.Character:FindFirstChildOfClass("Tool").ToolTip ~= "Gun" then return end
                            
                            if plr.Character:FindFirstChildOfClass("Tool") and plr.Character:FindFirstChildOfClass("Tool").Name == 'Skull Guitar' then
                                SoulGuitar = true
                                plr.Character:FindFirstChildOfClass("Tool").RemoteEvent:FireServer("TAP", MousePos)
                                if _G.StartMastery then
                                    vim1:SendMouseButtonEvent(0, 0, 0, true, game, 1)
                                    wait(0.05)
                                    vim1:SendMouseButtonEvent(0, 0, 0, false, game, 1)
                                    wait(0.05)
                                end
                            elseif plr.Character:FindFirstChildOfClass("Tool") and plr.Character:FindFirstChildOfClass("Tool").Name ~= 'Skull Guitar' then
                                SoulGuitar = false
                                RE_ShootGunEvent:FireServer(MousePos, { v.HumanoidRootPart })
                                if _G.StartMastery then
                                    vim1:SendMouseButtonEvent(0, 0, 0, true, game, 1)
                                    wait(0.05)
                                    vim1:SendMouseButtonEvent(0, 0, 0, false, game, 1)
                                    wait(0.05)
                                end
                            end		            		
                        until not _G.StartMastery or v.Humanoid.Health <= 0 or not v.Parent    
                        SoulGuitar = false     		         		        
                    else
                        _tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125)) 
                    end
                end
            end
        end)
    end
end)

Tabs.Stack:AddSection("Melee V2 Getting")

FightingStyles = {
    "Superhuman",
    "Death Step", 
    "Sharkman Karate",
    "Electric Claw",
    "Dragon Talon",
    "Godhuman"
}

FightingStyleDropdown = Tabs.Stack:CreateDropdown("FightingStyleDropdown", {
    Title = "Select Fighting Style",
    Values = FightingStyles,
    Multi = false,
    Default = 1
})

FightingStyleDropdown:OnChanged(function(Value)
    _G.SelectedFightingStyle = Value
end)

AutoFightingToggle = Tabs.Stack:AddToggle("AutoFightingToggle", {
    Title = "Start Fighting Style",
    Description = "",
    Default = false
})

AutoFightingToggle:OnChanged(function(Value)
    _G.AutoFightingStyle = Value
end)

spawn(function()
    while wait(Sec) do
        pcall(function()
            if _G.AutoFightingStyle and _G.SelectedFightingStyle then
                local M_Beli = plr.Data.Beli.Value
                local M_Frag = plr.Data.Fragments.Value
                
                if _G.SelectedFightingStyle == "Superhuman" then
                    if plr:FindFirstChild("WeaponAssetCache") then
                        if not GetBP("Superhuman") then                    
                            if not GetBP("Black Leg") then
                                if (M_Beli >= 150000) then replicated.Remotes.CommF_:InvokeServer("BuyBlackLeg") end
                            elseif GetBP("Black Leg") and GetBP("Black Leg").Level.Value < 299 then 
                                _G.Level = true 
                            elseif GetBP("Black Leg") and GetBP("Black Leg").Level.Value >= 300 then 
                                _G.Level = false 
                            end                        
                            
                            if not GetBP("Electro") then
                                if (M_Beli >= 500000) then replicated.Remotes.CommF_:InvokeServer("BuyElectro") end
                            elseif GetBP("Electro") and GetBP("Electro").Level.Value < 299 then 
                                _G.Level = true 
                            elseif GetBP("Electro") and GetBP("Electro").Level.Value >= 300 then 
                                _G.Level = false 
                            end                        
                            
                            if not GetBP("Fishman Karate") then
                                if (M_Beli >= 750000) then replicated.Remotes.CommF_:InvokeServer("BuyFishmanKarate") end
                            elseif GetBP("Fishman Karate") and GetBP("Fishman Karate").Level.Value < 299 then 
                                _G.Level = true 
                            elseif GetBP("Fishman Karate") and GetBP("Fishman Karate").Level.Value >= 300 then 
                                _G.Level = false 
                            end                        
                            
                            if not GetBP("Dragon Claw") then
                                if (M_Frag >= 1500) then replicated.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") end
                            elseif GetBP("Dragon Claw") and GetBP("Dragon Claw").Level.Value < 299 then 
                                _G.Level = true 
                            elseif GetBP("Dragon Claw") and GetBP("Dragon Claw").Level.Value >= 300 then 
                                _G.Level = false 
                            end
                            replicated.Remotes.CommF_:InvokeServer("BuySuperhuman")          
                        end
                    end
                    
                elseif _G.SelectedFightingStyle == "Death Step" then
                    if plr:FindFirstChild("WeaponAssetCache") then  
                        if not GetBP("Death Step") then          
                            if not GetBP("Black Leg") then replicated.Remotes.CommF_:InvokeServer("BuyBlackLeg") end
                            if GetBP("Black Leg") and GetBP("Black Leg").Level.Value >= 400 then 
                                replicated.Remotes.CommF_:InvokeServer("BuyDeathStep") 
                                _G.Level = false 
                            elseif GetBP("Black Leg") and GetBP("Black Leg").Level.Value < 399 then 
                                _G.Level = true 
                            end
                            if GetBP("Black Leg") or GetBP("Black Leg").Level.Value >= 400 then
                                if workspace.Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then            
                                    if GetBP("Library Key") then 
                                        repeat wait() _tp(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) 
                                        until not _G.AutoFightingStyle or (Root.Position == CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position)
                                        if (Root.CFrame == CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) then 
                                            replicated.Remotes.CommF_:InvokeServer("BuyDeathStep") 
                                        end     
                                    elseif not GetBP("Library Key") then
                                        local v = GetConnectionEnemies("Awakened Ice Admiral")
                                        if v then	
                                            repeat wait() Attack.Kill(v, _G.AutoFightingStyle) 
                                            until not v.Parent or v.Humanoid.Health <= 0 or not _G.AutoFightingStyle or GetBP("Library Key") or GetBP("Death Step")
                                        else 
                                            _tp(CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813))
                                        end
                                    end		    
                                end
                            end          
                        end
                    end
                    
                elseif _G.SelectedFightingStyle == "Sharkman Karate" then
                    if plr:FindFirstChild("WeaponAssetCache") then  
                        if not GetBP("Sharkman Karate") then          
                            if not GetBP("Fishman Karate") then replicated.Remotes.CommF_:InvokeServer("BuyFishmanKarate") end
                            if GetBP("Fishman Karate") and GetBP("Fishman Karate").Level.Value >= 400 then 
                                replicated.Remotes.CommF_:InvokeServer("BuySharkmanKarate") 
                                _G.Level = false 
                            elseif GetBP("Fishman Karate") and GetBP("Fishman Karate").Level.Value < 399 then 
                                _G.Level = true 
                            end
                            if GetBP("Fishman Karate") or GetBP("Fishman Karate").Level.Value >= 400 then           
                                if GetBP("Water Key") then
                                    if string.find(replicated.Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                                        if GetBP("Water Key") then
                                            repeat wait() _tp(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365)) 
                                            until not _G.AutoFightingStyle or (Root.Position == CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position)
                                            replicated.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                        end
                                    end
                                elseif not GetBP("Water Key") then
                                    local v = GetConnectionEnemies("Tide Keeper")
                                    if v then 
                                        repeat wait() Attack.Kill(v, _G.AutoFightingStyle)
                                        until not v.Parent or v.Humanoid.Health <= 0 or not _G.AutoFightingStyle or GetBP("Water Key") or GetBP("Sharkman Karate")		
                                    else 
                                        _tp(CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625))
                                    end
                                end		                  
                            end          
                        end
                    end
                    
                elseif _G.SelectedFightingStyle == "Electric Claw" then
                    if plr:FindFirstChild("WeaponAssetCache") then 
                        if not GetBP("Electro") then replicated.Remotes.CommF_:InvokeServer("BuyElectro") end        
                        if GetBP("Electro") and GetBP("Electro").Level.Value >= 400 then
                            if replicated.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start") == nil then 
                                notween(CFrame.new(-12548, 337, -7481)) 
                            end
                            replicated.Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        elseif GetBP("Electro") and GetBP("Electro").Level.Value < 400 then
                            repeat 
                                _G.AutoFarm_Bone = true 
                                wait() 
                            until not _G.AutoFightingStyle or GetBP("Electric Claw") 
                            _G.AutoFarm_Bone = false
                        end
                    end       
                    
                elseif _G.SelectedFightingStyle == "Dragon Talon" then
                    if plr:FindFirstChild("WeaponAssetCache") then 
                        if not GetBP("Dragon Claw") then replicated.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") end        
                        if GetBP("Dragon Claw") and GetBP("Dragon Claw").Level.Value >= 400 then 
                            replicated.Remotes.CommF_:InvokeServer("Bones","Buy",1,1) 
                            replicated.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        elseif GetBP("Dragon Claw") and GetBP("Dragon Claw").Level.Value < 400 then 
                            repeat 
                                _G.AutoFarm_Bone = true 
                                wait() 
                            until not _G.AutoFightingStyle or GetBP("Dragon Talon") 
                            _G.AutoFarm_Bone = false
                        end         
                    end
                    
                elseif _G.SelectedFightingStyle == "Godhuman" then
                    if replicated.Remotes.CommF_:InvokeServer("BuyGodhuman",true) == "Bring me 20 Fish Tails, 20 Magma Ore, 10 Dragon Scales and 10 Mystic Droplets." then
                        if GetM("Dragon Scale") == false or GetM("Dragon Scale") < 10 then
                            if World3 then
                                Lv = 1575
                                _G.Level = true
                            else
                                replicated.Remotes.CommF_:InvokeServer("TravelZou")
                            end
                        elseif GetM("Fish Tail") == false or GetM("Fish Tail") < 20 then
                            if World3 then
                                Lv = 1775
                                _G.Level = true
                            else
                                replicated.Remotes.CommF_:InvokeServer("TravelZou")
                            end
                        elseif GetM("Mystic Droplet") == false or GetM("Mystic Droplet") < 10 then
                            if World2 then
                                Lv = 1425
                                _G.Level = true
                            else
                                replicated.Remotes.CommF_:InvokeServer("TravelDressrosa")
                            end
                        elseif GetM("Magma Ore") == false or GetM("Magma Ore") < 20 then
                            if World2 then
                                Lv = 1175
                                _G.Level = true
                            else
                                replicated.Remotes.CommF_:InvokeServer("TravelDressrosa")
                            end  
                        end
                    elseif replicated.Remotes.CommF_:InvokeServer("BuyGodhuman",true) == 3 then
                        return nil
                    else
                        replicated.Remotes.CommF_:InvokeServer("BuyGodhuman")
                    end
                end
            end
        end)
    end
end)

Tabs.Stack:AddSection("Event Boss")

RipRaid = Tabs.Stack:AddToggle("RipRaid", {
    Title = "Rip Indra True Form",
    Description = "",
    Default = false
})

RipRaid:OnChanged(function(Value)
    _G.AutoRipIngay = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.AutoRipIngay then
        local v = GetConnectionEnemies("rip_indra")
	    if not GetWP("Dark Dagger") or not GetIn("Valkyrie") and v then
	      repeat wait() Attack.Kill(v,_G.AutoRipIngay)until not _G.AutoRipIngay or not v.Parent or v.Humanoid.Health <= 0
        else
          replicated.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-08, 0.914313197, -1.90943332e-08, 1, 3.8755779e-08, -0.914313197, -1.76180437e-09, -0.405007899))
		  wait(.1)_tp(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
	    end
      end
    end)
  end
end)

Darkbeard = Tabs.Stack:AddToggle("Darkbeard", {
    Title = "Darkbeard",
    Description = "",
    Default = false
})

Darkbeard:OnChanged(function(Value)
    _G.Auto_Def_DarkCoat = Value
end)

spawn(function()
  while wait(.1) do
    if _G.Auto_Def_DarkCoat then
      pcall(function()
        if GetBP("Fist of Darkness") and not workspace.Enemies:FindFirstChild("Darkbeard") then          
          _tp(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
        elseif GetConnectionEnemies("Darkbeard") then
          local v = GetConnectionEnemies("Darkbeard")          
		  if v then repeat wait()Attack.Kill(v,_G.Auto_Def_DarkCoat)until _G.Auto_Def_DarkCoat == false or not v.Parent or v.Humanoid.Helath <= 0 end
        elseif not GetBP("Fist of Darkness") and not GetConnectionEnemies("Darkbeard") then
          repeat wait(.1) _G.AutoFarmChest = true until not _G.Auto_Def_DarkCoat or GetBP("Fist of Darkness") or GetConnectionEnemies("Darkbeard") _G.AutoFarmChest = false
        end
      end)
    end
  end
end)

Elite = Tabs.Stack:AddToggle("Elite", {
    Title = "Elite Hunter",
    Description = "",
    Default = false
})

Elite:OnChanged(function(Value)
    _G.FarmEliteHunt = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
	  if _G.FarmEliteHunt then
	    if plr.PlayerGui.Main.Quest.Visible == true then
	      if string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
		    for i,v in pairs(replicated:GetChildren()) do
		      if string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre") then
		        _tp(v.HumanoidRootPart.CFrame)				
		      end	
		    end
	 	    for i,v in pairs(Enemies:GetChildren()) do
		      if (string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre")) and Attack.Alive(v) then
	            repeat wait() Attack.Kill(v, _G.FarmEliteHunt) until not _G.FarmEliteHunt or plr.PlayerGui.Main.Quest.Visible == false or not v.Parent or v.Humanoid.Health <=0
	          end
	        end           
	      end        
	    else
	      replicated.Remotes.CommF_:InvokeServer("EliteHunter")
	    end
      end
    end)
  end
end)

Dough = Tabs.Stack:AddToggle("Dough", {
    Title = "Dough King",
    Description = "",
    Default = false
})

Dough:OnChanged(function(Value)
    _G.AutoMiror = Value
end)

spawn(function()
  while wait(Sec) do
    if _G.AutoMiror then
      pcall(function()
        local v = GetConnectionEnemies("Dough King")
        if v then
          repeat wait() Attack.Kill(v,_G.AutoMiror) until not _G.AutoMiror or not v.Parent or v.Humanoid.Health <= 0
        else
          _tp(CFrame.new(-1943.676513671875, 251.5095672607422, -12337.880859375)) 
        end
      end)
    end
  end
end)

SoulReaper = Tabs.Stack:AddToggle("SoulReaper", {
    Title = "Soul Reaper",
    Description = "",
    Default = false
})

SoulReaper:OnChanged(function(Value)
    _G.AutoHytHallow = Value
end)

spawn(function()
  while wait(Sec) do
    if _G.AutoHytHallow then
      pcall(function()
        local v = GetConnectionEnemies("Soul Reaper")
	    if v then
          repeat task.wait() Attack.Kill(v,_G.AutoHytHallow) until v.Humanoid.Health <= 0 or _G.AutoHytHallow == false
        else
          if not GetBP("Hallow Essence") then
            repeat task.wait(.1)replicated.Remotes.CommF_:InvokeServer("Bones","Buy",1,1)until _G.AutoHytHallow == false or GetBP("Hallow Essence")
          else
            repeat wait(.1) _tp(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))until _G.AutoHytHallow == false or (plr.Character.HumanoidRootPart.CFrame == CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
		    EquipWeapon("Hallow Essence")
          end
        end
      end)
    end
  end
end)

Tyrant = Tabs.Stack:AddToggle("Tyrant", {
    Title = "Tyrant of the Skies",
    Description = "",
    Default = false
})

Tyrant:OnChanged(function(Value)
    _G.FarmTyrant = Value
end)

spawn(function()
    while wait(Sec) do
        if _G.FarmTyrant then
            pcall(function()
                local player = plr or game.Players.LocalPlayer
                if not (player and player.Character) then return end
                local hrp = player.Character:FindFirstChild("HumanoidRootPart")
                if not hrp then return end

                local enemiesFolder = workspace:FindFirstChild("Enemies")
                local bossPos = Vector3.new(-16268.287, 152.616, 1390.773)
                if (hrp.Position - bossPos).Magnitude > 5 then
                    if _tp then pcall(_tp, CFrame.new(bossPos))
                    elseif Tween then pcall(Tween, CFrame.new(bossPos))
                    elseif notween then pcall(notween, CFrame.new(bossPos))
                    else pcall(function() player.Character.HumanoidRootPart.CFrame = CFrame.new(bossPos) end)
                    end
                    repeat wait() until not _G.FarmTyrant or (player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - bossPos).Magnitude <= 5)
                end

                local boss = enemiesFolder and enemiesFolder:FindFirstChild("Tyrant of the Skies")
                if boss and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0 then
                    repeat
                        if not _G.FarmTyrant then break end
                        if AutoHaki then pcall(AutoHaki) end
                        if SelectWeapon and EquipTool then pcall(EquipTool, SelectWeapon) end
                        if Attack and Attack.Kill then
                            pcall(function() Attack.Kill(boss, _G.FarmTyrant) end)
                        elseif AttackNoCoolDown then
                            pcall(AttackNoCoolDown)
                        end
                        wait()
                    until not _G.FarmTyrant or not boss.Parent or not boss:FindFirstChild("Humanoid") or boss.Humanoid.Health <= 0
                    return
                end

                local mobList = {"Serpent Hunter","Skull Slayer","Isle Champion","Sun-kissed Warrior"}
                if enemiesFolder then
                    for _, mobName in ipairs(mobList) do
                        if not _G.FarmTyrant then break end
                        for _, mob in ipairs(enemiesFolder:GetChildren()) do
                            if not _G.FarmTyrant then break end
                            if mob and mob.Name == mobName and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                                hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                                if not hrp then break end
                                if (hrp.Position - mob.HumanoidRootPart.Position).Magnitude > 5000 then
                                    if _tp then pcall(_tp, mob.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    elseif Tween then pcall(Tween, mob.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    elseif notween then pcall(notween, mob.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    else pcall(function() player.Character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(0,30,0) end)
                                    end
                                    local t0 = tick()
                                    repeat wait() hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart") until not _G.FarmTyrant or not hrp or (hrp.Position - mob.HumanoidRootPart.Position).Magnitude <= 6 or tick() - t0 > 8
                                end
                                repeat
                                    if not _G.FarmTyrant then break end
                                    if AutoHaki then pcall(AutoHaki) end
                                    if SelectWeapon and EquipTool then pcall(EquipTool, SelectWeapon) end
                                    if Attack and Attack.Kill then
                                        pcall(function() Attack.Kill(mob, _G.FarmTyrant) end)
                                    elseif AttackNoCoolDown then
                                        pcall(AttackNoCoolDown)
                                    end
                                    wait()
                                until not _G.FarmTyrant or not mob.Parent or not mob:FindFirstChild("Humanoid") or mob.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    for _, mobName in ipairs(mobList) do
                        if not _G.FarmTyrant then break end
                        for _, mob in ipairs(workspace:GetChildren()) do
                            if not _G.FarmTyrant then break end
                            if mob and mob.Name == mobName and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                                if _tp then pcall(_tp, mob.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                else pcall(function() player.Character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(0,30,0) end)
                                end
                                repeat wait() until not _G.FarmTyrant or (player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).Magnitude <= 6)
                                repeat
                                    if not _G.FarmTyrant then break end
                                    if Attack and Attack.Kill then
                                        pcall(function() Attack.Kill(mob, _G.FarmTyrant) end)
                                    elseif AttackNoCoolDown then
                                        pcall(AttackNoCoolDown)
                                    end
                                    wait()
                                until not _G.FarmTyrant or not mob.Parent or mob.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Tabs.Stack:AddSection("Event Raid")

PirateRaid = Tabs.Stack:AddToggle("PirateRaid", {
    Title = "Pirate Raid",
    Description = "",
    Default = false
})

PirateRaid:OnChanged(function(Value)
    _G.AutoRaidCastle = Value
end)

spawn(function()
  while wait(Sec) do
    if _G.AutoRaidCastle then
      pcall(function()
      local CFrameCastleRaid = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
        if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - Root.Position).Magnitude <= 500 then
          for i,v in pairs(workspace.Enemies:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
              if v.Name then
                if (v.HumanoidRootPart.Position - Root.Position).Magnitude <= 2000 then
                  repeat wait() Attack.Kill(v,_G.AutoRaidCastle) until not _G.AutoRaidCastle or not v.Parent or v.Humanoid.Health <= 0 or not workspace.Enemies:FindFirstChild(v.Name)
                end
              end
            end
          end
        else
          local Castle_Mob = {"Galley Pirate","Galley Captain","Raider","Mercenary","Vampire","Zombie","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"}
          for i = 1,#Castle_Mob do
            if replicated:FindFirstChild(Castle_Mob[i]) then
              for _,v in pairs(replicated:GetChildren()) do
                if table.find(Castle_Mob, v.Name) then _tp(CFrameCastleRaid) end
              end
            end
          end
        end
      end)
    end
  end
end)

FactoryRaid = Tabs.Stack:AddToggle("FactoryRaid", {
    Title = "Factory Raid",
    Description = "",
    Default = false
})

PirateRaid:OnChanged(function(Value)
    _G.AutoFactory = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.AutoFactory then
        local v = GetConnectionEnemies("Core")
        if v then
          repeat wait()
            EquipWeapon(_G.SelectWeapon)
            _tp(CFrame.new(448.46756, 199.356781, -441.389252))
          until v.Humanoid.Health <= 0 or _G.AutoFactory == false
        else
          _tp(CFrame.new(448.46756, 199.356781, -441.389252))
        end
      end
    end)
  end
end)

Tabs.Stack:AddSection("Observation")

ObservationFarm = Tabs.Stack:AddToggle("ObservationFarm", {
    Title = "Observation Farming",
    Description = "",
    Default = false
})

ObservationFarm:OnChanged(function(Value)
    _G.obsFarm = Value
end)

spawn(function()
  while wait(.2) do
    pcall(function()
      if _G.obsFarm then        
        replicated.Remotes.CommE:FireServer("Ken",true)
        if plr:GetAttribute("KenDodgesLeft") == 0 then
          KenTest = false
        elseif plr:GetAttribute("KenDodgesLeft") > 0 then
          replicated.Remotes.CommE:FireServer("Ken",true)
          KenTest = true
        end        
      end
    end)
  end
end)    
spawn(function()      
  while wait(.2) do
    pcall(function()
      if _G.obsFarm then
        if World1 then
          if workspace.Enemies:FindFirstChild("Galley Captain") then
            if KenTest then
              repeat wait()
                plr.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
              until _G.obsFarm == false or KenTest == false
            else
              repeat wait()
                plr.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
              until _G.obsFarm == false or KenTest
            end
          else
            _tp(CFrame.new(5533.29785, 88.1079102, 4852.3916))
          end
        elseif World2 then
          if workspace.Enemies:FindFirstChild("Lava Pirate") then
            if KenTest then
              repeat wait()
                plr.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
              until _G.obsFarm == false or KenTest == false
            else
              repeat wait()
                plr.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
              until _G.obsFarm == false or KenTest
            end
          else
            _tp(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
          end
        elseif World3 then
          if workspace.Enemies:FindFirstChild("Venomous Assailant") then
            if KenTest then
              repeat wait()
                _tp(workspace.Enemies:FindFirstChild("Venomous Assailant").HumanoidRootPart.CFrame * CFrame.new(3,0,0))
              until _G.obsFarm == false or KenTest == false
            else
              repeat wait()
                _tp(workspace.Enemies:FindFirstChild("Venomous Assailant").HumanoidRootPart.CFrame * CFrame.new(0,50,0))
              until _G.obsFarm == false or KenTest
            end
          else
            _tp(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
          end
        end        
      end
    end)
  end
end)

Tabs.Stack:AddSection("Chest Farming")

ChestFarm = Tabs.Stack:AddToggle("ChestFarm", {
    Title = "Chest Farming",
    Description = "",
    Default = false
})

ChestFarm:OnChanged(function(Value)
    _G.AutoFarmChest = Value
end)

spawn(function()
  while wait(Sec) do
    if _G.AutoFarmChest then
      pcall(function()
        local CollectionService = game:GetService("CollectionService")
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Character = Player.Character or Player.CharacterAdded:Wait()                
        if not Character then return end                
        local Position = Character:GetPivot().Position
        local Chests = CollectionService:GetTagged("_ChestTagged")      
        local Distance, Nearest = math.huge, nil  
        for i = 1, #Chests do
          local Chest = Chests[i]
          local Magnitude = (Chest:GetPivot().Position - Position).Magnitude        
          if not SelectedIsland or Chest:IsDescendantOf(SelectedIsland) then
            if not Chest:GetAttribute("IsDisabled") and Magnitude < Distance then
              Distance = Magnitude
              Nearest = Chest
            end
          end
        end
      if Nearest then _tp(Nearest:GetPivot()) end
      end)
    end
  end
end)

ChestMirageFarm = Tabs.Stack:AddToggle("ChestMirageFarm", {
    Title = "Chest Mirage Farming",
    Description = "",
    Default = false
})

ChestMirageFarm:OnChanged(function(Value)
    _G.FarmChestM = Value
end)

spawn(function()
  while wait(.2) do
    if _G.FarmChestM then
      pcall(function()
        if workspace.Map.MysticIsland.Chests:FindFirstChild("DiamondChest") or workspace.Map.MysticIsland.Chests:FindFirstChild("FragChest") then
          local CollectionService = game:GetService("CollectionService")
          local Players = game:GetService("Players")
          local Player = Players.LocalPlayer
          local Character = Player.Character or Player.CharacterAdded:Wait()                
          if not Character then return end                
          local Position = Character:GetPivot().Position
          local Chests = CollectionService:GetTagged("_ChestTagged")      
          local Distance, Nearest = math.huge, nil  
          for i = 1, #Chests do
            local Chest = Chests[i]
            local Magnitude = (Chest:GetPivot().Position - Position).Magnitude        
            if not SelectedIsland or Chest:IsDescendantOf(SelectedIsland) then
              if not Chest:GetAttribute("IsDisabled") and Magnitude < Distance then
                Distance = Magnitude
                Nearest = Chest
              end
            end
          end
        if Nearest then _tp(Nearest:GetPivot()) end
        end
      end)
    end
  end
end)

Tabs.Stack:AddSection("Fish Farming")

-- Variables
local SelectedRod = "Fishing Rod"
local SelectedBait = "Basic Bait"
local AutoBuyBait = false
local AutoFishing = false
local AutoFishingQuest = false
local AutoQuestComplete = false
local AutoSellFish = false
local AutoSkillZ = false

Rod = Tabs.Stack:CreateDropdown("Rod", {
    Title = "Select Rod",
    Values = {
        "Fishing Rod",
        "Gold Rod", 
        "Shark Rod",
        "Shell Rod",
        "Treasure Rod"
    },
    Multi = false,
    Default = 1,
})

Rod:OnChanged(function(value)  -- Sửa từ Dropdown thành Rod
    SelectedRod = value
    print("Selected Rod:", value)
end)

Bait = Tabs.Stack:CreateDropdown("Bait", {
    Title = "Select Bait",
    Values = {
        "Basic Bait",
        "Kelp Bait",
        "Good Bait",
        "Abyssal Bait", 
        "Frozen Bait",
        "Epic Bait",
        "Carnivore Bait"
    },
    Multi = false,
    Default = 1,
})

Bait:OnChanged(function(value)
    SelectedBait = value
    print("Selected Bait:", value)
    
    if AutoBuyBait then
        pcall(function()
            RFCraft:InvokeServer("Craft", SelectedBait, {})
        end)
    end
end)

BaitBuy = Tabs.Stack:AddToggle("BaitBuy", {
    Title = "Buy Bait",
    Description = "",
    Default = false
})

BaitBuy:OnChanged(function(Value)
    AutoBuyBait = Value
    print("Auto Buy Bait:", Value)
    
    if Value then
        pcall(function()
            RFCraft:InvokeServer("Craft", SelectedBait, {})
        end)
    end
end)

-- Auto Buy Bait
task.spawn(function()
    while task.wait(2) do
        if AutoBuyBait and SelectedBait then
            pcall(function()
                RFCraft:InvokeServer("Craft", SelectedBait, {})
            end)
        end
    end
end)

QuestFishing = Tabs.Stack:AddToggle("QuestFishing", {
    Title = "Quest Fishing Farming",
    Description = "",
    Default = false
})

QuestFishing:OnChanged(function(Value)
    AutoFishingQuest = Value
    print("Auto Fishing Quest:", Value)
end)

-- Quest Check Function
local function HasQuest()
    local QuestGui = Player.PlayerGui:FindFirstChild("Quest") or Player.PlayerGui:FindFirstChild("QuestGui")
    if QuestGui and QuestGui:FindFirstChild("Container") and QuestGui.Container:FindFirstChild("QuestTitle") then
        return true
    end
    return false
end

-- Auto Fishing Quest Loop
task.spawn(function()
    while task.wait(1) do
        if AutoFishingQuest then
            pcall(function()
                if not HasQuest() then
                    JobsRemoteFunction:InvokeServer("FishingNPC", "Angler", "AskQuest")
                end
            end)
        end
    end
end)

FishingToggle = Tabs.Stack:AddToggle("FishingToggle", {  -- Đổi tên để tránh trùng
    Title = "Fishing Farming",
    Description = "",
    Default = false
})

FishingToggle:OnChanged(function(Value)
    AutoFishing = Value
    print("Auto Fishing:", Value)
end)

-- Auto Fishing Logic
task.spawn(function()
    local MaxLaunchDistance = FishingConfig.Rod.MaxLaunchDistance
    
    while task.wait(0.5) do
        if AutoFishing then
            pcall(function()
                local Character = Player.Character or Player.CharacterAdded:Wait()
                local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
                
                if not HumanoidRootPart then
                    return
                end
                
                local Tool = Character:FindFirstChildOfClass("Tool")
                
                -- Equip selected rod
                if SelectedRod and (not Tool or Tool.Name ~= SelectedRod) then
                    local RodInBackpack = Player.Backpack:FindFirstChild(SelectedRod)
                    if RodInBackpack then
                        Character.Humanoid:EquipTool(RodInBackpack)
                        Tool = RodInBackpack
                    end
                end
                
                if Tool then
                    local WaterHeight = GetWaterHeightAtLocation(HumanoidRootPart.Position)
                    local HitPart, HitPosition = Workspace:FindPartOnRayWithIgnoreList(
                        Ray.new(Character.Head.Position, HumanoidRootPart.CFrame.LookVector * MaxLaunchDistance),
                        {Character, Workspace.Characters, Workspace.Enemies}
                    )
                    
                    local TargetPosition = HitPosition and Vector3.new(
                        HitPosition.X, 
                        math.max(HitPosition.Y, WaterHeight), 
                        HitPosition.Z
                    )
                    
                    local ClientState = Tool:GetAttribute("State")
                    local ServerState = Tool:GetAttribute("ServerState")
                    
                    if TargetPosition and (ClientState == "ReeledIn" or ServerState == "ReeledIn") then
                        FishingRequest:InvokeServer("StartCasting")
                        task.wait()
                        FishingRequest:InvokeServer("CastLineAtLocation", TargetPosition, 100, true)
                    elseif ServerState == "Biting" then
                        FishingRequest:InvokeServer("Catching", true)
                        task.wait(0.1)
                        FishingRequest:InvokeServer("Catch", 1)
                    end
                end
            end)
        end
    end
end)

DoneQuestFish = Tabs.Stack:AddToggle("DoneQuestFish", {
    Title = "Quest Complete",
    Description = "",
    Default = false
})

DoneQuestFish:OnChanged(function(Value)
    AutoQuestComplete = Value
    print("Auto Quest Complete:", Value)
    
    if Value then
        pcall(function()
            JobsRemoteFunction:InvokeServer("FishingNPC", "FinishQuest")
        end)
    end
end)

-- Auto Complete Quest Loop
task.spawn(function()
    while task.wait(5) do
        if AutoQuestComplete then
            pcall(function()
                JobsRemoteFunction:InvokeServer("FishingNPC", "FinishQuest")
            end)
        end
    end
end)

SpamSkillZ = Tabs.Stack:AddToggle("SpamSkillZ", {
    Title = "Spam Skill Z",
    Description = "",
    Default = false
})

SpamSkillZ:OnChanged(function(Value)
    AutoSkillZ = Value
    print("Auto Skill Z:", Value)
end)

-- Auto Skill Z Loop
task.spawn(function()
    while task.wait(0.5) do
        if AutoSkillZ then
            pcall(function()
                JobToolAbilities:InvokeServer("Z", true)
            end)
        end
    end
end)

SellFish = Tabs.Stack:AddToggle("SellFish", {  -- Đổi tên từ Fishing thành SellFish
    Title = "Sell Fishing",
    Description = "",
    Default = false
})

SellFish:OnChanged(function(Value)
    AutoSellFish = Value
    print("Auto Sell Fish:", Value)
    
    if Value then
        pcall(function()
            JobsRemoteFunction:InvokeServer("FishingNPC", "SellFish")
        end)
    end
end)

-- Auto Sell Fish Loop
task.spawn(function()
    while task.wait(5) do
        if AutoSellFish then
            pcall(function()
                JobsRemoteFunction:InvokeServer("FishingNPC", "SellFish")
            end)
        end
    end
end)

-- Biến global cho các hop
_G.ChestHOP = false
_G.RipHOP = false
_G.DoughKingHOP = false
_G.FarmTyrantHOP = false
_G.SoulReaperHOP = false
_G.FarmEliteHunterHOP = false
_G.DarkbeardHOP = false
_G.AutoFarmChest = false
_G.Auto_Def_DarkCoat = false
_G.FarmEliteHunt = false

-- Chest Hop Section
Tabs.Server:CreateSection("Chest Hop")

ChestToggle = Tabs.Server:CreateToggle("ChestFarmingHop", {
    Title = "Chest Farming Hop",
    Description = "",
    Default = false
})

ChestToggle:OnChanged(function(Value)
    _G.ChestHOP = Value
end)

spawn(function()
    while wait(1) do
        if _G.ChestHOP then
            pcall(function()
                local CollectionService = game:GetService("CollectionService")
                local Players = game:GetService("Players")
                local Player = Players.LocalPlayer
                local Character = Player.Character or Player.CharacterAdded:Wait()                
                if not Character then return end                
                local Position = Character:GetPivot().Position
                local Chests = CollectionService:GetTagged("_ChestTagged")      
                local Distance, Nearest = math.huge, nil  
                
                for i = 1, #Chests do
                    local Chest = Chests[i]
                    local Magnitude = (Chest:GetPivot().Position - Position).Magnitude        
                    if not SelectedIsland or Chest:IsDescendantOf(SelectedIsland) then
                        if not Chest:GetAttribute("IsDisabled") and Magnitude < Distance then
                            Distance = Magnitude
                            Nearest = Chest
                        end
                    end
                end
                
                -- Nếu tìm thấy chest
                if Nearest then 
                    if _tp then
                        _tp(Nearest:GetPivot())
                    end
                else
                    -- Nếu không tìm thấy chest nào, kiểm tra và hop server
                    if #Chests == 0 or not Nearest then
                        local waitTime = 0
                        local maxWaitTime = 3
                        
                        while waitTime < maxWaitTime do
                            Chests = CollectionService:GetTagged("_ChestTagged")
                            if #Chests > 0 then
                                break
                            end
                            wait(1)
                            waitTime = waitTime + 1
                        end
                        
                        if #Chests == 0 then
                            HopServer()
                            wait(5)
                        end
                    end
                end
            end)
        end
    end
end)

-- Boss Hop Section
Tabs.Server:CreateSection("Boss Hop")

-- Rip Indra Farm
RipToggle = Tabs.Server:CreateToggle("RipIndraFarm", {
    Title = "Rip Indra Farm",
    Description = "Auto server hop if no boss",
    Default = false
})

RipToggle:OnChanged(function(Value)
    _G.RipHOP = Value
end)

spawn(function()
    local hopDelay = 30
    local lastHopTime = 0
    
    while wait(1) do
        pcall(function()
            if _G.RipHOP then
                if tick() - lastHopTime > hopDelay then
                    local v = GetConnectionEnemies and GetConnectionEnemies("rip_indra")
                    
                    if v then
                        lastHopTime = tick()
                        repeat 
                            wait() 
                            if Attack and Attack.Kill then
                                Attack.Kill(v, _G.RipHOP)
                            end
                        until not _G.RipHOP or not v.Parent or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0
                    else
                        if (GetWP and not GetWP("Dark Dagger")) or (GetIn and not GetIn("Valkyrie")) then
                            if replicated and replicated.Remotes.CommF_ then
                                replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-08, 0.914313197, -1.90943332e-08, 1, 3.8755779e-08, -0.914313197, -1.76180437e-09, -0.405007899))
                            end
                            wait(.1)
                            if _tp then
                                _tp(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                            end
                            wait(5)
                        end
                        
                        if GetConnectionEnemies and not GetConnectionEnemies("rip_indra") then
                            ShowNotification("No Rip Indra found, hopping server...")
                            HopServer()
                            lastHopTime = tick()
                            wait(10)
                        end
                    end
                end
            end
        end)
    end
end)

-- Dough King Farm
DoughToggle = Tabs.Server:CreateToggle("DoughKingFarm", {
    Title = "Dough King Farm",
    Description = "Auto server hop if no boss",
    Default = false
})

DoughToggle:OnChanged(function(Value)
    _G.DoughKingHOP = Value
end)

spawn(function()
    local hopDelay = 30
    local lastHopTime = 0
    
    while wait(1) do
        if _G.DoughKingHOP then
            pcall(function()
                if tick() - lastHopTime > hopDelay then
                    local v = GetConnectionEnemies and GetConnectionEnemies("Dough King")
                    
                    if v then
                        lastHopTime = tick()
                        repeat 
                            wait() 
                            if Attack and Attack.Kill then
                                Attack.Kill(v, _G.DoughKingHOP)
                            end
                        until not _G.DoughKingHOP or not v.Parent or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0
                    else
                        if _tp then
                            _tp(CFrame.new(-1943.676513671875, 251.5095672607422, -12337.880859375))
                        end
                        wait(5)
                        
                        if GetConnectionEnemies and not GetConnectionEnemies("Dough King") then
                            ShowNotification("No Dough King found, hopping server...")
                            HopServer()
                            lastHopTime = tick()
                            wait(10)
                        end
                    end
                end
            end)
        end
    end
end)

-- Tyrant Farm
TyrantToggle = Tabs.Server:CreateToggle("TyrantFarm", {
    Title = "Tyrant Farm",
    Description = "Auto server hop if no boss",
    Default = false
})

TyrantToggle:OnChanged(function(Value)
    _G.FarmTyrantHOP = Value
end)

spawn(function()
    local hopDelay = 45
    local lastHopTime = 0
    
    while wait(1) do
        if _G.FarmTyrantHOP then
            pcall(function()
                if tick() - lastHopTime > hopDelay then
                    local player = game.Players.LocalPlayer
                    if not (player and player.Character) then return end
                    
                    local hrp = player.Character:FindFirstChild("HumanoidRootPart")
                    if not hrp then return end

                    local enemiesFolder = workspace:FindFirstChild("Enemies")
                    local bossPos = Vector3.new(-16268.287, 152.616, 1390.773)
                    
                    if (hrp.Position - bossPos).Magnitude > 5 then
                        if _tp then 
                            pcall(_tp, CFrame.new(bossPos))
                        else
                            pcall(function() 
                                player.Character.HumanoidRootPart.CFrame = CFrame.new(bossPos) 
                            end)
                        end
                        wait(5)
                    end

                    local boss = enemiesFolder and enemiesFolder:FindFirstChild("Tyrant of the Skies")
                    
                    if boss and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0 then
                        lastHopTime = tick()
                        repeat
                            if not _G.FarmTyrantHOP then break end
                            if AutoHaki then pcall(AutoHaki) end
                            if SelectWeapon and EquipTool then pcall(EquipTool, SelectWeapon) end
                            if Attack and Attack.Kill then
                                pcall(function() Attack.Kill(boss, _G.FarmTyrantHOP) end)
                            elseif AttackNoCoolDown then
                                pcall(AttackNoCoolDown)
                            end
                            wait()
                        until not _G.FarmTyrantHOP or not boss.Parent or not boss:FindFirstChild("Humanoid") or boss.Humanoid.Health <= 0
                        return
                    end

                    local mobList = {"Serpent Hunter","Skull Slayer","Isle Champion","Sun-kissed Warrior"}
                    local foundMob = false
                    
                    if enemiesFolder then
                        for _, mobName in ipairs(mobList) do
                            if not _G.FarmTyrantHOP then break end
                            for _, mob in ipairs(enemiesFolder:GetChildren()) do
                                if not _G.FarmTyrantHOP then break end
                                if mob and mob.Name == mobName and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                                    foundMob = true
                                    lastHopTime = tick()
                                    
                                    hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                                    if not hrp then break end
                                    
                                    if (hrp.Position - mob.HumanoidRootPart.Position).Magnitude > 5000 then
                                        if _tp then 
                                            pcall(_tp, mob.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        else
                                            pcall(function() 
                                                player.Character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(0,30,0) 
                                            end)
                                        end
                                        wait(5)
                                    end
                                    
                                    repeat
                                        if not _G.FarmTyrantHOP then break end
                                        if AutoHaki then pcall(AutoHaki) end
                                        if SelectWeapon and EquipTool then pcall(EquipTool, SelectWeapon) end
                                        if Attack and Attack.Kill then
                                            pcall(function() Attack.Kill(mob, _G.FarmTyrantHOP) end)
                                        elseif AttackNoCoolDown then
                                            pcall(AttackNoCoolDown)
                                        end
                                        wait()
                                    until not _G.FarmTyrantHOP or not mob.Parent or not mob:FindFirstChild("Humanoid") or mob.Humanoid.Health <= 0
                                end
                            end
                        end
                    end

                    if not foundMob and not boss then
                        ShowNotification("No Tyrant or mobs found, hopping server...")
                        HopServer()
                        lastHopTime = tick()
                        wait(10)
                    end
                end
            end)
        end
    end
end)

-- Soul Reaper Farm
SoulToggle = Tabs.Server:CreateToggle("SoulReaperFarm", {
    Title = "Soul Reaper Farm",
    Description = "Auto server hop if no boss",
    Default = false
})

SoulToggle:OnChanged(function(Value)
    _G.SoulReaperHOP = Value
end)

spawn(function()
    local hopDelay = 30
    local lastHopTime = 0
    
    while wait(1) do
        if _G.SoulReaperHOP then
            pcall(function()
                if tick() - lastHopTime > hopDelay then
                    local v = GetConnectionEnemies and GetConnectionEnemies("Soul Reaper")
                    
                    if v then
                        lastHopTime = tick()
                        repeat 
                            task.wait() 
                            if Attack and Attack.Kill then
                                Attack.Kill(v, _G.SoulReaperHOP)
                            end
                        until not _G.SoulReaperHOP or not v.Parent or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0
                    else
                        if GetBP and not GetBP("Hallow Essence") then
                            repeat 
                                task.wait(.1)
                                if replicated and replicated.Remotes.CommF_ then
                                    replicated.Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                                end
                            until _G.SoulReaperHOP == false or (GetBP and GetBP("Hallow Essence"))
                        else
                            repeat 
                                wait(.1) 
                                if _tp then
                                    _tp(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                                end
                            until _G.SoulReaperHOP == false
                            
                            if EquipWeapon then
                                EquipWeapon("Hallow Essence")
                            end
                            wait(5)
                            
                            if GetConnectionEnemies and not GetConnectionEnemies("Soul Reaper") then
                                ShowNotification("No Soul Reaper spawned, hopping server...")
                                HopServer()
                                lastHopTime = tick()
                                wait(10)
                            end
                        end
                    end
                end
            end)
        end
    end
end)

-- Elite Hunter Farm
EliteToggle = Tabs.Server:CreateToggle("EliteHunterFarming", {
    Title = "ELite Hunter Farming",
    Description = "Auto server hop if no elite",
    Default = false
})

EliteToggle:OnChanged(function(Value)
    _G.FarmEliteHunterHOP = Value
    _G.FarmEliteHunt = Value
end)

spawn(function()
    local hopDelay = 40
    local lastHopTime = 0
    local plr = game.Players.LocalPlayer
    
    while wait(1) do
        pcall(function()
            if _G.FarmEliteHunterHOP then
                if tick() - lastHopTime > hopDelay then
                    if plr.PlayerGui and plr.PlayerGui.Main and plr.PlayerGui.Main.Quest and plr.PlayerGui.Main.Quest.Visible == true then
                        if plr.PlayerGui.Main.Quest.Container and plr.PlayerGui.Main.Quest.Container.QuestTitle and plr.PlayerGui.Main.Quest.Container.QuestTitle.Title then
                            local questText = plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                            if string.find(questText, "Diablo") or string.find(questText, "Urban") or string.find(questText, "Deandre") then
                                
                                local foundElite = false
                                
                                if replicated then
                                    for i,v in pairs(replicated:GetChildren()) do
                                        if string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre") then
                                            if _tp then
                                                _tp(v.HumanoidRootPart.CFrame)
                                            end
                                            foundElite = true
                                            break
                                        end
                                    end
                                end
                                
                                if not foundElite then
                                    local Enemies = workspace:FindFirstChild("Enemies")
                                    if Enemies then
                                        for i,v in pairs(Enemies:GetChildren()) do
                                            if (string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre")) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                foundElite = true
                                                lastHopTime = tick()
                                                repeat 
                                                    wait() 
                                                    if Attack and Attack.Kill then
                                                        Attack.Kill(v, _G.FarmEliteHunterHOP)
                                                    end
                                                until not _G.FarmEliteHunterHOP or not v.Parent or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <=0
                                                break
                                            end
                                        end
                                    end
                                end
                                
                                if not foundElite then
                                    ShowNotification("No Elite found, hopping server...")
                                    HopServer()
                                    lastHopTime = tick()
                                    wait(10)
                                end
                            else
                                if replicated and replicated.Remotes.CommF_ then
                                    replicated.Remotes.CommF_:InvokeServer("EliteHunter")
                                end
                                wait(2)
                            end
                        end
                    else
                        if replicated and replicated.Remotes.CommF_ then
                            replicated.Remotes.CommF_:InvokeServer("EliteHunter")
                        end
                        wait(2)
                    end
                end
            end
        end)
    end
end)

-- Darkbeard Farm
DarkbeardToggle = Tabs.Server:CreateToggle("DarkbeardFarming", {
    Title = "Darkbeard Farming",
    Description = "Auto server hop if no boss",
    Default = false
})

DarkbeardToggle:OnChanged(function(Value)
    _G.DarkbeardHOP = Value
end)

spawn(function()
    while wait(.1) do
        if _G.DarkbeardHOP then
            pcall(function()
                if GetBP and GetBP("Fist of Darkness") then
                    return
                end
                
                if workspace.Enemies:FindFirstChild("Darkbeard") then
                    local v = workspace.Enemies:FindFirstChild("Darkbeard")
                    if v and v:FindFirstChild("Humanoid") then
                        repeat
                            wait()
                            if Attack and Attack.Kill then
                                Attack.Kill(v, _G.DarkbeardHOP)
                            end
                        until _G.DarkbeardHOP == false or not v.Parent or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0
                    end
                else
                    local waitTime = 0
                    local maxWaitTime = 5
                    
                    while waitTime < maxWaitTime do
                        if workspace.Enemies:FindFirstChild("Darkbeard") then
                            break
                        end
                        wait(1)
                        waitTime = waitTime + 1
                    end
                    
                    if not workspace.Enemies:FindFirstChild("Darkbeard") then
                        ShowNotification("No Darkbeard found, hopping server...")
                        HopServer()
                    end
                end
            end)
        end
    end
end)

-- Server Hop Section
Tabs.Server:CreateSection("Server Hop")

Tabs.Server:CreateButton({
    Title = "Hop Normal Server",
    Description = "",
    Callback = function()
        ShowNotification("Hop Server in " .. HopDelay .. " seconds")
        task.wait(HopDelay)
        HopServer()
    end
})

Tabs.Server:CreateButton({
    Title = "Hop Less Server",
    Description = "",
    Callback = function()
        ShowNotification("Hop Less Server in " .. HopDelay .. " seconds")
        task.wait(HopDelay)
        
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Api = "https://games.roblox.com/v1/games/"
        local _place = game.PlaceId
        local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
        local plr = game.Players.LocalPlayer

        local function ListServers(cursor)
            local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
            return Http:JSONDecode(Raw)
        end

        local Server, Next
        repeat
            local Servers = ListServers(Next)
            Server = Servers.data[1]
            Next = Servers.nextPageCursor
        until Server

        TPS:TeleportToPlaceInstance(_place, Server.id, plr)
    end
})

Tabs.Server:CreateButton({
    Title = "Hop Ping Server",
    Description = "",
    Callback = function()
        ShowNotification("Hop Ping Server in " .. HopDelay .. " seconds")
        task.wait(HopDelay)
        
        local HTTPService = game:GetService("HttpService")
        local TeleportService = game:GetService("TeleportService")
        local StatsService = game:GetService("Stats")
        local function fetchServersData(placeId, limit)
            local url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?limit=%d", placeId, limit)
            local success, response = pcall(function()
                return HTTPService:JSONDecode(game:HttpGet(url))
            end)
            if success and response and response.data then
                return response.data
            end
            return nil
        end
        
        local placeId = game.PlaceId
        local serverLimit = 100
        local servers = fetchServersData(placeId, serverLimit)
        if not servers then 
            ShowNotification("Failed to fetch servers")
            return
        end
        
        local lowestPingServer = servers[1]
        for _, server in pairs(servers) do
            if server["ping"] < lowestPingServer["ping"] and server.maxPlayers > server.playing then
                lowestPingServer = server
            end
        end
        
        local commonLoadTime = 0.5
        task.wait(commonLoadTime)
        
        local pingThreshold = 100
        local serverStats = StatsService.Network.ServerStatsItem
        local dataPing = serverStats["Data Ping"]:GetValueString()
        local pingValue = tonumber(dataPing:match("(%d+)"))
        
        if pingValue and pingValue >= pingThreshold then
            TeleportService:TeleportToPlaceInstance(placeId, lowestPingServer.id)
        else
            ShowNotification("Ping is good, no need to hop")
        end
    end
})

-- Job Hop Section
Tabs.Server:CreateSection("Job Hop")

JobInput = Tabs.Server:CreateInput("JobInput", {
    Title = "Input Job Server",
    Description = "",
    Default = "",
    Placeholder = "Enter Job ID...",
    Callback = function(Value)
        _G.JobId = Value
    end
})

spawn(function()
    local plr = game.Players.LocalPlayer
    while wait(1) do
        if _G.JobId then
            pcall(function()
                local Connection
                Connection = plr.OnTeleport:Connect(function(br)
                    if br == Enum.TeleportState.Failed then
                        Connection:Disconnect()
                        if workspace:FindFirstChild("Message") then workspace.Message:Destroy() end
                    end
                end)
            end)
        end
    end
end)

Tabs.Server:CreateButton({
    Title = "Hop Job Server",
    Description = "",
    Callback = function()
        if _G.JobId and _G.JobId ~= "" then
            if replicated and replicated['__ServerBrowser'] then
                ShowNotification("Joining Job Server...")
                replicated['__ServerBrowser']:InvokeServer("teleport", _G.JobId)
            else
                ShowNotification("ServerBrowser not found", "The required service is not available")
            end
        else
            ShowNotification("Please enter Job ID first", "Input the Job ID in the text box above")
        end
    end
})

Tabs.Server:CreateButton({
    Title = "Copy Job Server",
    Description = "",
    Callback = function()
        if game.JobId then
            setclipboard(tostring(game.JobId))
            ShowNotification("Job ID copied to clipboard", game.JobId)
        else
            ShowNotification("Job ID not available", "Try again later")
        end
    end
})

if World1 then

Saber = Tabs.Items:CreateToggle("Saber", {
    Title = "Saber Sword Farming",
    Description = "",
    Default = false
})

Saber:OnChanged(function(Value)
    _G.AutoSaber = Value
end)

spawn(function()
  while wait(.2) do
    pcall(function()
      if _G.AutoSaber and plr.Data.Level.Value >= 200 and not plr.Backpack:FindFirstChild("Saber") and not plr.Character:FindFirstChild("Saber") then
        if workspace.Map.Jungle.Final.Part.Transparency == 0 then
	      if workspace.Map.Jungle.QuestPlates.Door.Transparency == 0 then
		    if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 100 then
		      _tp(plr.Character.HumanoidRootPart.CFrame)
		      wait(0.5)
		      plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate1.Button.CFrame
		      wait(0.5)
		      plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate2.Button.CFrame
		      wait(0.5)
		      plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate3.Button.CFrame
	    	  wait(0.5)
		      plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate4.Button.CFrame
		      wait(0.5)
		      plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate5.Button.CFrame
		      wait(0.5) 
		    else
		      _tp(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
		    end
	      else
		    if workspace.Map.Desert.Burn.Part.Transparency == 0 then
		      if plr.Backpack:FindFirstChild("Torch") or plr.Character:FindFirstChild("Torch") then
		        EquipWeapon("Torch")
		        firetouchinterest(plr.Character.Torch.Handle,workspace.Map.Desert.Burn.Fire,0)
			    firetouchinterest(plr.Character.Torch.Handle,workspace.Map.Desert.Burn.Fire,1)
		   	    _tp(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
		      else
		        _tp(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))                    end
		      else
		        if replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
		          replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
			      wait(0.5)
			      EquipWeapon("Cup")
			      wait(0.5)
			      replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",plr.Character.Cup)
			      wait(Sec)
			      replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
		        else
		 	      if replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
			        replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
		          elseif replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
			        if workspace.Enemies:FindFirstChild("Mob Leader") or replicated:FindFirstChild("Mob Leader") then
			          _tp(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))
			         for i,v in pairs(workspace.Enemies:GetChildren()) do
				       if v.Name == "Mob Leader" and Attack.Alive(v) then
				       repeat task.wait() Attack.Kill(v, _G.AutoSaber)until v.Humanoid.Health <= 0 or _G.AutoSaber == false
				       end
				     end
			       end
			     elseif replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
			       replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
				   EquipWeapon("Relic")
				  _tp(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
				 end
			   end
			 end
		   end
		 else
	     if workspace.Enemies:FindFirstChild("Saber Expert") or replicated:FindFirstChild("Saber Expert") then
	       for _,v in pairs(workspace.Enemies:GetChildren()) do
		     if v.Name == "Saber Expert" and Attack.Alive(v) then
			   repeat task.wait() Attack.Kill(v, _G.AutoSaber) until v.Humanoid.Health <= 0 or _G.AutoSaber == false
		       if v.Humanoid.Health <= 0 then replicated.Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic") end		      
		      end
		    end
		  else
		    _tp(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-08, 0.513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08, 0.85820812))
	      end
	    end
      end
    end)
  end
end)

WorldNew = Tabs.Items:CreateToggle("WorldNew", {
    Title = "Get Sea2 Farming",
    Description = "",
    Default = false
})

WorldNew:OnChanged(function(Value)
    _G.TravelDres = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.TravelDres then
        if plr.Data.Level.Value >= 700 then
          if workspace.Map.Ice.Door.CanCollide == true and workspace.Map.Ice.Door.Transparency == 0 then
            replicated.Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
		    EquipWeapon("Key")
		    repeat wait() _tp(CFrame.new(1347.7124, 37.3751602, -1325.6488)) until not _G.TravelDres or (Root.Position == CFrame.new(1347.7124, 37.3751602, -1325.6488).Position)
	      elseif workspace.Map.Ice.Door.CanCollide == false and workspace.Map.Ice.Door.Transparency == 1 then
            if Enemies:FindFirstChild("Ice Admiral") then
              for _,xz in pairs(Enemies:GetChildren()) do
                if xz.Name == "Ice Admiral" and Attack.Alive(xz) then
              	  repeat task.wait() Attack.Kill(xz,_G.TravelDres) until _G.TravelDres == false or xz.Humanoid.Health <= 0
                  replicated.Remotes.CommF_:InvokeServer("TravelDressrosa")
                end
              end
            else
              _tp(CFrame.new(1347.7124, 37.3751602, -1325.6488))
            end
	      else
		    replicated.Remotes.CommF_:InvokeServer("TravelDressrosa")
	      end
        end
      end
    end)
  end
end)

Warden = Tabs.Items:CreateToggle("Warden", {
    Title = "Warden Sword Farming",
    Description = "",
    Default = false
})

Warden:OnChanged(function(Value)
    _G.WardenBoss = Value
end)

spawn(function()
  while wait(.1) do
    if _G.WardenBoss then
      pcall(function()
        local v = GetConnectionEnemies("Chief Warden")
        if v then repeat wait() Attack.Kill(v,_G.WardenBoss) until _G.WardenBoss == false or not v.Parent or v.Humanoid.Health <= 0 
        else _tp(CFrame.new(5206.92578,0.997753382,814.976746,0.342041343,-0.00062915677,0.939684749,0.00191645394,0.999998152,-2.80422337e-05,-0.939682961,0.00181045406,0.342041939))
        end
      end)
    end
  end
end)

SwanCoat = Tabs.Items:CreateToggle("SwanCoat", {
    Title = "Swan Coat Farming",
    Description = "",
    Default = false
})

SwanCoat:OnChanged(function(Value)
    _G.SwanCoat = Value
end)

spawn(function()
  while wait(.1) do
    if _G.SwanCoat then
      pcall(function()
        local v = GetConnectionEnemies("Swan")
        if v then repeat wait()Attack.Kill(v, _G.SwanCoat)until _G.SwanCoat == false or not v.Parent or v.Humanoid.Health <= 0
        else _tp(CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812))
        end
      end)
    end
  end
end)

MarinesCoat = Tabs.Items:CreateToggle("MarinesCoat", {
    Title = "Marines Coat Farming",
    Description = "",
    Default = false
})

MarinesCoat:OnChanged(function(Value)
    _G.MarinesCoat = Value
end)

spawn(function()
  while wait(.1) do
    if _G.MarinesCoat then
      pcall(function()
        local v = GetConnectionEnemies("Vice Admiral")
        if v then repeat wait() Attack.Kill(v, _G.MarinesCoat) until _G.MarinesCoat == false or not v.Parent or v.Humanoid.Health <= 0
        else _tp(CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375))
        end
      end)
    end
  end
end)

SawSword = Tabs.Items:CreateToggle("SawSword", {
    Title = "Marines Coat Farming",
    Description = "",
    Default = false
})

SawSword:OnChanged(function(Value)
    _G.AutoSaw = Value
end)

spawn(function()
  while wait(.2) do
    pcall(function()
      if _G.AutoSaw then
        local v = GetConnectionEnemies("The Saw")
        if v then repeat task.wait() Attack.Kill(v, _G.AutoSaw)until _G.AutoSaw == false or v.Humanoid.Health <= 0
        else _tp(CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906))
        end
      end
    end)
  end
end)

elseif World2 then

Rengoku = Tabs.Items:CreateToggle("Rengoku", {
    Title = "Rengoku Sword Farming",
    Description = "",
    Default = false
})

Rengoku:OnChanged(function(Value)
    _G.IceBossRen = Value
end)

spawn(function()
  pcall(function()
    while wait(.1) do
      if _G.IceBossRen then
        local v = GetConnectionEnemies("Awakened Ice Admiral")
        if v then repeat task.wait()Attack.Kill(v,_G.IceBossRen)until _G.IceBossRen == false or not v.Parent or v.Humanoid.Health <= 0
        else _tp(CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813))
        end
      end
    end
  end)
end)

Long = Tabs.Items:CreateToggle("Long", {
    Title = "Long Sword Farming",
    Description = "",
    Default = false
})

Long:OnChanged(function(Value)
    _G.LongsWord = Value
end)

spawn(function()
  while wait(.1) do
    pcall(function()
      if _G.LongsWord then
        local v = GetConnectionEnemies("Diamond")
        if v then repeat task.wait() Attack.Kill(v,_G.LongsWord)until _G.LongsWord == false or not v.Parent or v.Humanoid.Health <= 0
        else _tp(CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407))
        end
      end
    end)
  end
end)

WorldIDK = Tabs.Items:CreateToggle("WorldIDK", {
    Title = "Get Sea3 Farming",
    Description = "",
    Default = false
})

WorldIDK:OnChanged(function(Value)
    _G.AutoZou = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.AutoZou then
   	    if plr.Data.Level.Value >= 1500 then
          if replicated.Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
            if replicated.Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
              replicated.Remotes.CommF_:InvokeServer("F_","TravelZou")
              if replicated.Remotes.CommF_:InvokeServer("ZQuestProgress", "Check") == 0 then
                local v = GetConnectionEnemies("rip_indra")
                if v then
                  repeat wait() Attack.Kill(v,_G.AutoZou) until not _G.AutoZou or not v.Parent or v.Humanoid.Health <= 0
                  Check = 2
                  repeat wait()replicated.Remotes.CommF_:InvokeServer("F_","TravelZou")until Check == 1                   
                else
                  replicated.Remotes.CommF_:InvokeServer("F_","ZQuestProgress","Check") wait(.1)
                  replicated.Remotes.CommF_:InvokeServer("F_","ZQuestProgress","Begin")
                end
              elseif replicated.Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
                replicated.Remotes.CommF_:InvokeServer("F_","TravelZou")
              else
                local v = GetConnectionEnemies("Don Swan")
                if v then
                  repeat wait() Attack.Kill(v,_G.AutoZou)until not _G.AutoZou or not v.Parent or v.Humanoid.Health<=0                  
                else
                  repeat wait() _tp(CFrame.new(2288.802, 15.1870775, 863.034607)) until not _G.AutoZou or (Root.Position == CFrame.new(2288.802, 15.1870775, 863.034607).Position)
                  if (Root.CFrame == CFrame.new(2288.802, 15.1870775, 863.034607)) then notween(CFrame.new(2288.802, 15.1870775, 863.034607)) end
                end
              end
            else
            if replicated.Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
              TabelDevilFruitStore = {}
              TabelDevilFruitOpen = {}
              for i,v in pairs(replicated.Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
                for i1,v1 in pairs(v) do
                  if i1 == "Name" then table.insert(TabelDevilFruitStore,v1)end
                end
              end
              for i,v in next, game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
                if v.Price >= 1000000 then table.insert(TabelDevilFruitOpen,v.Name) end
              end
              for i,DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
                for i1,DevilFruitStore in pairs(TabelDevilFruitStore) do
                  if DevilFruitOpenDoor == DevilFruitStore and replicated.Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                    if not plr.Backpack:FindFirstChild(DevilFruitStore) then
                      replicated.Remotes.CommF_:InvokeServer("F_","LoadFruit",DevilFruitStore)
                    else
                      replicated.Remotes.CommF_:InvokeServer("F_","TalkTrevor","1")
                      replicated.Remotes.CommF_:InvokeServer("F_","TalkTrevor","2")
                      replicated.Remotes.CommF_:InvokeServer("F_","TalkTrevor","3")
                    end
                  end
                end
              end
                replicated.Remotes.CommF_:InvokeServer("F_","TalkTrevor","1")
                replicated.Remotes.CommF_:InvokeServer("F_","TalkTrevor","2")
                replicated.Remotes.CommF_:InvokeServer("F_","TalkTrevor","3")
              end
            end
          else
            if replicated.Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
              if string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and plr.PlayerGui.Main.Quest.Visible == true then                
                local v = GetConnectionEnemies("Swan Pirate")
                if v then
                  pcall(function() repeat wait() Attack.Kill(v,_G.AutoZou) until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoZou == false or plr.PlayerGui.Main.Quest.Visible == false end)                    
                else
                  _tp(CFrame.new(1057.92761, 137.614319, 1242.08069))
                end
              else
                _tp(CFrame.new(-456.28952, 73.0200958, 299.895966))
              end
            elseif replicated.Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
              local v = GetConnectionEnemies("Jeremy")
              if v then
                repeat wait() Attack.Kill(v,_G.AutoZou) until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoZou == false
              else
                _tp(CFrame.new(2099.88159, 448.931, 648.997375))
              end
            elseif replicated.Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
              repeat wait() _tp(CFrame.new(-1836, 11, 1714)) until not _G.AutoZou or (Root.Position == CFrame.new(-1836, 11, 1714).Position)
              if (Root.CFrame == CFrame.new(-1836, 11, 1714)) then notween(CFrame.new(-1836, 11, 1714))end
              notween(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
              wait(.1)
              notween(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
              wait(.1)
              notween(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
              wait(.1)
              notween(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
              wait(.1)
              notween(CFrame.new(-1869.54224, 15.987854, 1681.00659))
              wait(.1)
              notween(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
              wait(.1)
              notween(CFrame.new(-1819.26343, 14.795166, 1717.90625))
              wait(.1)
              notween(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
            end
          end
        end
      end
    end)
  end
end)

BlackSpikey = Tabs.Items:CreateToggle("BlackSpikey", {
    Title = "Black Spikey Coat Farming",
    Description = "",
    Default = false
})

BlackSpikey:OnChanged(function(Value)
    _G.BlackSpikey = Value
end)

spawn(function()
  while wait(.1) do
    if _G.BlackSpikey then
      pcall(function()
        local v = GetConnectionEnemies("Jeremy")
        if v then repeat wait() Attack.Kill(v, _G.BlackSpikey)until _G.BlackSpikey == false or not v.Parent or v.Humanoid.Health <= 0
        else _tp(CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109))
        end
      end)
    end
  end
end)

TridentDragon = Tabs.Items:CreateToggle("TridentDragon", {
    Title = "Dragon Trident Farming",
    Description = "",
    Default = false
})

TridentDragon:OnChanged(function(Value)
    _G.AutoTridentW2 = Value
end)

spawn(function()
  while wait(.1) do
    pcall(function()
      if _G.AutoTridentW2 then
        local v = GetConnectionEnemies("Tide Keeper")
        if v then repeat task.wait() Attack.Kill(v,_G.AutoTridentW2)until _G.AutoTridentW2 == false or not v.Parent or v.Humanoid.Health <= 0
        else _tp(CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188))
        end
      end
    end)
  end
end)

MidnightBlade = Tabs.Items:CreateToggle("MidnightBlade", {
    Title = "Midnight Blade Sword Farming",
    Description = "",
    Default = false
})

MidnightBlade:OnChanged(function(Value)
    _G.AutoEcBoss = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.AutoEcBoss then
	    if GetM("Ectoplasm") >= 99 then
	      replicated.Remotes.CommF_:InvokeServer("Ectoplasm","Buy", 3)	   
	    elseif GetM("Ectoplasm") <= 99 then
	      local v = GetConnectionEnemies("Cursed Captain")
	      if v then repeat wait()Attack.Kill(v, _G.AutoEcBoss) until not _G.AutoEcBoss or not v.Parent or v.Humanoid.Health <= 0
	      else
	        replicated.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)) wait(.5)
	        _tp(CFrame.new(916.928589, 181.092773, 33422))
	      end
	    end	
      end
    end)
  end
end)

elseif World3 then

Cavender = Tabs.Items:CreateToggle("Cavender", {
    Title = "Cavender Sword Farming",
    Description = "",
    Default = false
})

Cavender:OnChanged(function(Value)
    _G.Auto_Cavender = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.Auto_Cavender then
        local v = GetConnectionEnemies("Beautiful Pirate")
	    if v then repeat wait() Attack.Kill(v,_G.Auto_Cavender)until not _G.Auto_Cavender or v.Humanoid.Health <= 0
	    else _tp(CFrame.new(5283.609375,22.56223487854,-110.78285217285))
	    end
      end
    end)
  end
end)

Buddy = Tabs.Items:CreateToggle("Buddy", {
    Title = "Buddy Sword Farming",
    Description = "",
    Default = false
})

Buddy:OnChanged(function(Value)
    _G.AutoBigmom = Value
end)

spawn(function()
  while wait(Sec) do
    if _G.AutoBigmom then
      pcall(function()
        local bx = GetConnectionEnemies("Cake Queen")
        if bx then repeat task.wait() Attack.Kill(bx, _G.AutoBigmom) until not _G.AutoBigmom or not bx.Parent or bx.Humanoid.Health <= 0
        else _tp(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
        end
      end)
    end
  end
end)

TwinHook = Tabs.Items:CreateToggle("TwinHook", {
    Title = "Twin Hook Sword Farming",
    Description = "",
    Default = false
})

Cavender:OnChanged(function(Value)
    _G.TwinHook = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.TwinHook then
        local v = GetConnectionEnemies("Captain Elephant")
	    if v then repeat wait()Attack.Kill(v,_G.TwinHook)until not _G.TwinHook or v.Humanoid.Health <= 0
	    else
          replicated.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)) wait(.2)
          _tp(CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125))
	    end
      end
    end)
  end
end)

Yama = Tabs.Items:CreateToggle("Yama", {
    Title = "Yama Sword Farming",
    Description = "",
    Default = false
})

Yama:OnChanged(function(Value)
    _G.Auto_Yama = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.Auto_Yama then
	    if replicated.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") < 30 then
	      _G.FarmEliteHunt = true
	    elseif replicated.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") > 30 then
	      _G.FarmEliteHunt = false
	      if (workspace.Map.Waterfall.SealedKatana.Handle.Position-plr.Character.HumanoidRootPart.Position).Magnitude >= 20 then
            _tp(workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
            local zx = GetConnectionEnemies("Ghost")
            if zx then
              repeat wait() Attack.Kill(zx,_G.Auto_Yama) until zx.Humanoid.Health <= 0 or not zx.Parent or not _G.Auto_Yama               
			  fireclickdetector(workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
            end
          end
	    end
      end
    end)
  end
end)

Tushita = Tabs.Items:CreateToggle("Tushita", {
    Title = "Tushita Sword Farming",
    Description = "",
    Default = false
})

Tushita:OnChanged(function(Value)
    _G.Auto_Tushita = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.Auto_Tushita then
        if workspace.Map.Turtle:FindFirstChild("TushitaGate") then
          if not GetBP("Holy Torch") then
            _tp(CFrame.new(5148.03613, 162.352493, 910.548218))
            wait(0.7)
          else
            EquipWeapon("Holy Torch")
            task.wait(1)
            repeat task.wait() _tp(CFrame.new(-10752, 417, -9366)) until not _G.Auto_Tushita or (CFrame.new(-10752, 417, -9366).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10
            wait(.7)
            repeat task.wait() _tp(CFrame.new(-11672, 334, -9474)) until not _G.Auto_Tushita or (CFrame.new(-11672, 334, -9474).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10
            wait(.7)
            repeat task.wait() _tp(CFrame.new(-12132, 521, -10655)) until not _G.Auto_Tushita or (CFrame.new(-12132, 521, -10655).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10
            wait(.7)
            repeat task.wait() _tp(CFrame.new(-13336, 486, -6985)) until not _G.Auto_Tushita or (CFrame.new(-13336, 486, -6985).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10
            wait(.7)
            repeat task.wait() _tp(CFrame.new(-13489, 332, -7925)) until not _G.Auto_Tushita or (CFrame.new(-13489, 332, -7925).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10
          end
        else
          local v = GetConnectionEnemies("Longma")
          if v then repeat task.wait() Attack.Kill(v,_G.Auto_Tushita) until v.Humanoid.Health <= 0 or not _G.Auto_Tushita or not v.Parent
          else 
          if replicated:FindFirstChild("Longma") then _tp(replicated:FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(0,40,0)) end
          end                     
        end
      end
    end)
  end
end)


-- ========== AUTO CDK QUESTS ==========

-- 1. DROPDOWN: Chọn loại CDK Quest
CDKDropdown = Tabs.Quests:CreateDropdown("Select_CDK_Type", {
    Title = "Select CDK Quest",
    Description = "",
    Values = {"Auto Cursed Dual Katana", "Auto Yama Sword", "Auto Tushita Blade"},
    Multi = false,
    Default = 1,
})

-- 2. TOGGLE: Bật/tắt auto quest
CDKToggle = Tabs.Quests:CreateToggle("Auto_CDK_Quest", {
    Title = "CDK Quest Farming",
    Description = "",
    Default = false
})

-- Biến _G
_G.Select_CDK_Type = "Auto Cursed Dual Katana"  -- Giá trị mặc định
_G.Auto_CDK_Quest = false

-- Khi thay đổi dropdown
CDKDropdown:OnChanged(function(Value)
    _G.Select_CDK_Type = Value
    ShowNotification("Đã chọn: " .. Value)
end)

-- Khi bật/tắt toggle
CDKToggle:OnChanged(function(Value)
    _G.Auto_CDK_Quest = Value
    
    if Value then
        ShowNotification("Bắt đầu: " .. _G.Select_CDK_Type)
    else
        ShowNotification("Đã dừng Auto CDK Quest")
    end
end)

-- ========== AUTO CURSED DUAL KATANA (LAST QUEST) ==========
spawn(function()    
    while wait(1) do
        pcall(function()
            if _G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Cursed Dual Katana" then
                replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                replicated.Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Boss")
                local v = GetConnectionEnemies("Cursed Skeleton Boss")
                if v then
                    repeat wait()
                        if plr.Character:FindFirstChild("Yama") or plr.Backpack:FindFirstChild("Yama") then 
                            EquipWeapon("Yama")
                        elseif plr.Character:FindFirstChild("Tushita") or plr.Backpack:FindFirstChild("Tushita") then 
                            EquipWeapon("Tushita")                                    
                        end 
                        if _tp then
                            _tp(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        end
                    until not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Cursed Dual Katana") or not v.Parent or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0                                
                else
                    if _tp then
                        _tp(CFrame.new(-12318.193359375, 601.9518432617188, -6538.662109375)) 
                        wait(.5)
                        _tp(workspace.Map.Turtle.Cursed.BossDoor.CFrame)
                    end
                end
            end
        end)
    end
end)

-- ========== AUTO YAMA SWORD ==========
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Yama Sword" then
                if tostring(replicated.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then                  
                    replicated.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
                    replicated.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
                else
                    if replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == nil then
                        replicated.Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        replicated.Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == false then                        
                        if tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -3 then
                            QuestYama_1 = true QuestYama_2 = false QuestYama_3 = false
                            repeat task.wait()
                                if not workspace.Enemies:FindFirstChild("Forest Pirate") then
                                    if _tp then _tp(CFrame.new(-13223.521484375, 428.1938171386719, -7766.06787109375)) end
                                else
                                    local v = GetConnectionEnemies("Forest Pirate")
                                    if v and _tp then _tp(workspace.Enemies:FindFirstChild("Forest Pirate").HumanoidRootPart.CFrame) end
                                end
                            until tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 1 or not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Yama Sword")
                        elseif tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -4 then
                            QuestYama_1 = false QuestYama_2 = true QuestYama_3 = false
                            for ix,HitMon in pairs(game:GetService("Players").LocalPlayer.QuestHaze:GetChildren()) do
                                for NameMonHaze, CFramePos in pairs(PosMsList) do
                                    if string.find(NameMonHaze,HitMon.Name) and HitMon.Value > 0 then
                                        if (CFramePos.Position - Root.Position).Magnitude <= 1000 and workspace.Enemies:FindFirstChild(NameMonHaze) then
                                            for i,v in pairs(workspace.Enemies:GetChildren()) do
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HazeESP") then
                                                    repeat wait() 
                                                        if Attack and Attack.Kill then
                                                            Attack.Kill(v, (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Yama Sword"))
                                                        end
                                                    until not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Yama Sword") or tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 2 or not v:FindFirstChild("HazeESP") or v.Humanoid.Health <= 0
                                                end
                                            end
                                        else   
                                            if _tp then _tp(CFramePos) end                               
                                        end
                                    end
                                end
                            end
                        elseif tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -5 then
                            QuestYama_1 = false QuestYama_2 = false QuestYama_3 = true
                            if workspace.Map:FindFirstChild("HellDimension") then
                                if (Root.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= 1000 then
                                    for gg,ez in pairs(workspace.Map.HellDimension.Exit:GetChildren()) do
                                        if tonumber(gg) == 2 then
                                            repeat task.wait() 
                                                if Root then Root.CFrame = workspace.Map.HellDimension.Exit.CFrame end
                                            until not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Yama Sword") or tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                        end
                                    end
                                    if EquipWeapon then EquipWeapon(_G.SelectWeapon) end
                                    if tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) ~= 3 then
                                    repeat task.wait()
                                        repeat task.wait() 
                                            if _tp then _tp(workspace.Map.HellDimension.Torch1.Particles.CFrame) end
                                            for i, v in pairs(workspace.Map.HellDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then fireproximityprompt(v) end
                                            end
                                        until (workspace.Map.HellDimension.Torch1.Particles.Position - Root.Position).Magnitude < 5
                                        wait(2) _G.T1Yama = true
                                    until not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Yama Sword") or _G.T1Yama or tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                    repeat task.wait()
                                        repeat task.wait()
                                            if _tp then _tp(workspace.Map.HellDimension.Torch2.Particles.CFrame) end
                                            for i, v in pairs(workspace.Map.HellDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then fireproximityprompt(v) end
                                            end
                                        until (workspace.Map.HellDimension.Torch2.Particles.Position - Root.Position).Magnitude < 5
                                        wait(2) _G.T2Yama = true
                                    until _G.T2Yama or not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Yama Sword") or tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                        repeat wait()
                                            repeat task.wait() 
                                                if _tp then _tp(workspace.Map.HellDimension.Torch3.Particles.CFrame) end
                                                for i, v in pairs(workspace.Map.HellDimension:GetDescendants()) do
                                                    if v:IsA("ProximityPrompt") then fireproximityprompt(v) end
                                                end
                                            until (workspace.Map.HellDimension.Torch3.Particles.Position - Root.Position).Magnitude < 5 
                                            wait(2) _G.T3Yama = true
                                        until _G.T3Yama or not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Yama Sword") or tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                    end
                                    for i,v in pairs(workspace.Enemies:GetChildren()) do
                                        if (v:FindFirstChild("HumanoidRootPart").Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= 300 then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                                repeat task.wait() 
                                                    if Attack and Attack.Kill then
                                                        Attack.Kill(v, (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Yama Sword"))
                                                    end
                                                until not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Yama Sword") or v.Humanoid.Health <= 0 or not v.Parent or tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

-- ========== AUTO TUSHITA BLADE ==========
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Tushita Blade" then
                if tostring(replicated.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then
                    wait(.7) replicated.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
                    wait(.3) replicated.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
                else
                    if replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == nil then
                        replicated.Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == false then
                        if tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -3 then
                            QuestTushita_1 = true
                            QuestTushita_2 = false
                            QuestTushita_3 = false
                            repeat wait() 
                                if _tp then _tp(CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875)) end
                            until (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Tushita Blade") or tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
                            if (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(.7) replicated.Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"),"Check")
                                wait(.5) replicated.Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            end
                            wait(1) repeat wait() 
                                if _tp then _tp(CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125)) end
                            until (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Tushita Blade") or tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
                            if (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(.7) replicated.Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"),"Check")
                                wait(.5) replicated.Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            end
                            wait(1) repeat wait() 
                                if _tp then _tp(CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625)) end
                            until (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Tushita Blade") or tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
                            if (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(.7) replicated.Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"),"Check")
                                wait(.5) replicated.Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            end
                            wait(1)
                        elseif tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -4 then
                            QuestTushita_1 = false
                            QuestTushita_2 = true
                            QuestTushita_3 = false
                            repeat wait()
                                _G.AutoRaidCastle = true
                            until not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Tushita Blade") or tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 2 
                            _G.AutoRaidCastle = false         
                        elseif tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -5 then
                            QuestTushita_1 = false
                            QuestTushita_2 = false
                            QuestTushita_3 = true
                            if workspace.Enemies:FindFirstChild("Cake Queen") then
                                for i,v in pairs(workspace.Enemies:GetChildren()) do
                                    if v.Name == "Cake Queen" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                if Attack and Attack.Kill then
                                                    Attack.Kill(v, (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Tushita Blade"))
                                                end
                                            until not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Tushita Blade") or not v.Parent or v.Humanoid.Health <= 0 or tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
                                        end
                                    end
                                end
                            elseif replicated:FindFirstChild("Cake Queen") and replicated:FindFirstChild("Cake Queen").Humanoid.Health > 0 then
                                if _tp then _tp(replicated:FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(0,30,0)) end
                            else
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - workspace.Map.HeavenlyDimension.Spawn.Position).Magnitude <= 1000 then
                                    for i,v in pairs(workspace.Map.HeavenlyDimension.Exit:GetChildren()) do
                                        Ex = i
                                    end
                                    if Ex == 2 then
                                        repeat wait()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.HeavenlyDimension.Exit.CFrame
                                        until not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Tushita Blade") or tonumber(replicated.Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
                                    end
                                    repeat wait()
                                        repeat wait() 
                                            if _tp then _tp(CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625)) end
                                            for i, v in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then fireproximityprompt(v) end
                                            end
                                        until (CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                        wait(2)
                                        _G.DoneT1 = true
                                    until not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Tushita Blade") or _G.DoneT1
                                    repeat wait()
                                        repeat wait()
                                            if _tp then _tp(CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875)) end
                                            for i, v in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then fireproximityprompt(v) end
                                            end
                                        until (CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                        wait(2) _G.DoneT2 = true
                                    until _G.DoneT2 or not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Tushita Blade")
                                    repeat wait()
                                        repeat task.wait() 
                                            if _tp then _tp(CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375)) end
                                            for i, v in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then fireproximityprompt(v) end
                                            end
                                        until (CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                        wait(2) _G.DoneT3 = true
                                    until _G.DoneT3 or not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Tushita Blade")
                                    for i,v in pairs(workspace.Enemies:GetChildren()) do
                                        if (v:FindFirstChild("HumanoidRootPart").Position - CFrame.new(-22695.7012, 5270.93652, 3814.42847, 0.11794927, 3.32185834e-08, 0.99301964, -8.73070718e-08, 1, -2.30819008e-08, -0.99301964, -8.3975138e-08, 0.11794927).Position).Magnitude <= 300 then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                                repeat wait()
                                                    if Attack and Attack.Kill then
                                                        Attack.Kill(v, (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Tushita Blade"))
                                                    end
                                                until not (_G.Auto_CDK_Quest and _G.Select_CDK_Type == "Auto Tushita Blade") or v.Humanoid.Health <= 0 or not v.Parent                      
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

end

Tabs.Sea:AddSection("Settings Sea Event")

SelectBoat = Tabs.Sea:CreateDropdown("SelectBoat", {
    Title = "Select Boat",
    Values = ListSeaBoat,
    Multi = false,
    Default = 1,
})

SelectBoat:OnChanged(function(Value)
    _G.SelectedBoat = Value
end)

SelectLevelSea = Tabs.Sea:CreateDropdown("SelectLevelSea", {
    Title = "Select Level Sea",
    Values = ListSeaZone,
    Multi = false,
    Default = 1,
})

SelectLevelSea:OnChanged(function(Value)
    _G.DangerSc = Value
end)


SeaEventFarm = Tabs.Sea:CreateToggle("SeaEventFarm", {
    Title = "Sea Event Farming",
    Description = "",
    Default = false
})

SeaEventFarm:OnChanged(function(Value)
    _G.SailBoats = Value
end)

spawn(
    function()
        while wait() do
            if _G.SailBoats then
                pcall(
                    function()
                        local myBoat = CheckBoat()
                        if
                            not myBoat and
                                not (CheckShark() and _G.Shark or CheckTerrorShark() and _G.TerrorShark or
                                    CheckFishCrew() and _G.MobCrew or
                                    CheckPiranha() and _G.Piranha) and
                                not (CheckEnemiesBoat() and _G.FishBoat) and
                                not (CheckSeaBeast() and _G.SeaBeast1) and
                                not (_G.PGB and CheckPirateGrandBrigade()) and
                                not (_G.HCM and CheckHauntedCrew()) and
                                not (_G.Leviathan1 and CheckLeviathan())
                         then
                            local buyBoatCFrame = CFrame.new(-16927.451, 9.086, 433.864)
                            TeleportToTarget(buyBoatCFrame)
                            if (buyBoatCFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                replicated.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
                            end
                        elseif
                            myBoat and
                                not (CheckShark() and _G.Shark or CheckTerrorShark() and _G.TerrorShark or
                                    CheckFishCrew() and _G.MobCrew or
                                    CheckPiranha() and _G.Piranha) and
                                not (CheckEnemiesBoat() and _G.FishBoat) and
                                not (CheckSeaBeast() and _G.SeaBeast1) and
                                not (_G.PGB and CheckPirateGrandBrigade()) and
                                not (_G.HCM and CheckHauntedCrew()) and
                                not (_G.Leviathan1 and CheckLeviathan())
                         then
                            if plr.Character.Humanoid.Sit == false then
                                local boatSeatCFrame = myBoat.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                                _tp(boatSeatCFrame)
                            else
                                if _G.DangerSc == "Lv 1" then
                                    CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143)
                                elseif _G.DangerSc == "Lv 2" then
                                    CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032)
                                elseif _G.DangerSc == "Lv 3" then
                                    CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774)
                                elseif _G.DangerSc == "Lv 4" then
                                    CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012)
                                elseif _G.DangerSc == "Lv 5" then
                                    CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023)
                                elseif _G.DangerSc == "Lv 6" then
                                    CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584)
                                elseif _G.DangerSc == "Lv Infinite" then
                                    CFrameSelectedZone = CFrame.new(-10000000, 31, 37016.25)
                                end
                                repeat
                                    wait()
                                    if
                                        (not _G.FishBoat and CheckEnemiesBoat()) or
                                            (not _G.PGB and CheckPirateGrandBrigade()) or
                                            (not _G.TerrorShark and CheckTerrorShark())
                                     then
                                        _tp(CFrameSelectedZone * CFrame.new(0, 150, 0))
                                    else
                                        _tp(CFrameSelectedZone)
                                    end
                                until _G.SailBoats == false or
                                    (CheckShark() and _G.Shark or CheckTerrorShark() and _G.TerrorShark or
                                        CheckFishCrew() and _G.MobCrew or
                                        CheckPiranha() and _G.Piranha) or
                                    CheckSeaBeast() and _G.SeaBeast1 or
                                    CheckEnemiesBoat() and _G.FishBoat or
                                    _G.Leviathan1 and CheckLeviathan() or
                                    _G.HCM and CheckHauntedCrew() or
                                    _G.PGB and CheckPirateGrandBrigade() or
                                    plr.Character:WaitForChild("Humanoid").Sit == false
                                plr.Character.Humanoid.Sit = false
                            end
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        while wait(Sec) do
            pcall(
                function()
                    for a, b in pairs(workspace.Boats:GetChildren()) do
                        for c, d in pairs(workspace.Boats[b.Name]:GetDescendants()) do
                            if d:IsA("BasePart") then
                                if
                                    _G.SailBoats or _G.Prehis_Find or _G.FindMirage or _G.SailBoat_Hydra or
                                        _G.AutofindKitIs
                                 then
                                    d.CanCollide = false
                                else
                                    d.CanCollide = true
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
spawn(function()
  while wait() do
    pcall(function()	
      if _G.Shark then local a={"Shark"}if CheckShark()then for b,c in pairs(workspace.Enemies:GetChildren())do if table.find(a,c.Name)then if Attack.Alive(c)then repeat task.wait()Attack.Kill(c,_G.Shark)until _G.Shark==false or not c.Parent or c.Humanoid.Health<=0 end end end end end
      if _G.TerrorShark then local a={"Terrorshark"}if CheckTerrorShark()then for b,c in pairs(workspace.Enemies:GetChildren())do if table.find(a,c.Name)then if Attack.Alive(c)then repeat task.wait()Attack.KillSea(c,_G.TerrorShark)until _G.TerrorShark==false or not c.Parent or c.Humanoid.Health<=0 end end end end end
      if _G.Piranha then local a={"Piranha"}if CheckPiranha()then for b,c in pairs(workspace.Enemies:GetChildren())do if table.find(a,c.Name)then if Attack.Alive(c)then repeat task.wait()Attack.Kill(c,_G.Piranha)until _G.Piranha==false or not c.Parent or c.Humanoid.Health<=0 end end end end end
      if _G.MobCrew then local a={"Fish Crew Member"}if CheckFishCrew()then for b,c in pairs(workspace.Enemies:GetChildren())do if table.find(a,c.Name)then if Attack.Alive(c)then repeat task.wait()Attack.Kill(c,_G.MobCrew)until _G.MobCrew==false or not c.Parent or c.Humanoid.Health<=0 end end end end end                 
      if _G.HCM then local a={"Haunted Crew Member"}if CheckHauntedCrew()then for b,c in pairs(workspace.Enemies:GetChildren())do if table.find(a,c.Name)then if Attack.Alive(c)then repeat task.wait()Attack.Kill(c,_G.HCM)until _G.HCM==false or not c.Parent or c.Humanoid.Health<=0 end end end end end
      if _G.SeaBeast1 then if workspace.SeaBeasts:FindFirstChild("SeaBeast1")then for a,b in pairs(workspace.SeaBeasts:GetChildren())do if b:FindFirstChild("HumanoidRootPart")and b:FindFirstChild("Health")and b.Health.Value>0 then repeat task.wait()spawn(function()_tp(CFrame.new(b.HumanoidRootPart.Position.X,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y+200,b.HumanoidRootPart.Position.Z))end)if plr:DistanceFromCharacter(b.HumanoidRootPart.CFrame.Position)<=500 then AitSeaSkill_Custom=b.HumanoidRootPart.CFrame;MousePos=AitSeaSkill_Custom.Position;if CheckF()then weaponSc("Blox Fruit")Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")else Useskills("Melee","Z")Useskills("Melee","X")Useskills("Melee","C")wait(.1)Useskills("Sword","Z")Useskills("Sword","X")wait(.1)Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")wait(.1)Useskills("Gun","Z")Useskills("Gun","X")end end until _G.SeaBeast1==false or not b:FindFirstChild("HumanoidRootPart")or not b.Parent or b.Health.Value<=0 end end end end
      if _G.Leviathan1 then if workspace.SeaBeasts:FindFirstChild("Leviathan")then for a,b in pairs(workspace.SeaBeasts:GetChildren())do if b:FindFirstChild("HumanoidRootPart")and b:FindFirstChild("Leviathan Segment")and b:FindFirstChild("Health")and b.Health.Value>0 then repeat task.wait()spawn(function()_tp(CFrame.new(b.HumanoidRootPart.Position.X,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y+200,b.HumanoidRootPart.Position.Z))end)if plr:DistanceFromCharacter(b.HumanoidRootPart.CFrame.Position)<=500 then MousePos=b:FindFirstChild("Leviathan Segment").Position;if CheckF()then weaponSc("Blox Fruit")Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")else Useskills("Melee","Z")Useskills("Melee","X")Useskills("Melee","C")wait(.1)Useskills("Sword","Z")Useskills("Sword","X")wait(.1)Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")wait(.1)Useskills("Gun","Z")Useskills("Gun","X")end end until _G.Leviathan1==false or not b:FindFirstChild("HumanoidRootPart")or not b.Parent or b.Health.Value<=0 end end end end
      if _G.FishBoat then if CheckEnemiesBoat()then for a,b in pairs(workspace.Enemies:GetChildren())do if b:FindFirstChild("Health")and b.Health.Value>0 and b:FindFirstChild("VehicleSeat")then repeat task.wait()spawn(function()if b.Name=="FishBoat"then _tp(b.Engine.CFrame*CFrame.new(0,-50,-25))end end)if plr:DistanceFromCharacter(b.Engine.CFrame.Position)<=150 then AitSeaSkill_Custom=b.Engine.CFrame;MousePos=AitSeaSkill_Custom.Position;if CheckF()then weaponSc("Blox Fruit")Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")else Useskills("Melee","Z")Useskills("Melee","X")Useskills("Melee","C")wait(.1)Useskills("Sword","Z")Useskills("Sword","X")wait(.1)Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")wait(.1)Useskills("Gun","Z")Useskills("Gun","X")end end until _G.FishBoat==false or not b:FindFirstChild("VehicleSeat")or b.Health.Value<=0 end end end end
      if _G.PGB then if CheckPirateGrandBrigade()then for a,b in pairs(workspace.Enemies:GetChildren())do if b:FindFirstChild("Health")and b.Health.Value>0 and b:FindFirstChild("VehicleSeat")then repeat task.wait()spawn(function()if b.Name=="PirateBrigade"then _tp(b.Engine.CFrame*CFrame.new(0,-30,-10))elseif b.Name=="PirateGrandBrigade"then _tp(b.Engine.CFrame*CFrame.new(0,-50,-50))end end)if plr:DistanceFromCharacter(b.Engine.CFrame.Position)<=150 then AitSeaSkill_Custom=b.Engine.CFrame;MousePos=AitSeaSkill_Custom.Position;if CheckF()then weaponSc("Blox Fruit")Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")else Useskills("Melee","Z")Useskills("Melee","X")Useskills("Melee","C")wait(.1)Useskills("Sword","Z")Useskills("Sword","X")wait(.1)Useskills("Blox Fruit","Z")Useskills("Blox Fruit","X")Useskills("Blox Fruit","C")wait(.1)Useskills("Gun","Z")Useskills("Gun","X")end end until _G.PGB==false or not b:FindFirstChild("VehicleSeat")or b.Health.Value<=0 end end end end
    end)
  end
end)

Tabs.Sea:AddSection("Mob Sea")

SeaBeast = Tabs.Sea:CreateToggle("SeaBeast", {
    Title = "Attack Sea Beast", 
    Description = "", 
    Default = false
})

SeaBeast:OnChanged(function(Value)
  _G.SeaBeast1 = Value
end)

TerrorShark = Tabs.Sea:CreateToggle("TerrorShark", {
    Title = "Auto Terror Shark", 
    Description = "", 
    Default = false
})

TerrorShark:OnChanged(function(Value)
  _G.TerrorShark = Value
end)

Haunted = Tabs.Sea:CreateToggle("Haunted", {
    Title = "Attack Haunted Crew Member", 
    Description = "", 
    Default = false,
})

Haunted:OnChanged(function(Value)
  _G.HCM = Value
end)

PirateBigBoat = Tabs.Sea:CreateToggle("PirateBigBoat", {
    Title = "Attack Pirate Grand Brigade", 
    Description = "", 
    Default = false
})

PirateBigBoat:OnChanged(function(Value)
  _G.PGB = Value
end)

Shark = Tabs.Sea:CreateToggle("Shark", {
    Title = "Attack Shark", 
    Description = "", 
    Default = false
})

Shark:OnChanged(function(Value)
  _G.Shark = Value
end)

Shark = Tabs.Sea:CreateToggle("Shark", {
    Title = "Attack Piranha", 
    Description = "", 
    Default = false
})

Shark:OnChanged(function(Value)
  _G.Piranha = Value
end)

FishBoat = Tabs.Sea:CreateToggle("FishBoat", {
    Title = "Attack Fish Boat", 
    Description = "", 
    Default = false
})

FishBoat:OnChanged(function(Value)
  _G.FishBoat = Value
end)

Tabs.Sea:AddSection("Leviathan Event")

LeviathanAttack = Tabs.Sea:CreateToggle("LeviathanAttack", {
    Title = "Buy F for Spy", 
    Description = "", 
    Default = false
})

LeviathanAttack:OnChanged(function(Value)
    _G.BuySpy = Value
    if Value then
        local success = pcall(function()
            return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyLeviathanSpy")
        end)
        
        if success then
            task.wait(0.5)
            print("Done")
        end
    end
end)

TeleportFrozen = Tabs.Sea:CreateToggle("TeleportFrozen", {
    Title = "Teleport Frozen Dimension", 
    Description = "", 
    Default = false
})

TeleportFrozen:OnChanged(function(Value)
    getgenv().AutoFrozenDimension = Value
end)

task.spawn(function()
    while task.wait(1) do
    pcall(function()
        if getgenv().AutoFrozenDimension and World3 then
        local frozenDim = game:GetService("Workspace").Map:FindFirstChild("FrozenDimension")
        if frozenDim then
        local targetPos = frozenDim.Center.Position
        local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        if (playerPos - Vector3.new(targetPos.X, 500, targetPos.Z)).Magnitude > 10 then
        topos(CFrame.new(targetPos.X, 500, targetPos.Z))
        end
        end
        end
        end)
    end
    end)

LeviathanAttack = Tabs.Sea:CreateToggle("LeviathanAttack", {
    Title = "Attack Leviathan", 
    Description = "", 
    Default = false
})

LeviathanAttack:OnChanged(function(Value)
  _G.Leviathan1 = Value
end)

Tabs.Sea:AddSection("Kitsune Event")

FIndKitsune = Tabs.Sea:CreateToggle("FIndKitsune", {
    Title = "Find Kitsune Event Sea", 
    Description = "", 
    Default = false
})

FIndKitsune:OnChanged(function(Value)
  _G.AutofindKitIs = Value
end)

spawn(function()
  while wait() do
    if _G.AutofindKitIs then 
      pcall(function()
        if not workspace["_WorldOrigin"].Locations:FindFirstChild("Kitsune Island", true) then                
          local myBoat = CheckBoat()
          if not myBoat then
            local buyBoatCFrame = CFrame.new(-16927.451, 9.086, 433.864)
            TeleportToTarget(buyBoatCFrame)
            if (buyBoatCFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then replicated.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat) end
          else
            if plr.Character.Humanoid.Sit == false then
              local boatSeatCFrame = myBoat.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
              _tp(boatSeatCFrame)
            else
              local targetDestination = CFrame.new(-10000000, 31, 37016.25)              
              repeat wait() 
                if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
                  _tp(CFrame.new(-10000000, 150, 37016.25))
                else
                  _tp(CFrame.new(-10000000, 31, 37016.25))
                end
              until not _G.AutofindKitIs or (targetDestination.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace["_WorldOrigin"].Locations:FindFirstChild("Kitsune Island") or plr.Character.Humanoid.Sit == false plr.Character.Humanoid.Sit = false
            end
          end
        else
          _tp(workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island").CFrame*CFrame.new(0,500,0))
        end
      end)
    end
  end
end)

ActiveShrine = Tabs.Sea:CreateToggle("ActiveShrine", {
    Title = "Teleport Shrine And Active", 
    Description = "", 
    Default = false
})

ActiveShrine:OnChanged(function(Value)
  _G.tweenShrine = Value
end)

spawn(function()
  while wait(.1) do
    if _G.tweenShrine then
      pcall(function()
      local kit_is = workspace.Map:FindFirstChild("KitsuneIsland") or game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island")
      local shrineActive = kit_is:FindFirstChild("ShrineActive")
        if shrineActive then
          for _, v in next, shrineActive:GetDescendants() do
            if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
              replicated.Modules.Net:FindFirstChild("RE/TouchKitsuneStatue"):FireServer()
              repeat wait() _tp(v.CFrame * CFrame.new(0,2,0)) until _G.tweenShrine == false or not kit_is
            end
          end
        else
          _tp(workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island").CFrame * CFrame.new(0,500,0))        
        end
      end)
    end
  end
end)

CollectAzure = Tabs.Sea:CreateToggle("CollectAzure", {
    Title = "Collect Azure Ember", 
    Description = "", 
    Default = false
})

CollectAzure:OnChanged(function(Value)
  _G.Collect_Ember = Value
end)

spawn(function()
  while wait(.1) do
    if _G.Collect_Ember then
      pcall(function()
        if workspace:WaitForChild("AttachedAzureEmber") or workspace:WaitForChild("EmberTemplate") then
        notween(workspace:WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
        else
          _tp(workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island").CFrame * CFrame.new(0,500,0))        
          replicated.Modules.Net["RF/KitsuneStatuePray"]:InvokeServer()
        end
      end)
    end
  end
end)

CollectAzure = Tabs.Sea:CreateToggle("CollectAzure", {
    Title = "Trade Azure Ember", 
    Description = "", 
    Default = false
})

CollectAzure:OnChanged(function(Value)
  _G.Trade_Ember = Value
end)

spawn(function()
  while wait(.1) do
    if _G.Trade_Ember then
      pcall(function()
        if workspace["_WorldOrigin"].Locations:FindFirstChild("Kitsune Island",true) then
          replicated.Modules.Net:FindFirstChild("RF/KitsuneStatuePray"):InvokeServer()
        end
      end)
    end
  end
end)

Tabs.Dojo:AddSection("Settings")

Tabs.Dojo:CreateButton{
    Title = "Destroy Lava",
    Description = "",
    Callback = function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "Lava" then
    v:Destroy()
    end
    end
    for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
    if v.Name == "Lava" then
    v:Destroy()
    end
    end
    end
}

Tabs.Dojo:CreateButton{
    Title = "Craft Volcanic Magnet",
    Description = "",
    Callback = function()
    replicated.Remotes.CommF_:InvokeServer("CraftItem","Craft","Volcanic Magnet")
    end
}

VolcanoFind = Tabs.Dojo:CreateToggle("VolcanoFind", {
    Title = "Find Prehistoric Island", 
    Description = "", 
    Default = false
})

VolcanoFind:OnChanged(function(Value)
  _G.Prehis_Find = Value
end)

targetDestination = nil
spawn(function()
  while wait() do
    if _G.Prehis_Find then 
      pcall(function()
        if not workspace["_WorldOrigin"].Locations:FindFirstChild("Prehistoric Island", true) then                
          local myBoat = CheckBoat()
          if not myBoat then
            local buyBoatCFrame = CFrame.new(-16927.451, 9.086, 433.864)
            TeleportToTarget(buyBoatCFrame)
            if (buyBoatCFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then replicated.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat) end
          else
            if plr.Character.Humanoid.Sit == false then
              local boatSeatCFrame = myBoat.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
              _tp(boatSeatCFrame)
            else                            
              repeat wait() 
                local targetDestination = CFrame.new(-10000000, 31, 37016.25)
                if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
                  _tp(CFrame.new(-10000000, 150, 37016.25))
                else
                  _tp(CFrame.new(-10000000, 31, 37016.25))
                end
              until not _G.Prehis_Find or (targetDestination.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace["_WorldOrigin"].Locations:FindFirstChild("Prehistoric Island") or plr.Character.Humanoid.Sit == false plr.Character.Humanoid.Sit = false
            end
          end
        else
          if (workspace["_WorldOrigin"].Locations:FindFirstChild("Prehistoric Island").CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then _tp(workspace["_WorldOrigin"].Locations:FindFirstChild("Prehistoric Island").CFrame)end
          if workspace.Map:FindFirstChild("PrehistoricIsland", true) or workspace["_WorldOrigin"].Locations:FindFirstChild("Prehistoric Island", true) then            
            if workspace.Map.PrehistoricIsland.Core.ActivationPrompt:FindFirstChild("ProximityPrompt", true) then
              if plr:DistanceFromCharacter(workspace.Map.PrehistoricIsland.Core.ActivationPrompt.CFrame.Position) <= 150 then
                fireproximityprompt(workspace.Map.PrehistoricIsland.Core.ActivationPrompt.ProximityPrompt, math.huge)
                vim1:SendKeyEvent(true, "E", false, game) wait(1.5) vim1:SendKeyEvent(false, "E", false, game)
              end
              _tp(workspace.Map.PrehistoricIsland.Core.ActivationPrompt.CFrame)              
            end
          end
        end
      end)
    end
  end
end)

PrehistoricFarming = Tabs.Dojo:CreateToggle("PrehistoricFarming", {
    Title = "Prehistoric Island Farming", 
    Description = "", 
    Default = false
})

PrehistoricFarming:OnChanged(function(Value)
  _G.Prehis_Skills = Value
end)

spawn(function()
  while wait() do
    if _G.Prehis_Skills then
      local prehistoricIsland = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
      if prehistoricIsland then
        for _, obj in pairs(prehistoricIsland:GetDescendants()) do
        if obj:IsA("Part") and obj.Name:lower():find("lava") then obj:Destroy() end
        if obj:IsA("MeshPart") and obj.Name:lower():find("lava") then obj:Destroy() end
        end
        local lavaModel = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava")
        if lavaModel and lavaModel:IsA("Model") then lavaModel:Destroy() end
        local Island = workspace.Map:FindFirstChild("PrehistoricIsland")
        if Island then   
          local trialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport")   
          for _, v in pairs(Island:GetDescendants()) do
            if v.Name == "TouchInterest" then
              if not (trialTeleport and v:IsDescendantOf(trialTeleport)) then
                v.Parent:Destroy()
              end
            end
          end
        end  
      end
    end
  end
end)
spawn(function()
  while wait() do
    pcall(function()
      if _G.Prehis_Skills then
        if workspace.Enemies:FindFirstChild("Lava Golem") then
          local v = GetConnectionEnemies("Lava Golem")
          if v then repeat wait()Attack.Kill(v,_G.Prehis_Skills) v.Humanoid:ChangeState(15)until not _G.Prehis_Skills or not v.Parent or v.Humanoid.Health <= 0 end
        end
        for i,v in pairs(game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks:GetChildren()) do
          if v:FindFirstChild("VFXLayer") then
            if v:FindFirstChild("VFXLayer").At0.Glow.Enabled == true or v.VFXLayer.At0.Glow.Enabled == true then
              repeat wait()
                _tp(v.VFXLayer.CFrame)
                if v.VFXLayer.At0.Glow.Enabled == true and plr:DistanceFromCharacter(v.VFXLayer.CFrame.Position) <= 150 then
                  MousePos = v.VFXLayer.CFrame.Position
                  Useskills("Melee","Z") wait(.5)
          	      Useskills("Melee","X") wait(.5)
	              Useskills("Melee","C") wait(.5)
                  Useskills("Blox Fruit","Z") wait(.5)
                  Useskills("Blox Fruit","X") wait(.5)
                  Useskills("Blox Fruit","C")
                end   
              until not _G.Prehis_Skills or v:FindFirstChild("VFXLayer").At0.Glow.Enabled == false or v.VFXLayer.At0.Glow.Enabled == false            
            end
          end
        end
      end
    end)
  end
end)

Tabs.Dojo:AddSection("Items Prehistoric")

BoneDragon = Tabs.Dojo:CreateToggle("BoneDragon", {
    Title = "Collect Dragon Bones", 
    Description = "", 
    Default = false
})

BoneDragon:OnChanged(function(Value)
  _G.Prehis_DB = Value
end)

DragonEggs = Tabs.Dojo:CreateToggle("DragonEggs", {
    Title = "Collect Dragon Eggs", 
    Description = "", 
    Default = false
})

DragonEggs:OnChanged(function(Value)
  _G.Prehis_DE = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.Prehis_DB then
        if workspace:FindFirstChild("DinoBone") then
          for i,v in pairs(workspace:GetChildren()) do
            if v.Name == "DinoBone" then _tp(v.CFrame) end
          end
        end
      end
    end)
  end
end)
spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.Prehis_DE then
      if workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:FindFirstChild("DragonEgg") then _tp(workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:FindFirstChild("DragonEgg").Molten.CFrame) fireproximityprompt(workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs.DragonEgg.Molten.ProximityPrompt, 30) end        
      end
    end)
  end
end)

Tabs.Dojo:AddSection("Quest Dojo")

DojoTrainer = Tabs.Dojo:CreateToggle("DojoTrainer", {
    Title = "Dojo Trainer Quest", 
    Description = "", 
    Default = false
})

DojoTrainer:OnChanged(function(Value)
  _G.Dojoo = Value
end)

function printBeltName(data)
    if type(data) == "table" and data.Quest["BeltName"] then
        return data.Quest["BeltName"]
    end
end
spawn(
    function()
        while wait(Sec) do
            if _G.Dojoo then
                pcall(
                    function()
                        local args = {[1] = {["NPC"] = "Dojo Trainer", ["Command"] = "RequestQuest"}}
                        local progress =
                            replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(args))
                        local NameBelt = printBeltName(progress)
                        if debug == false and not progress and not NameBelt then
                            _tp(CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875))
                            debug = true
                        elseif
                            debug == true and
                                (CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875).Position -
                                    plr.Character.HumanoidRootPart.Position).Magnitude <= 50
                         then
                            if NameBelt == "White" then
                                local v = GetConnectionEnemies("Skull Slayer")
                                if v then
                                    repeat
                                        task.wait()
                                        Attack.Kill(v, _G.Dojoo)
                                    until not progress or not _G.Dojoo or not Attack.Alive(v)
                                else
                                    _tp(CFrame.new(-16759.58984375, 71.28376770019531, 1595.3399658203125))
                                end
                            elseif NameBelt == "Yellow" then
                                repeat
                                    task.wait()
                                    _G.SeaBeast1 = true
                                    _G.TerrorShark = true
                                    _G.Shark = true
                                    _G.Piranha = true
                                    _G.MobCrew = true
                                    _G.FishBoat = true
                                    _G.SailBoats = true
                                until not _G.Dojoo or not progress
                                _G.SeaBeast1 = false
                                _G.TerrorShark = false
                                _G.Shark = false
                                _G.Piranha = false
                                _G.MobCrew = false
                                _G.FishBoat = false
                                _G.SailBoats = false
                            elseif NameBelt == "Green" then
                                repeat
                                    task.wait()
                                    _G.SailBoats = true
                                until not _G.Dojoo or not progress
                                _G.SailBoats = false
                            elseif NameBelt == "Purple" then
                                repeat
                                    task.wait()
                                    _G.FarmEliteHunt = true
                                until not _G.Dojoo or not progress
                                _G.FarmEliteHunt = false
                            elseif NameBelt == "Red" then
                                repeat
                                    task.wait()
                                    _G.SailBoats = true
                                    _G.FishBoat = true
                                until not _G.Dojoo or not progress
                                _G.SailBoats = false
                                _G.FishBoat = false
                            elseif NameBelt == "Black" then
                                repeat
                                    task.wait()
                                    if
                                        workspace.Map:FindFirstChild("PrehistoricIsland") or
                                            workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island")
                                     then
                                        _G.Prehis_Find = true
                                        if
                                            workspace.Map.PrehistoricIsland.Core.ActivationPrompt:FindFirstChild(
                                                "ProximityPrompt",
                                                true
                                            )
                                         then
                                            _G.Prehis_Skills = false
                                            _G.Prehis_Find = true
                                        else
                                            _G.Prehis_Skills = true
                                            _G.Prehis_Find = false
                                        end
                                    else
                                        _G.Prehis_Find = true
                                        _G.Prehis_Skills = false
                                    end
                                until not _G.Dojoo or not progress
                                _G.Prehis_Find = false
                                _G.Prehis_Skills = false
                            elseif NameBelt == "Orange" or NameBelt == "Blue" then
                                return nil
                            end
                        end
                        if not progress then
                            debug = false
                            local args = {[1] = {["NPC"] = "Dojo Trainer", ["Command"] = "ClaimQuest"}}
                            replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(args))
                        end
                    end
                )
            end
        end
    end
)

FarmBlaze = Tabs.Dojo:CreateToggle("FarmBlaze", {
    Title = "Dragon Hunter Quest", 
    Description = "", 
    Default = false
})

FarmBlaze:OnChanged(function(Value)
  _G.FarmBlazeEM = Value
end)

checkQuesta=function()local a={[1]={["Context"]="Check"}}local b=nil;pcall(function()local c={[1]={["Context"]="RequestQuest"}}game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/DragonHunter"):InvokeServer(unpack(c))end)local d,e=pcall(function()b=game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/DragonHunter"):InvokeServer(unpack(a))end)local f=false;local g;local h;local i;if b then if b.Text then f=true;local j=b.Text;if string.find(tostring(j),"Defeat")then i=1;g=string.sub(tostring(j),8,9)g=tonumber(g)local k={"Hydra Enforcer","Venomous Assailant"}for l,m in pairs(k)do if string.find(j,m)then h=m;break end end elseif string.find(tostring(j),"Destroy")then g=10;i=2;h=nil end end end;return f,h,g,i end
BackTODoJo=function()for a,b in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren())do if b.Name=="NotificationTemplate"then if string.find(b.Text,"Head back to the Dojo to complete more tasks")then return true end end end;return false end
DragonMobClear=function(a,b,c)if workspace.Enemies:FindFirstChild(b)then for d,e in pairs(workspace.Enemies:GetChildren())do if e.Name==b and Attack.Alive(e)then if a then Attack.Kill(e,a)end end end else _tp(c)end end
spawn(function()
  while wait() do 
    if _G.FarmBlazeEM then
      pcall(function()              
        local a,v,h,x = checkQuesta()                  
        if a == true and not BackTODoJo() then
          if x == 1 then
            if v == "Hydra Enforcer" or v == "Venomous Assailant" then            
              repeat wait()
                DragonMobClear(true, v, CFrame.new(4620.61572265625, 1002.2954711914062, 399.0868835449219))
              until not _G.FarmBlazeEM or not a or BackTODoJo()                            
            end      
          elseif x == 2 then
            if workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true) then
              repeat wait()                
                spawn(function() _tp(workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true).CFrame * CFrame.new(4,0,0)) end)
                if (workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true).Position - Root.Position).Magnitude <= 200 then
                MousePos = workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true).Position
                Useskills("Melee","Z")
	            Useskills("Melee","X")
	            Useskills("Melee","C")
                wait(.5)
                Useskills("Sword","Z")
                Useskills("Sword","X")
                wait(.5)
                Useskills("Blox Fruit","Z")
                Useskills("Blox Fruit","X")
                Useskills("Blox Fruit","C")
                wait(.5)
                Useskills("Gun","Z")
                Useskills("Gun","X")
                end
              until not _G.FarmBlazeEM or not a or BackTODoJo()
            end
          end
        else
          _tp(CFrame.new(5813, 1208, 884))
          DragonMobClear(false, nil, nil) 
        end
      end)
    end
  end
end)
spawn(function()
  while wait(.1) do 
    if _G.FarmBlazeEM then
      pcall(function()              
        if workspace.EmberTemplate:FindFirstChild("Part") then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.EmberTemplate.Part.CFrame        
        end
      end)
    end
  end
end)

Tabs.Dojo:AddSection("Race Draco Normal")

DracoOne = Tabs.Dojo:CreateToggle("DracoOne", {
    Title = "Draco V1 Farming", 
    Description = "", 
    Default = false
})

DracoOne:OnChanged(function(Value)
  _G.DragoV1 = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.DragoV1 then     
        if GetM("Dragon Egg") <= 0 then
        repeat wait()
          _G.Prehis_Find = true
          _G.Prehis_Skills = true
          _G.Prehis_DE = true
        until not _G.DragoV1 or GetM("Dragon Egg") >= 1
          _G.Prehis_Find = false
          _G.Prehis_Skills = false
          _G.Prehis_DE = false
        end
      end
    end)
  end
end)

DracoTwo = Tabs.Dojo:CreateToggle("DracoTwo", {
    Title = "Draco V2 Farming", 
    Description = "", 
    Default = false
})

DracoTwo:OnChanged(function(Value)
  _G.AutoFireFlowers = Value
end)

spawn(function()
  while wait(Sec) do
    if _G.AutoFireFlowers then
      local FireFlower = workspace:FindFirstChild("FireFlowers")
      local v = GetConnectionEnemies("Forest Pirate")
      if v then repeat wait() Attack.Kill(v,_G.AutoFireFlowers) until not _G.AutoFireFlowers or not v.Parent or v.Humanoid.Health <= 0 or FireFlower
      else _tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
      end      
      if FireFlower then
        for i, v in pairs(FireFlower:GetChildren()) do
          if (v:IsA("Model") and v.PrimaryPart) then
            local FlowerPos = v.PrimaryPart.Position;
            local playerRoot = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
            local Magnited = (FlowerPos - playerRoot).Magnitude;
            if (Magnited <= 100) then
              vim1:SendKeyEvent(true, "E", false, game) wait(1.5) vim1:SendKeyEvent(false, "E", false, game)
            else
              _tp(CFrame.new(FlowerPos));
            end
          end
        end
      end
    end
  end
end)

DracoIDK = Tabs.Dojo:CreateToggle("DracoIDK", {
    Title = "Draco V3 Farming", 
    Description = "", 
    Default = false
})

DracoIDK:OnChanged(function(Value)
  _G.DragoV3 = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.DragoV3 then     
        repeat wait()
          _G.DangerSc = "Lv Infinite"
          _G.SailBoats = true
          _G.TerrorShark = true
        until not _G.DragoV3
        _G.DangerSc = "Lv 1"
        _G.SailBoats = false
        _G.TerrorShark = false
      end
    end)
  end
end)

Tabs.Dojo:AddSection("Trial Draco")

TeleportTrialDraco = Tabs.Dojo:CreateToggle("TeleportTrialDraco", {
    Title = "Teleport Trial Draco", 
    Description = "", 
    Default = false
})

TeleportTrialDraco:OnChanged(function(Value)
  _G.UPGDrago = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.UPGDrago then     
        if GetQuestDracoLevel() == false then
          return nil
        elseif GetQuestDracoLevel() == true then
          if (CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938).Position - Root.Position).Magnitude >= 300 then
            _tp(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938));
          else
            _tp(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938));
            local v371 = {[1] = {NPC = "Dragon Wizard",Command = "Upgrade"}};
            replicated.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(v371));
          end
        end
      end
    end)
  end
end)

TrialDraco = Tabs.Dojo:CreateToggle("TrialDraco", {
    Title = "Trial Draco Farming", 
    Description = "", 
    Default = false
})

TrialDraco:OnChanged(function(Value)
  _G.Relic123 = Value
end)

spawn(function()
  while wait(Sec) do
    if _G.Relic123 then
      pcall(function()
        if workspace.Map:FindFirstChild("DracoTrial") then
          replicated.Remotes.DracoTrial:InvokeServer()                  
          wait(.5)
          repeat wait() _tp(CFrame.new(-39934.9765625, 10685.359375, 22999.34375)) until not _G.Relic123 or (Root.Position == CFrame.new(-39934.9765625, 10685.359375, 22999.34375).Position)
          repeat wait() _tp(CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625)) until not _G.Relic123 or (Root.Position == CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625).Position)
          wait(2.5)
          repeat wait() _tp(CFrame.new(-39914.65625, 10685.384765625, 23000.177734375)) until not _G.Relic123 or (Root.Position == CFrame.new(-39914.65625, 10685.384765625, 23000.177734375).Position)
          repeat wait() _tp(CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375)) until not _G.Relic123 or (Root.Position == CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375).Position)
          wait(2.5)
          repeat wait() _tp(CFrame.new(-39908.5, 10685.4052734375, 22990.04296875)) until not _G.Relic123 or (Root.Position == CFrame.new(-39908.5, 10685.4052734375, 22990.04296875).Position)
          repeat wait() _tp(CFrame.new(-39609.5, 9376.400390625, 23472.94335975)) until not _G.Relic123 or (Root.Position == CFrame.new(-39609.5, 9376.400390625, 23472.94335975).Position) 
        else
          local drago = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport")
          if drago and drago:IsA("Part") then _tp(CFrame.new(drago.Position)) end        
        end
      end)
    end
  end
end)

TrainingDraco = Tabs.Dojo:CreateToggle("TrainingDraco", {
    Title = "Training Race Draco", 
    Description = "", 
    Default = false
})

TrainingDraco:OnChanged(function(Value)
  _G.TrainDrago = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.TrainDrago then
        local DragoM = {"Venomous Assailant","Hydra Enforcer"}
	    for i=1,#DragoM do
          if plr.Character:FindFirstChild("RaceEnergy").Value == 1 then
            vim1:SendKeyEvent(true, "Y", false, game)
            replicated.Remotes.CommF_:InvokeServer("UpgradeRace","Buy",2)
            _tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.0868835449219))
	      elseif plr.Character:FindFirstChild("RaceTransformed").Value == false then
	        local v = GetConnectionEnemies(DragoM)
	        if v then repeat wait() Attack.Kill(v, _G.TrainDrago) until _G.TrainDrago == false or v.Humanoid.Health <= 0 or not v.Parent                    		
		    else _tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.0868835449219))
		    end
	      end
        end
      end
    end)
  end
end)

Tabs.Fruits:CreateButton{
    Title = "Ramdom Fruits",
    Description = "",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "Do You Want Ramdom Fruits ?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        replicated.Remotes.CommF_:InvokeServer('Cousin', 'Buy')
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

StoreFruits = Tabs.Fruits:CreateToggle("StoreFruits", {
    Title = "Store Fruits", 
    Description = "", 
    Default = false
})

StoreFruits:OnChanged(function(Value)
  _G.TwFruits = Value
end)

spawn(function()
  while wait(Sec) do
    if _G.TwFruits then
      pcall(function()
        for _,x1 in pairs(workspace:GetChildren()) do
	    if string.find(x1.Name, "Fruit") then _tp(x1.Handle.CFrame) end
	    end
      end)
    end
  end
end)

StoreFruits = Tabs.Fruits:CreateToggle("StoreFruits", {
    Title = "Tween Fruits", 
    Description = "", 
    Default = false
})

StoreFruits:OnChanged(function(Value)
  _G.InstanceF = Value
end)

spawn(function()
  while wait(Sec) do
    if _G.InstanceF then
      pcall(function() collectFruits(_G.InstanceF) end)
    end
  end
end)

Tabs.Fruits:AddSection("Stork Fruits")

NormalStork = Tabs.Fruits:CreateDropdown("NormalStork", {
    Title = "Select Normal Fruits",
    Values = Nms,
    Multi = false,
    Default = 1,
})

NormalStork:OnChanged(function(Value)
    _G.SelectFruit = Value
end)

MirageStork = Tabs.Fruits:CreateDropdown("MirageStork", {
    Title = "Select Mirage Fruits",
    Values = fruitsOnSale,
    Multi = false,
    Default = 1,
})

MirageStork:OnChanged(function(Value)
    SelectF_Adv = Value
end)


Tabs.Fruits:CreateButton{
    Title = "Buy Fruits Stork",
    Description = "",
    Callback = function()
        Window:Dialog{
            Title = "NX-NazuX Hub",
            Content = "What Type you want buy ?",
            Buttons = {
                {
                    Title = "Normal Fruits",
                    Callback = function()
                        replicated.Remotes.CommF_:InvokeServer("PurchaseRawFruit", _G.SelectFruit)
                    end
                },
                {
                    Title = "Mirage Fruits",
                    Callback = function()
                        replicated.Remotes.CommF_:InvokeServer("PurchaseRawFruit", SelectF_Adv)
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                    end
                }
            }
        }
    end
}

-- Section Dungeon
Tabs.Rd:CreateSection("Dungeon")

-- Select Weapon Dropdown
ChooseWPDropdown = Tabs.Rd:CreateDropdown("ChooseWP", {
    Title = "Select Weapon in Dungeon Farm",
    Description = "",
    Values = {"Melee", "Sword", "Blox Fruit", "Gun"},
    Default = "Melee",
    Multi = false
})

ChooseWPDropdown:OnChanged(function(Value)
    _G.ChooseWP = Value
end)

-- Auto select weapon based on dropdown
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if _G.ChooseWP == 'Melee' then
                for _, v in pairs(plr.Backpack:GetChildren()) do
                    if v.ToolTip == 'Melee' then
                        if plr.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif _G.ChooseWP == 'Sword' then
                for _, v in pairs(plr.Backpack:GetChildren()) do
                    if v.ToolTip == 'Sword' then
                        if plr.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif _G.ChooseWP == 'Gun' then
                for _, v in pairs(plr.Backpack:GetChildren()) do
                    if v.ToolTip == 'Gun' then
                        if plr.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif _G.ChooseWP == 'Blox Fruit' then
                for _, v in pairs(plr.Backpack:GetChildren()) do
                    if v.ToolTip == 'Blox Fruit' then
                        if plr.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            end
        end)
    end
end)

-- Dungeon Farming Toggle
AutoDungeonToggle = Tabs.Rd:CreateToggle("AutoDungeon", {
    Title = "Dungeon Farming",
    Description = "",
    Default = false
})

AutoDungeonToggle:OnChanged(function(Value)
    _G.AutoDungeon = Value
end)

-- Dungeon Farming Loop
task.spawn(function()
    while task.wait(0.5) do
        if _G.AutoDungeon then
            pcall(function()
                for _, mob in pairs(workspace.Enemies:GetChildren()) do
                    if mob:FindFirstChild('HumanoidRootPart') and mob:FindFirstChild('Humanoid') and mob.Humanoid.Health > 0 then
                        repeat
                            task.wait()
                            Attack.Kill(mob, _G.AutoDungeon)
                        until mob.Humanoid.Health <= 0 or not _G.AutoDungeon
                    end
                end
            end)
        end
    end
end)

-- Teleport Floor Dropdown
TPFloorDropdown = Tabs.Rd:CreateDropdown("TPFloor", {
    Title = "Teleport to Floor",
    Description = "",
    Values = {"Floor 1", "Floor 2", "Floor 3", "Floor 4"},
    Default = "None",
    Multi = false
})

-- Teleport Floor Toggle
TPFloorToggle = Tabs.Rd:CreateToggle("AutoTPFloor", {
    Title = "Teleport to Selected Floor",
    Description = "",
    Default = false
})

-- Các biến và hàm cần thiết cho teleport
local TPStates = {
    ["Floor 1"] = {active = false, state = false},
    ["Floor 2"] = {active = false, state = false},
    ["Floor 3"] = {active = false, state = false},
    ["Floor 4"] = {active = false, state = false}
}

-- Hàm lấy character
local function GetCharacter()
    return plr.Character
end

-- Hàm tìm exit teleporter floor 1
local function FindExitTeleporterFloor1()
    local char = GetCharacter()
    if not char then return nil end
    
    for _, dungeon in pairs(workspace.Map.Dungeon:GetChildren()) do
        local exitTeleporter = dungeon:FindFirstChild("ExitTeleporter")
        if exitTeleporter and exitTeleporter:FindFirstChild("Root") then
            if (char.Position - exitTeleporter.Root.Position).Magnitude < 200 then
                return exitTeleporter.Root
            end
        end
    end
    return nil
end

-- Hàm tìm floor cao nhất
local function FindHighestFloor()
    local highestFloor = nil
    for _, dungeon in pairs(workspace.Map.Dungeon:GetChildren()) do
        local floorNumber = tonumber(dungeon.Name)
        if floorNumber then
            if not highestFloor or floorNumber > tonumber(highestFloor.Name) then
                highestFloor = dungeon
            end
        end
    end
    return highestFloor
end

-- Hàm tìm exit teleporter gần nhất
local function FindNearestExitTeleporter()
    local char = GetCharacter()
    if not char then return nil end
    
    local nearestExit = nil
    local nearestDistance = math.huge
    
    for _, dungeon in pairs(workspace.Map.Dungeon:GetChildren()) do
        local exitTeleporter = dungeon:FindFirstChild("ExitTeleporter")
        if exitTeleporter and exitTeleporter:FindFirstChild("Root") then
            local distance = (char.Position - exitTeleporter.Root.Position).Magnitude
            if distance < nearestDistance then
                nearestDistance = distance
                nearestExit = exitTeleporter.Root
            end
        end
    end
    return nearestExit
end

-- Xử lý khi dropdown thay đổi
local SelectedFloor = "None"
TPFloorDropdown:OnChanged(function(Value)
    SelectedFloor = Value
    -- Reset tất cả trạng thái khi thay đổi floor
    for floor, state in pairs(TPStates) do
        state.state = false
    end
end)

-- Xử lý khi toggle thay đổi
TPFloorToggle:OnChanged(function(Value)
    _G.AutoTPFloor = Value
    
    if not Value then
        -- Reset tất cả trạng thái khi tắt
        for floor, state in pairs(TPStates) do
            state.state = false
        end
    end
end)

-- Main teleport loop
task.spawn(function()
    while task.wait(0.3) do
        if not _G.AutoTPFloor or SelectedFloor == "None" then
            continue
        end
        
        local char = GetCharacter()
        if not char then continue end
        
        if TPStates[SelectedFloor] and not TPStates[SelectedFloor].state then
            if SelectedFloor == "Floor 1" then
                local exitRoot = FindExitTeleporterFloor1()
                if exitRoot then
                    char.CFrame = exitRoot.CFrame * CFrame.new(0, 3, 0)
                    TPStates[SelectedFloor].state = true
                end
                
            elseif SelectedFloor == "Floor 2" then
                for _, dungeon in pairs(workspace.Map.Dungeon:GetChildren()) do
                    local entranceTeleporter = dungeon:FindFirstChild("EntranceTeleporter")
                    local exitTeleporter = dungeon:FindFirstChild("ExitTeleporter")
                    
                    if entranceTeleporter and exitTeleporter and 
                       entranceTeleporter:FindFirstChild("Root") and 
                       exitTeleporter:FindFirstChild("Root") then
                        
                        if (char.Position - entranceTeleporter.Root.Position).Magnitude < 100 then
                            char.CFrame = exitTeleporter.Root.CFrame * CFrame.new(0, 3, 0)
                            TPStates[SelectedFloor].state = true
                            break
                        end
                    end
                end
                
            elseif SelectedFloor == "Floor 3" then
                local highestFloor = FindHighestFloor()
                if highestFloor and highestFloor:FindFirstChild("ExitTeleporter") and 
                   highestFloor.ExitTeleporter:FindFirstChild("Root") then
                    char.CFrame = highestFloor.ExitTeleporter.Root.CFrame * CFrame.new(0, 3, 0)
                    TPStates[SelectedFloor].state = true
                end
                
            elseif SelectedFloor == "Floor 4" then
                local nearestExit = FindNearestExitTeleporter()
                if nearestExit then
                    char.CFrame = nearestExit.CFrame * CFrame.new(0, 3, 0)
                    TPStates[SelectedFloor].state = true
                end
            end
        end
    end
end)

Tabs.Rd:CreateSection("Raid")

ChipRaid = Tabs.Rd:CreateDropdown("ChipRaid", {
    Title = "Select Chip Raid",
    Description = "",
    Values = {"Flame", "Ice", "Quake", "Light", "Dark", "String", "Magma", "Buddha", "Sand", "Phoenix", "Dough"},
    Default = "None",
    Multi = false
})

ChipRaid:OnChanged(function(Value)
    _G.SelectChip =  Value
end)

Tabs.Rd:CreateButton({
    Title = "Buy Chip",
    Description = "",
    Callback = function()
        Window:Dialog({
            Title = "NX-NazuX Hub",
            Content = "What Type you want Buy a chip Raid ?",
            Buttons = {
                {
                    Title = "Beli",
                    Callback = function()
                        if not GetBP("Special Microchip") then 
                            replicated.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                        end
                    end
                },
                {
                    Title = "Fruits",
                    Callback = function()
                        if GetBP("Special Microchip") then return end
                        
                        local FruitPrice = {}
                        local fruits = replicated:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits")
                        
                        for i, v in next, fruits do
                            if v.Price <= 490000 then 
                                table.insert(FruitPrice, v.Name) 
                            end
                        end    
                        
                        for _, y in pairs(FruitPrice) do    
                            if not GetBP("Special Microchip") then     
                                replicated.Remotes.CommF_:InvokeServer("LoadFruit", tostring(y))	      
                                replicated.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)	
                            end            
                        end
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        -- Đóng dialog
                    end
                }
            }
        })
    end
})

StartRaid = Tabs.Rd:CreateToggle("StartRaid", {
    Title = "Start Raid",
    Description = "",
    Default = false
})

StartRaid:OnChanged(function(Value)
    _G.Auto_StartRaid = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.Auto_StartRaid then
        if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false then
          if GetBP("Special Microchip") then
            if World2 then
              _tp(CFrame.new(-6438.73535, 250.645355, -4501.50684))
              fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
            elseif World3 then                   
              replicated.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-08, 0.914313197, -1.90943332e-08, 1, 3.8755779e-08, -0.914313197, -1.76180437e-09, -0.405007899))
              fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
            end
          end
        end
      end
    end)
  end
end)    

StartRaid = Tabs.Rd:CreateToggle("StartRaid", {
    Title = "Kill aura Raid",
    Description = "",
    Default = false
})

StartRaid:OnChanged(function(Value)
    _G.KillH = Value
end)

spawn(function()
  while wait(Sec) do
    if _G.KillH then
      for _, v in pairs(workspace.Enemies:GetChildren()) do
        if Attack.Alive(v) then
          pcall(function()
            repeat wait(Sec)
              sethiddenproperty(plr, "SimulationRadius", math.huge)
              v:BreakJoints()
              v.Humanoid.Health = 0
              v.HumanoidRootPart.CanCollide = false
            until not _G.KillH or not v.Parent or v.Humanoid.Health <= 0
          end)
        end
      end
    end
  end
end)

AuraMobRaid = Tabs.Rd:CreateToggle("AuraMobRaid", {
    Title = "Kill aura Raid",
    Description = "",
    Default = false
})

AuraMobRaid:OnChanged(function(Value)
    NextIs = Value
end)

spawn(function()
  while wait(Sec) do
    if NextIs then
      if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
        if workspace["_WorldOrigin"].Locations:FindFirstChild("Island 5") then _tp(workspace["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,50,100))
        elseif workspace["_WorldOrigin"].Locations:FindFirstChild("Island 4") then _tp(workspace["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,50,100))
        elseif workspace["_WorldOrigin"].Locations:FindFirstChild("Island 3") then _tp(workspace["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,50,100))
        elseif workspace["_WorldOrigin"].Locations:FindFirstChild("Island 2") then _tp(workspace["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,50,100))
        elseif workspace["_WorldOrigin"].Locations:FindFirstChild("Island 1") then _tp(workspace["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,50,100))
        end
      end
    end
  end
end)

AwakenFruits = Tabs.Rd:CreateToggle("AwakenFruits", {
    Title = "Awakening Fruits Raid",
    Description = "",
    Default = false
})

AwakenFruits:OnChanged(function(Value)
    _G.Auto_Awakener = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.Auto_Awakener then
        replicated.Remotes.CommF_:InvokeServer("Awakener","Check")
        replicated.Remotes.CommF_:InvokeServer("Awakener","Awaken")
      end
    end)
  end
end)	

Tabs.Rd:CreateSection("Dome All Raid")

DoneRaid = Tabs.Rd:CreateToggle("DoneRaid", {
    Title = "Done All Raid Farming",
    Description = "",
    Default = false
})

DoneRaid:OnChanged(function(Value)
    _G.Raiding = Value
end)

spawn(function()
  pcall(function() 
    while wait(Sec) do
      if _G.Raiding then  
        if plr.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then          
          local islands = {"Island5","Island 4", "Island 3", "Island 2", "Island 1"}
          for _, island in ipairs(islands) do
          local location = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild(island)
            if location then
              for i,v in pairs(workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") then
                  if v.Humanoid.Health > 0 then
                    repeat wait() Attack.Kill(v,_G.Raiding) NextIs=false until not _G.Raiding or not v.Parent or v.Humanoid.Health <= 0 NextIs=true
                  end
                end
              end
            end
          end
        else
          NextIs = false
        end
      else
        NextIs = false
      end
    end
  end)
end)

Tabs.Race:CreateSection("Get Race")

Ghoul = Tabs.Race:CreateToggle("Ghoul", {
    Title = "Get Ghoul Race",
    Description = "",
    Default = false
})

Ghoul:OnChanged(function(Value)
    _G.AutoGhoul = Value
end)

spawn(function()
    while wait(Sec) do
        if _G.AutoGhoul then
            local enemies = game:GetService("Workspace").Enemies
            local cursedCaptain = enemies:FindFirstChild("Cursed Captain")
            if cursedCaptain and cursedCaptain:FindFirstChild("Humanoid") and cursedCaptain:FindFirstChild("HumanoidRootPart") then
                if cursedCaptain.Humanoid.Health > 0 then
                    repeat
                        wait()
                        Attack.Kill(cursedCaptain, _G.AutoGhoul) -- Sử dụng Attack.Kill từ file gốc
                    until not _G.AutoGhoul or not cursedCaptain.Parent or cursedCaptain.Humanoid.Health <= 0
                end
            else
                local storageCaptain = game:GetService("ReplicatedStorage"):FindFirstChild("Cursed Captain")
                if storageCaptain then
                    _tp(storageCaptain.HumanoidRootPart.CFrame * CFrame.new(5, 10, 2)) -- Dùng _tp từ file gốc
                end
            end
        end
    end
end)

Cyborg = Tabs.Race:CreateToggle("Ghoul", {
    Title = "Get Ghoul Race",
    Description = "",
    Default = false
})

Ghoul:OnChanged(function(Value)
    _G.AutoColShad = Value
end)

spawn(function()
  while wait(.2) do
    if _G.AutoColShad then
      pcall(function()
        local v = GetConnectionEnemies("Cyborg")
	    if v then repeat task.wait()Attack.Kill(v, _G.AutoColShad)until _G.AutoColShad == false or not v.Parent or v.Humanoid.Health <= 0
        else _tp(CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813))
        end
      end)
    end
  end
end)

Tabs.Race:CreateSection("Pull Lever")

FindMirageIsland = Tabs.Race:CreateToggle("FindMirageIsland", {
    Title = "Get Ghoul Race",
    Description = "",
    Default = false
})

FindMirageIsland:OnChanged(function(Value)
    _G.FindMirage = Value
end)

spawn(function()
  while wait() do
    if _G.FindMirage then 
      pcall(function()
        if not workspace["_WorldOrigin"].Locations:FindFirstChild("Mirage Island", true) then                
          local myBoat = CheckBoat()
          if not myBoat then
            local buyBoatCFrame = CFrame.new(-16927.451, 9.086, 433.864)
            TeleportToTarget(buyBoatCFrame)
            if (buyBoatCFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 then replicated.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat) end
          else
            if plr.Character.Humanoid.Sit == false then
              local boatSeatCFrame = myBoat.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
              _tp(boatSeatCFrame)
            else            
              repeat wait()
                local targetDestination = CFrame.new(-10000000, 31, 37016.25)
                if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
                  _tp(CFrame.new(-10000000, 150, 37016.25))
                else
                  _tp(CFrame.new(-10000000, 31, 37016.25))
                end
              until not _G.FindMirage or (targetDestination.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace["_WorldOrigin"].Locations:FindFirstChild("Mirage Island") or plr.Character.Humanoid.Sit == false plr.Character.Humanoid.Sit = false
            end
          end
        else
          _tp(workspace.Map.MysticIsland.Center.CFrame*CFrame.new(0,300,0))
        end
      end)
    end
  end
end)

HighestPoint = Tabs.Race:CreateToggle("HighestPoint", {
    Title = "Tween Highest Point",
    Description = "",
    Default = false
})

HighestPoint:OnChanged(function(Value)
    _G.HighestMirage = Value
end)

spawn(function()
  while wait(Sec) do
    if _G.HighestMirage then 
      pcall(function()
      if workspace["_WorldOrigin"].Locations:FindFirstChild("Mirage Island",true) then _tp(workspace.Map.MysticIsland.Center.CFrame*CFrame.new(0,400,0))end
      end)
    end
  end
end)

HighestPoint = Tabs.Race:CreateToggle("HighestPoint", {
    Title = "Look Moon",
    Description = "",
    Default = false
})

HighestPoint:OnChanged(function(Value)
    getgenv().LockMoonAndOnRaceV3 = Value
        
    if not Value then
        return
    end
end)
        
        -- Luồng 1: Look at Moon
        spawn(function()
            while getgenv().LockMoonAndOnRaceV3 do
                pcall(function()
                    if World3 then
                        local moonDir = game.Lighting:GetMoonDirection()
                        if moonDir and moonDir.Magnitude > 0 then
                            local currentPos = game.Workspace.CurrentCamera.CFrame.Position
                            local lookAtPos = currentPos + moonDir * 100
                            game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(currentPos, lookAtPos)
                        end
                    end
                end)
                wait(0.5)
            end
        end)
        
        -- Luồng 2: Press T key
        spawn(function()
            while getgenv().LockMoonAndOnRaceV3 do
                pcall(function()
                    if World3 then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
                    end
                end)
                wait(3)
            end
        end)

HighestPoint = Tabs.Race:CreateToggle("HighestPoint", {
    Title = "Tween Gear",
    Description = "",
    Default = false
})

HighestPoint:OnChanged(function(Value)
    _G.TPGEAR = Value
end)

spawn(function()
  pcall(function()
    while wait(0.1) do
      if _G.TPGEAR then
        for i,v in pairs(workspace.Map:FindFirstChild('MysticIsland'):GetChildren()) do
          if v.Name == "Part" then
            if v.ClassName == "MeshPart" then _tp(v.CFrame) end
          end
        end
      end
    end
  end)
end)

Tabs.Race:CreateSection("Upgrade V2 Race")

TwoRaceUpgrade = Tabs.Race:CreateToggle("TwoRaceUpgrade", {
    Title = "Upgrade Race V1 to V2",
    Description = "",
    Default = false
})

TwoRaceUpgrade:OnChanged(function(Value)
    _G.UpgradeRaceV2 = Value
end)

spawn(function()
    pcall(function()
        while wait(Sec) do
            if not _G.UpgradeRaceV2 or not World2 then
                break
            end
            
            local player = game.Players.LocalPlayer
            local backpack = player.Backpack
            local raceData = player.Data.Race
            
            if raceData:FindFirstChild("Evolved") then
                break
            end
            
            local alchemistStatus = replicated.Remotes.CommF_:InvokeServer("Alchemist","1")
            
            if alchemistStatus == 0 then
                local targetPos = CFrame.new(-2779.83521, 72.9661407, -3574.02002)
                if (targetPos.Position - Root.Position).Magnitude > 4 then
                    _tp(targetPos)
                else
                    wait(1.1)
                    replicated.Remotes.CommF_:InvokeServer("Alchemist","2")
                end
                
            elseif alchemistStatus == 1 then
                if not GetBP("Flower 1") then
                    _tp(workspace.Flower1.CFrame)
                elseif not GetBP("Flower 2") then
                    _tp(workspace.Flower2.CFrame)
                elseif not GetBP("Flower 3") then
                    local zombie = GetConnectionEnemies("Zombie")
                    if zombie then
                        repeat
                            wait()
                            Attack.Kill(zombie, _G.UpgradeRaceV2)
                        until GetBP("Flower 3") or not zombie.Parent or zombie.Humanoid.Health <= 0 or not _G.UpgradeRaceV2
                    else
                        _tp(CFrame.new(-5685.923, 48.48, -853.237))
                    end
                end
                
            elseif alchemistStatus == 2 then
                replicated.Remotes.CommF_:InvokeServer("Alchemist","3")
            end
        end
    end)
end)

Tabs.Race:CreateSection("Trial Race")

TeleportRaceDoor = Tabs.Race:CreateToggle("TeleportRaceDoor", {
    Title = "Teleport Race Door",
    Description = "",
    Default = false
})

TeleportRaceDoor:OnChanged(function(Value)
    _G.TPDoor = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.TPDoor then
	    if tostring(plr.Data.Race.Value) == "Mink" then
          _tp(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
	    elseif tostring(plr.Data.Race.Value) == "Fishman" then
          _tp(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
	    elseif tostring(plr.Data.Race.Value) == "Cyborg" then
          _tp(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
	    elseif tostring(plr.Data.Race.Value) == "Skypiea" then
          _tp(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
	    elseif tostring(plr.Data.Race.Value) == "Ghoul" then
          _tp(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
	    elseif tostring(plr.Data.Race.Value) == "Human" then
          _tp(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
	    end
      end
    end)
  end
end) 

Donetrial = Tabs.Race:CreateToggle("Donetrial", {
    Title = "Done Trial Race",
    Description = "",
    Default = false
})

Donetrial:OnChanged(function(Value)
    _G.Complete_Trials = Value
end)

GetSeaBeastTrial = function()
  if not workspace.Map:FindFirstChild("FishmanTrial") then return nil end
  if workspace["_WorldOrigin"].Locations:FindFirstChild("Trial of Water") then FishmanTrial = workspace["_WorldOrigin"].Locations:FindFirstChild("Trial of Water") end
  if FishmanTrial then
    for _,v in next, workspace.SeaBeasts:GetChildren() do
      if v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - FishmanTrial.Position).Magnitude <= 1500 then
      if v.Health.Value > 0 then return v end
      end
    end
  end
end
spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.Complete_Trials then
        if tostring(plr.Data.Race.Value) == "Mink" then
          notween(workspace.Map.MinkTrial.Ceiling.CFrame * CFrame.new(0,-20,0))
	   end
      end
    end)
  end
end)
spawn(function()
  while wait(Sec) do
    pcall(function() 
      if _G.Complete_Trials then
	    if tostring(plr.Data.Race.Value) == "Fishman" then
	      if GetSeaBeastTrial() then            
            repeat task.wait()
              spawn(function()_tp(CFrame.new(GetSeaBeastTrial().HumanoidRootPart.Position.X,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y + 300,GetSeaBeastTrial().HumanoidRootPart.Position.Z))end)
		      MousePos = GetSeaBeastTrial().HumanoidRootPart.Position
              Useskills("Melee","Z")
	          Useskills("Melee","X")
	          Useskills("Melee","C")
              wait(.1)
              Useskills("Sword","Z")
              Useskills("Sword","X")
              wait(.1)
              Useskills("Blox Fruit","Z")
              Useskills("Blox Fruit","X")
              Useskills("Blox Fruit","C")
              wait(.1)
              Useskills("Gun","Z")
              Useskills("Gun","X")
            until _G.Complete_Trials == false or not GetSeaBeastTrial()
          end          
	    end
      end
    end)
  end
end)
spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.Complete_Trials then
        if tostring(plr.Data.Race.Value) == "Cyborg" then
         _tp(workspace.Map.CyborgTrial.Floor.CFrame * CFrame.new(0,500,0))
   	   end
      end
    end)
  end
end)
spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.Complete_Trials then
        if tostring(plr.Data.Race.Value) == "Skypiea" then
          notween(workspace.Map.SkyTrial.Model.FinishPart.CFrame)
  	   end
      end
    end)
  end
end)
spawn(function()
  while wait(.1) do   
    pcall(function()
      if _G.Complete_Trials then
	    if tostring(plr.Data.Race.Value) == "Human" or tostring(plr.Data.Race.Value) == "Ghoul" then	      
	      local TrialsTables = {"Ancient Vampire","Ancient Zombie"}
	      local v = GetConnectionEnemies(TrialsTables)
          if v then repeat wait() Attack.Kill(v, _G.Complete_Trials)until _G.Complete_Trials == false or not v.Parent or v.Humanoid.Health <= 0 end		
        end
      end
    end)
  end
end)

Donetrial = Tabs.Race:CreateToggle("Donetrial", {
    Title = "Attack Player after Trial Race",
    Description = "",
    Default = false
})

Donetrial:OnChanged(function(Value)
    _G.Defeating = Value
end)

spawn(function()
  while task.wait(Sec) do
    pcall(function()
      if _G.Defeating then
	    for _, v in pairs(workspace.Characters:GetChildren()) do
          if v.Name ~= plr.Name then
            if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and (Root.Position - v.HumanoidRootPart.Position).Magnitude <= 250 then
              repeat task.wait() EquipWeapon(_G.SelectWeapon) _tp(v.HumanoidRootPart.CFrame * CFrame.new(0,0,15)) sethiddenproperty(plr, "SimulationRadius", math.huge)until _G.Defeating == false or v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid")
            end
          end
        end
      end
    end)
  end
end)

Donetrial = Tabs.Race:CreateToggle("Donetrial", {
    Title = "Attack Player after Trial Race",
    Description = "",
    Default = false
})

Donetrial:OnChanged(function(Value)
    _G.Defeating = Value
end)

Tabs.Race:CreateSection("Teleport Trial Race")

Tabs.Race:CreateButton{
    Title = "Teleport Ancient Clock Trial",
    Description = "",
    Callback = function()
        notween(CFrame.new(29549, 15069, -88))
    end
}

Tabs.Race:CreateButton{
    Title = "Teleport Ancient One Trial",
    Description = "",
    Callback = function()
        notween(CFrame.new(28981.552734375, 14888.4267578125, - 120.245849609375))
    end
}

Tabs.Race:CreateButton{
    Title = "Teleport Temple of Time Trial",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
    end
}

Tabs.Teleport:CreateSection("Teleport Sea")

-- Biến lưu trữ vị trí được chọn
local selectedTeleport = nil

-- Dropdown chọn sea
TeleportSeaDropdown = Tabs.Teleport:CreateDropdown("TeleportSea", {
    Title = "Select Teleport Sea",
    Description = "",
    Values = {"First Sea", "Second Sea", "Third Sea"},
    Default = "First Sea",
    Multi = false
})

TeleportSeaDropdown:OnChanged(function(Value)
    selectedTeleport = Value
end)

-- Nút teleport sea
Tabs.Teleport:CreateButton{
    Title = "Teleport Sea",
    Description = "",
    Callback = function()
                if not selectedTeleport then
            warn("Please select a location first!")
            return
        end
        
        local command = ""
        
        -- Determine command based on selection
        if selectedTeleport == "First Sea" then
            command = "TravelMain"
        elseif selectedTeleport == "Second Sea" then
            command = "TravelDressrosa"
        elseif selectedTeleport == "Third Sea" then
            command = "TravelZou"
        end
        
        -- Execute teleport
        local success, result = pcall(function()
            return CommF_Remote:InvokeServer(command)
        end)
        
        if not success then
            warn("Teleport failed:", result)
        else
            print("Teleporting to: " .. selectedTeleport)
        end
    end
}

Tabs.Teleport:CreateSection("Teleport Island")

-- Lấy danh sách đảo
Location = {}
for i, v in pairs(workspace["_WorldOrigin"].Locations:GetChildren()) do  
    table.insert(Location, v.Name)
end

-- Tạo dropdown chọn đảo
IslandDropdown = Tabs.Teleport:CreateDropdown("IslandDropdown", {
    Title = "Select Teleport Island",
    Description = "",
    Values = Location,
    Default = nil,
    Multi = false
})

IslandDropdown:OnChanged(function(Value)
    _G.Island = Value
end)

-- Toggle teleport đảo
TeleportIslandToggle = Tabs.Teleport:CreateToggle("TeleportIsland", {
    Title = "Teleport Island",
    Description = "",
    Default = false
})

TeleportIslandToggle:OnChanged(function(Value)
  _G.Teleport = Value
  if Value then
    for i,v in pairs(workspace["_WorldOrigin"].Locations:GetChildren()) do
      if v.Name == _G.Island then
        repeat wait()
	     _tp(v.CFrame * CFrame.new(0, 30, 0)) 
        until not _G.Teleport or Root.CFrame == v.CFrame
      end
    end
    end
end)

-- Tạo input field
InputKick = Tabs.Virtual:CreateInput("InputKick", {
    Title = "Input Kick Message",
    Default = "",
    Placeholder = "Fake Kick",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
        _G.InputKickMessage = Value -- Lưu lý do kick
    end
})

-- Tạo button với toggle
Tabs.Virtual:CreateButton({
    Title = "Fake Kick",
    Description = "",
    Callback = function()
        _G.AutoKick = not _G.AutoKick -- Toggle trạng thái
        
        if _G.AutoKick then
            print("Auto Kick: ON")
        else
            print("Auto Kick: OFF")
        end
    end
})

-- Vòng lặp tự động kick
task.spawn(function()
    while task.wait(1) do -- Chờ 1 giây mỗi lần
        if _G.AutoKick then
            pcall(function() -- Bắt lỗi để không crash
                if _G.InputKickMessage then
                    -- Kick với lý do đã nhập
                    game.Players.LocalPlayer:Kick(_G.InputKickMessage)
                else
                    -- Nếu không có lý do, kick mặc định
                    game.Players.LocalPlayer:Kick("Auto Kick")
                end
            end)
        end
    end
end)

Input_Level = Tabs.Virtual:CreateInput(
    "Input_Level",
    {
        Title = "Fake Level",
        Default = "",
        Placeholder = "",
        Numeric = false,
        Finished = false,
        Callback = function(v327)
            game:GetService("Players")["LocalPlayer"].Data.Level.Value = tonumber(v327)
        end
    }
)

Input_EXP = Tabs.Virtual:CreateInput(
    "Input_EXP",
    {
        Title = "Fake EXP",
        Default = "",
        Placeholder = "",
        Numeric = false,
        Finished = false,
        Callback = function(v329)
            game:GetService("Players")["LocalPlayer"].Data.Exp.Value = tonumber(v329)
        end
    }
)

Input_Beli = Tabs.Virtual:CreateInput(
    "Input_Beli",
    {
        Title = "Fake Beli",
        Default = "",
        Placeholder = "",
        Numeric = false,
        Finished = false,
        Callback = function(v331)
            game:GetService("Players")["LocalPlayer"].Data.Beli.Value = tonumber(v331)
        end
    }
)
Input_Fragments = Tabs.Virtual:CreateInput(
    "Input_Fragments",
    {
        Title = "Fake Fragment",
        Default = "",
        Placeholder = "",
        Numeric = false,
        Finished = false,
        Callback = function(v333)
            game:GetService("Players")["LocalPlayer"].Data.Fragments.Value = tonumber(v333)
        end
    }
)

AyoChill = Tabs.Virtual:CreateToggle("AyoChill", {
    Title = "SocLo",
    Description = "",
    Default = false
})

AyoChill:OnChanged(function(Value)
        isDancing = Value
        isShooting = Value
        
        if Value then
            task.spawn(DanceLoop)
            task.spawn(ShootLoop)
        else
            if DanceAnim then
                DanceAnim:Stop()
                DanceAnim:Destroy()
                DanceAnim = nil
            end
        end
    end)

Tabs.ListMisc:CreateSection("GUI")

Tabs.ListMisc:CreateButton{
    Title = "Open Devil Fruits Shop",
    Description = "",
    Callback = function()
        playDlg("FruitShop")
    end
}

Tabs.ListMisc:CreateButton{
    Title = "Open Devil Fruits Mirage Shop",
    Description = "",
    Callback = function()
        playDlg("FruitShop2")
    end
}

Tabs.ListMisc:CreateButton {
    Title = "Open Awakening",
    Description = "",
    Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
    end
}

Tabs.ListMisc:CreateButton {
    Title = "Open Title",
    Description = "",
    Callback = function()
        args = {
            "getTitles"
        }
        local success, result =
            pcall(
            function()
                return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        )
        if success then
            game.Players.LocalPlayer.PlayerGui.Main.Titles.Visible = true
        end
    end
}

Tabs.ListMisc:CreateSection("Race Open")

RaceOld = Tabs.ListMisc:CreateToggle("RaceOld", {
    Title = "Open Race V3",
    Description = "",
    Default = false
})

RaceOld:OnChanged(function(Value)
  _G.RaceClickAutov3 = Value
end)

spawn(function()
  while wait(.2) do
    pcall(function()
      if _G.RaceClickAutov3 then
        repeat
          replicated.Remotes.CommE:FireServer("ActivateAbility") 
          wait(30)
        until not _G.RaceClickAutov3   
      end 
    end)
  end
end)

RaceNew = Tabs.ListMisc:CreateToggle("RaceNew", {
    Title = "Open Race V4",
    Description = "",
    Default = false
})

RaceNew:OnChanged(function(Value)
  _G.RaceClickAutov4 = Value
end)

spawn(function()
  while wait(.2) do
    pcall(function()
      if _G.RaceClickAutov4 then
  	    if plr.Character:FindFirstChild("RaceEnergy") then
        if plr.Character:FindFirstChild("RaceEnergy").Value == 1 then Useskills("nil","Y") end
        end        
      end 
    end)
  end
end)

Tabs.ListMisc:CreateSection("Haki Open")

Buso = Tabs.ListMisc:CreateToggle("Buso", {
    Title = "Open Buso Haki",
    Description = "",
    Default = false
})

Buso:OnChanged(function(Value)
  Boud = Value
end)

spawn(function()
  while wait(Sec) do
    pcall(function()
      if Boud then
      local _HasBuso = {"HasBuso","Buso"}
  	  if not plr.Character:FindFirstChild(_HasBuso[1]) then replicated.Remotes.CommF_:InvokeServer(_HasBuso[2]) end
      end
    end)
  end
end)

ObservationHaki = Tabs.ListMisc:CreateToggle("ObservationHaki", {
    Title = "Open Observation Haki",
    Description = "",
    Default = false
})

ObservationHaki:OnChanged(function(Value)
    _G.ObservationOpen = Value
end)

spawn(function()
    while wait() do
        if _G.ObservationOpen then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
            end)
        end
    end
end)

Tabs.ListMisc:CreateSection("FPS Booser")

Tabs.ListMisc:CreateButton {
    Title = "FPS Booster",
    Description = "",
    Callback = function()
        FPSBooster()
    end
}

Tabs.ListMisc:CreateSection("Join Team")

Tabs.ListMisc:CreateButton{
    Title = "Join Pirate Team",
    Description = "",
    Callback = function()
        if not canChangeTeam then
            return
        end
        canChangeTeam = false
        task.wait(debounceTime)
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
        end)
        canChangeTeam = true
    end
}

Tabs.ListMisc:CreateButton{
    Title = "Join Marines Team",
    Description = "",
    Callback = function()
        if not canChangeTeam then
            return
        end
        canChangeTeam = false
        task.wait(debounceTime)
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
        end)
        canChangeTeam = true
    end
}

Tabs.ListMisc:CreateSection("Stats")

_G.SelectedStat = "Melee"
_G.pSats = 10
_G.Auto_Stats = false

SelectStatsA = Tabs.ListMisc:CreateSlider("SelectStatsA", {
    Title = "Select Value Stats",
    Description = "",
    Default = 10,
    Min = 0,
    Max = 2000,
    Rounding = 1,
    Callback = function(Value)
        _G.pSats = Value
    end
})

SelectStatsB = Tabs.ListMisc:CreateDropdown("SelectStatsB", {
    Title = "Select Type Stats",
    Values = {"Melee", "Sword", "Gun", "Devil Fruit", "Defense"},
    Multi = false,
    Default = 1,
})

SelectStatsB:OnChanged(function(Value)
    _G.SelectedStat = Value
end)

StatsAuto = Tabs.ListMisc:CreateToggle("StatsAuto", {
    Title = "Stats Farming",
    Description = "",
    Default = false
})

StatsAuto:OnChanged(function(Value)
    _G.Auto_Stats = Value
end)

-- Auto Stats chung
task.spawn(function()
    while task.wait(Sec) do
        if _G.Auto_Stats then
            pcall(function()
                if _G.SelectedStat == "Melee" then
                    statsSetings("Melee", _G.pSats)
                elseif _G.SelectedStat == "Sword" then
                    statsSetings("Sword", _G.pSats)
                elseif _G.SelectedStat == "Gun" then
                    statsSetings("Gun", _G.pSats)
                elseif _G.SelectedStat == "Devil Fruit" then
                    statsSetings("Devil", _G.pSats)
                elseif _G.SelectedStat == "Defense" then
                    statsSetings("Defense", _G.pSats)
                end
            end)
        end
    end
end)

Tabs.ListMisc:CreateSection("code")

Tabs.ListMisc:CreateButton{
    Title = "Redeem All Code",
    Description = "",
    Callback = function()
            delayBetweenRequests = 0.5
            for i, v in pairs(code) do
                task.spawn(function()
                    RedeemCode(v)
                    task.wait(delayBetweenRequests)
                end)
            end
        end
    }

Tabs.ListMisc:CreateSection("Distable")

RemoveNotification = Tabs.ListMisc:CreateToggle("RemoveNotification", {
    Title = "Distable Notify",
    Description = "",
    Default = false
})

RemoveNotification:OnChanged(function(Value)
    getgenv().RemoveNotification = Value

    if Value then
    game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = not getgenv().RemoveNotification
    end
end)

return KeySystem