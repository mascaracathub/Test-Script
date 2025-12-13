-- Dead Rails Script by danno
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")
local Workspace = game:GetService("Workspace")
local HttpService = game:GetService("HttpService")

-- Load Redz Library
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

-- Create the main window
local Window = redzlib:MakeWindow({
    Title = "Night Slayer Hub",
    SubTitle = "by danno | v1.1",
    SaveFolder = "DeadRailsConfig"
})

-- Add minimize button
Window:AddMinimizeButton({
    Button = {
        Image = "rbxassetid://125003246208510",
        BackgroundTransparency = 0
    },
    Corner = {
        CornerRadius = UDim.new(0, 5)
    }
})

-- Discord Tab
local DiscordTab = Window:MakeTab({"Discord", "mail"})
DiscordTab:AddDiscordInvite({
    Name = "Join Our Discord",
    Description = "Get updates, scripts and support",
    Logo = "rbxassetid://125003246208510",
    Invite = "https://discord.gg/97NybfMde"
})

-- Main Tab
local MainTab = Window:MakeTab({"Main", "home"})

-- Auto Farm Section
local AutoFarmSection = MainTab:AddSection("Auto Farm")

local autoFarmToggle = AutoFarmSection:AddToggle({
    Name = "Auto Farm Zombies",
    Default = false,
    Callback = function(value)
        _G.AutoFarm = value
        if value then
            spawn(function()
                while _G.AutoFarm do
                    wait()
                    pcall(function()
                        -- Target nearest zombie
                        local nearestZombie = nil
                        local nearestDistance = math.huge
                        
                        for _, zombie in pairs(Workspace:GetChildren()) do
                            if zombie:FindFirstChild("Humanoid") and zombie:FindFirstChild("HumanoidRootPart") then
                                if zombie.Name:find("Zombie") or zombie.Name:find("Enemy") or zombie:FindFirstChild("Zombie") then
                                    local distance = (LocalPlayer.Character.HumanoidRootPart.Position - zombie.HumanoidRootPart.Position).Magnitude
                                    if distance < nearestDistance then
                                        nearestDistance = distance
                                        nearestZombie = zombie
                                    end
                                end
                            end
                        end
                        
                        if nearestZombie then
                            -- Attack zombie
                            LocalPlayer.Character.HumanoidRootPart.CFrame = nearestZombie.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
                            mouse1click()
                        end
                    end)
                end
            end)
        end
    end
})

local autoCollectToggle = AutoFarmSection:AddToggle({
    Name = "Auto Collect Drops",
    Default = false,
    Callback = function(value)
        _G.AutoCollect = value
        if value then
            spawn(function()
                while _G.AutoCollect do
                    wait(1)
                    pcall(function()
                        for _, item in pairs(Workspace:GetChildren()) do
                            if item:IsA("Part") and (item.Name:find("Drop") or item.Name:find("Coin") or item.Name:find("Loot")) then
                                firetouchinterest(LocalPlayer.Character.HumanoidRootPart, item, 0)
                                firetouchinterest(LocalPlayer.Character.HumanoidRootPart, item, 1)
                            end
                        end
                    end)
                end
            end)
        end
    end
})

-- KILL AURA SECTION
local KillAuraSection = MainTab:AddSection("Kill Aura")

-- Kill Aura Range Slider
local killAuraRange = KillAuraSection:AddSlider({
    Name = "Kill Aura Range",
    Min = 5,
    Max = 100,
    Default = 25,
    Callback = function(value)
        _G.KillAuraRange = value
    end
})

-- Kill Aura Damage Slider
local killAuraDamage = KillAuraSection:AddSlider({
    Name = "Kill Aura Damage",
    Min = 10,
    Max = 1000,
    Default = 100,
    Callback = function(value)
        _G.KillAuraDamage = value
    end
})

-- Kill Aura Cooldown Slider
local killAuraCooldown = KillAuraSection:AddSlider({
    Name = "Attack Cooldown (ms)",
    Min = 50,
    Max = 1000,
    Default = 200,
    Callback = function(value)
        _G.KillAuraCooldown = value
    end
})

