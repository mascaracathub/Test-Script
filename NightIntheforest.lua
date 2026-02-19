repeat task.wait() until game:IsLoaded()

local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

-- chiến đấu

local killAuraToggle = false
local chopAuraToggle = false
local auraRadius = 50
local currentammount = 0

local toolsDamageIDs = {
    ["Rìu Cũ"] = "3_7367831688",
    ["Rìu Tốt"] = "112_7367831688",
    ["Rìu Mạnh"] = "116_7367831688",
    ["Cưa Máy"] = "647_8992824875",
    ["Giáo"] = "196_8999010016"
}

-- tự động ăn

local autoFeedToggle = false
local selectedFood = "Cà Rốt"
local hungerThreshold = 75
local alwaysFeedEnabledItems = {}
local alimentos = {
    "Táo",
    "Quả Mọng",
    "Cà Rốt",
    "Bánh Ngọt",
    "Ớt",
    "Thịt Chín",
    "Bít Tết Chín"
}

-- esp

local ie = {
    "Băng Gạc", "Bu Lông", "Quạt Hỏng", "Lò Vi Sóng Hỏng", "Bánh Ngọt", "Cà Rốt", "Ghế", "Than Đá", "Đống Xu",
    "Thịt Chín", "Bít Tết Chín", "Bình Nhiên Liệu", "Thân Sắt", "Giáp Da", "Gỗ", "MadKit", "Ghế Kim Loại",
    "MedKit", "Động Cơ Xe Cũ", "Đèn Pin Cũ", "Radio Cũ", "Súng Lục", "Đạn Súng Lục", "Súng Trường", "Đạn Súng Trường",
    "Thịt Sống", "Tấm Kim Loại", "Bít Tết Sống", "Lốp Xe", "Máy Giặt"
}
local me = {"Thỏ", "Sói", "Sói Đầu Đàn", "Gấu", "Giáo Phái", "Giáo Phái Nỏ", "Người Ngoài Hành Tinh", "Gấu Bắc Cực"}

-- kéo vật phẩm

local junkItems = {"Lốp Xe", "Bu Lông", "Quạt Hỏng", "Lò Vi Sóng Hỏng", "Tấm Kim Loại", "Radio Cũ", "Máy Giặt", "Động Cơ Xe Cũ"}
local selectedJunkItems = {}
local fuelItems = {"Gỗ", "Ghế", "Than Đá", "Bình Nhiên Liệu", "Thùng Dầu"}
local selectedFuelItems = {}
local foodItems = {"Bánh Ngọt", "Bít Tết Chín", "Thịt Chín", "Bít Tết Sống", "Thịt Sống", "Quả Mọng", "Cà Rốt"}
local selectedFoodItems = {}
local medicalItems = {"Băng Gạc", "MedKit"}
local selectedMedicalItems = {}
local equipmentItems = {"Súng Lục", "Súng Trường", "Giáp Da", "Giáp Sắt", "Đạn Súng Lục", "Đạn Súng Trường", "Túi Lớn", "Túi Tốt", "Rìu Mạnh", "Rìu Tốt"}
local selectedEquipmentItems = {}

-- tự động nâng cấp lửa trại

local campfireFuelItems = {"Gỗ", "Than Đá", "Bình Nhiên Liệu", "Thùng Dầu", "Nhiên Liệu Sinh Học"}
local campfireDropPos = Vector3.new(0, 19, 0)

-- tự động nấu ăn

local autocookItems = {"Thịt Sống", "Bít Tết Sống"}
local autoCookEnabledItems = {}
local autoCookEnabled = false

local function getAnyToolWithDamageID(isChopAura)
    for toolName, damageID in pairs(toolsDamageIDs) do
        if isChopAura and toolName ~= "Rìu Cũ" and toolName ~= "Rìu Tốt" and toolName ~= "Rìu Mạnh" then
            continue
        end
        local tool = LocalPlayer:FindFirstChild("Inventory") and LocalPlayer.Inventory:FindFirstChild(toolName)
        if tool then
            return tool, damageID
        end
    end
    return nil, nil
end

local function equipTool(tool)
    if tool then
        ReplicatedStorage:WaitForChild("RemoteEvents").EquipItemHandle:FireServer("FireAllClients", tool)
    end
end

local function unequipTool(tool)
    if tool then
        ReplicatedStorage:WaitForChild("RemoteEvents").UnequipItemHandle:FireServer("FireAllClients", tool)
    end
end

local function killAuraLoop()
    while killAuraToggle do
        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local hrp = character:FindFirstChild("HumanoidRootPart")
        if hrp then
            local tool, damageID = getAnyToolWithDamageID(false)
            if tool and damageID then
                equipTool(tool)
                for _, mob in ipairs(Workspace.Characters:GetChildren()) do
                    if mob:IsA("Model") then
                        local part = mob:FindFirstChildWhichIsA("BasePart")
                        if part and (part.Position - hrp.Position).Magnitude <= auraRadius then
                            pcall(function()
                                ReplicatedStorage:WaitForChild("RemoteEvents").ToolDamageObject:InvokeServer(
                                    mob,
                                    tool,
                                    damageID,
                                    CFrame.new(part.Position)
                                )
                            end)
                        end
                    end
                end
                task.wait(0.1)
            else
                task.wait(1)
            end
        else
            task.wait(0.5)
        end
    end
end

local function chopAuraLoop()
    while chopAuraToggle do
        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local hrp = character:FindFirstChild("HumanoidRootPart")
        if hrp then
            local tool, baseDamageID = getAnyToolWithDamageID(true)
            if tool and baseDamageID then
                equipTool(tool)
                currentammount = currentammount + 1
                local trees = {}
                local map = Workspace:FindFirstChild("Map")
                if map then
                    if map:FindFirstChild("Foliage") then
                        for _, obj in ipairs(map.Foliage:GetChildren()) do
                            if obj:IsA("Model") and obj.Name == "Cây Nhỏ" then
                                table.insert(trees, obj)
                            end
                        end
                    end
                    if map:FindFirstChild("Landmarks") then
                        for _, obj in ipairs(map.Landmarks:GetChildren()) do
                            if obj:IsA("Model") and obj.Name == "Cây Nhỏ" then
                                table.insert(trees, obj)
                            end
                        end
                    end
                end
                for _, tree in ipairs(trees) do
                    local trunk = tree:FindFirstChild("Trunk")
                    if trunk and trunk:IsA("BasePart") and (trunk.Position - hrp.Position).Magnitude <= auraRadius then
                        local alreadyammount = false
                        task.spawn(function()
                            while chopAuraToggle and tree and tree.Parent and not alreadyammount do
                                alreadyammount = true
                                currentammount = currentammount + 1
                                pcall(function()
                                    ReplicatedStorage:WaitForChild("RemoteEvents").ToolDamageObject:InvokeServer(
                                        tree,
                                        tool,
                                        tostring(currentammount) .. "_7367831688",
                                        CFrame.new(-2.962610244751, 4.5547881126404, -75.950843811035, 0.89621275663376, -1.3894891459643e-08, 0.44362446665764, -7.994568895775e-10, 1, 3.293635941759e-08, -0.44362446665764, -2.9872644802253e-08, 0.89621275663376)
                                    )
                                end)
                                task.wait(0.5)
                            end
                        end)
                    end
                end
                task.wait(0.1)
            else
                task.wait(1)
            end
        else
            task.wait(0.5)
        end
    end
end

function wiki(nome)
    local c = 0
    for _, i in ipairs(Workspace.Items:GetChildren()) do
        if i.Name == nome then
            c = c + 1
        end
    end
    return c
end

function ghn()
    return math.floor(LocalPlayer.PlayerGui.Interface.StatBars.HungerBar.Bar.Size.X.Scale * 100)
end

function feed(nome)
    for _, item in ipairs(Workspace.Items:GetChildren()) do
        if item.Name == nome then
            ReplicatedStorage.RemoteEvents.RequestConsumeItem:InvokeServer(item)
            break
        end
    end
end

function notifeed(nome)
    WindUI:Notify({
        Title = "Tạm Dừng Tự Động Ăn",
        Content = "Đã hết thức ăn",
        Duration = 3
    })
end

