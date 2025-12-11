-- Legends of Speed GUI Menu (Draggable) với chức năng đầy đủ
-- Đặt script này trong LocalScript (StarterGui hoặc PlayerGui)

local Player = game:GetService("Players").LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local RootPart = Character:WaitForChild("HumanoidRootPart")

-- Các service
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")

-- Tạo ScreenGui chính
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LegendsOfSpeedMenu"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 10
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

-- Tạo Main Frame (Menu chính có thể kéo)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainMenu"
MainFrame.Size = UDim2.new(0, 400, 0, 550)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -275)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
MainFrame.BackgroundTransparency = 0.1
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Selectable = true
MainFrame.ClipsDescendants = true

-- Thêm corner radius
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- Thêm shadow/drop shadow
local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(60, 60, 80)
UIStroke.Thickness = 2
UIStroke.Parent = MainFrame

-- Tạo thanh tiêu đề (Title Bar)
local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = TitleBar

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "Title"
TitleLabel.Size = UDim2.new(1, -80, 1, 0)
TitleLabel.Position = UDim2.new(0, 10, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Night Slayer Hub"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 18
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar

-- Nút đóng (Close Button)
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -40, 0.5, -15)
CloseButton.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 16
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Parent = TitleBar

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 6)
CloseCorner.Parent = CloseButton

-- Nút thu nhỏ (Minimize Button)
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Size = UDim2.new(0, 30, 0, 30)
MinimizeButton.Position = UDim2.new(1, -80, 0.5, -15)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
MinimizeButton.Text = "_"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 16
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Parent = TitleBar

local MinimizeCorner = Instance.new("UICorner")
MinimizeCorner.CornerRadius = UDim.new(0, 6)
MinimizeCorner.Parent = MinimizeButton

-- Container cho nội dung
local ContentFrame = Instance.new("ScrollingFrame")
ContentFrame.Name = "Content"
ContentFrame.Size = UDim2.new(1, -20, 1, -60)
ContentFrame.Position = UDim2.new(0, 10, 0, 50)
ContentFrame.BackgroundTransparency = 1
ContentFrame.BorderSizePixel = 0
ContentFrame.ScrollBarThickness = 6
ContentFrame.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 80)
ContentFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ContentFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ContentFrame.Parent = MainFrame

local ContentLayout = Instance.new("UIListLayout")
ContentLayout.Padding = UDim.new(0, 10)
ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
ContentLayout.Parent = ContentFrame

-- Thêm các section chức năng
local function createSection(title)
	local Section = Instance.new("Frame")
	Section.Name = title .. "Section"
	Section.Size = UDim2.new(1, 0, 0, 0)
	Section.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
	Section.BackgroundTransparency = 0.1
	Section.AutomaticSize = Enum.AutomaticSize.Y
	Section.Parent = ContentFrame
	
	local SectionCorner = Instance.new("UICorner")
	SectionCorner.CornerRadius = UDim.new(0, 8)
	SectionCorner.Parent = Section
	
	local SectionPadding = Instance.new("UIPadding")
	SectionPadding.PaddingTop = UDim.new(0, 10)
	SectionPadding.PaddingBottom = UDim.new(0, 10)
	SectionPadding.PaddingLeft = UDim.new(0, 15)
	SectionPadding.PaddingRight = UDim.new(0, 15)
	SectionPadding.Parent = Section
	
	local SectionTitle = Instance.new("TextLabel")
	SectionTitle.Name = "Title"
	SectionTitle.Size = UDim2.new(1, 0, 0, 30)
	SectionTitle.BackgroundTransparency = 1
	SectionTitle.Text = title
	SectionTitle.TextColor3 = Color3.fromRGB(255, 220, 100)
	SectionTitle.TextSize = 16
	SectionTitle.Font = Enum.Font.GothamBold
	SectionTitle.TextXAlignment = Enum.TextXAlignment.Left
	SectionTitle.Parent = Section
	
	local SectionContent = Instance.new("Frame")
	SectionContent.Name = "Content"
	SectionContent.Size = UDim2.new(1, 0, 0, 0)
	SectionContent.BackgroundTransparency = 1
	SectionContent.AutomaticSize = Enum.AutomaticSize.Y
	SectionContent.Parent = Section
	
	local SectionContentLayout = Instance.new("UIListLayout")
	SectionContentLayout.Padding = UDim.new(0, 8)
	SectionContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
	SectionContentLayout.Parent = SectionContent
	
	return SectionContent