-- Main Kill Aura Toggle
local killAuraToggle = KillAuraSection:AddToggle({
    Name = "Enable Kill Aura",
    Default = false,
    Callback = function(value)
        _G.KillAuraEnabled = value
        
        if value then
            spawn(function()
                local function attackZombie(zombie)
                    pcall(function()
                        -- Method 1: Set health directly
                        if zombie:FindFirstChild("Humanoid") then
                            zombie.Humanoid.Health = zombie.Humanoid.Health - _G.KillAuraDamage
                        end
                        
                        -- Method 2: Use remote events (if game has them)
                        local remotes = {"DamageRemote", "AttackRemote", "DamageZombie", "Hit"}
                        for _, remoteName in pairs(remotes) do
                            local remote = game:GetService("ReplicatedStorage"):FindFirstChild(remoteName)
                            if remote then
                                remote:FireServer(zombie, _G.KillAuraDamage)
                            end
                        end
                        
                        -- Method 3: Use tool if player has one
                        if LocalPlayer.Character then
                            local tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            if tool then
                                tool:Activate()
                            end
                        end
                        
                        -- Visual effect
                        local highlight = Instance.new("Highlight")
                        highlight.Parent = zombie
                        highlight.FillColor = Color3.fromRGB(255, 0, 0)
                        highlight.OutlineColor = Color3.fromRGB(255, 255, 0)
                        highlight.FillTransparency = 0.7
                        game:GetService("Debris"):AddItem(highlight, 0.5)
                    end)
                end
                
                while _G.KillAuraEnabled do
                    wait(_G.KillAuraCooldown / 1000)
                    
                    pcall(function()
                        local character = LocalPlayer.Character
                        if character and character:FindFirstChild("HumanoidRootPart") then
                            local playerPos = character.HumanoidRootPart.Position
                            local killCount = 0
                            
                            -- Find all zombies in range
                            for _, zombie in pairs(Workspace:GetChildren()) do
                                if zombie:FindFirstChild("Humanoid") and zombie:FindFirstChild("HumanoidRootPart") then
                                    -- Check if it's a zombie/enemy
                                    if zombie.Name:find("Zombie") or zombie.Name:find("Enemy") or 
                                       zombie:FindFirstChild("Zombie") or zombie.Name:find("Walker") or
                                       zombie.Name:find("Infected") then
                                        
                                        local distance = (playerPos - zombie.HumanoidRootPart.Position).Magnitude
                                        if distance <= (_G.KillAuraRange or 25) then
                                            attackZombie(zombie)
                                            killCount = killCount + 1
                                            
                                            -- Optional: Teleport to zombie for melee weapons
                                            if _G.KillAuraTeleport then
                                                character.HumanoidRootPart.CFrame = zombie.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2)
                                            end
                                        end
                                    end
                                end
                            end
                            
                            -- Update kill counter label if exists
                            if killAuraCounterLabel then
                                killAuraCounterLabel:Set("Zombies Killed: " .. tostring(killCount))
                            end
                        end
                    end)
                end
            end)
        end
    end
})

-- Kill Aura Options
KillAuraSection:AddToggle({
    Name = "Auto Teleport to Zombies",
    Default = false,
    Callback = function(value)
        _G.KillAuraTeleport = value
    end
})

KillAuraSection:AddToggle({
    Name = "Kill Through Walls",
    Default = false,
    Callback = function(value)
        _G.KillAuraThroughWalls = value
    end
})

KillAuraSection:AddToggle({
    Name = "Show Damage Numbers",
    Default = true,
    Callback = function(value)
        _G.ShowDamageNumbers = value
    end
})

-- Kill All Zombies Button
KillAuraSection:AddButton({
    Name = "⚡ Kill All Zombies in Server",
    Callback = function()
        spawn(function()
            local totalKilled = 0
            
            -- Get all zombies in the entire server
            for _, zombie in pairs(Workspace:GetChildren()) do
                if zombie:FindFirstChild("Humanoid") then
                    if zombie.Name:find("Zombie") or zombie.Name:find("Enemy") or 
                       zombie:FindFirstChild("Zombie") or zombie.Name:find("Walker") then
                        
                        pcall(function()
                            -- Instantly kill the zombie
                            zombie.Humanoid.Health = 0
                            
                            -- Try remote events
                            local remotes = {"DamageRemote", "AttackRemote", "DamageZombie"}
                            for _, remoteName in pairs(remotes) do
                                local remote = game:GetService("ReplicatedStorage"):FindFirstChild(remoteName)
                                if remote then
                                    remote:FireServer(zombie, 999999)
                                end
                            end
                            
                            totalKilled = totalKilled + 1
                            
                            -- Visual feedback
                            if _G.ShowDamageNumbers then
                                local billboard = Instance.new("BillboardGui")
                                billboard.Size = UDim2.new(0, 100, 0, 50)
                                billboard.StudsOffset = Vector3.new(0, 3, 0)
                                billboard.Adornee = zombie.HumanoidRootPart
                                billboard.Parent = zombie.HumanoidRootPart
                                
                                local text = Instance.new("TextLabel")
                                text.Size = UDim2.new(1, 0, 1, 0)
                                text.Text = "💀 KILLED"
                                text.TextColor3 = Color3.fromRGB(255, 0, 0)
                                text.TextScaled = true
                                text.BackgroundTransparency = 1
                                text.Parent = billboard
                                
                                game:GetService("Debris"):AddItem(billboard, 2)
                            end
                        end)
                    end
                end
            end
            
            -- Show notification
            local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/main/Library.lua"))()
            Notification:SendNotification({
                Title = "Mass Kill Complete",
                Text = "Killed " .. totalKilled .. " zombies in server!",
                Icon = "rbxassetid://125003246208510",
                Duration = 5
            })
            
            warn("✅ Killed " .. totalKilled .. " zombies!")
        end)
    end
})