local function moveItemToPos(item, position)
    if not item or not item:IsDescendantOf(workspace) or not item:IsA("BasePart") and not item:IsA("Model") then return end
    local part = item:IsA("Model") and (item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart") or item:FindFirstChild("Handle")) or item
    if not part or not part:IsA("BasePart") then return end

    if item:IsA("Model") and not item.PrimaryPart then
        pcall(function() item.PrimaryPart = part end)
    end

    pcall(function()
        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents").RequestStartDraggingItem:FireServer(item)
        if item:IsA("Model") then
            item:SetPrimaryPartCFrame(CFrame.new(position))
        else
            part.CFrame = CFrame.new(position)
        end
        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents").StopDraggingItem:FireServer(item)
    end)
end

local function getChests()
    local chests = {}
    local chestNames = {}
    local index = 1
    for _, item in ipairs(workspace:WaitForChild("Items"):GetChildren()) do
        if item.Name:match("^Rương Đồ") and not item:GetAttribute("8721081708Opened") then
            table.insert(chests, item)
            table.insert(chestNames, "Rương " .. index)
            index = index + 1
        end
    end
    return chests, chestNames
end

local currentChests, currentChestNames = getChests()
local selectedChest = currentChestNames[1] or nil

local function getMobs()
    local mobs = {}
    local mobNames = {}
    local index = 1
    for _, character in ipairs(workspace:WaitForChild("Characters"):GetChildren()) do
        if character.Name:match("^Trẻ Lạc") and character:GetAttribute("Lost") == true then
            table.insert(mobs, character)
            table.insert(mobNames, character.Name)
            index = index + 1
        end
    end
    return mobs, mobNames
end

local currentMobs, currentMobNames = getMobs()
local selectedMob = currentMobNames[1] or nil

function tp1()
	(game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").CFrame =
CFrame.new(0.43132782, 15.77634621, -1.88620758, -0.270917892, 0.102997094, 0.957076371, 0.639657021, 0.762253821, 0.0990355015, -0.719334781, 0.639031112, -0.272391081)
end

local function tp2()
    local targetPart = workspace:FindFirstChild("Map")
        and workspace.Map:FindFirstChild("Landmarks")
        and workspace.Map.Landmarks:FindFirstChild("Pháo Đài")
        and workspace.Map.Landmarks.Pháo Đài:FindFirstChild("Functional")
        and workspace.Map.Landmarks.Pháo Đài.Functional:FindFirstChild("Cửa Ra Vào")
        and workspace.Map.Landmarks.Pháo Đài.Functional.Cửa Ra Vào:FindFirstChild("Cửa Phải")
        and workspace.Map.Landmarks.Pháo Đài.Functional.Cửa Ra Vào.Cửa Phải:FindFirstChild("Model")
    if targetPart then
        local children = targetPart:GetChildren()
        local destination = children[5]
        if destination and destination:IsA("BasePart") then
            local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                hrp.CFrame = destination.CFrame + Vector3.new(0, 5, 0)
            end
        end
    end
end

local flyToggle = false
local flySpeed = 1
local FLYING = false
local flyKeyDown, flyKeyUp, mfly1, mfly2
local IYMouse = game:GetService("UserInputService")

-- Bay PC
local function sFLY()
    repeat task.wait() until Players.LocalPlayer and Players.LocalPlayer.Character and Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    repeat task.wait() until IYMouse
    if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect(); flyKeyUp:Disconnect() end

    local T = Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    local SPEED = flySpeed

    local function FLY()
        FLYING = true
        local BG = Instance.new('BodyGyro')
        local BV = Instance.new('BodyVelocity')
        BG.P = 9e4
        BG.Parent = T
        BV.Parent = T
        BG.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
        BG.CFrame = T.CFrame
        BV.Velocity = Vector3.new(0, 0, 0)
        BV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
        task.spawn(function()
            while FLYING do
                task.wait()
                if not flyToggle and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                    Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
                end
                if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                    SPEED = flySpeed
                elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                    SPEED = 0
                end
                if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                    BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                    lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
                    BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                else
                    BV.Velocity = Vector3.new(0, 0, 0)
                end
                BG.CFrame = workspace.CurrentCamera.CoordinateFrame
            end
            CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            SPEED = 0
            BG:Destroy()
            BV:Destroy()
            if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
            end
        end)
    end
    flyKeyDown = IYMouse.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Keyboard then
            local KEY = input.KeyCode.Name
            if KEY == "W" then
                CONTROL.F = flySpeed
            elseif KEY == "S" then
                CONTROL.B = -flySpeed
            elseif KEY == "A" then
                CONTROL.L = -flySpeed
            elseif KEY == "D" then 
                CONTROL.R = flySpeed
            elseif KEY == "E" then
                CONTROL.Q = flySpeed * 2
            elseif KEY == "Q" then
                CONTROL.E = -flySpeed * 2
            end
            pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
        end
    end)
    flyKeyUp = IYMouse.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Keyboard then
            local KEY = input.KeyCode.Name
            if KEY == "W" then
                CONTROL.F = 0
            elseif KEY == "S" then
                CONTROL.B = 0
            elseif KEY == "A" then
                CONTROL.L = 0
            elseif KEY == "D" then
                CONTROL.R = 0
            elseif KEY == "E" then
                CONTROL.Q = 0
            elseif KEY == "Q" then
                CONTROL.E = 0
            end
        end
    end)
    FLY()
end

-- Bay Mobile
local function NOFLY()
    FLYING = false
    if flyKeyDown then flyKeyDown:Disconnect() end
    if flyKeyUp then flyKeyUp:Disconnect() end
    if mfly1 then mfly1:Disconnect() end
    if mfly2 then mfly2:Disconnect() end
    if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
        Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
    end
    pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

local function UnMobileFly()
    pcall(function()
        FLYING = false
        local root = Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if root:FindFirstChild("BodyVelocity") then root:FindFirstChild("BodyVelocity"):Destroy() end
        if root:FindFirstChild("BodyGyro") then root:FindFirstChild("BodyGyro"):Destroy() end
        if Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") then
            Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
        end
        if mfly1 then mfly1:Disconnect() end
        if mfly2 then mfly2:Disconnect() end
    end)
end

local function MobileFly()
    UnMobileFly()
    FLYING = true

    local root = Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local camera = workspace.CurrentCamera
    local v3none = Vector3.new()
    local v3zero = Vector3.new(0, 0, 0)
    local v3inf = Vector3.new(9e9, 9e9, 9e9)

    local controlModule = require(Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
    local bv = Instance.new("BodyVelocity")
    bv.Name = "BodyVelocity"
    bv.Parent = root
    bv.MaxForce = v3zero
    bv.Velocity = v3zero

    local bg = Instance.new("BodyGyro")
    bg.Name = "BodyGyro"
    bg.Parent = root
    bg.MaxTorque = v3inf
    bg.P = 1000
    bg.D = 50

    mfly1 = Players.LocalPlayer.CharacterAdded:Connect(function()
        local newRoot = Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        local newBv = Instance.new("BodyVelocity")
        newBv.Name = "BodyVelocity"
        newBv.Parent = newRoot
        newBv.MaxForce = v3zero
        newBv.Velocity = v3zero

        local newBg = Instance.new("BodyGyro")
        newBg.Name = "BodyGyro"
        newBg.Parent = newRoot
        newBg.MaxTorque = v3inf
        newBg.P = 1000
        newBg.D = 50
    end)

    mfly2 = game:GetService("RunService").RenderStepped:Connect(function()
        root = Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        camera = workspace.CurrentCamera
        if Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") and root and root:FindFirstChild("BodyVelocity") and root:FindFirstChild("BodyGyro") then
            local humanoid = Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
            local VelocityHandler = root:FindFirstChild("BodyVelocity")
            local GyroHandler = root:FindFirstChild("BodyGyro")

            VelocityHandler.MaxForce = v3inf
            GyroHandler.MaxTorque = v3inf
            humanoid.PlatformStand = true
            GyroHandler.CFrame = camera.CoordinateFrame
            VelocityHandler.Velocity = v3none

            local direction = controlModule:GetMoveVector()
            if direction.X > 0 then
                VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * (flySpeed * 50))
            end
            if direction.X < 0 then
                VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * (flySpeed * 50))
            end
            if direction.Z > 0 then
                VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * (flySpeed * 50))
            end
            if direction.Z < 0 then
                VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * (flySpeed * 50))
            end
        end
    end)