end

-- Tạo các section cho game Legends of Speed
local TeleportSection = createSection("Teleport Locations")
local AutoFarmSection = createSection("Auto Farm")
local SpeedSection = createSection("Speed Settings")
local MiscSection = createSection("Miscellaneous")

-- Thêm các button chức năng
local function createButton(parent, text, callback)
	local Button = Instance.new("TextButton")
	Button.Name = text .. "Button"
	Button.Size = UDim2.new(1, 0, 0, 40)
	Button.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
	Button.Text = text
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button.TextSize = 14
	Button.Font = Enum.Font.Gotham
	Button.AutoButtonColor = true
	Button.Parent = parent
	
	local ButtonCorner = Instance.new("UICorner")
	ButtonCorner.CornerRadius = UDim.new(0, 6)
	ButtonCorner.Parent = Button
	
	Button.MouseButton1Click:Connect(function()
		pcall(callback)
	end)
	
	return Button
end

-- Toggle button (có thể bật/tắt)
local function createToggleButton(parent, text, defaultState, callback)
	local Button = Instance.new("TextButton")
	Button.Name = text .. "Toggle"
	Button.Size = UDim2.new(1, 0, 0, 40)
	Button.BackgroundColor3 = defaultState and Color3.fromRGB(70, 120, 70) or Color3.fromRGB(50, 50, 70)
	Button.Text = text .. ": " .. (defaultState and "ON" or "OFF")
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button.TextSize = 14
	Button.Font = Enum.Font.Gotham
	Button.AutoButtonColor = true
	Button.Parent = parent
	
	local ButtonCorner = Instance.new("UICorner")
	ButtonCorner.CornerRadius = UDim.new(0, 6)
	ButtonCorner.Parent = Button
	
	local state = defaultState
	
	Button.MouseButton1Click:Connect(function()
		state = not state
		Button.BackgroundColor3 = state and Color3.fromRGB(70, 120, 70) or Color3.fromRGB(50, 50, 70)
		Button.Text = text .. ": " .. (state and "ON" or "OFF")
		pcall(callback, state)
	end)
	
	return Button
end

-- =============================================
-- CODE CHỨC NĂNG CHO LEGENDS OF SPEED
-- =============================================

-- Các biến toàn cục cho chức năng
local autoCollectOrbs = false
local autoRebirth = false
local speedHackActive = false
local noClipActive = false
local infiniteJumpActive = false
local autoClickActive = false
local antiAfkActive = false

-- Kết nối các sự kiện khi nhân vật thay đổi
Player.CharacterAdded:Connect(function(char)
	Character = char
	Humanoid = char:WaitForChild("Humanoid")
	RootPart = char:WaitForChild("HumanoidRootPart")
end)

-- ========== TELEPORT FUNCTIONS ==========
-- Tìm game service cho teleport
local function findTeleportService()
	-- Thử tìm các remote event cho teleport
	local rs = ReplicatedStorage
	local teleportRemote = rs:FindFirstChild("TeleportRemote") or rs:FindFirstChild("TeleportEvent") or rs:FindFirstChild("Teleport")
	
	if teleportRemote then
		return teleportRemote
	end
	
	-- Nếu không tìm thấy, tạo fallback teleport
	return nil
end

-- Teleport đến Spawn Area
createButton(TeleportSection, "Spawn Area", function()
	if RootPart then
		-- Tìm vị trí spawn trong workspace
		local spawnLocations = Workspace:FindFirstChild("Spawn") or Workspace:FindFirstChild("SpawnLocation")
		
		if spawnLocations then
			RootPart.CFrame = spawnLocations.CFrame
		else
			-- Fallback position
			RootPart.CFrame = CFrame.new(0, 50, 0)
		end
	end
end)