-- Kill Aura Counter Label
local killAuraCounterLabel = KillAuraSection:AddLabel("Zombies Killed: 0")

-- Auto Kill All Toggle
KillAuraSection:AddToggle({
    Name = "Auto Kill All Zombies (Loop)",
    Default = false,
    Callback = function(value)
        _G.AutoKillAll = value
        
        if value then
            spawn(function()
                local killLoopCount = 0
                
                while _G.AutoKillAll do
                    wait(3) -- Kill every 3 seconds
                    
                    pcall(function()
                        local zombiesKilled = 0
                        
                        for _, zombie in pairs(Workspace:GetChildren()) do
                            if zombie:FindFirstChild("Humanoid") then
                                if zombie.Name:find("Zombie") or zombie.Name:find("Enemy") or 
                                   zombie:FindFirstChild("Zombie") then
                                    
                                    -- Kill the zombie
                                    zombie.Humanoid.Health = 0
                                    zombiesKilled = zombiesKilled + 1
                                end
                            end
                        end
                        
                        killLoopCount = killLoopCount + zombiesKilled
                        killAuraCounterLabel:Set("Total Killed: " .. tostring(killLoopCount))
                        
                        if zombiesKilled > 0 then
                            print("Auto Kill: Killed " .. zombiesKilled .. " zombies")
                        end
                    end)
                end
            end)
        end
    end
})

-- Combat Section
local CombatSection = MainTab:AddSection("Combat")

CombatSection:AddSlider({
    Name = "Hitbox Size",
    Min = 0,
    Max = 50,
    Default = 5,
    Callback = function(value)
        _G.HitboxSize = value
    end
})

local hitboxToggle = CombatSection:AddToggle({
    Name = "Enable Hitbox Expander",
    Default = false,
    Callback = function(value)
        _G.HitboxEnabled = value
        if value then
            spawn(function()
                while _G.HitboxEnabled do
                    wait()
                    pcall(function()
                        for _, enemy in pairs(Workspace:GetChildren()) do
                            if enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") then
                                if enemy.Name:find("Zombie") or enemy.Name:find("Enemy") then
                                    enemy.HumanoidRootPart.Size = Vector3.new(_G.HitboxSize or 5, _G.HitboxSize or 5, _G.HitboxSize or 5)
                                    enemy.HumanoidRootPart.Transparency = 0.5
                                    enemy.HumanoidRootPart.Material = "Neon"
                                end
                            end
                        end
                    end)
                end
            end)
        else
            pcall(function()
                for _, enemy in pairs(Workspace:GetChildren()) do
                    if enemy:FindFirstChild("HumanoidRootPart") then
                        enemy.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                        enemy.HumanoidRootPart.Transparency = 1
                    end
                end
            end)
        end
    end
})

CombatSection:AddToggle({
    Name = "Auto Click",
    Default = false,
    Callback = function(value)
        _G.AutoClick = value
        if value then
            spawn(function()
                while _G.AutoClick do
                    wait(0.1)
                    mouse1click()
                end
            end)
        end
    end
})

-- Teleport Section
local TeleportSection = MainTab:AddSection("Teleports")

