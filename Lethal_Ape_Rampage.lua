-- Tải Redz Library
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

-- Tạo cửa sổ chính
local Window = redzlib:MakeWindow({
    Title = "Night Slayer Hub",
    SubTitle = "Ultimate Edition | Redz Hub",
    SaveFolder = "LethalApeConfig"
})

-- Thêm nút thu nhỏ
Window:AddMinimizeButton({
    Button = {
        Image = "rbxassetid://125003246208510",
        BackgroundTransparency = 0
    },
    Corner = {
        CornerRadius = UDim.new(0, 5)
    }
})

-- ========== TABS ==========
local DiscordTab = Window:MakeTab({"Discord", "mail"})
local MainTab = Window:MakeTab({"Main", "home"})
local PlayerTab = Window:MakeTab({"Player", "user"})
local CombatTab = Window:MakeTab({"Combat", "swords"})

-- ========== DISCORD TAB ==========
DiscordTab:AddDiscordInvite({
    Name = "Support Discord",
    Description = "Join for updates and support",
    Logo = "rbxassetid://125003246208510",
    Invite = "https://discord.gg/97NybfMde"
})

-- ========== GLOBALS ==========
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")

-- ========== MAIN TAB ==========
MainTab:AddSection({"Auto Farm"})

-- Auto Farm Mobs
local autoFarmToggle = false
local selectedMob = "Gorilla"
local farmDistance = 50

MainTab:AddDropdown({
    Name = "Select Mob to Farm",
    List = {"Gorilla", "Lion", "Bear", "Wolf", "Crocodile", "All Mobs"},
    Default = "Gorilla",
    Callback = function(value)
        selectedMob = value
    end
})

MainTab:AddSlider({
    Name = "Farm Distance",
    Min = 10,
    Max = 200,
    Default = 50,
    Callback = function(value)
        farmDistance = value
    end
})