-- Teleport đến Ice Area
createButton(TeleportSection, "Ice Area", function()
	if RootPart then
		-- Tìm ice area
		local iceArea = Workspace:FindFirstChild("Ice") or Workspace:FindFirstChild("IceArea") or Workspace:FindFirstChild("Ice Island")
		
		if iceArea then
			RootPart.CFrame = iceArea.CFrame + Vector3.new(0, 10, 0)
		else
			-- Tìm bằng màu sắc hoặc texture
			for _, part in pairs(Workspace:GetChildren()) do
				if part:IsA("Part") and part.Name:lower():find("ice") then
					RootPart.CFrame = part.CFrame + Vector3.new(0, 10, 0)
					break
				end
			end
		end
	end
end)

-- Teleport đến Desert Area
createButton(TeleportSection, "Desert Area", function()
	if RootPart then
		-- Tìm desert area
		local desertArea = Workspace:FindFirstChild("Desert") or Workspace:FindFirstChild("DesertArea")
		
		if desertArea then
			RootPart.CFrame = desertArea.CFrame + Vector3.new(0, 10, 0)
		else
			-- Tìm bằng tên
			for _, part in pairs(Workspace:GetChildren()) do
				if part:IsA("Part") and (part.Name:lower():find("desert") or part.Name:lower():find("sand")) then
					RootPart.CFrame = part.CFrame + Vector3.new(0, 10, 0)
					break
				end
			end
		end
	end
end)

-- Teleport đến Volcano Area
createButton(TeleportSection, "Volcano Area", function()
	if RootPart then
		-- Tìm volcano area
		for _, part in pairs(Workspace:GetChildren()) do
			if part:IsA("Part") and (part.Name:lower():find("volcano") or part.Name:lower():find("lava")) then
				RootPart.CFrame = part.CFrame + Vector3.new(0, 30, 0)
				break
			end
		end
	end
end)

-- ========== AUTO FARM FUNCTIONS ==========
-- Auto Collect Orbs
createToggleButton(AutoFarmSection, "Auto Collect Orbs", false, function(state)
	autoCollectOrbs = state
	if autoCollectOrbs then
		spawn(function()
			while autoCollectOrbs and wait(0.1) do
				pcall(function()
					-- Tìm các orbs trong workspace
					for _, obj in pairs(Workspace:GetChildren()) do
						if autoCollectOrbs then
							if obj.Name == "Orb" or obj.Name == "SpeedOrb" or obj.Name:find("Coin") or obj.Name:find("Gem") then
								if obj:IsA("Part") or obj:IsA("MeshPart") then
									local distance = (RootPart.Position - obj.Position).Magnitude
									if distance < 50 then
										RootPart.CFrame = obj.CFrame
										wait(0.05)
									end
								end
							end
						else
							break
						end
					end
					
					-- Cũng kiểm tra trong các model
					for _, model in pairs(Workspace:GetDescendants()) do
						if autoCollectOrbs then
							if model.Name == "Orb" or model.Name == "SpeedOrb" or model.Name:find("Coin") or model.Name:find("Gem") then
								if model:IsA("Part") or model:IsA("MeshPart") then
									local distance = (RootPart.Position - model.Position).Magnitude
									if distance < 50 then
										RootPart.CFrame = model.CFrame
										wait(0.05)
									end
								end
							end
						else
							break
						end
					end
				end)
			end
		end)
	end
end)

-- Auto Click
createToggleButton(AutoFarmSection, "Auto Click", false, function(state)
	autoClickActive = state
	if autoClickActive then
		spawn(function()
			while autoClickActive and wait(0.05) do
				pcall(function()
					-- Giả lập click
					mouse1click()
				end)
			end
		end)
	end
end)