TeleportSection:AddDropdown({
    Name = "Teleport to Area",
    Options = {"Spawn Area", "Forest Zone", "City Center", "Hospital", "Military Base", "Underground"},
    Callback = function(value)
        local locations = {
            ["Spawn Area"] = CFrame.new(0, 10, 0),
            ["Forest Zone"] = CFrame.new(100, 20, 100),
            ["City Center"] = CFrame.new(200, 30, 200),
            ["Hospital"] = CFrame.new(-100, 25, 150),
            ["Military Base"] = CFrame.new(300, 35, 300),
            ["Underground"] = CFrame.new(0, -50, 0)
        }
        
        if locations[value] then
            LocalPlayer.Character:MoveTo(locations[value].Position)
        end
    end
})

TeleportSection:AddButton({
    Name = "Teleport to Nearest Zombie",
    Callback = function()
        pcall(function()
            local nearest = nil
            local dist = math.huge
            
            for _, zombie in pairs(Workspace:GetChildren()) do
                if zombie:FindFirstChild("HumanoidRootPart") then
                    if zombie.Name:find("Zombie") or zombie.Name:find("Enemy") then
                        local distance = (LocalPlayer.Character.HumanoidRootPart.Position - zombie.HumanoidRootPart.Position).Magnitude
                        if distance < dist then
                            dist = distance
                            nearest = zombie
                        end
                    end
                end
            end
            
            if nearest then
                LocalPlayer.Character.HumanoidRootPart.CFrame = nearest.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
            end
        end)
    end
})

-- Player Tab
local PlayerTab = Window:MakeTab({"Player", "user"})

-- Speed Section
local SpeedSection = PlayerTab:AddSection("Movement")

SpeedSection:AddSlider({
    Name = "WalkSpeed",
    Min = 16,
    Max = 200,
    Default = 16,
    Callback = function(value)
        _G.WalkSpeed = value
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.WalkSpeed = value
        end
    end
})

SpeedSection:AddSlider({
    Name = "JumpPower",
    Min = 50,
    Max = 500,
    Default = 50,
    Callback = function(value)
        _G.JumpPower = value
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.JumpPower = value
        end
    end
})

local infJumpToggle = SpeedSection:AddToggle({
    Name = "Infinite Jump",
    Default = false,
    Callback = function(value)
        _G.InfiniteJump = value
        if value then
            LocalPlayer.Character:WaitForChild("Humanoid")
            game:GetService("UserInputService").JumpRequest:Connect(function()
                if _G.InfiniteJump then
                    LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                end
            end)
        end
    end
})

-- Visual Section
local VisualSection = PlayerTab:AddSection("Visual")

VisualSection:AddToggle({
    Name = "Noclip",
    Default = false,
    Callback = function(value)
        _G.Noclip = value
        if value then
            spawn(function()
                while _G.Noclip do
                    wait()
                    pcall(function()
                        for _, part in pairs(LocalPlayer.Character:GetChildren()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                            end
                        end
                    end)
                end
            end)
        end
    end
})

VisualSection:AddToggle({
    Name = "ESP Players",
    Default = false,
    Callback = function(value)
        _G.PlayerESP = value
        if value then
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    local highlight = Instance.new("Highlight")
                    highlight.Parent = player.Character
                    highlight.FillColor = Color3.fromRGB(0, 255, 0)
                    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                    highlight.FillTransparency = 0.5
                end
            end
        else
            for _, player in pairs(Players:GetPlayers()) do
                if player.Character then
                    local highlight = player.Character:FindFirstChild("Highlight")
                    if highlight then
                        highlight:Destroy()
                    end
                end
            end
        end
    end
})

VisualSection:AddToggle({
    Name = "ESP Zombies",
    Default = false,
    Callback = function(value)
        _G.ZombieESP = value
        if value then
            spawn(function()
                while _G.ZombieESP do
                    wait(1)
                    pcall(function()
                        for _, zombie in pairs(Workspace:GetChildren()) do
                            if zombie:FindFirstChild("Humanoid") and (zombie.Name:find("Zombie") or zombie.Name:find("Enemy")) then
                                if not zombie:FindFirstChild("ZombieESP") then
                                    local highlight = Instance.new("Highlight")
                                    highlight.Name = "ZombieESP"
                                    highlight.Parent = zombie
                                    highlight.FillColor = Color3.fromRGB(255, 0, 0)
                                    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                                    highlight.FillTransparency = 0.3
                                end
                            end
                        end
                    end)
                end
            end)
        else
            pcall(function()
                for _, zombie in pairs(Workspace:GetChildren()) do
                    local esp = zombie:FindFirstChild("ZombieESP")
                    if esp then
                        esp:Destroy()
                    end
                end
            end)
        end
    end
})

-- Server Tab
local ServerTab = Window:MakeTab({"Server", "server"})

ServerTab:AddButton({
    Name = "Rejoin Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
})

ServerTab:AddButton({
    Name = "Server Hop",
    Callback = function()
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local API = "https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100"
        
        local function ListServers()
            local raw = Http:JSONDecode(game:HttpGet(API:format(game.PlaceId)))
            return raw.data
        end
        
        local servers = ListServers()
        local found = false
        
        for _, server in pairs(servers) do
            if server.playing < server.maxPlayers and server.id ~= game.JobId then
                TPS:TeleportToPlaceInstance(game.PlaceId, server.id)
                found = true
                break
            end
        end
        
        if not found then
            warn("No available servers found!")
        end
    end
})

ServerTab:AddButton({
    Name = "Copy Server ID",
    Callback = function()
        setclipboard(game.JobId)
    end
})

ServerTab:AddLabel("Players: " .. #Players:GetPlayers() .. "/" .. game.PlaceId)

-- Settings Tab
local SettingsTab = Window:MakeTab({"Settings", "settings"})

SettingsTab:AddToggle({
    Name = "Anti-AFK",
    Default = false,
    Callback = function(value)
        _G.AntiAFK = value
        if value then
            LocalPlayer.Idled:Connect(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0))
            end)
        end
    end
})