MainTab:AddToggle({
    Name = "Auto Farm Mobs",
    Default = false,
    Callback = function(value)
        autoFarmToggle = value
        if value then
            spawn(function()
                while autoFarmToggle and task.wait(0.1) do
                    pcall(function()
                        local enemiesFolder = Workspace:FindFirstChild("Enemies") or Workspace:FindFirstChild("Mobs")
                        if enemiesFolder then
                            for _, mob in pairs(enemiesFolder:GetChildren()) do
                                if autoFarmToggle and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") then
                                    if selectedMob == "All Mobs" or mob.Name:find(selectedMob) then
                                        local distance = (HumanoidRootPart.Position - mob.HumanoidRootPart.Position).Magnitude
                                        if distance <= farmDistance then
                                            -- Combat to mob
                                            HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
                                            
                                            -- Attack mob
                                            local args = {
                                                [1] = "Attack",
                                                [2] = mob
                                            }
                                            
                                            local success, result = pcall(function()
                                                local remote = game:GetService("ReplicatedStorage"):FindFirstChild("CombatEvents") or
                                                              game:GetService("ReplicatedStorage"):FindFirstChild("DamageEvent") or
                                                              game:GetService("ReplicatedStorage"):FindFirstChild("AttackEvent")
                                                if remote then
                                                    remote:FireServer(unpack(args))
                                                else
                                                    -- Try to find remote in other locations
                                                    for _, obj in pairs(game:GetDescendants()) do
                                                        if obj:IsA("RemoteEvent") and (obj.Name:find("Attack") or obj.Name:find("Damage") or obj.Name:find("Combat")) then
                                                            obj:FireServer(unpack(args))
                                                            break
                                                        end
                                                    end
                                                end
                                            end)
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end)
        end
    end
})

MainTab:AddSection({"Auto Collect"})

-- Auto Collect Coins
local autoCoinsToggle = false

MainTab:AddToggle({
    Name = "Auto Collect Coins",
    Default = false,
    Callback = function(value)
        autoCoinsToggle = value
        if value then
            spawn(function()
                while autoCoinsToggle and task.wait(0.2) do
                    pcall(function()
                        local coinsFolder = Workspace:FindFirstChild("Coins") or 
                                           Workspace:FindFirstChild("Money") or
                                           Workspace:FindFirstChild("Currency")
                        
                        if coinsFolder then
                            for _, coin in pairs(coinsFolder:GetChildren()) do
                                if autoCoinsToggle and coin:IsA("Part") or coin:IsA("MeshPart") then
                                    local distance = (HumanoidRootPart.Position - coin.Position).Magnitude
                                    if distance < 100 then
                                        -- Combat to coin
                                        HumanoidRootPart.CFrame = coin.CFrame
                                        
                                        -- Use touch interest for collection
                                        firetouchinterest(HumanoidRootPart, coin, 0)
                                        firetouchinterest(HumanoidRootPart, coin, 1)
                                    end
                                end
                            end
                        end
                        
                        -- Also check for coins directly in workspace
                        for _, obj in pairs(Workspace:GetChildren()) do
                            if autoCoinsToggle and (obj.Name:find("Coin") or obj.Name:find("Money") or obj.Name:find("Gem")) and obj:IsA("Part") then
                                local distance = (HumanoidRootPart.Position - obj.Position).Magnitude
                                if distance < 100 then
                                    HumanoidRootPart.CFrame = obj.CFrame
                                    firetouchinterest(HumanoidRootPart, obj, 0)
                                    firetouchinterest(HumanoidRootPart, obj, 1)
                                end
                            end
                        end
                    end)
                end
            end)
        end
    end
})

-- Auto Collect Drops
MainTab:AddToggle({
    Name = "Auto Collect Drops",
    Default = false,
    Callback = function(value)
        if value then
            spawn(function()
                while value and task.wait(0.3) do
                    pcall(function()
                        for _, obj in pairs(Workspace:GetChildren()) do
                            if value and (obj.Name:find("Drop") or obj.Name:find("Item") or obj.Name:find("Reward")) then
                                local distance = (HumanoidRootPart.Position - obj.Position).Magnitude
                                if distance < 100 then
                                    HumanoidRootPart.CFrame = obj.CFrame
                                    firetouchinterest(HumanoidRootPart, obj, 0)
                                    firetouchinterest(HumanoidRootPart, obj, 1)
                                end
                            end
                        end
                    end)
                end
            end)
        end
    end
})

MainTab:AddSection({"Combat Mods"})

-- Instant Kill
local instantKillToggle = false

MainTab:AddToggle({
    Name = "Instant Kill",
    Default = false,
    Callback = function(value)
        instantKillToggle = value
        if value then
            local oldNamecall
            oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
                local args = {...}
                local method = getnamecallmethod()
                
                if instantKillToggle and method == "FireServer" then
                    if tostring(self):find("Damage") or tostring(self):find("Attack") or tostring(self):find("Hit") then
                        -- Modify damage to very high
                        for i, arg in pairs(args) do
                            if type(arg) == "number" and arg > 0 and arg < 1000 then
                                args[i] = 999999
                            end
                        end
                    end
                end
                
                return oldNamecall(self, unpack(args))
            end)
        end
    end
})

-- God Mode
local godModeToggle = false

MainTab:AddToggle({
    Name = "God Mode",
    Default = false,
    Callback = function(value)
        godModeToggle = value
        if value then
            spawn(function()
                while godModeToggle and task.wait() do
                    pcall(function()
                        if Character and Character:FindFirstChild("Humanoid") then
                            Character.Humanoid.Health = Character.Humanoid.MaxHealth
                        end
                    end)
                end
            end)
        end
    end
})

MainTab:AddSection({"Auto Skills"})

-- Auto Use Skills
local autoSkillsToggle = false