-- Auto Rebirth
createToggleButton(AutoFarmSection, "Auto Rebirth", false, function(state)
	autoRebirth = state
	if autoRebirth then
		spawn(function()
			while autoRebirth and wait(5) do
				pcall(function()
					-- Tìm rebirth button hoặc remote event
					local rebirthRemote = ReplicatedStorage:FindFirstChild("Rebirth") or 
										  ReplicatedStorage:FindFirstChild("RebirthRemote") or
										  ReplicatedStorage:FindFirstChild("RebirthEvent")
					
					if rebirthRemote then
						if rebirthRemote:IsA("RemoteEvent") then
							rebirthRemote:FireServer()
						elseif rebirthRemote:IsA("RemoteFunction") then
							rebirthRemote:InvokeServer()
						end
					end
					
					-- Cũng thử tìm trong GUI
					for _, gui in pairs(PlayerGui:GetDescendants()) do
						if gui:IsA("TextButton") and (gui.Name:find("Rebirth") or gui.Text:find("Rebirth")) then
							spawn(function()
								gui:Fire("MouseButton1Click")
							end)
						end
					end
				end)
			end
		end)
	end
end)

-- Auto Race Join
createButton(AutoFarmSection, "Auto Join Race", function()
	pcall(function()
		-- Tìm race event
		local raceRemote = ReplicatedStorage:FindFirstChild("Race") or 
						  ReplicatedStorage:FindFirstChild("JoinRace") or
						  ReplicatedStorage:FindFirstChild("RaceEvent")
		
		if raceRemote then
			raceRemote:FireServer()
		end
	end)
end)

-- ========== SPEED HACK FUNCTIONS ==========
-- Biến lưu tốc độ gốc
local originalWalkSpeed = 16
local originalJumpPower = 50

-- Speed Hack x2
createToggleButton(SpeedSection, "Speed Hack (x2)", false, function(state)
	if Humanoid then
		if state then
			originalWalkSpeed = Humanoid.WalkSpeed
			Humanoid.WalkSpeed = originalWalkSpeed * 2
		else
			Humanoid.WalkSpeed = originalWalkSpeed
		end
	end
end)

-- Speed Hack x5
createToggleButton(SpeedSection, "Speed Hack (x5)", false, function(state)
	if Humanoid then
		if state then
			originalWalkSpeed = Humanoid.WalkSpeed
			Humanoid.WalkSpeed = originalWalkSpeed * 5
		else
			Humanoid.WalkSpeed = originalWalkSpeed
		end
	end
end)

-- Speed Hack x10
createToggleButton(SpeedSection, "Speed Hack (x10)", false, function(state)
	if Humanoid then
		if state then
			originalWalkSpeed = Humanoid.WalkSpeed
			Humanoid.WalkSpeed = originalWalkSpeed * 10
		else
			Humanoid.WalkSpeed = originalWalkSpeed
		end
	end
end)

-- Fly Hack
local flying = false
local flySpeed = 50
createToggleButton(SpeedSection, "Fly Hack", false, function(state)
	flying = state
	if flying then
		local bodyVelocity = Instance.new("BodyVelocity")
		bodyVelocity.Velocity = Vector3.new(0, 0, 0)
		bodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
		bodyVelocity.P = 10000
		bodyVelocity.Parent = RootPart
		
		RunService.Heartbeat:Connect(function()
			if flying and RootPart then
				local camera = Workspace.CurrentCamera
				local lookVector = camera.CFrame.LookVector
				local rightVector = camera.CFrame.RightVector
				
				local forward = UserInputService:IsKeyDown(Enum.KeyCode.W) and 1 or UserInputService:IsKeyDown(Enum.KeyCode.S) and -1 or 0
				local right = UserInputService:IsKeyDown(Enum.KeyCode.D) and 1 or UserInputService:IsKeyDown(Enum.KeyCode.A) and -1 or 0
				local up = UserInputService:IsKeyDown(Enum.KeyCode.Space) and 1 or UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) and -1 or 0
				
				bodyVelocity.Velocity = (lookVector * forward + rightVector * right + Vector3.new(0, up, 0)) * flySpeed
			else
				bodyVelocity:Destroy()
			end
		end)
	else
		for _, v in pairs(RootPart:GetChildren()) do
			if v:IsA("BodyVelocity") then
				v:Destroy()
			end
		end
	end