end

local Confirmed = false
WindUI:Popup({
    Title = "Night Slayer Hub Đã Tải! - 99 Night in the Forest",
    Icon = "star",
    IconThemed = true,
    Content = "Night Slayer Hub TEAM | Tham gia (discord.gg/wWHxH6ARU)",
    Buttons = {
        { Title = "Hủy", Variant = "Secondary", Callback = function() end },
        { Title = "Tiếp Tục", Icon = "arrow-right", Callback = function() Confirmed = true end, Variant = "Primary" }
    }
})
repeat task.wait() until Confirmed

local Window = WindUI:CreateWindow({
    Folder = "Night Slayer Hub",
    Author = "STELLAR",
    Title = "Night Slayer Hub - 99 Night in the Forest @ Trong Game (Beta)",
    IconThemed = true,
    Icon = "star",
    Author = "Night Slayer Hub (discord.gg/wWHxH6ARU)",
    Size = UDim2.fromOffset(500, 350),
    Transparent = true,
    Theme = "Dark",
    SideBarWidth = 200,
    ScrollBarEnabled = true,
})


Window:EditOpenButton({
    Title = "Night Slayer - Mở",
    Icon = "monitor",
    CornerRadius = UDim.new(0, 6),
    StrokeThickness = 2,
    Color = ColorSequence.new(Color3.fromRGB(30, 30, 30), Color3.fromRGB(255, 255, 255)),
    Draggable = true,
})


local Tabs = {}

Tabs.Main = Window:Tab({
    Title = "Chính",
    Icon = "rocket",
    Desc = "Stellar"
})
Tabs.GodMode = Window:Tab({
    Title = "God Mode",
    Icon = "game",
    Desc = "Stellar"
})
Tabs.Auto = Window:Tab({
    Title = "Tự Động",
    Icon = "wrench",
    Desc = "Stellar"
})

Tabs.esp = Window:Tab({
    Title = "Esp",
    Icon = "eye",
    Desc = "Stellar"
})
Tabs.br = Window:Tab({
    Title = "Kéo Đồ",
    Icon = "package",
    Desc = "Stellar"
})
Tabs.Tp = Window:Tab({
    Title = "Dịch Chuyển",
    Icon = "map",
    Desc = "Stellar"
})
Tabs.Fly = Window:Tab({
    Title = "Người Chơi",
    Icon = "user",
    Desc = "Stellar"
})

Tabs.Combat = Window:Tab({
    Title = "Chiến Đấu",
    Icon = "sword",
    Desc = "Stellar"
})
Tabs.More = Window:Tab({
    Title = "Khác",
    Icon = "crown",
    Desc = "Stellar"
})
Tabs.Misc = Window:Tab({
    Title = "Cài Đặt",
    Icon = "settings",
    Desc = "Stellar"
})

Window:SelectTab(1)

Tabs.Combat:Section({ Title = "Vùng Ảnh Hưởng", Icon = "star" })

Tabs.Combat:Toggle({
    Title = "Vùng Sát Thương",
    Value = false,
    Callback = function(state)
        killAuraToggle = state
        if state then
            task.spawn(killAuraLoop)
        else
            local tool, _ = getAnyToolWithDamageID(false)
            unequipTool(tool)
        end
    end
})

Tabs.Combat:Toggle({
    Title = "Vùng Chặt Cây",
    Value = false,
    Callback = function(state)
        chopAuraToggle = state
        if state then
            task.spawn(chopAuraLoop)
        else
            local tool, _ = getAnyToolWithDamageID(true)
            unequipTool(tool)
        end
    end
})

Tabs.Combat:Section({ Title = "Cài Đặt", Icon = "settings" })

Tabs.Combat:Slider({
    Title = "Bán Kính Vùng",
    Value = { Min = 50, Max = 500, Default = 50 },
    Callback = function(value)
        auraRadius = math.clamp(value, 10, 500)
    end
})

Tabs.Main:Section({ Title = "Tự Động Ăn", Icon = "utensils" })

Tabs.Main:Dropdown({
    Title = "Chọn Thức Ăn",
    Desc = "Chọn loại thức ăn",
    Values = alimentos,
    Value = selectedFood,
    Multi = true,
    Callback = function(value)
        selectedFood = value
    end
})

Tabs.Main:Input({
    Title = "Phần Trăm Đói",
    Desc = "Ăn khi đói đạt % này",
    Value = tostring(hungerThreshold),
    Placeholder = "VD: 75",
    Numeric = true,
    Callback = function(value)
        local n = tonumber(value)
        if n then
            hungerThreshold = math.clamp(n, 0, 100)
        end
    end
})

Tabs.Main:Toggle({
    Title = "Tự Động Ăn",
    Value = false,
    Callback = function(state)
        autoFeedToggle = state
        if state then
            task.spawn(function()
                while autoFeedToggle do
                    task.wait(0.075)
                    if wiki(selectedFood) == 0 then
                        autoFeedToggle = false
                        Tabs.Combat:Find("Tự Động Ăn"):SetValue(false)
                        notifeed(selectedFood)
                        break
                    end
                    if ghn() <= hungerThreshold then
                        feed(selectedFood)
                    end
                end
            end)
        end
    end
})

Tabs.Auto:Section({ Title = "Tự Động Farm Gỗ", Icon = "axe" })

local function createNotif(title, text, duration)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = duration or 2
    })
end

-- ตัวแปรหลัก
local autoTreeFarmActive = false
local autoFarmEnabled = false
local originalPosition
local clickConnection

-- Services
local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

-- ตัวแปร Click
local lastClickTime = 0
local clickDelay = 0.3

-- ฟังก์ชันจำลองการกดปุ่ม Sprint
local function simulateClick()
    if not autoFarmEnabled then return end
    local currentTime = tick()
    if currentTime - lastClickTime < clickDelay then return end

    local camera = workspace.CurrentCamera
    local viewportSize = camera.ViewportSize
    local clickX = viewportSize.X - 10
    local clickY = viewportSize.Y * 0.75

    VirtualInputManager:SendMouseButtonEvent(clickX, clickY, 0, true, game, 0)
    VirtualInputManager:SendMouseButtonEvent(clickX, clickY, 0, false, game, 0)

    lastClickTime = currentTime
end

-- ย้ายตัวละครขึ้นไปลอยแล้ว Anchor
local function teleportToAirAndAnchor()
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        originalPosition = character.HumanoidRootPart.CFrame
        local airPosition = character.HumanoidRootPart.Position + Vector3.new(0, 350, 0)
        character.HumanoidRootPart.CFrame = CFrame.new(airPosition)
        task.wait(0.5)
        character.HumanoidRootPart.Anchored = true
        print("AutoFarmGỗ", "กรุณาอย่าทำอะไรหรือแตะต้อง", 2)
        return true
    end
    return false
end

-- ปลด Anchor และพากลับตำแหน่งเดิม
local function unanchorPlayer()
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.Anchored = false
        if originalPosition then
            character.HumanoidRootPart.CFrame = originalPosition
        end
        print("AutoFarmGỗ", "AutoFarm เสร็จสิ้น", 2)
    end
end