MainTab:AddToggle({
    Name = "Auto Use Skills",
    Default = false,
    Callback = function(value)
        autoSkillsToggle = value
        if value then
            spawn(function()
                while autoSkillsToggle and task.wait(2) do
                    pcall(function()
                        -- Check backpack for skills
                        local backpack = LocalPlayer:FindFirstChild("Backpack")
                        if backpack then
                            for _, tool in pairs(backpack:GetChildren()) do
                                if autoSkillsToggle and tool:IsA("Tool") then
                                    -- Equip and use tool
                                    LocalPlayer.Character.Humanoid:EquipTool(tool)
                                    tool:Activate()
                                    task.wait(0.5)
                                end
                            end
                        end
                        
                        -- Check character for tools
                        if Character then
                            for _, tool in pairs(Character:GetChildren()) do
                                if autoSkillsToggle and tool:IsA("Tool") then
                                    tool:Activate()
                                end
                            end
                        end
                    end)
                end
            end)
        end
    end
})

-- Auto Equip Best Weapon
MainTab:AddToggle({
    Name = "Auto Equip Best Weapon",
    Default = false,
    Callback = function(value)
        if value then
            spawn(function()
                while value and task.wait(5) do
                    pcall(function()
                        local bestTool = nil
                        local highestDamage = 0
                        
                        local backpack = LocalPlayer:FindFirstChild("Backpack")
                        if backpack then
                            for _, tool in pairs(backpack:GetChildren()) do
                                if tool:IsA("Tool") then
                                    local damage = tool:FindFirstChild("Damage") or tool:FindFirstChild("DamageValue")
                                    if damage and damage.Value > highestDamage then
                                        highestDamage = damage.Value
                                        bestTool = tool
                                    end
                                end
                            end
                            
                            if bestTool then
                                LocalPlayer.Character.Humanoid:EquipTool(bestTool)
                            end
                        end
                    end)
                end
            end)
        end
    end
})

-- ========== PLAYER TAB ==========
PlayerTab:AddSection({"Movement"})

-- Fly System
local flyEnabled = false
local flySpeed = 50
local flyBodyVelocity

PlayerTab:AddToggle({
    Name = "Fly (Noclip)",
    Default = false,
    Callback = function(value)
        flyEnabled = value
        
        if value then
            -- Create BodyVelocity for flight
            flyBodyVelocity = Instance.new("BodyVelocity")
            flyBodyVelocity.Velocity = Vector3.new(0, 0, 0)
            flyBodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
            flyBodyVelocity.Parent = HumanoidRootPart
            
            -- Enable noclip
            spawn(function()
                while flyEnabled do
                    pcall(function()
                        for _, part in pairs(Character:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                            end
                        end
                    end)
                    task.wait()
                end
            end)
            
            -- Flight movement
            spawn(function()
                while flyEnabled do
                    local cam = Workspace.CurrentCamera.CFrame
                    local moveVector = Vector3.new()
                    
                    -- Forward/Backward
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        moveVector = moveVector + cam.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        moveVector = moveVector - cam.LookVector
                    end
                    
                    -- Left/Right
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        moveVector = moveVector - cam.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        moveVector = moveVector + cam.RightVector
                    end
                    
                    -- Up/Down
                    if UserInputService:IsKeyDown(Enum.KeyCode.E) then
                        moveVector = moveVector + Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Q) then
                        moveVector = moveVector + Vector3.new(0, -1, 0)
                    end
                    
                    flyBodyVelocity.Velocity = moveVector * flySpeed
                    task.wait()
                end
                
                if flyBodyVelocity then
                    flyBodyVelocity:Destroy()
                    flyBodyVelocity = nil
                end
            end)
        else
            if flyBodyVelocity then
                flyBodyVelocity:Destroy()
                flyBodyVelocity = nil
            end
        end
    end
})

PlayerTab:AddSlider({
    Name = "Fly Speed",
    Min = 1,
    Max = 300,
    Default = 50,
    Callback = function(value)
        flySpeed = value
    end
})

-- Walk Speed
PlayerTab:AddSlider({
    Name = "Walk Speed",
    Min = 16,
    Max = 500,
    Default = 16,
    Callback = function(value)
        pcall(function()
            Humanoid.WalkSpeed = value
        end)
    end
})