end)

-- ========== MISC FUNCTIONS ==========
-- No Clip
createToggleButton(MiscSection, "No Clip", false, function(state)
	noClipActive = state
	if noClipActive then
		spawn(function()
			while noClipActive and wait(0.1) do
				pcall(function()
					if Character then
						for _, part in pairs(Character:GetDescendants()) do
							if part:IsA("BasePart") and part.CanCollide then
								part.CanCollide = false
							end
						end
					end
				end)
			end
		end)
	else
		pcall(function()
			if Character then
				for _, part in pairs(Character:GetDescendants()) do
					if part:IsA("BasePart") then
						part.CanCollide = true
					end
				end
			end
		end)
	end
end)

-- Infinite Jump
createToggleButton(MiscSection, "Infinite Jump", false, function(state)
	infiniteJumpActive = state
	if infiniteJumpActive then
		UserInputService.JumpRequest:Connect(function()
			if infiniteJumpActive and Humanoid then
				Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			end
		end)
	end
end)

-- Anti AFK
createToggleButton(MiscSection, "Anti AFK", false, function(state)
	antiAfkActive = state
	if antiAfkActive then
		spawn(function()
			while antiAfkActive and wait(30) do
				pcall(function()
					-- Di chuyển nhân vật một chút để tránh AFK
					if RootPart then
						RootPart.CFrame = RootPart.CFrame * CFrame.new(0, 0.1, 0)
						wait(0.1)
						RootPart.CFrame = RootPart.CFrame * CFrame.new(0, -0.1, 0)
					end
				end)
			end
		end)
	end
end)

-- ESP Hack (Highlight players)
createToggleButton(MiscSection, "Player ESP", false, function(state)
	if state then
		-- Tạo highlight cho tất cả người chơi
		for _, otherPlayer in pairs(game:GetService("Players"):GetPlayers()) do
			if otherPlayer ~= Player and otherPlayer.Character then
				local highlight = Instance.new("Highlight")
				highlight.Name = "ESP_" .. otherPlayer.Name
				highlight.FillColor = Color3.fromRGB(255, 0, 0)
				highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
				highlight.Parent = otherPlayer.Character
			end
		end
	else
		-- Xóa tất cả highlight
		for _, otherPlayer in pairs(game:GetService("Players"):GetPlayers()) do
			if otherPlayer.Character then
				local highlight = otherPlayer.Character:FindFirstChild("ESP_" .. otherPlayer.Name)
				if highlight then
					highlight:Destroy()
				end
			end
		end
	end
end)

-- Auto Equip Best Gear
createButton(MiscSection, "Equip Best Gear", function()
	pcall(function()
		-- Tìm inventory hoặc gear system
		local backpack = Player:WaitForChild("Backpack")
		local character = Player.Character
		
		-- Thử tìm gear trong backpack
		for _, item in pairs(backpack:GetChildren()) do
			if item:IsA("Tool") then
				item.Parent = character
			end
		end
	end)
end)

-- =============================================
-- NỘI DUNG GIAO DIỆN TIẾP THEO
-- =============================================

-- Nút toggle menu (để mở/đóng menu từ bất kỳ đâu)
local ToggleButton = Instance.new("TextButton")
ToggleButton.Name = "ToggleMenuButton"
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Position = UDim2.new(0, 20, 0, 20)
ToggleButton.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
ToggleButton.Text = "☰"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 24
ToggleButton.Font = Enum.Font.GothamBold
ToggleButton.Parent = ScreenGui

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(0, 10)
ToggleCorner.Parent = ToggleButton

-- Biến trạng thái menu
local menuVisible = true
local minimized = false