-- เทเลพอร์ตต้นไม้
local function teleportAllTreesToPlayer()
    local character = player.Character
    if not (character and character:FindFirstChild("HumanoidRootPart")) then
        print("AutoFarmGỗ", "ไม่พบตัวละครผู้เล่น!", 3)
        return false
    end

    local playerPos = character.HumanoidRootPart.Position
    local treesFound = 0
    if not workspace:FindFirstChild("Map") then
        print("AutoFarmGỗ", "คุณไม่ได้อยู่ในเกม!", 3)
        return false
    end

    local function teleportTreesFromFolder(folder, folderName)
        if not folder then return 0 end
        local count = 0
        for _, item in pairs(folder:GetChildren()) do
            local isSmallTree = false
            if item.Name == "Cây Nhỏ" and item:IsA("Model") then
                isSmallTree = true
            elseif item:IsA("Model") then
                local hasLeaves = item:FindFirstChild("Leaves") ~= nil
                local hasTrunk = item:FindFirstChild("Trunk") ~= nil or item:FindFirstChild("trunk") ~= nil
                local hasWood = item:FindFirstChild("Wood") ~= nil
                if (hasLeaves or hasWood) and not hasTrunk then
                    isSmallTree = true
                end
            end

            if isSmallTree then
                count += 1
                local targetPosition = Vector3.new(
                    playerPos.X + math.random(-3, 3),
                    playerPos.Y - 5,
                    playerPos.Z + math.random(-3, 3)
                )
                pcall(function()
                    if item.PrimaryPart then
                        item:SetPrimaryPartCFrame(CFrame.new(targetPosition))
                    else
                        local mainPart = item:FindFirstChildOfClass("BasePart")
                        if mainPart then
                            local offset = targetPosition - mainPart.Position
                            for _, part in pairs(item:GetDescendants()) do
                                if part:IsA("BasePart") then
                                    part.CFrame = part.CFrame + offset
                                end
                            end
                        end
                    end
                end)
                task.wait(0.05)
            end
        end
        if count > 0 then
            print("AutoFarmGỗ", "รอ! " .. count .. " " .. folderName, 1)
        end
        return count
    end

    if workspace.Map:FindFirstChild("Landmarks") then
        treesFound += teleportTreesFromFolder(workspace.Map.Landmarks, "Landmarks")
    end
    if workspace.Map:FindFirstChild("Foliage") then
        treesFound += teleportTreesFromFolder(workspace.Map.Foliage, "Foliage")
    end

    print("AutoFarmGỗ", "เริ่ม AutoFarm " .. treesFound .. " สวมขวานของคุณ", 3)
    return treesFound > 0
end

-- เทเลพอร์ต Gỗ
local function teleportAllLogsToPlayer()
    createNotif("AutoFarmGỗ", "โปรดรอ.", 2)
    local character = player.Character
    if not (character and character:FindFirstChild("HumanoidRootPart")) then
        print("AutoFarmGỗ", "ไม่พบผู้เล่น!", 3)
        return false
    end

    local playerPos = character.HumanoidRootPart.Position
    local logsFound = 0
    if not workspace:FindFirstChild("Items") then
        print("AutoFarmGỗ", "คุณไม่ได้อยู่ในเกม?", 3)
        return false
    end

    for _, item in pairs(workspace.Items:GetChildren()) do
        if item:FindFirstChild("Meshes/log_Cylinder") then
            logsFound += 1
            local logPosition = Vector3.new(
                playerPos.X + math.random(-4, 4),
                playerPos.Y + 1,
                playerPos.Z + math.random(-4, 4)
            )
            pcall(function()
                if item.PrimaryPart then
                    item:SetPrimaryPartCFrame(CFrame.new(logPosition))
                else
                    local mainPart = item:FindFirstChildOfClass("BasePart")
                    if mainPart then
                        local offset = logPosition - mainPart.Position
                        for _, part in pairs(item:GetChildren()) do
                            if part:IsA("BasePart") then
                                part.CFrame = part.CFrame + offset
                            end
                        end
                    end
                end
            end)
            task.wait(0.03)
        end
    end

    return logsFound > 0
end

-- Toggle หลัก
Tabs.Auto:Toggle({
    Title = "Tự Động Farm Gỗ (Sửa)",
    Default = false,
    Callback = function(state)
        autoTreeFarmActive = state
        autoFarmEnabled = state

        if state then
            createNotif("AutoFarmGỗ", "เริ่ม AutoFarm", 2)
            if teleportToAirAndAnchor() then
                task.wait(1)
                if teleportAllTreesToPlayer() then
                    task.wait(2)
                    clickConnection = RunService.Heartbeat:Connect(simulateClick)
                end
            end
        else
            createNotif("AutoFarmGỗ", "หยุด AutoFarm!", 2)
            if clickConnection then
                clickConnection:Disconnect()
                clickConnection = nil
            end
            unanchorPlayer()
            task.spawn(function()
                task.wait(0.5)
                teleportAllLogsToPlayer()
            end)
        end
    end
})


Tabs.Auto:Section({ Title = "Lửa Trại An Toàn", Icon = "flame" })

getgenv().Lowhp = false
getgenv().AutoCampAtNight = false

Tabs.Auto:Toggle({
    Title = "Về Lửa Trại (Máu Thấp)",
    Default = false,
    Callback = function(state)
        getgenv().Lowhp = state
        if state then
            task.spawn(function()
                local campPosition = Vector3.new(0, 8, 0)
                while getgenv().Lowhp do
                    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    local hrp = character:FindFirstChild("HumanoidRootPart")
                    if humanoid and hrp then
                        local healthPercent = humanoid.Health / humanoid.MaxHealth
                        local distance = (hrp.Position - campPosition).Magnitude

                        if healthPercent <= 0.4 and distance > 33 then
                            -- ถ้าเลือดต่ำกว่า 40% และอยู่ไกล camp เกิน 33 stud ให้วาร์ปกลับ
                            hrp.CFrame = CFrame.new(campPosition)
                            task.wait(3)  -- รอ 3 วิ ก่อนเช็คใหม่
                        else
                            -- กรณีอื่นๆ รอเช็คใหม่
                            task.wait(1)
                        end
                    else
                        task.wait(1)
                    end
                end
            end)
        end
    end
})


Tabs.Auto:Toggle({
    Title = "Về Lửa Trại (ตอนกลางคืน - ครั้งเดียวต่อคืน)",
    Default = false,
    Callback = function(state)
        getgenv().AutoCampAtNight = state
        if state then
            task.spawn(function()
                local didTeleportTonight = false
                while getgenv().AutoCampAtNight do
                    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                    local hrp = character:FindFirstChild("HumanoidRootPart")
                    local lighting = game:GetService("Lighting")

                    if hrp and lighting then
                        local hour = tonumber(string.split(lighting.TimeOfDay, ":")[1])
                        if hour then
                            if not didTeleportTonight and hour >= 0 and hour < 5 then
                                hrp.CFrame = CFrame.new(Vector3.new(0, 8, 0))
                                didTeleportTonight = true
                            end
                            if hour >= 5 then
                                didTeleportTonight = false
                            end
                        end
                    end

                    task.wait(1)
                end
            end)
        end
    end
})

Tabs.Auto:Section({ Title = "Tự Động Nâng Cấp Lửa Trại", Icon = "flame" })

local autoUpgradeCampfireEnabled = false

Tabs.Auto:Dropdown({
    Title = "Tự Động Nâng Cấp Lửa Trại",
    Desc = "เลือกไอเทม",
    Values = campfireFuelItems,
    Multi = true,
    AllowNone = true,
    Callback = function(options)
        for _, itemName in ipairs(campfireFuelItems) do
            alwaysFeedEnabledItems[itemName] = table.find(options, itemName) ~= nil
        end
    end
})

Tabs.Auto:Toggle({
    Title = "Tự Động Nâng Cấp Lửa Trại",
    Value = false,
    Callback = function(checked)
        autoUpgradeCampfireEnabled = checked
        if checked then
            task.spawn(function()
                while autoUpgradeCampfireEnabled do
                    for itemName, enabled in pairs(alwaysFeedEnabledItems) do
                        if enabled then
                            local pulledCount = 0
                            for _, item in ipairs(workspace:WaitForChild("Items"):GetChildren()) do
                                if item.Name == itemName then
                                    moveItemToPos(item, campfireDropPos)
                                    pulledCount += 1
                                    if pulledCount >= 3 then
                                        break -- ดึงครบ 10 ชิ้นแล้ว ออกจาก loop
                                    end
                                end
                            end
                        end
                    end
                    task.wait(2) -- รอ 3 วิ ก่อนดึงรอบต่อไป
                end
            end)
        end
    end
})


Tabs.Auto:Section({ Title = "Tự Động Nấu Ăn", Icon = "flame" })

Tabs.Auto:Dropdown({
    Title = "Tự Động Nấu Ăn",
    Values = autocookItems,
    Multi = true,
    AllowNone = true,
    Callback = function(options)
        for _, itemName in ipairs(autocookItems) do
            autoCookEnabledItems[itemName] = table.find(options, itemName) ~= nil
        end
    end
})

Tabs.Auto:Toggle({
    Title = "Tự Động Nấu Ăn",
    Value = false,
    Callback = function(state)
        autoCookEnabled = state
    end
})