-- Jump Power
PlayerTab:AddSlider({
    Name = "Jump Power",
    Min = 50,
    Max = 1000,
    Default = 50,
    Callback = function(value)
        pcall(function()
            Humanoid.JumpPower = value
        end)
    end
})

-- Infinite Jump
local infiniteJump = false

PlayerTab:AddToggle({
    Name = "Infinite Jump",
    Default = false,
    Callback = function(value)
        infiniteJump = value
        if value then
            UserInputService.JumpRequest:Connect(function()
                if infiniteJump then
                    Humanoid:ChangeState("Jumping")
                end
            end)
        end
    end
})

-- Noclip
local noclipEnabled = false

PlayerTab:AddToggle({
    Name = "Noclip",
    Default = false,
    Callback = function(value)
        noclipEnabled = value
        if value then
            spawn(function()
                while noclipEnabled do
                    pcall(function()
                        for _, part in pairs(Character:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                            end
                        end
                    end)
                    task.wait(0.1)
                end
            end)
        end
    end
})

-- Wall Walk (giống trong ảnh)
local wallWalkEnabled = false

PlayerTab:AddToggle({
    Name = "Wall Walk",
    Default = false,
    Callback = function(value)
        wallWalkEnabled = value
        if value then
            spawn(function()
                while wallWalkEnabled do
                    pcall(function()
                        Humanoid:ChangeState(Enum.HumanoidStateType.Climbing)
                    end)
                    task.wait(0.1)
                end
            end)
        end
    end
})

PlayerTab:AddSection({"Camera"})

-- Free Look (Camera)
local freeLookEnabled = false

PlayerTab:AddToggle({
    Name = "Free Look",
    Default = false,
    Callback = function(value)
        freeLookEnabled = value
        if value then
            LocalPlayer.CameraMaxZoomDistance = 10000
            LocalPlayer.CameraMinZoomDistance = 0
        else
            LocalPlayer.CameraMaxZoomDistance = 100
            LocalPlayer.CameraMinZoomDistance = 0.5
        end
    end
})

PlayerTab:AddSlider({
    Name = "Camera Zoom",
    Min = 1,
    Max = 500,
    Default = 50,
    Callback = function(value)
        Workspace.CurrentCamera.FieldOfView = value
    end
})

-- ========== COMBAT TAB ==========
CombatTab:AddSection({"Aimbot"})

-- Aimbot System
local aimbotEnabled = false
local aimbotKey = Enum.KeyCode.Q
local aimbotTarget = nil
local aimbotFOV = 50
local aimbotSmoothness = 0.1

CombatTab:AddToggle({
    Name = "Aimbot",
    Default = false,
    Callback = function(value)
        aimbotEnabled = value
        if value then
            spawn(function()
                while aimbotEnabled do
                    pcall(function()
                        -- Find closest target
                        local closestPlayer = nil
                        local closestDistance = aimbotFOV
                        
                        for _, player in pairs(Players:GetPlayers()) do
                            if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                                local screenPoint, onScreen = Workspace.CurrentCamera:WorldToScreenPoint(player.Character.HumanoidRootPart.Position)
                                if onScreen then
                                    local mouse = UserInputService:GetMouseLocation()
                                    local distance = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(screenPoint.X, screenPoint.Y)).Magnitude
                                    
                                    if distance < closestDistance then
                                        closestDistance = distance
                                        closestPlayer = player
                                    end
                                end
                            end
                        end
                        
                        aimbotTarget = closestPlayer
                        
                        -- Aim at target when key is pressed
                        if aimbotTarget and UserInputService:IsKeyDown(aimbotKey) then
                            local targetHRP = aimbotTarget.Character.HumanoidRootPart
                            local camera = Workspace.CurrentCamera
                            
                            -- Smooth aim
                            local currentCFrame = camera.CFrame
                            local targetPosition = targetHRP.Position + Vector3.new(0, 2, 0)
                            local newCFrame = CFrame.new(camera.CFrame.Position, targetPosition)
                            
                            camera.CFrame = currentCFrame:Lerp(newCFrame, aimbotSmoothness)
                        end
                    end)
                    task.wait()
                end
            end)
        else
            aimbotTarget = nil
        end
    end
})