-- Cập nhật trạng thái kéo
local isDragging = false
local dragStart, frameStart

TitleBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		isDragging = true
		dragStart = input.Position
		frameStart = MainFrame.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				isDragging = false
			end
		end)
	end
end)

TitleBar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement and isDragging then
		local delta = input.Position - dragStart
		MainFrame.Position = UDim2.new(
			frameStart.X.Scale,
			frameStart.X.Offset + delta.X,
			frameStart.Y.Scale,
			frameStart.Y.Offset + delta.Y
		)
	end
end)

-- Chức năng đóng/mở menu
ToggleButton.MouseButton1Click:Connect(function()
	menuVisible = not menuVisible
	MainFrame.Visible = menuVisible
end)

CloseButton.MouseButton1Click:Connect(function()
	menuVisible = false
	MainFrame.Visible = false
end)

MinimizeButton.MouseButton1Click:Connect(function()
	minimized = not minimized
	if minimized then
		ContentFrame.Visible = false
		MainFrame.Size = UDim2.new(0, 400, 0, 40)
		MinimizeButton.Text = "□"
	else
		ContentFrame.Visible = true
		MainFrame.Size = UDim2.new(0, 400, 0, 550)
		MinimizeButton.Text = "_"
	end
end)

-- Thêm hiệu ứng hover cho các button
local function addHoverEffect(button)
	button.MouseEnter:Connect(function()
		TweenService:Create(
			button,
			TweenInfo.new(0.2),
			{BackgroundColor3 = Color3.fromRGB(65, 65, 90)}
		):Play()
	end)
	
	button.MouseLeave:Connect(function()
		TweenService:Create(
			button,
			TweenInfo.new(0.2),
			{BackgroundColor3 = Color3.fromRGB(50, 50, 70)}
		):Play()
	end)
end

-- Áp dụng hiệu ứng hover cho tất cả các button
for _, button in pairs(ContentFrame:GetDescendants()) do
	if button:IsA("TextButton") then
		addHoverEffect(button)
	end
end

-- Hiệu ứng hover cho nút toggle
ToggleButton.MouseEnter:Connect(function()
	TweenService:Create(
		ToggleButton,
		TweenInfo.new(0.2),
		{BackgroundColor3 = Color3.fromRGB(50, 50, 70)}
	):Play()
end)

ToggleButton.MouseLeave:Connect(function()
	TweenService:Create(
		ToggleButton,
		TweenInfo.new(0.2),
		{BackgroundColor3 = Color3.fromRGB(35, 35, 50)}
	):Play()
end)

-- Hoàn tất: Thêm MainFrame vào ScreenGui
MainFrame.Parent = ScreenGui

-- Hotkey để mở/đóng menu (phím M)
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if not gameProcessed then
		if input.KeyCode == Enum.KeyCode.M then
			menuVisible = not menuVisible
			MainFrame.Visible = menuVisible
		end
	end
end)

-- Thông báo khi load xong
print("╔══════════════════════════════════════╗")
print("║ Legends of Speed Menu v2.0 LOADED!   ║")
print("║ • Press 'M' to toggle menu           ║")
print("║ • Drag title bar to move             ║")
print("║ • Click ☰ button to show/hide        ║")
print("╚══════════════════════════════════════╝")

-- Auto execute khi join game (tự mở menu sau 3 giây)
wait(3)
if PlayerGui:FindFirstChild("LegendsOfSpeedMenu") then
	print("Menu auto-opened after 3 seconds!")
end

-- Function hỗ trợ mouse click
function mouse1click()
	-- Tạo mouse click event
	local mouse = Player:GetMouse()
	pcall(function()
		-- Thử kích hoạt click event
		if mouse then
			-- Giả lập click
			local target = mouse.Target
			if target then
				-- Tìm humanoid hoặc click detector
				local humanoid = target.Parent:FindFirstChildOfClass("Humanoid")
				if humanoid then
					-- Đây có thể là enemy
					RootPart.CFrame = target.CFrame
				end
			end
		end
	end)
end