coroutine.wrap(function()
    while true do
        if autoCookEnabled then
            for itemName, enabled in pairs(autoCookEnabledItems) do
                if enabled then
                    for _, item in ipairs(Workspace:WaitForChild("Items"):GetChildren()) do
                        if item.Name == itemName then
                            moveItemToPos(item, campfireDropPos)
                        end
                    end
                end
            end
        end
        task.wait(0.5)
    end
end)()


Tabs.Tp:Section({ Title = "Dịch Chuyển", Icon = "map" })

Tabs.Tp:Toggle({
    Title = "Quét Bản Đồ (Cần Thiết)",
    Default = false,
    Callback = function(state)
        getgenv().scan_map = state

        task.spawn(function()
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local hrp = character:WaitForChild("HumanoidRootPart", 3)
            if not hrp then return end

            local map = workspace:FindFirstChild("Map")
            if not map then return end

            local foliage = map:FindFirstChild("Foliage") or map:FindFirstChild("Landmarks")
            if not foliage then return end

            while getgenv().scan_map do
                local trees = {}
                for _, obj in ipairs(foliage:GetChildren()) do
                    if obj.Name == "Cây Nhỏ" and obj:IsA("Model") then
                        local trunk = obj:FindFirstChild("Trunk") or obj.PrimaryPart
                        if trunk then
                            table.insert(trees, trunk)
                        end
                    end
                end

                for _, trunk in ipairs(trees) do
                    if not getgenv().scan_map then break end
                    if trunk and trunk.Parent then
                        local treeCFrame = trunk.CFrame
                        local rightVector = treeCFrame.RightVector
                        local targetPosition = treeCFrame.Position + rightVector * 69
                        hrp.CFrame = CFrame.new(targetPosition)
                        task.wait(0.01)
                    end
                end
            end
        end)
    end
})

Tabs.Tp:Button({
    Title = "Dịch Chuyển Đến Lửa Trại",
    Locked = false,
    Callback = function()
        tp1()
    end
})

Tabs.Tp:Button({
    Title = "Dịch Chuyển Đến Pháo Đài",
    Locked = false,
    Callback = function()
        tp2()
    end
})

Tabs.Tp:Button({
    Title = "Dịch Chuyển Đến Vùng An Toàn",
    Callback = function()
        if not workspace:FindFirstChild("SafeZonePart") then
            local createpart = Instance.new("Part")
            createpart.Name = "SafeZonePart"
            createpart.Size = Vector3.new(50, 50, 50)
            createpart.Position = Vector3.new(0, 105, 0)
            createpart.Anchored = true
            createpart.CanCollide = false
            createpart.Transparency = 0.8
            createpart.Color = Color3.fromRGB(255, 255, 255)
            createpart.Parent = workspace
        end
        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")
        hrp.CFrame = CFrame.new(0, 110, 0)
    end
})

Tabs.Tp:Button({
    Title="Dịch Chuyển Đến Thương Nhân (Bunny Foot)",
    Callback=function()
        local pos = Vector3.new(-37.08, 3.98, -16.33)
        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")
        hrp.CFrame = CFrame.new(pos)
    end
})

Tabs.Tp:Section({ Title = "Cây", Icon = "tree-deciduous" })