SettingsTab:AddToggle({
    Name = "UI Toggle Keybind (RightShift)",
    Default = false,
    Callback = function(value)
        _G.UIKeybind = value
        if value then
            game:GetService("UserInputService").InputBegan:Connect(function(input)
                if input.KeyCode == Enum.KeyCode.RightShift then
                    Window:ToggleUI()
                end
            end)
        end
    end
})

SettingsTab:AddColorpicker({
    Name = "UI Color",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(value)
        Window:ChangeThemeColor(value)
    end
})

SettingsTab:AddButton({
    Name = "Destroy UI",
    Callback = function()
        Window:DestroyUI()
    end
})

SettingsTab:AddButton({
    Name = "Save Settings",
    Callback = function()
        Window:SaveConfig()
    end
})

-- Misc Tab
local MiscTab = Window:MakeTab({"Misc", "menu"})

MiscTab:AddButton({
    Name = "Give All Items (Testing)",
    Callback = function()
        warn("This feature needs to be customized for Dead Rails")
    end
})

MiscTab:AddButton({
    Name = "Instant Kill All Zombies (One Tap)",
    Callback = function()
        pcall(function()
            local count = 0
            for _, zombie in pairs(Workspace:GetChildren()) do
                if zombie:FindFirstChild("Humanoid") and (zombie.Name:find("Zombie") or zombie.Name:find("Enemy")) then
                    zombie.Humanoid.Health = 0
                    count = count + 1
                end
            end
            warn("Killed " .. count .. " zombies instantly!")
        end)
    end
})

MiscTab:AddButton({
    Name = "Collect All Nearby Drops",
    Callback = function()
        pcall(function()
            for _, item in pairs(Workspace:GetChildren()) do
                if item:IsA("Part") and (item.Name:find("Drop") or item.Name:find("Coin") or item.Name:find("Item")) then
                    firetouchinterest(LocalPlayer.Character.HumanoidRootPart, item, 0)
                    firetouchinterest(LocalPlayer.Character.HumanoidRootPart, item, 1)
                end
            end
        end)
    end
})

MiscTab:AddToggle({
    Name = "Auto Rejoin When Kicked",
    Default = false,
    Callback = function(value)
        _G.AutoRejoin = value
        if value then
            game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                if child.Name == "ErrorPrompt" and child:FindFirstChild("MessageArea") then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                end
            end)
        end
    end
})

-- Initialize
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/main/Library.lua"))()

Notification:SendNotification({
    Title = "Dead Rails Hub v1.1",
    Text = "Kill Aura & Mass Kill Added!",
    Icon = "rbxassetid://125003246208510",
    Duration = 5
})

warn("Dead Rails Hub v1.1 loaded successfully!")
print("Kill Aura Features:")
print("- Kill Aura with adjustable range (5-100)")
print("- Adjustable damage (10-1000)")
print("- Attack cooldown control (50-1000ms)")
print("- Auto Kill All Zombies in Server")
print("- Auto Kill All Loop")
print("- Total kill counter")