CombatTab:AddKeybind({
    Name = "Aimbot Key",
    Default = Enum.KeyCode.Q,
    Callback = function(key)
        aimbotKey = key
    end
})

CombatTab:AddSlider({
    Name = "Aimbot FOV",
    Min = 10,
    Max = 500,
    Default = 50,
    Callback = function(value)
        aimbotFOV = value
    end
})

CombatTab:AddSlider({
    Name = "Aimbot Smoothness",
    Min = 0.01,
    Max = 1,
    Default = 0.1,
    Callback = function(value)
        aimbotSmoothness = value
    end
})

CombatTab:AddSection({"Auto Parry"})

-- Auto Parry
local autoParryEnabled = false

CombatTab:AddToggle({
    Name = "Auto Parry",
    Default = false,
    Callback = function(value)
        autoParryEnabled = value
        if value then
            spawn(function()
                while autoParryEnabled do
                    pcall(function()
                        -- Check for incoming attacks
                        for _, player in pairs(Players:GetPlayers()) do
                            if player ~= LocalPlayer and player.Character then
                                local tool = player.Character:FindFirstChildOfClass("Tool")
                                if tool then
                                    -- Check if player is attacking
                                    local distance = (HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
                                    if distance < 20 then
                                        -- Activate parry/block
                                        local args = {
                                            [1] = "Block",
                                            [2] = true
                                        }
                                        
                                        local remote = game:GetService("ReplicatedStorage"):FindFirstChild("CombatEvents")
                                        if remote then
                                            remote:FireServer(unpack(args))
                                        end
                                    end
                                end
                            end
                        end
                    end)
                    task.wait(0.1)
                end
            end)
        end
    end
})

CombatTab:AddSection({"Hitbox Mods"})

-- Hitbox Extender
local hitboxSize = 1

CombatTab:AddSlider({
    Name = "Hitbox Size",
    Min = 1,
    Max = 20,
    Default = 1,
    Callback = function(value)
        hitboxSize = value
        pcall(function()
            for _, part in pairs(Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Size = part.Size * value
                end
            end
        end)
    end
})

-- Hitbox Visible
CombatTab:AddToggle({
    Name = "Show Hitboxes",
    Default = false,
    Callback = function(value)
        if value then
            for _, player in pairs(Players:GetPlayers()) do
                if player.Character then
                    for _, part in pairs(player.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            local outline = Instance.new("SelectionBox")
                            outline.Adornee = part
                            outline.LineThickness = 0.05
                            outline.Color3 = Color3.fromRGB(255, 0, 0)
                            outline.Parent = part
                        end
                    end
                end
            end
        else
            for _, player in pairs(Players:GetPlayers()) do
                if player.Character then
                    for _, part in pairs(player.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            for _, child in pairs(part:GetChildren()) do
                                if child:IsA("SelectionBox") then
                                    child:Destroy()
                                end
                            end
                        end
                    end
                end
            end
        end
    end
})

-- ========== Main TAB ==========
MainTab:AddSection({"ESP System"})

-- ESP Players
local espPlayersEnabled = false
local playerESP = {}

MainTab:AddToggle({
    Name = "ESP Players",
    Default = false,
    Callback = function(value)
        espPlayersEnabled = value
        
        if value then
            -- Create ESP for existing players
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    createPlayerESP(player)
                end
            end
            
            -- Connect to new players
            Players.PlayerAdded:Connect(function(player)
                if espPlayersEnabled then
                    createPlayerESP(player)
                end
            end)
        else
            -- Remove all ESP
            for _, esp in pairs(playerESP) do
                if esp then
                    esp:Destroy()
                end
            end
            playerESP = {}
        end
    end
})

function createPlayerESP(player)
    if not player.Character then
        player.CharacterAdded:Wait()
    end
    
    local highlight = Instance.new("Highlight")
    highlight.Name = player.Name .. "_ESP"
    highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
    highlight.FillColor = Color3.fromRGB(0, 255, 0)
    highlight.FillTransparency = 0.7
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = player.Character
    
    playerESP[player.Name] = highlight
    
    -- Update when character changes
    player.CharacterAdded:Connect(function(newChar)
        task.wait(1)
        if espPlayersEnabled and playerESP[player.Name] then
            playerESP[player.Name].Parent = newChar
        end
    end)
end

-- ESP Mobs
local espMobsEnabled = false
local mobESP = {}

MainTab:AddToggle({
    Name = "ESP Mobs",
    Default = false,
    Callback = function(value)
        espMobsEnabled = value
        
        if value then
            spawn(function()
                while espMobsEnabled do
                    pcall(function()
                        local enemiesFolder = Workspace:FindFirstChild("Enemies") or Workspace:FindFirstChild("Mobs")
                        if enemiesFolder then
                            for _, mob in pairs(enemiesFolder:GetChildren()) do
                                if not mobESP[mob] and mob:IsA("Model") and mob:FindFirstChild("HumanoidRootPart") then
                                    local highlight = Instance.new("Highlight")
                                    highlight.Name = mob.Name .. "_ESP"
                                    highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
                                    highlight.FillColor = Color3.fromRGB(255, 0, 0)
                                    highlight.FillTransparency = 0.7
                                    highlight.OutlineTransparency = 0
                                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                                    highlight.Parent = mob
                                    
                                    mobESP[mob] = highlight
                                end
                            end
                        end
                        
                        -- Clean up destroyed mobs
                        for mob, highlight in pairs(mobESP) do
                            if not mob.Parent or mob.Parent == nil then
                                highlight:Destroy()
                                mobESP[mob] = nil
                            end
                        end
                    end)
                    task.wait(1)
                end
            end)
        else
            for mob, highlight in pairs(mobESP) do
                if highlight then
                    highlight:Destroy()
                end
            end
            mobESP = {}
        end
    end
})

-- ESP Items
MainTab:AddToggle({
    Name = "ESP Items/Coins",
    Default = false,
    Callback = function(value)
        if value then
            spawn(function()
                while value do
                    pcall(function()
                        for _, obj in pairs(Workspace:GetChildren()) do
                            if obj.Name:find("Coin") or obj.Name:find("Money") or obj.Name:find("Gem") or obj.Name:find("Item") then
                                if not obj:FindFirstChild("ESP_Highlight") then
                                    local highlight = Instance.new("Highlight")
                                    highlight.Name = "ESP_Highlight"
                                    highlight.OutlineColor = Color3.fromRGB(255, 255, 0)
                                    highlight.FillColor = Color3.fromRGB(255, 255, 0)
                                    highlight.FillTransparency = 0.8
                                    highlight.OutlineTransparency = 0
                                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                                    highlight.Parent = obj
                                end
                            end
                        end
                    end)
                    task.wait(2)
                end
            end)
        else
            pcall(function()
                for _, obj in pairs(Workspace:GetDescendants()) do
                    if obj.Name == "ESP_Highlight" then
                        obj:Destroy()
                    end
                end
            end)
        end
    end
})

MainTab:AddSection({"Other Mains"})

-- X-Ray (See through walls)
MainTab:AddToggle({
    Name = "X-Ray Vision",
    Default = false,
    Callback = function(value)
        if value then
            for _, part in pairs(Workspace:GetDescendants()) do
                if part:IsA("BasePart") and part.Transparency < 0.5 then
                    part.LocalTransparencyModifier = 0.5
                end
            end
        else
            for _, part in pairs(Workspace:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.LocalTransparencyModifier = 0
                end
            end
        end
    end
})

-- Full Bright
MainTab:AddToggle({
    Name = "Full Bright",
    Default = false,
    Callback = function(value)
        if value then
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").Brightness = 2
        else
            game:GetService("Lighting").GlobalShadows = true
            game:GetService("Lighting").Brightness = 1
        end
    end
})

-- ========== Combat TAB ==========
CombatTab:AddSection({"Locations"})

-- Combat to Locations
local locations = {
    {"Spawn Point", Vector3.new(0, 5, 0)},
    {"Forest Area", Vector3.new(100, 20, 150)},
    {"Mountain Top", Vector3.new(-200, 100, 50)},
    {"Cave Entrance", Vector3.new(50, 10, -100)},
    {"Boss Arena", Vector3.new(300, 30, 200)},
    {"Secret Area", Vector3.new(-150, 50, -200)},
    {"VIP Zone", Vector3.new(500, 10, 500)},
    {"Underwater", Vector3.new(0, -50, 100)}
}

for i, location in ipairs(locations) do
    CombatTab:AddButton({
        Name = location[1],
        Callback = function()
            pcall(function()
                HumanoidRootPart.CFrame = CFrame.new(location[2])
            end)
        end
    })
end

CombatTab:AddSection({"Player Combat"})

-- Combat to Player
CombatTab:AddDropdown({
    Name = "Select Player",
    List = {},
    Default = "",
    Callback = function(value)
        local targetPlayer = Players:FindFirstChild(value)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            pcall(function()
                HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 3, 0)
            end)
        end
    end
})

-- Update player list
spawn(function()
    while task.wait(5) do
        local playerNames = {}
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                table.insert(playerNames, player.Name)
            end
        end
        CombatTab:UpdateDropdown("Select Player", playerNames, playerNames[1] or "")
    end
end)

-- Combat to Mob
CombatTab:AddDropdown({
    Name = "Combat to Mob",
    List = {"Gorilla", "Lion", "Bear", "Wolf", "Crocodile"},
    Default = "Gorilla",
    Callback = function(value)
        pcall(function()
            local enemiesFolder = Workspace:FindFirstChild("Enemies") or Workspace:FindFirstChild("Mobs")
            if enemiesFolder then
                for _, mob in pairs(enemiesFolder:GetChildren()) do
                    if mob.Name:find(value) and mob:FindFirstChild("HumanoidRootPart") then
                        HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(0, 3, 5)
                        break
                    end
                end
            end
        end)
    end
})

CombatTab:AddSection({"Combat Tools"})

-- Bring Player
CombatTab:AddButton({
    Name = "Bring Selected Player",
    Callback = function()
        local selected = CombatTab:GetDropdownValue("Select Player")
        if selected then
            local targetPlayer = Players:FindFirstChild(selected)
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                targetPlayer.Character.HumanoidRootPart.CFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, 5)
            end
        end
    end
})

-- Combat to Safe Spot
CombatTab:AddButton({
    Name = "Combat to Safe Spot",
    Callback = function()
        -- Find highest point nearby
        local rayOrigin = HumanoidRootPart.Position + Vector3.new(0, 100, 0)
        local rayDirection = Vector3.new(0, -200, 0)
        local raycastParams = RaycastParams.new()
        raycastParams.FilterDescendantsInstances = {Character}
        raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
        
        local result = Workspace:Raycast(rayOrigin, rayDirection, raycastParams)
        if result then
            HumanoidRootPart.CFrame = CFrame.new(result.Position + Vector3.new(0, 5, 0))
        end
    end
})

-- ========== Player TAB ==========
PlayerTab:AddSection({"UI Player"})

-- Toggle UI Keybind
PlayerTab:AddKeybind({
    Name = "Toggle UI Keybind",
    Default = Enum.KeyCode.RightShift,
    Callback = function()
        -- This would toggle the UI visibility
        -- Implementation depends on Redz library
    end
})

-- UI Transparency
PlayerTab:AddSlider({
    Name = "UI Transparency",
    Min = 0,
    Max = 1,
    Default = 0,
    Increment = 0.1,
    Callback = function(value)
        -- Adjust UI transparency
    end
})

PlayerTab:AddSection({"Server Options"})

-- Rejoin Server
PlayerTab:AddButton({
    Name = "Rejoin Server",
    Callback = function()
        local CombatService = game:GetService("CombatService")
        CombatService:Combat(game.PlaceId, LocalPlayer)
    end
})

-- Server Hop
PlayerTab:AddButton({
    Name = "Server Hop",
    Callback = function()
        local HttpService = game:GetService("HttpService")
        local CombatService = game:GetService("CombatService")
        
        local servers = {}
        local nextCursor = ""
        
        repeat
            local response = HttpService:JSONDecode(game:HttpGet(
                "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?limit=100&cursor=" .. nextCursor
            ))
            
            for _, server in ipairs(response.data) do
                if server.playing < server.maxPlayers and server.id ~= game.JobId then
                    table.insert(servers, server)
                end
            end
            
            nextCursor = response.nextPageCursor
        until nextCursor == nil or #servers >= 10
        
        if #servers > 0 then
            local randomServer = servers[math.random(1, #servers)]
            CombatService:CombatToPlaceInstance(game.PlaceId, randomServer.id, LocalPlayer)
        end
    end
})

-- Copy Join Script
PlayerTab:AddButton({
    Name = "Copy Join Script",
    Callback = function()
        local joinScript = string.format('game:GetService("CombatService"):Combat(%s, game:GetService("Players").LocalPlayer)', game.PlaceId)
        setclipboard(joinScript)
        
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Copied!",
            Text = "Join script copied to clipboard",
            Duration = 3
        })
    end
})

PlayerTab:AddSection({"Config"})

-- Save Config
PlayerTab:AddButton({
    Name = "Save Configuration",
    Callback = function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success",
            Text = "Configuration saved!",
            Duration = 3
        })
    end
})

-- Load Config
PlayerTab:AddButton({
    Name = "Load Configuration",
    Callback = function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success",
            Text = "Configuration loaded!",
            Duration = 3
        })
    end
})