Tabs.Tp:Button({
    Title = "Dịch Chuyển Đến Cây Ngẫu Nhiên",
    Callback = function()
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:FindFirstChild("HumanoidRootPart", 3)
        if not hrp then return end

        local map = workspace:FindFirstChild("Map")
        if not map then return end

        local foliage = map:FindFirstChild("Foliage") or map:FindFirstChild("Landmarks")
        if not foliage then return end

        local trees = {}
        for _, obj in ipairs(foliage:GetChildren()) do
            if obj.Name == "Cây Nhỏ" and obj:IsA("Model") then
                local trunk = obj:FindFirstChild("Trunk") or obj.PrimaryPart
                if trunk then
                    table.insert(trees, trunk)
                end
            end
        end

        if #trees > 0 then
            local trunk = trees[math.random(1, #trees)]
            local treeCFrame = trunk.CFrame
            local rightVector = treeCFrame.RightVector
            local targetPosition = treeCFrame.Position + rightVector * 3
            hrp.CFrame = CFrame.new(targetPosition)
        end
    end
})

Tabs.Tp:Section({ Title = "Trẻ Em", Icon = "eye" })

local MobDropdown = Tabs.Tp:Dropdown({
    Title = "Chọn Trẻ",
    Values = currentMobNames,
    Multi = false,
    AllowNone = true,
    Callback = function(options)
        selectedMob = options[#options] or currentMobNames[1] or nil
    end
})

Tabs.Tp:Button({
    Title = "Refresh Danh Sách",
    Locked = false,
    Callback = function()
        currentMobs, currentMobNames = getMobs()
        if #currentMobNames > 0 then
            selectedMob = currentMobNames[1]
            MobDropdown:Refresh(currentMobNames)
        else
            selectedMob = nil
            MobDropdown:Refresh({ "Không tìm thấy trẻ" })
        end
    end
})

Tabs.Tp:Button({
    Title = "Dịch Chuyển Đến Trẻ",
    Locked = false,
    Callback = function()
        if selectedMob and currentMobs then
            for i, name in ipairs(currentMobNames) do
                if name == selectedMob then
                    local targetMob = currentMobs[i]
                    if targetMob then
                        local part = targetMob.PrimaryPart or targetMob:FindFirstChildWhichIsA("BasePart")
                        if part and game.Players.LocalPlayer.Character then
                            local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            if hrp then
                                hrp.CFrame = part.CFrame + Vector3.new(0, 5, 0)
                            end
                        end
                    end
                    break
                end
            end
        end
    end
})


Tabs.Tp:Section({ Title = "Rương", Icon = "box" })

local ChestDropdown = Tabs.Tp:Dropdown({
    Title = "Chọn Rương",
    Values = currentChestNames,
    Multi = false,
    AllowNone = true,
    Callback = function(options)
        selectedChest = options[#options] or currentChestNames[1] or nil
    end
})

Tabs.Tp:Button({
    Title = "Refresh Danh Sách",
    Locked = false,
    Callback = function()
        currentChests, currentChestNames = getChests()
        if #currentChestNames > 0 then
            selectedChest = currentChestNames[1]
            ChestDropdown:Refresh(currentChestNames)
        else
            selectedChest = nil
            ChestDropdown:Refresh({ "Không tìm thấy rương" })
        end
    end
})

Tabs.Tp:Button({
    Title = "Dịch Chuyển Đến Rương",
    Locked = false,
    Callback = function()
        if selectedChest and currentChests then
            local chestIndex = 1
            for i, name in ipairs(currentChestNames) do
                if name == selectedChest then
                    chestIndex = i
                    break
                end
            end
            local targetChest = currentChests[chestIndex]
            if targetChest then
                local part = targetChest.PrimaryPart or targetChest:FindFirstChildWhichIsA("BasePart")
                if part and game.Players.LocalPlayer.Character then
                    local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        hrp.CFrame = part.CFrame + Vector3.new(0, 5, 0)
                    end
                end
            end
        end
    end
})

Tabs.br:Section({ Title = "Đồ Phế Liệu", Icon = "box" })

Tabs.br:Dropdown({
    Title = "Chọn Đồ Phế Liệu",
    Desc = "เลือกไอเทมที่จะนำมา",
    Values = junkItems,
    Multi = true,
    AllowNone = true,
    Callback = function(options)
        selectedJunkItems = options
    end
})

Tabs.br:Button({
    Title = "Kéo Đồ Phế Liệu",
    Locked = false,
    Callback = function()
        local player = game.Players.LocalPlayer
        if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then return end
        local hrp = player.Character.HumanoidRootPart
        local targetPos = hrp.Position + Vector3.new(2, 0, 0)
        for _, itemName in ipairs(selectedJunkItems) do
            for _, item in ipairs(workspace:GetDescendants()) do
                if item.Name == itemName and (item:IsA("BasePart") or item:IsA("Model")) and (item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")) then
                    moveItemToPos(item, targetPos)
                end
            end
        end
    end
})

Tabs.br:Section({ Title = "Nhiên Liệu", Icon = "flame" })

local fuelItems = {"Gỗ", "Ghế", "Than Đá", "Bình Nhiên Liệu", "Thùng Dầu"}
local selectedFuelItems = {}

Tabs.br:Dropdown({
    Title = "Chọn Nhiên Liệu",
    Desc = "เลือกไอเทมที่จะนำมา",
    Values = fuelItems,
    Multi = true,
    AllowNone = true,
    Callback = function(options)
        selectedFuelItems = options
    end
})

Tabs.br:Button({
    Title = "Kéo Nhiên Liệu",
    Locked = false,
    Callback = function()
        local player = game.Players.LocalPlayer
        if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then return end
        local hrp = player.Character.HumanoidRootPart
        local targetPos = hrp.Position + Vector3.new(2, 0, 0)
        local broughtItems = 0
        for _, itemName in ipairs(selectedFuelItems) do
            for _, item in ipairs(workspace:GetDescendants()) do
                if item.Name == itemName and (item:IsA("BasePart") or item:IsA("Model")) then
                    moveItemToPos(item, targetPos)
                    broughtItems = broughtItems + 1
                end
            end
        end
    end
})

Tabs.br:Section({ Title = "Thức Ăn", Icon = "utensils" })

local foodItems = {"Bánh Ngọt", "Bít Tết Chín", "Thịt Chín", "Bít Tết Sống", "Thịt Sống", "Quả Mọng", "Cà Rốt"}
local selectedFoodItems = {}

Tabs.br:Dropdown({
    Title = "Chọn Thức Ăn",
    Desc = "เลือกไอเทมที่จะนำมา",
    Values = foodItems,
    Multi = true,
    AllowNone = true,
    Callback = function(options)
        selectedFoodItems = options
    end
})

Tabs.br:Button({
    Title = "Kéo Thức Ăn",
    Locked = false,
    Callback = function()
        local player = game.Players.LocalPlayer
        if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then return end
        local hrp = player.Character.HumanoidRootPart
        local targetPos = hrp.Position + Vector3.new(2, 0, 0)
        for _, itemName in ipairs(selectedFoodItems) do
            for _, item in ipairs(workspace:GetDescendants()) do
                if item.Name == itemName and (item:IsA("BasePart") or item:IsA("Model")) and (item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")) then
                    moveItemToPos(item, targetPos)
                end
            end
        end
    end
})

Tabs.br:Section({ Title = "Thuốc Men", Icon = "bandage" })

Tabs.br:Dropdown({
    Title = "Chọn Thuốc Men",
    Desc = "เลือกไอเทมที่จะนำมา",
    Values = medicalItems,
    Multi = true,
    AllowNone = true,
    Callback = function(options)
        selectedMedicalItems = options
    end
})

Tabs.br:Button({
    Title = "Kéo Thuốc Men",
    Locked = false,
    Callback = function()
        local player = game.Players.LocalPlayer
        if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then return end
        local hrp = player.Character.HumanoidRootPart
        local targetPos = hrp.Position + Vector3.new(2, 0, 0)
        for _, itemName in ipairs(selectedMedicalItems) do
            for _, item in ipairs(workspace:GetDescendants()) do
                if item.Name == itemName and (item:IsA("BasePart") or item:IsA("Model")) and (item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")) then
                    moveItemToPos(item, targetPos)
                end
            end
        end
    end
})

Tabs.br:Section({ Title = "Trang Bị", Icon = "sword" })

local equipmentItems = {"Súng Lục", "Súng Trường", "Giáp Da", "Giáp Sắt", "Đạn Súng Lục", "Đạn Súng Trường", "Túi Lớn", "Túi Tốt", "Rìu Mạnh", "Rìu Tốt"}
local selectedEquipmentItems = {}

Tabs.br:Dropdown({
    Title = "Chọn Trang Bị",
    Desc = "เลือกไอเทมที่จะนำมา",
    Values = equipmentItems,
    Multi = true,
    AllowNone = true,
    Callback = function(options)
        selectedEquipmentItems = options
    end
})

Tabs.br:Button({
    Title = "Kéo Trang Bị",
    Locked = false,
    Callback = function()
        local player = game.Players.LocalPlayer
        if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then return end
        local hrp = player.Character.HumanoidRootPart
        local targetPos = hrp.Position + Vector3.new(2, 0, 0)
        for _, itemName in ipairs(selectedEquipmentItems) do
            for _, item in ipairs(workspace:GetDescendants()) do
                if item.Name == itemName and (item:IsA("BasePart") or item:IsA("Model")) and (item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")) then
                    moveItemToPos(item, targetPos)
                end
            end
        end
    end
})

Tabs.Fly:Section({ Title = "Chính", Icon = "eye" })

Tabs.Fly:Slider({
    Title = "Tốc Độ Bay",
    Value = { Min = 1, Max = 20, Default = 1 },
    Callback = function(value)
        flySpeed = value
        if FLYING then
            task.spawn(function()
                while FLYING do
                    task.wait(0.1)
                    if game:GetService("UserInputService").TouchEnabled then
                        local root = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if root and root:FindFirstChild("BodyVelocity") then
                            local bv = root:FindFirstChild("BodyVelocity")
                            bv.Velocity = bv.Velocity.Unit * (flySpeed * 50) -- Adjust velocity magnitude
                        end
                    end
                end
            end)
        end
    end
})

Tabs.Fly:Toggle({
    Title = "Bật Bay",
    Value = false,
    Callback = function(state)
        flyToggle = state
        if flyToggle then
            if game:GetService("UserInputService").TouchEnabled then
                MobileFly()
            else
                sFLY()
            end
        else
            NOFLY()
            UnMobileFly()
        end
    end
})

local Players = game:GetService("Players")
local speed = 16
local jump = 50

local function setSpeed(val)
    local humanoid = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then humanoid.WalkSpeed = val end
end

local function setJump(val)
    local humanoid = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.JumpPower = val
    end
end

Tabs.Fly:Slider({
    Title = "Tốc Độ Chạy",
    Value = { Min = 16, Max = 300, Default = 16 },
    Callback = function(value)
        speed = value
    end
})

Tabs.Fly:Toggle({
    Title = "Bật Tốc Độ",
    Value = false,
    Callback = function(state)
        setSpeed(state and speed or 16)
    end
})

Tabs.Fly:Slider({
    Title = "Nhảy Cao",
    Value = { Min = 10, Max = 300, Default = 50 },
    Callback = function(value)
        jump = value
    end
})

Tabs.Fly:Toggle({
    Title = "Bật Nhảy Cao",
    Value = false,
    Callback = function(state)
        setJump(state and jump or 16)
    end
})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local noclipConnection

Tabs.Fly:Toggle({
    Title = "Xuyên Tường",
    Value = false,
    Callback = function(state)
        if state then
            noclipConnection = RunService.Stepped:Connect(function()
                local char = Players.LocalPlayer.Character
                if char then
                    for _, part in ipairs(char:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                end
            end)
        else
            if noclipConnection then
                noclipConnection:Disconnect()
                noclipConnection = nil
            end
        end
    end
})

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local infJumpConnection

Tabs.Fly:Toggle({
    Title = "Nhảy Vô Hạn",
    Value = false,
    Callback = function(state)
        if state then
            infJumpConnection = UserInputService.JumpRequest:Connect(function()
                local char = Players.LocalPlayer.Character
                local humanoid = char and char:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end)
        else
            if infJumpConnection then
                infJumpConnection:Disconnect()
                infJumpConnection = nil
            end
        end
    end
})

function createESPText(part, text, color)
    if part:FindFirstChild("ESPTexto") then return end

    local esp = Instance.new("BillboardGui")
    esp.Name = "ESPTexto"
    esp.Adornee = part
    esp.Size = UDim2.new(0, 100, 0, 20)
    esp.StudsOffset = Vector3.new(0, 2.5, 0)
    esp.AlwaysOnTop = true
    esp.MaxDistance = 300

    local label = Instance.new("TextLabel")
    label.Parent = esp
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = color or Color3.fromRGB(255,255,0)
    label.TextStrokeTransparency = 0.2
    label.TextScaled = true
    label.Font = Enum.Font.GothamBold

    esp.Parent = part
end

local function Aesp(nome, tipo)
    local container
    local color
    if tipo == "item" then
        container = workspace:FindFirstChild("Items")
        color = Color3.fromRGB(0, 255, 0)
    elseif tipo == "mob" then
        container = workspace:FindFirstChild("Characters")
        color = Color3.fromRGB(255, 255, 0)
    else
        return
    end
    if not container then return end

    for _, obj in ipairs(container:GetChildren()) do
        if obj.Name == nome then
            local part = obj:IsA("BasePart") and obj or obj:FindFirstChildWhichIsA("BasePart")
            if part then
                createESPText(part, obj.Name, color)
            end
        end
    end
end

local function Desp(nome, tipo)
    local container
    if tipo == "item" then
        container = workspace:FindFirstChild("Items")
    elseif tipo == "mob" then
        container = workspace:FindFirstChild("Characters")
    else
        return
    end
    if not container then return end

    for _, obj in ipairs(container:GetChildren()) do
        if obj.Name == nome then
            local part = obj:IsA("BasePart") and obj or obj:FindFirstChildWhichIsA("BasePart")
            if part then
                for _, gui in ipairs(part:GetChildren()) do
                    if gui:IsA("BillboardGui") and gui.Name == "ESPTexto" then
                        gui:Destroy()
                    end
                end
            end
        end
    end
end

local selectedItems = {}
local selectedMobs = {}
local espItemsEnabled = false
local espMobsEnabled = false
local espConnections = {}

Tabs.esp:Section({ Title = "Esp Đồ Vật", Icon = "package" })

Tabs.esp:Dropdown({
    Title = "Esp Đồ Vật",
    Values = ie,
    Value = {},
    Multi = true,
    AllowNone = true,
    Callback = function(options)
        selectedItems = options
        if espItemsEnabled then
            for _, name in ipairs(ie) do
                if table.find(selectedItems, name) then
                    Aesp(name, "item")
                else
                    Desp(name, "item")
                end
            end
        else
            for _, name in ipairs(ie) do
                Desp(name, "item")
            end
        end
    end
})

Tabs.esp:Toggle({
    Title = "Bật Esp",
    Value = false,
    Callback = function(state)
        espItemsEnabled = state
        for _, name in ipairs(ie) do
            if state and table.find(selectedItems, name) then
                Aesp(name, "item")
            else
                Desp(name, "item")
            end
        end

        if state then
            if not espConnections["Items"] then
                local container = workspace:FindFirstChild("Items")
                if container then
                    espConnections["Items"] = container.ChildAdded:Connect(function(obj)
                        if table.find(selectedItems, obj.Name) then
                            local part = obj:IsA("BasePart") and obj or obj:FindFirstChildWhichIsA("BasePart")
                            if part then
                                createESP(part, obj.Name, Color3.fromRGB(0, 255, 0))
                            end
                        end
                    end)
                end
            end
        else
            if espConnections["Items"] then
                espConnections["Items"]:Disconnect()
                espConnections["Items"] = nil
            end
        end
    end
})

Tabs.esp:Section({ Title = "Esp Sinh Vật", Icon = "user" })

Tabs.esp:Dropdown({
    Title = "Esp Sinh Vật",
    Values = me,
    Value = {},
    Multi = true,
    AllowNone = true,
    Callback = function(options)
        selectedMobs = options
        if espMobsEnabled then
            for _, name in ipairs(me) do
                if table.find(selectedMobs, name) then
                    Aesp(name, "mob")
                else
                    Desp(name, "mob")
                end
            end
        else
            for _, name in ipairs(me) do
                Desp(name, "mob")
            end
        end
    end
})

Tabs.esp:Toggle({
    Title = "Bật Esp",
    Value = false,
    Callback = function(state)
        espMobsEnabled = state
        for _, name in ipairs(me) do
            if state and table.find(selectedMobs, name) then
                Aesp(name, "mob")
            else
                Desp(name, "mob")
            end
        end

        if state then
            if not espConnections["Mobs"] then
                local container = workspace:FindFirstChild("Characters")
                if container then
                    espConnections["Mobs"] = container.ChildAdded:Connect(function(obj)
                        if table.find(selectedMobs, obj.Name) then
                            local part = obj:IsA("BasePart") and obj or obj:FindFirstChildWhichIsA("BasePart")
                            if part then
                                createESP(part, obj.Name, Color3.fromRGB(255, 255, 0))
                            end
                        end
                    end)
                end
            end
        else
            if espConnections["Mobs"] then
                espConnections["Mobs"]:Disconnect()
                espConnections["Mobs"] = nil
            end
        end
    end
})

Tabs.Combat:Section({ Title = "Vùng Ảnh Hưởng", Icon = "star" })

Tabs.Combat:Button({
    Title = "God Mode",
    Value = false,
    Callback = function(state)
        -- ts file was generated at discord.gg/wWHxH6ARU

local function u3(p1)
    p1.Humanoid.Changed:Connect(function(p2)
        if p2 == 'Health' and p1.Humanoid.Health < 100 then
            game:GetService('ReplicatedStorage').RemoteEvents.DamagePlayer:FireServer(math.huge * -1)
        end
    end)
end

game.Players.LocalPlayer.CharacterAdded:Connect(function(p4)
    u3(p4)
end)
u3(game.Players.LocalPlayer.Character)
print('NightSlayerHub')
game:GetService('StarterGui'):SetCore('SendNotification', {
    Title = 'Night Slayer Hub',
    Text = 'God Mode đã được áp dụng...',
    Icon = "rbxassetid://130627959945120";
    Duration = 5,
})
    end
})

Tabs.Main:Section({ Title = "Khác", Icon = "settings" })

local instantInteractEnabled = false
local instantInteractConnection
local originalHoldDurations = {}

Tabs.Main:Toggle({
    Title = "Tương Tác Tức Thì",
    Value = false,
    Callback = function(state)
        instantInteractEnabled = state

        if state then
            originalHoldDurations = {}
            instantInteractConnection = task.spawn(function()
                while instantInteractEnabled do
                    for _, obj in ipairs(workspace:GetDescendants()) do
                        if obj:IsA("ProximityPrompt") then
                            if originalHoldDurations[obj] == nil then
                                originalHoldDurations[obj] = obj.HoldDuration
                            end
                            obj.HoldDuration = 0
                        end
                    end
                    task.wait(0.5)
                end
            end)
        else
            if instantInteractConnection then
                instantInteractEnabled = false
            end
            for obj, value in pairs(originalHoldDurations) do
                if obj and obj:IsA("ProximityPrompt") then
                    obj.HoldDuration = value
                end
            end
            originalHoldDurations = {}
        end
    end
})

local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local torchLoop = nil

Tabs.Main:Toggle({
    Title = "Tự Động Làm Choáng Hươu",
    Value = false,
    Callback = function(state)
        if state then
            torchLoop = RunService.RenderStepped:Connect(function()
                pcall(function()
                    local remote = ReplicatedStorage:FindFirstChild("RemoteEvents")
                        and ReplicatedStorage.RemoteEvents:FindFirstChild("DeerHitByTorch")
                    local deer = workspace:FindFirstChild("Characters")
                        and workspace.Characters:FindFirstChild("Deer")
                    if remote and deer then
                        remote:InvokeServer(deer)
                    end
                end)
                task.wait(0.1)
            end)
        else
            if torchLoop then
                torchLoop:Disconnect()
                torchLoop = nil
            end
        end
    end
})

Tabs.Misc:Section({ Title = "Hình Ảnh", Icon = "lightbulb" })

local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")

local oldAmbient = Lighting.Ambient
local oldBrightness = Lighting.Brightness
local oldClockTime = Lighting.ClockTime

local fullBrightConnection

Tabs.Misc:Toggle({
    Title = "Sáng Toàn Phần",
    Default = false,
    Callback = function(state)
        if state then
            -- เปิด FullBright
            Lighting.Ambient = Color3.new(1, 1, 1)
            Lighting.Brightness = 10
            Lighting.ClockTime = 14

            -- เริ่มตรวจสอบตลอดเวลา
            fullBrightConnection = RunService.RenderStepped:Connect(function()
                if Lighting.ClockTime ~= 14 then
                    Lighting.ClockTime = 14
                end
                if Lighting.Brightness ~= 10 then
                    Lighting.Brightness = 10
                end
                if Lighting.Ambient ~= Color3.new(1, 1, 1) then
                    Lighting.Ambient = Color3.new(1, 1, 1)
                end
            end)
        else
            -- ปิด FullBright และหยุดตรวจสอบ
            if fullBrightConnection then
                fullBrightConnection:Disconnect()
                fullBrightConnection = nil
            end

            Lighting.Ambient = oldAmbient
            Lighting.Brightness = oldBrightness
            Lighting.ClockTime = oldClockTime
        end
    end
})

local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")

local oldFogStart = Lighting.FogStart
local oldFogEnd = Lighting.FogEnd
local oldFogColor = Lighting.FogColor

local noFogConnection

Tabs.Misc:Toggle({
    Title = "Không Sương Mù",
    Default = false,
    Callback = function(state)
        if state then
            -- ปิดหมอก
            Lighting.FogStart = 0
            Lighting.FogEnd = 1e10
            Lighting.FogColor = Color3.fromRGB(255, 255, 255)

            -- ตรวจสอบตลอดว่าไม่มีใครเปลี่ยน
            noFogConnection = RunService.RenderStepped:Connect(function()
                if Lighting.FogStart ~= 0 then
                    Lighting.FogStart = 0
                end
                if Lighting.FogEnd ~= 1e10 then
                    Lighting.FogEnd = 1e10
                end
                if Lighting.FogColor ~= Color3.fromRGB(255, 255, 255) then
                    Lighting.FogColor = Color3.fromRGB(255, 255, 255)
                end
            end)
        else
            -- ปิด toggle และคืนค่าหมอกเดิม
            if noFogConnection then
                noFogConnection:Disconnect()
                noFogConnection = nil
            end
            Lighting.FogStart = oldFogStart
            Lighting.FogEnd = oldFogEnd
            Lighting.FogColor = oldFogColor
        end
    end
})

local Lighting = game:GetService("Lighting")

-- สร้าง ColorCorrectionEffect แค่ครั้งเดียว
local vibrantEffect = Lighting:FindFirstChild("VibrantEffect") or Instance.new("ColorCorrectionEffect")
vibrantEffect.Name = "VibrantEffect"
vibrantEffect.Saturation = 0.9      -- สด 200%
vibrantEffect.Contrast = 0.4        -- เพิ่มคอนทราสต์
vibrantEffect.Brightness = 0.1      -- เพิ่มความสว่างเล็กน้อย
vibrantEffect.Enabled = false
vibrantEffect.Parent = Lighting

Tabs.Misc:Toggle({
    Title = "Màu Sắc Sống Động",
    Default = false,
    Callback = function(state)
        if state then
            -- เปิดโหมดสีสด
            Lighting.Ambient = Color3.fromRGB(180, 180, 180)
            Lighting.OutdoorAmbient = Color3.fromRGB(170, 170, 170)
            Lighting.ColorShift_Top = Color3.fromRGB(255, 230, 200)
            Lighting.ColorShift_Bottom = Color3.fromRGB(200, 240, 255)
            vibrantEffect.Enabled = true
        else
            -- ปิดโหมด กลับค่าดั้งเดิม
            Lighting.Ambient = Color3.new(0, 0, 0)
            Lighting.OutdoorAmbient = Color3.new(0, 0, 0)
            Lighting.ColorShift_Top = Color3.new(0, 0, 0)
            Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
            vibrantEffect.Enabled = false
        end
    end
})

local RunService = game:GetService("RunService")
local Stats = game:GetService("Stats")
local Camera = workspace.CurrentCamera

-- Settings
local showFPS, showPing = true, true
local fpsCounter, fpsLastUpdate, fpsValue = 0, tick(), 0

-- Drawing setup
local function createText(yOffset)
    local textObj = Drawing.new("Text")
    textObj.Size = 16
    textObj.Position = Vector2.new(Camera.ViewportSize.X - 110, yOffset)
    textObj.Color = Color3.fromRGB(0, 255, 0)
    textObj.Center = false
    textObj.Outline = true
    textObj.Visible = true
    return textObj
end

local fpsText = createText(10)
local msText = createText(30)

-- Adjust position when screen size changes
Camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
    fpsText.Position = Vector2.new(Camera.ViewportSize.X - 110, 10)
    msText.Position = Vector2.new(Camera.ViewportSize.X - 110, 30)
end)

-- Main update loop
RunService.RenderStepped:Connect(function()
    fpsCounter += 1

    if tick() - fpsLastUpdate >= 1 then
        fpsValue = fpsCounter
        fpsCounter = 0
        fpsLastUpdate = tick()

        -- FPS Display
        if showFPS then
            fpsText.Text = string.format("FPS: %d", fpsValue)
            fpsText.Color = fpsValue >= 50 and Color3.fromRGB(0, 255, 0)
                or fpsValue >= 30 and Color3.fromRGB(255, 165, 0)
                or Color3.fromRGB(255, 0, 0)
            fpsText.Visible = true
        else
            fpsText.Visible = false
        end

        -- Ping Display
        if showPing then
            local pingStat = Stats.Network.ServerStatsItem["Data Ping"]
            local ping = pingStat and math.floor(pingStat:GetValue()) or 0
            local color, label = Color3.fromRGB(0, 255, 0), "Ping: "

            if ping > 120 then
                color, label = Color3.fromRGB(255, 0, 0), "Ping Wifi Kém: "
            elseif ping > 60 then
                color = Color3.fromRGB(255, 165, 0)
            end

            msText.Text = string.format("%s%d ms", label, ping)
            msText.Color = color
            msText.Visible = true
        else
            msText.Visible = false
        end
    end
end)

Tabs.Misc:Section({ Title = "Hiển Thị Trạng Thái", Icon = "settings-2" })

-- UI Toggles
Tabs.Misc:Toggle({
    Title = "Hiện FPS",
    Default = true,
    Callback = function(val)
        showFPS = val
        fpsText.Visible = val
    end
})
Tabs.Misc:Toggle({
    Title = "Hiện Ping (ms)",
    Default = true,
    Callback = function(val)
        showPing = val
        msText.Visible = val
    end
})


Tabs.Misc:Section({ Title = "Đồ Họa Thấp", Icon = "user-cog" })

Tabs.Misc:Button({
    Title = "Tăng FPS (Bởi Roblox)",
    Callback = function()
        pcall(function()
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            local lighting = game:GetService("Lighting")
            lighting.Brightness = 0
            lighting.FogEnd = 100
            lighting.GlobalShadows = false
            lighting.EnvironmentDiffuseScale = 0
            lighting.EnvironmentSpecularScale = 0
            lighting.ClockTime = 14
            lighting.OutdoorAmbient = Color3.new(0, 0, 0)
            local terrain = workspace:FindFirstChildOfClass("Terrain")
            if terrain then
                terrain.WaterWaveSize = 0
                terrain.WaterWaveSpeed = 0
                terrain.WaterReflectance = 0
                terrain.WaterTransparency = 1
            end
            for _, obj in ipairs(lighting:GetDescendants()) do
                if obj:IsA("PostEffect") or obj:IsA("BloomEffect") or obj:IsA("ColorCorrectionEffect") or obj:IsA("SunRaysEffect") or obj:IsA("BlurEffect") then
                    obj.Enabled = false
                end
            end
            for _, obj in ipairs(game:GetDescendants()) do
                if obj:IsA("ParticleEmitter") or obj:IsA("Trail") then
                    obj.Enabled = false
                elseif obj:IsA("Texture") or obj:IsA("Decal") then
                    obj.Transparency = 1
                end
            end
            for _, part in ipairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CastShadow = false
                end
            end
        end)
        print("✅ FPS Boost Đã Áp Dụng")
    end
})

-- สร้างแท็บก่อน
Tabs.Misc:Button({
    Title = "Tăng FPS (Bởi TurboLite)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
    end
})

-- Section ในแท็บ More
Tabs.More:Section({ Title = "Tự Động Farm", Icon = "gem" })

-- ปุ่มในแท็บ More
Tabs.More:Button({
    Title = "Tự Động Farm (Ngọc)",
    Callback = function()
        loadstring(game:HttpGet("loadstring(game:HttpGet('https://raw.githubusercontent.com/MQPS7/99-Night-in-the-Forset/refs/heads/main/Gfarm'))()"))()
    end
})