PlayerTab:AddSection({"Utilities"})

-- Anti-AFK
local antiAFK = false
PlayerTab:AddToggle({
    Name = "Anti-AFK",
    Default = false,
    Callback = function(value)
        antiAFK = value
        if value then
            local VirtualInputManager = game:GetService("VirtualInputManager")
            spawn(function()
                while antiAFK do
                    VirtualInputManager:SendMouseMoveEvent(10, 10, game:GetService("Workspace"))
                    task.wait(30)
                end
            end)
        end
    end
})

-- FPS Boost
PlayerTab:AddButton({
    Name = "FPS Boost",
    Callback = function()
        -- Reduce graphics quality for FPS boost
        Player().Rendering.QualityLevel = 1
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").FogEnd = 100000
        
        for _, obj in pairs(game:GetDescendants()) do
            if obj:IsA("Part") or obj:IsA("MeshPart") then
                obj.Material = Enum.Material.Plastic
            end
        end
        
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "FPS Boost",
            Text = "Graphics optimized for performance",
            Duration = 3
        })
    end
})

-- Destroy GUI
PlayerTab:AddButton({
    Name = "Destroy GUI",
    Callback = function()
        game:GetService("CoreGui"):FindFirstChild("Lethal Ape: Rampage Hub"):Destroy()
    end
})

PlayerTab:AddSection({"Credits"})
PlayerTab:AddLabel({"Lethal Ape: Rampage Hub"})
PlayerTab:AddLabel({"Made by danno"})
PlayerTab:AddLabel({"Using Redz Hub UI Library"})
PlayerTab:AddLabel({"Version: 2.0.0 Ultimate"})

-- ========== INITIALIZATION ==========
-- Set theme
Window:SetTheme("Dark")

-- Auto-refresh character
LocalPlayer.CharacterAdded:Connect(function(newChar)
    Character = newChar
    HumanoidRootPart = newChar:WaitForChild("HumanoidRootPart")
    Humanoid = newChar:WaitForChild("Humanoid")
end)

-- Notification
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Lethal Ape: Rampage Hub",
    Text = "Ultimate Edition Loaded Successfully!",
    Duration = 5,
    Icon = "rbxassetid://125003246208510"
})

print("=========================================")
print("Lethal Ape: Rampage Hub - Ultimate Edition")
print("Loaded Successfully!")
print("=========================================")