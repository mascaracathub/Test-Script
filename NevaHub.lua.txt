-- ts file was generated at discord.gg/25ms


local v1 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NevaHub0/SaveManager/main/.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NevaHub0/InterfaceManager/main/.lua"))()
local v2 = v1:CreateWindow({
    ["Title"] = "Neva Hub",
    ["SubTitle"] = "https://discord.gg/FZyeYGJvzk",
    ["TabWidth"] = 160,
    ["Size"] = UDim2.fromOffset(450, 300),
    ["Acrylic"] = true,
    ["Theme"] = "Darker",
    ["MinimizeKey"] = Enum.KeyCode.End
})
local v3 = {
    ["Home"] = v2:AddTab({
        ["Title"] = "Home",
        ["Icon"] = "home"
    }),
    ["Main"] = v2:AddTab({
        ["Title"] = "Main",
        ["Icon"] = "home"
    }),
    ["Setting"] = v2:AddTab({
        ["Title"] = "Setting",
        ["Icon"] = "settings"
    }),
    ["Stats"] = v2:AddTab({
        ["Title"] = "Stats",
        ["Icon"] = "plus-circle"
    }),
    ["Player"] = v2:AddTab({
        ["Title"] = "Player",
        ["Icon"] = "baby"
    }),
    ["Teleport"] = v2:AddTab({
        ["Title"] = "Teleport",
        ["Icon"] = "palmtree"
    }),
    ["Fruit"] = v2:AddTab({
        ["Title"] = "Devil Fruit",
        ["Icon"] = "cherry"
    }),
    ["Raid"] = v2:AddTab({
        ["Title"] = "Raid",
        ["Icon"] = "swords"
    }),
    ["Race"] = v2:AddTab({
        ["Title"] = "RaceV4 & Mirage",
        ["Icon"] = "chevrons-right"
    }),
    ["Shop"] = v2:AddTab({
        ["Title"] = "Shop",
        ["Icon"] = "shopping-cart"
    }),
    ["Misc"] = v2:AddTab({
        ["Title"] = "Misc(Fun)",
        ["Icon"] = "list-plus"
    })
}
local v4 = v1.Options
repeat
    wait()
until game.Players
repeat
    wait()
until game.Players.LocalPlayer
repeat
    wait()
until game.ReplicatedStorage
repeat
    wait()
until game.ReplicatedStorage:FindFirstChild("Remotes")
repeat
    wait()
until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat
    wait()
until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main")
repeat
    wait()
until game:GetService("Players")
repeat
    wait()
until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Energy")
wait(0.1)
if not game:IsLoaded() then
    repeat
        game.Loaded:Wait()
    until game:IsLoaded()
end
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    while true do
        wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if _G.Team ~= "Pirate" then
                if _G.Team ~= "Marine" then
                    local v5, v6, v7 = pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated))
                    while true do
                        local v8
                        v7, v8 = v5(v6, v7)
                        if v7 == nil then
                            break
                        end
                        v8.Function()
                    end
                else
                    local v9, v10, v11 = pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated))
                    while true do
                        local v12
                        v11, v12 = v9(v10, v11)
                        if v11 == nil then
                            break
                        end
                        v12.Function()
                    end
                end
            else
                local v13, v14, v15 = pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated))
                while true do
                    local v16
                    v15, v16 = v13(v14, v15)
                    if v15 == nil then
                        break
                    end
                    v16.Function()
                end
            end
        end
        if game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() then
			-- goto l24
        end
    end
else
	-- ::l24::
    First_Sea = false
    Second_Sea = false
    Third_Sea = false
    local v17 = game.PlaceId
    if v17 == 2753915549 then
        First_Sea = true
    elseif v17 == 4442272183 then
        Second_Sea = true
    elseif v17 == 7449423635 then
        Third_Sea = true
    end
    function CheckLevel()
        local v18 = game:GetService("Players").LocalPlayer.Data.Level.Value
        if First_Sea then
            if v18 == 1 or (v18 <= 9 or (SelectMonster == "Bandit" or SelectArea == "Jungle")) then
                Ms = "Bandit"
                NameQuest = "BanditQuest1"
                QuestLv = 1
                NameMon = "Bandit"
                CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
                CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
            elseif v18 == 10 or (v18 <= 14 or (SelectMonster == "Monkey" or SelectArea == "Jungle")) then
                Ms = "Monkey"
                NameQuest = "JungleQuest"
                QuestLv = 1
                NameMon = "Monkey"
                CFrameQ = CFrame.new(- 1601.6553955078, 36.85213470459, 153.38809204102)
                CFrameMon = CFrame.new(- 1448.1446533203, 50.851993560791, 63.60718536377)
            elseif v18 == 15 or (v18 <= 29 or (SelectMonster == "Gorilla" or SelectArea == "Jungle")) then
                Ms = "Gorilla"
                NameQuest = "JungleQuest"
                QuestLv = 2
                NameMon = "Gorilla"
                CFrameQ = CFrame.new(- 1601.6553955078, 36.85213470459, 153.38809204102)
                CFrameMon = CFrame.new(- 1142.6488037109, 40.462348937988, - 515.39227294922)
            elseif v18 == 30 or (v18 <= 39 or (SelectMonster == "Pirate" or SelectArea == "Buggy")) then
                Ms = "Pirate"
                NameQuest = "BuggyQuest1"
                QuestLv = 1
                NameMon = "Pirate"
                CFrameQ = CFrame.new(- 1140.1761474609, 4.752049446106, 3827.4057617188)
                CFrameMon = CFrame.new(- 1201.0881347656, 40.628940582275, 3857.5966796875)
            elseif v18 == 40 or (v18 <= 59 or (SelectMonster == "Brute" or SelectArea == "Buggy")) then
                Ms = "Brute"
                NameQuest = "BuggyQuest1"
                QuestLv = 2
                NameMon = "Brute"
                CFrameQ = CFrame.new(- 1140.1761474609, 4.752049446106, 3827.4057617188)
                CFrameMon = CFrame.new(- 1387.5324707031, 24.592035293579, 4100.9575195313)
            elseif v18 == 60 or (v18 <= 74 or (SelectMonster == "Desert Bandit" or SelectArea == "Desert")) then
                Ms = "Desert Bandit"
                NameQuest = "DesertQuest"
                QuestLv = 1
                NameMon = "Desert Bandit"
                CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
                CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
            elseif v18 == 75 or (v18 <= 89 or (SelectMonster == "Desert Officer" or SelectArea == "Desert")) then
                Ms = "Desert Officer"
                NameQuest = "DesertQuest"
                QuestLv = 2
                NameMon = "Desert Officer"
                CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
                CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
            elseif v18 == 90 or (v18 <= 99 or (SelectMonster == "Snow Bandit" or SelectArea == "Snow")) then
                Ms = "Snow Bandit"
                NameQuest = "SnowQuest"
                QuestLv = 1
                NameMon = "Snow Bandit"
                CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, - 1298.3576660156)
                CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, - 1328.2418212891)
            elseif v18 == 100 or (v18 <= 119 or (SelectMonster == "Snowman" or SelectArea == "Snow")) then
                Ms = "Snowman"
                NameQuest = "SnowQuest"
                QuestLv = 2
                NameMon = "Snowman"
                CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, - 1298.3576660156)
                CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, - 1488.0262451172)
            elseif v18 == 120 or (v18 <= 149 or (SelectMonster == "Chief Petty Officer" or SelectArea == "Marine")) then
                Ms = "Chief Petty Officer"
                NameQuest = "MarineQuest2"
                QuestLv = 1
                NameMon = "Chief Petty Officer"
                CFrameQ = CFrame.new(- 5035.49609375, 28.677835464478, 4324.1840820313)
                CFrameMon = CFrame.new(- 4931.1552734375, 65.793113708496, 4121.8393554688)
            elseif v18 == 150 or (v18 <= 174 or (SelectMonster == "Sky Bandit" or SelectArea == "Sky")) then
                Ms = "Sky Bandit"
                NameQuest = "SkyQuest"
                QuestLv = 1
                NameMon = "Sky Bandit"
                CFrameQ = CFrame.new(- 4842.1372070313, 717.69543457031, - 2623.0483398438)
                CFrameMon = CFrame.new(- 4955.6411132813, 365.46365356445, - 2908.1865234375)
            elseif v18 == 175 or (v18 <= 189 or (SelectMonster == "Dark Master" or SelectArea == "Sky")) then
                Ms = "Dark Master"
                NameQuest = "SkyQuest"
                QuestLv = 2
                NameMon = "Dark Master"
                CFrameQ = CFrame.new(- 4842.1372070313, 717.69543457031, - 2623.0483398438)
                CFrameMon = CFrame.new(- 5148.1650390625, 439.04571533203, - 2332.9611816406)
            elseif v18 == 190 or (v18 <= 209 or (SelectMonster == "Prisoner" or SelectArea == "Prison")) then
                Ms = "Prisoner"
                NameQuest = "PrisonerQuest"
                QuestLv = 1
                NameMon = "Prisoner"
                CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, - 0.999846935, 0, 0.0175017118)
                CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, - 0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
            elseif v18 == 210 or (v18 <= 249 or (SelectMonster == "Dangerous Prisoner" or SelectArea == "Prison")) then
                Ms = "Dangerous Prisoner"
                NameQuest = "PrisonerQuest"
                QuestLv = 2
                NameMon = "Dangerous Prisoner"
                CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, - 0.999846935, 0, 0.0175017118)
                CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, - 0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827)
            elseif v18 == 250 or (v18 <= 274 or (SelectMonster == "Toga Warrior" or SelectArea == "Colosseum")) then
                Ms = "Toga Warrior"
                NameQuest = "ColosseumQuest"
                QuestLv = 1
                NameMon = "Toga Warrior"
                CFrameQ = CFrame.new(- 1577.7890625, 7.4151420593262, - 2984.4838867188)
                CFrameMon = CFrame.new(- 1872.5166015625, 49.080215454102, - 2913.810546875)
            elseif v18 == 275 or (v18 <= 299 or (SelectMonster == "Gladiator" or SelectArea == "Colosseum")) then
                Ms = "Gladiator"
                NameQuest = "ColosseumQuest"
                QuestLv = 2
                NameMon = "Gladiator"
                CFrameQ = CFrame.new(- 1577.7890625, 7.4151420593262, - 2984.4838867188)
                CFrameMon = CFrame.new(- 1521.3740234375, 81.203170776367, - 3066.3139648438)
            elseif v18 == 300 or (v18 <= 324 or (SelectMonster == "Military Soldier" or SelectArea == "Magma")) then
                Ms = "Military Soldier"
                NameQuest = "MagmaQuest"
                QuestLv = 1
                NameMon = "Military Soldier"
                CFrameQ = CFrame.new(- 5316.1157226563, 12.262831687927, 8517.00390625)
                CFrameMon = CFrame.new(- 5369.0004882813, 61.24352645874, 8556.4921875)
            elseif v18 == 325 or (v18 <= 374 or (SelectMonster == "Military Spy" or SelectArea == "Magma")) then
                Ms = "Military Spy"
                NameQuest = "MagmaQuest"
                QuestLv = 2
                NameMon = "Military Spy"
                CFrameQ = CFrame.new(- 5316.1157226563, 12.262831687927, 8517.00390625)
                CFrameMon = CFrame.new(- 5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, - 0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
            elseif v18 == 375 or (v18 <= 399 or (SelectMonster == "Fishman Warrior" or SelectArea == "Fishman")) then
                Ms = "Fishman Warrior"
                NameQuest = "FishmanQuest"
                QuestLv = 1
                NameMon = "Fishman Warrior"
                CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif v18 == 400 or (v18 <= 449 or (SelectMonster == "Fishman Commando" or SelectArea == "Fishman")) then
                Ms = "Fishman Commando"
                NameQuest = "FishmanQuest"
                QuestLv = 2
                NameMon = "Fishman Commando"
                CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif v18 == 450 or (v18 <= 474 or (SelectMonster == "God\'s Guard" or SelectArea == "Sky Island")) then
                Ms = "God\'s Guard"
                NameQuest = "SkyExp1Quest"
                QuestLv = 1
                NameMon = "God\'s Guard"
                CFrameQ = CFrame.new(- 4721.8603515625, 845.30297851563, - 1953.8489990234)
                CFrameMon = CFrame.new(- 4628.0498046875, 866.92877197266, - 1931.2352294922)
                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 4607.82275, 872.54248, - 1667.55688))
                end
            elseif v18 == 475 or (v18 <= 524 or (SelectMonster == "Shanda" or SelectArea == "Sky Island")) then
                Ms = "Shanda"
                NameQuest = "SkyExp1Quest"
                QuestLv = 2
                NameMon = "Shanda"
                CFrameQ = CFrame.new(- 7863.1596679688, 5545.5190429688, - 378.42266845703)
                CFrameMon = CFrame.new(- 7685.1474609375, 5601.0751953125, - 441.38876342773)
                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7894.6176757813, 5547.1416015625, - 380.29119873047))
                end
            elseif v18 == 525 or (v18 <= 549 or (SelectMonster == "Royal Squad" or SelectArea == "Sky Island")) then
                Ms = "Royal Squad"
                NameQuest = "SkyExp2Quest"
                QuestLv = 1
                NameMon = "Royal Squad"
                CFrameQ = CFrame.new(- 7903.3828125, 5635.9897460938, - 1410.923828125)
                CFrameMon = CFrame.new(- 7654.2514648438, 5637.1079101563, - 1407.7550048828)
            elseif v18 == 550 or (v18 <= 624 or (SelectMonster == "Royal Soldier" or SelectArea == "Sky Island")) then
                Ms = "Royal Soldier"
                NameQuest = "SkyExp2Quest"
                QuestLv = 2
                NameMon = "Royal Soldier"
                CFrameQ = CFrame.new(- 7903.3828125, 5635.9897460938, - 1410.923828125)
                CFrameMon = CFrame.new(- 7760.4106445313, 5679.9077148438, - 1884.8112792969)
            elseif v18 == 625 or (v18 <= 649 or (SelectMonster == "Galley Pirate" or SelectArea == "Fountain")) then
                Ms = "Galley Pirate"
                NameQuest = "FountainQuest"
                QuestLv = 1
                NameMon = "Galley Pirate"
                CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
                CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
            elseif v18 >= 650 or (SelectMonster == "Galley Captain" or SelectArea == "Fountain") then
                Ms = "Galley Captain"
                NameQuest = "FountainQuest"
                QuestLv = 2
                NameMon = "Galley Captain"
                CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
                CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
            end
        end
        if Second_Sea then
            if v18 == 700 or (v18 <= 724 or (SelectMonster == "Raider" or SelectArea == "Area 1")) then
                Ms = "Raider"
                NameQuest = "Area1Quest"
                QuestLv = 1
                NameMon = "Raider"
                CFrameQ = CFrame.new(- 427.72567749023, 72.99634552002, 1835.9426269531)
                CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
            elseif v18 == 725 or (v18 <= 774 or (SelectMonster == "Mercenary" or SelectArea == "Area 1")) then
                Ms = "Mercenary"
                NameQuest = "Area1Quest"
                QuestLv = 2
                NameMon = "Mercenary"
                CFrameQ = CFrame.new(- 427.72567749023, 72.99634552002, 1835.9426269531)
                CFrameMon = CFrame.new(- 864.85009765625, 122.47104644775, 1453.1505126953)
            elseif v18 == 775 or (v18 <= 799 or (SelectMonster == "Swan Pirate" or SelectArea == "Area 2")) then
                Ms = "Swan Pirate"
                NameQuest = "Area2Quest"
                QuestLv = 1
                NameMon = "Swan Pirate"
                CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
                CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
            elseif v18 == 800 or (v18 <= 874 or (SelectMonster == "Factory Staff" or SelectArea == "Area 2")) then
                Ms = "Factory Staff"
                NameQuest = "Area2Quest"
                QuestLv = 2
                NameMon = "Factory Staff"
                CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
                CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
            elseif v18 == 875 or (v18 <= 899 or (SelectMonster == "Marine Lieutenan" or SelectArea == "Marine")) then
                Ms = "Marine Lieutenant"
                NameQuest = "MarineQuest3"
                QuestLv = 1
                NameMon = "Marine Lieutenant"
                CFrameQ = CFrame.new(- 2440.9934082031, 73.04190826416, - 3217.7082519531)
                CFrameMon = CFrame.new(- 2489.2622070313, 84.613594055176, - 3151.8830566406)
            elseif v18 == 900 or (v18 <= 949 or (SelectMonster == "Marine Captain" or SelectArea == "Marine")) then
                Ms = "Marine Captain"
                NameQuest = "MarineQuest3"
                QuestLv = 2
                NameMon = "Marine Captain"
                CFrameQ = CFrame.new(- 2440.9934082031, 73.04190826416, - 3217.7082519531)
                CFrameMon = CFrame.new(- 2335.2026367188, 79.786659240723, - 3245.8674316406)
            elseif v18 == 950 or (v18 <= 974 or (SelectMonster == "Zombie" or SelectArea == "Zombie")) then
                Ms = "Zombie"
                NameQuest = "ZombieQuest"
                QuestLv = 1
                NameMon = "Zombie"
                CFrameQ = CFrame.new(- 5494.3413085938, 48.505931854248, - 794.59094238281)
                CFrameMon = CFrame.new(- 5536.4970703125, 101.08577728271, - 835.59075927734)
            elseif v18 == 975 or (v18 <= 999 or (SelectMonster == "Vampire" or SelectArea == "Zombie")) then
                Ms = "Vampire"
                NameQuest = "ZombieQuest"
                QuestLv = 2
                NameMon = "Vampire"
                CFrameQ = CFrame.new(- 5494.3413085938, 48.505931854248, - 794.59094238281)
                CFrameMon = CFrame.new(- 5806.1098632813, 16.722528457642, - 1164.4384765625)
            elseif v18 == 1000 or (v18 <= 1049 or (SelectMonster == "Snow Trooper" or SelectArea == "Snow Mountain")) then
                Ms = "Snow Trooper"
                NameQuest = "SnowMountainQuest"
                QuestLv = 1
                NameMon = "Snow Trooper"
                CFrameQ = CFrame.new(607.05963134766, 401.44781494141, - 5370.5546875)
                CFrameMon = CFrame.new(535.21051025391, 432.74209594727, - 5484.9165039063)
            elseif v18 == 1050 or (v18 <= 1099 or (SelectMonster == "Winter Warrior" or SelectArea == "Snow Mountain")) then
                Ms = "Winter Warrior"
                NameQuest = "SnowMountainQuest"
                QuestLv = 2
                NameMon = "Winter Warrior"
                CFrameQ = CFrame.new(607.05963134766, 401.44781494141, - 5370.5546875)
                CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, - 5174.130859375)
            elseif v18 == 1100 or (v18 <= 1124 or (SelectMonster == "Lab Subordinate" or SelectArea == "Ice Fire")) then
                Ms = "Lab Subordinate"
                NameQuest = "IceSideQuest"
                QuestLv = 1
                NameMon = "Lab Subordinate"
                CFrameQ = CFrame.new(- 6061.841796875, 15.926671981812, - 4902.0385742188)
                CFrameMon = CFrame.new(- 5720.5576171875, 63.309471130371, - 4784.6103515625)
            elseif v18 == 1125 or (v18 <= 1174 or (SelectMonster == "Horned Warrior" or SelectArea == "Ice Fire")) then
                Ms = "Horned Warrior"
                NameQuest = "IceSideQuest"
                QuestLv = 2
                NameMon = "Horned Warrior"
                CFrameQ = CFrame.new(- 6061.841796875, 15.926671981812, - 4902.0385742188)
                CFrameMon = CFrame.new(- 6292.751953125, 91.181983947754, - 5502.6499023438)
            elseif v18 == 1175 or (v18 <= 1199 or (SelectMonster == "Magma Ninja" or SelectArea == "Ice Fire")) then
                Ms = "Magma Ninja"
                NameQuest = "FireSideQuest"
                QuestLv = 1
                NameMon = "Magma Ninja"
                CFrameQ = CFrame.new(- 5429.0473632813, 15.977565765381, - 5297.9614257813)
                CFrameMon = CFrame.new(- 5461.8388671875, 130.36347961426, - 5836.4702148438)
            elseif v18 == 1200 or (v18 <= 1249 or (SelectMonster == "Lava Pirate" or SelectArea == "Ice Fire")) then
                Ms = "Lava Pirate"
                NameQuest = "FireSideQuest"
                QuestLv = 2
                NameMon = "Lava Pirate"
                CFrameQ = CFrame.new(- 5429.0473632813, 15.977565765381, - 5297.9614257813)
                CFrameMon = CFrame.new(- 5251.1889648438, 55.164535522461, - 4774.4096679688)
            elseif v18 == 1250 or (v18 <= 1274 or (SelectMonster == "Ship Deckhand" or SelectArea == "Ship")) then
                Ms = "Ship Deckhand"
                NameQuest = "ShipQuest1"
                QuestLv = 1
                NameMon = "Ship Deckhand"
                CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
                CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif v18 == 1275 or (v18 <= 1299 or (SelectMonster == "Ship Engineer" or SelectArea == "Ship")) then
                Ms = "Ship Engineer"
                NameQuest = "ShipQuest1"
                QuestLv = 2
                NameMon = "Ship Engineer"
                CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
                CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif v18 == 1300 or (v18 <= 1324 or (SelectMonster == "Ship Steward" or SelectArea == "Ship")) then
                Ms = "Ship Steward"
                NameQuest = "ShipQuest2"
                QuestLv = 1
                NameMon = "Ship Steward"
                CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
                CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif v18 == 1325 or (v18 <= 1349 or (SelectMonster == "Ship Officer" or SelectArea == "Ship")) then
                Ms = "Ship Officer"
                NameQuest = "ShipQuest2"
                QuestLv = 2
                NameMon = "Ship Officer"
                CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
                CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif v18 == 1350 or (v18 <= 1374 or (SelectMonster == "Arctic Warrior" or SelectArea == "Frost")) then
                Ms = "Arctic Warrior"
                NameQuest = "FrostQuest"
                QuestLv = 1
                NameMon = "Arctic Warrior"
                CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, - 6484.6005859375)
                CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, - 6472.7568359375)
                if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 6508.5581054688, 89.034996032715, - 132.83953857422))
                end
            elseif v18 == 1375 or (v18 <= 1424 or (SelectMonster == "Snow Lurker" or SelectArea == "Frost")) then
                Ms = "Snow Lurker"
                NameQuest = "FrostQuest"
                QuestLv = 2
                NameMon = "Snow Lurker"
                CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, - 6484.6005859375)
                CFrameMon = CFrame.new(5628.482421875, 57.574996948242, - 6618.3481445313)
            elseif v18 == 1425 or (v18 <= 1449 or (SelectMonster == "Sea Soldier" or SelectArea == "Forgotten")) then
                Ms = "Sea Soldier"
                NameQuest = "ForgottenQuest"
                QuestLv = 1
                NameMon = "Sea Soldier"
                CFrameQ = CFrame.new(- 3054.5827636719, 236.87213134766, - 10147.790039063)
                CFrameMon = CFrame.new(- 3185.0153808594, 58.789089202881, - 9663.6064453125)
            elseif v18 >= 1450 or (SelectMonster == "Water Fighter" or SelectArea == "Forgotten") then
                Ms = "Water Fighter"
                NameQuest = "ForgottenQuest"
                QuestLv = 2
                NameMon = "Water Fighter"
                CFrameQ = CFrame.new(- 3054.5827636719, 236.87213134766, - 10147.790039063)
                CFrameMon = CFrame.new(- 3262.9301757813, 298.69036865234, - 10552.529296875)
            end
        end
        if Third_Sea then
            if v18 == 1500 or (v18 <= 1524 or (SelectMonster == "Pirate Millionaire" or SelectArea == "Pirate Port")) then
                Ms = "Pirate Millionaire"
                NameQuest = "PiratePortQuest"
                QuestLv = 1
                NameMon = "Pirate Millionaire"
                CFrameQ = CFrame.new(- 289.61752319336, 43.819011688232, 5580.0903320313)
                CFrameMon = CFrame.new(- 435.68109130859, 189.69866943359, 5551.0756835938)
            elseif v18 == 1525 or (v18 <= 1574 or (SelectMonster == "Pistol Billionaire" or SelectArea == "Pirate Port")) then
                Ms = "Pistol Billionaire"
                NameQuest = "PiratePortQuest"
                QuestLv = 2
                NameMon = "Pistol Billionaire"
                CFrameQ = CFrame.new(- 289.61752319336, 43.819011688232, 5580.0903320313)
                CFrameMon = CFrame.new(- 236.53652954102, 217.46676635742, 6006.0883789063)
            elseif v18 == 1575 or (v18 <= 1599 or (SelectMonster == "Dragon Crew Warrior" or SelectArea == "Amazon")) then
                Ms = "Dragon Crew Warrior"
                NameQuest = "AmazonQuest"
                QuestLv = 1
                NameMon = "Dragon Crew Warrior"
                CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, - 1103.0693359375)
                CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, - 1082.6075439453)
            elseif v18 == 1600 or (v18 <= 1624 or (SelectMonster == "Dragon Crew Archer" or SelectArea == "Amazon")) then
                Ms = "Dragon Crew Archer"
                NameQuest = "AmazonQuest"
                QuestLv = 2
                NameMon = "Dragon Crew Archer"
                CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, - 1103.0693359375)
                CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
            elseif v18 == 1625 or (v18 <= 1649 or (SelectMonster == "Female Islander" or SelectArea == "Amazon")) then
                Ms = "Female Islander"
                NameQuest = "AmazonQuest2"
                QuestLv = 1
                NameMon = "Female Islander"
                CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
            elseif v18 == 1650 or (v18 <= 1699 or (SelectMonster == "Giant Islander" or SelectArea == "Amazon")) then
                Ms = "Giant Islander"
                NameQuest = "AmazonQuest2"
                QuestLv = 2
                NameMon = "Giant Islander"
                CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, - 40.960144042969)
            elseif v18 == 1700 or (v18 <= 1724 or (SelectMonster == "Marine Commodore" or SelectArea == "Marine Tree")) then
                Ms = "Marine Commodore"
                NameQuest = "MarineTreeIsland"
                QuestLv = 1
                NameMon = "Marine Commodore"
                CFrameQ = CFrame.new(2179.98828125, 28.731239318848, - 6740.0551757813)
                CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, - 7109.5043945313)
            elseif v18 == 1725 or (v18 <= 1774 or (SelectMonster == "Marine Rear Admiral" or SelectArea == "Marine Tree")) then
                Ms = "Marine Rear Admiral"
                NameQuest = "MarineTreeIsland"
                QuestLv = 2
                NameMon = "Marine Rear Admiral"
                CFrameQ = CFrame.new(2179.98828125, 28.731239318848, - 6740.0551757813)
                CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, - 7048.6342773438)
            elseif v18 == 1775 or (v18 <= 1799 or (SelectMonster == "Fishman Raider" or SelectArea == "Deep Forest")) then
                Ms = "Fishman Raider"
                NameQuest = "DeepForestIsland3"
                QuestLv = 1
                NameMon = "Fishman Raider"
                CFrameQ = CFrame.new(- 10582.759765625, 331.78845214844, - 8757.666015625)
                CFrameMon = CFrame.new(- 10553.268554688, 521.38439941406, - 8176.9458007813)
            elseif v18 == 1800 or (v18 <= 1824 or (SelectMonster == "Fishman Captain" or SelectArea == "Deep Forest")) then
                Ms = "Fishman Captain"
                NameQuest = "DeepForestIsland3"
                QuestLv = 2
                NameMon = "Fishman Captain"
                CFrameQ = CFrame.new(- 10583.099609375, 331.78845214844, - 8759.4638671875)
                CFrameMon = CFrame.new(- 10789.401367188, 427.18637084961, - 9131.4423828125)
            elseif v18 == 1825 or (v18 <= 1849 or (SelectMonster == "Forest Pirate" or SelectArea == "Deep Forest")) then
                Ms = "Forest Pirate"
                NameQuest = "DeepForestIsland"
                QuestLv = 1
                NameMon = "Forest Pirate"
                CFrameQ = CFrame.new(- 13232.662109375, 332.40396118164, - 7626.4819335938)
                CFrameMon = CFrame.new(- 13489.397460938, 400.30349731445, - 7770.251953125)
            elseif v18 == 1850 or (v18 <= 1899 or (SelectMonster == "Mythological Pirate" or SelectArea == "Deep Forest")) then
                Ms = "Mythological Pirate"
                NameQuest = "DeepForestIsland"
                QuestLv = 2
                NameMon = "Mythological Pirate"
                CFrameQ = CFrame.new(- 13232.662109375, 332.40396118164, - 7626.4819335938)
                CFrameMon = CFrame.new(- 13508.616210938, 582.46228027344, - 6985.3037109375)
            elseif v18 == 1900 or (v18 <= 1924 or (SelectMonster == "Jungle Pirate" or SelectArea == "Deep Forest")) then
                Ms = "Jungle Pirate"
                NameQuest = "DeepForestIsland2"
                QuestLv = 1
                NameMon = "Jungle Pirate"
                CFrameQ = CFrame.new(- 12682.096679688, 390.88653564453, - 9902.1240234375)
                CFrameMon = CFrame.new(- 12267.103515625, 459.75262451172, - 10277.200195313)
            elseif v18 == 1925 or (v18 <= 1974 or (SelectMonster == "Musketeer Pirate" or SelectArea == "Deep Forest")) then
                Ms = "Musketeer Pirate"
                NameQuest = "DeepForestIsland2"
                QuestLv = 2
                NameMon = "Musketeer Pirate"
                CFrameQ = CFrame.new(- 12682.096679688, 390.88653564453, - 9902.1240234375)
                CFrameMon = CFrame.new(- 13291.5078125, 520.47338867188, - 9904.638671875)
            elseif v18 == 1975 or (v18 <= 1999 or (SelectMonster == "Reborn Skeleton" or SelectArea == "Haunted Castle")) then
                Ms = "Reborn Skeleton"
                NameQuest = "HauntedQuest1"
                QuestLv = 1
                NameMon = "Reborn Skeleton"
                CFrameQ = CFrame.new(- 9480.80762, 142.130661, 5566.37305, - 0.00655503059, 4.52954225e-8, - 0.999978542, 2.04920472e-8, 1, 4.51620679e-8, 0.999978542, - 2.01955679e-8, - 0.00655503059)
                CFrameMon = CFrame.new(- 8761.77148, 183.431747, 6168.33301, 0.978073597, - 0.000013950732, - 0.208259016, - 1.08073925e-6, 1, - 0.0000720630269, 0.208259016, 0.0000707080399, 0.978073597)
            elseif v18 == 2000 or (v18 <= 2024 or (SelectMonster == "Living Zombie" or SelectArea == "Haunted Castle")) then
                Ms = "Living Zombie"
                NameQuest = "HauntedQuest1"
                QuestLv = 2
                NameMon = "Living Zombie"
                CFrameQ = CFrame.new(- 9480.80762, 142.130661, 5566.37305, - 0.00655503059, 4.52954225e-8, - 0.999978542, 2.04920472e-8, 1, 4.51620679e-8, 0.999978542, - 2.01955679e-8, - 0.00655503059)
                CFrameMon = CFrame.new(- 10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-8, 0.0324240364, - 2.58006327e-8, 1, - 6.06848474e-8, - 0.0324240364, 5.98163865e-8, 0.999474227)
            elseif v18 == 2025 or (v18 <= 2049 or (SelectMonster == "Demonic Soul" or SelectArea == "Haunted Castle")) then
                Ms = "Demonic Soul"
                NameQuest = "HauntedQuest2"
                QuestLv = 1
                NameMon = "Demonic Soul"
                CFrameQ = CFrame.new(- 9516.9931640625, 178.00651550293, 6078.4653320313)
                CFrameMon = CFrame.new(- 9712.03125, 204.69589233398, 6193.322265625)
            elseif v18 == 2050 or (v18 <= 2074 or (SelectMonster == "Posessed Mummy" or SelectArea == "Haunted Castle")) then
                Ms = "Posessed Mummy"
                NameQuest = "HauntedQuest2"
                QuestLv = 2
                NameMon = "Posessed Mummy"
                CFrameQ = CFrame.new(- 9516.9931640625, 178.00651550293, 6078.4653320313)
                CFrameMon = CFrame.new(- 9545.7763671875, 69.619895935059, 6339.5615234375)
            elseif v18 == 2075 or (v18 <= 2099 or (SelectMonster == "Peanut Scout" or SelectArea == "Nut Island")) then
                Ms = "Peanut Scout"
                NameQuest = "NutsIslandQuest"
                QuestLv = 1
                NameMon = "Peanut Scout"
                CFrameQ = CFrame.new(- 2105.53198, 37.2495995, - 10195.5088, - 0.766061664, 0, - 0.642767608, 0, 1, 0, 0.642767608, 0, - 0.766061664)
                CFrameMon = CFrame.new(- 2150.587890625, 122.49767303467, - 10358.994140625)
            elseif v18 == 2100 or (v18 <= 2124 or (SelectMonster == "Peanut President" or SelectArea == "Nut Island")) then
                Ms = "Peanut President"
                NameQuest = "NutsIslandQuest"
                QuestLv = 2
                NameMon = "Peanut President"
                CFrameQ = CFrame.new(- 2105.53198, 37.2495995, - 10195.5088, - 0.766061664, 0, - 0.642767608, 0, 1, 0, 0.642767608, 0, - 0.766061664)
                CFrameMon = CFrame.new(- 2150.587890625, 122.49767303467, - 10358.994140625)
            elseif v18 == 2125 or (v18 <= 2149 or (SelectMonster == "Ice Cream Chef" or SelectArea == "Ice Cream Island")) then
                Ms = "Ice Cream Chef"
                NameQuest = "IceCreamIslandQuest"
                QuestLv = 1
                NameMon = "Ice Cream Chef"
                CFrameQ = CFrame.new(- 819.376709, 64.9259796, - 10967.2832, - 0.766061664, 0, 0.642767608, 0, 1, 0, - 0.642767608, 0, - 0.766061664)
                CFrameMon = CFrame.new(- 789.941528, 209.382889, - 11009.9805, - 0.0703101531, 0, - 0.997525156, 0, 1.00000012, 0, 0.997525275, 0, - 0.0703101456)
            elseif v18 == 2150 or (v18 <= 2199 or (SelectMonster == "Ice Cream Commander" or SelectArea == "Ice Cream Island")) then
                Ms = "Ice Cream Commander"
                NameQuest = "IceCreamIslandQuest"
                QuestLv = 2
                NameMon = "Ice Cream Commander"
                CFrameQ = CFrame.new(- 819.376709, 64.9259796, - 10967.2832, - 0.766061664, 0, 0.642767608, 0, 1, 0, - 0.642767608, 0, - 0.766061664)
                CFrameMon = CFrame.new(- 789.941528, 209.382889, - 11009.9805, - 0.0703101531, 0, - 0.997525156, 0, 1.00000012, 0, 0.997525275, 0, - 0.0703101456)
            elseif v18 == 2200 or (v18 <= 2224 or (SelectMonster == "Cookie Crafter" or SelectArea == "Cake Island")) then
                Ms = "Cookie Crafter"
                NameQuest = "CakeQuest1"
                QuestLv = 1
                NameMon = "Cookie Crafter"
                CFrameQ = CFrame.new(- 2022.29858, 36.9275894, - 12030.9766, - 0.961273909, 0, - 0.275594592, 0, 1, 0, 0.275594592, 0, - 0.961273909)
                CFrameMon = CFrame.new(- 2321.71216, 36.699482, - 12216.7871, - 0.780074954, 0, 0.625686109, 0, 1, 0, - 0.625686109, 0, - 0.780074954)
            elseif v18 == 2225 or (v18 <= 2249 or (SelectMonster == "Cake Guard" or SelectArea == "Cake Island")) then
                Ms = "Cake Guard"
                NameQuest = "CakeQuest1"
                QuestLv = 2
                NameMon = "Cake Guard"
                CFrameQ = CFrame.new(- 2022.29858, 36.9275894, - 12030.9766, - 0.961273909, 0, - 0.275594592, 0, 1, 0, 0.275594592, 0, - 0.961273909)
                CFrameMon = CFrame.new(- 1418.11011, 36.6718941, - 12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, - 0.997700036, 0, 0.0677844882)
            elseif v18 == 2250 or (v18 <= 2274 or (SelectMonster == "Baking Staff" or SelectArea == "Cake Island")) then
                Ms = "Baking Staff"
                NameQuest = "CakeQuest2"
                QuestLv = 1
                NameMon = "Baking Staff"
                CFrameQ = CFrame.new(- 1928.31763, 37.7296638, - 12840.626, 0.951068401, 0, - 0.308980465, 0, 1, 0, 0.308980465, 0, 0.951068401)
                CFrameMon = CFrame.new(- 1980.43848, 36.6716766, - 12983.8418, - 0.254443765, 0, - 0.967087567, 0, 1, 0, 0.967087567, 0, - 0.254443765)
            elseif v18 == 2275 or (v18 <= 2299 or (SelectMonster == "Head Baker" or SelectArea == "Cake Island")) then
                Ms = "Head Baker"
                NameQuest = "CakeQuest2"
                QuestLv = 2
                NameMon = "Head Baker"
                CFrameQ = CFrame.new(- 1928.31763, 37.7296638, - 12840.626, 0.951068401, 0, - 0.308980465, 0, 1, 0, 0.308980465, 0, 0.951068401)
                CFrameMon = CFrame.new(- 2251.5791, 52.2714615, - 13033.3965, - 0.991971016, 0, - 0.126466095, 0, 1, 0, 0.126466095, 0, - 0.991971016)
            elseif v18 == 2300 or (v18 <= 2324 or (SelectMonster == "Cocoa Warrior" or SelectArea == "Choco Island")) then
                Ms = "Cocoa Warrior"
                NameQuest = "ChocQuest1"
                QuestLv = 1
                NameMon = "Cocoa Warrior"
                CFrameQ = CFrame.new(231.75, 23.9003029, - 12200.292, - 1, 0, 0, 0, 1, 0, 0, 0, - 1)
                CFrameMon = CFrame.new(167.978516, 26.2254658, - 12238.874, - 0.939700961, 0, 0.341998369, 0, 1, 0, - 0.341998369, 0, - 0.939700961)
            elseif v18 == 2325 or (v18 <= 2349 or (SelectMonster == "Chocolate Bar Battler" or SelectArea == "Choco Island")) then
                Ms = "Chocolate Bar Battler"
                NameQuest = "ChocQuest1"
                QuestLv = 2
                NameMon = "Chocolate Bar Battler"
                CFrameQ = CFrame.new(231.75, 23.9003029, - 12200.292, - 1, 0, 0, 0, 1, 0, 0, 0, - 1)
                CFrameMon = CFrame.new(701.312073, 25.5824986, - 12708.2148, - 0.342042685, 0, - 0.939684391, 0, 1, 0, 0.939684391, 0, - 0.342042685)
            elseif v18 == 2350 or (v18 <= 2374 or (SelectMonster == "Sweet Thief" or SelectArea == "Choco Island")) then
                Ms = "Sweet Thief"
                NameQuest = "ChocQuest2"
                QuestLv = 1
                NameMon = "Sweet Thief"
                CFrameQ = CFrame.new(151.198242, 23.8907146, - 12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, - 0.906319618, 0, 0.422592998)
                CFrameMon = CFrame.new(- 140.258301, 25.5824986, - 12652.3115, 0.173624337, 0, - 0.984811902, 0, 1, 0, 0.984811902, 0, 0.173624337)
            elseif v18 == 2375 or (v18 <= 2400 or (SelectMonster == "Candy Rebel" or SelectArea == "Choco Island")) then
                Ms = "Candy Rebel"
                NameQuest = "ChocQuest2"
                QuestLv = 2
                NameMon = "Candy Rebel"
                CFrameQ = CFrame.new(151.198242, 23.8907146, - 12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, - 0.906319618, 0, 0.422592998)
                CFrameMon = CFrame.new(47.9231453, 25.5824986, - 13029.2402, - 0.819156051, 0, - 0.573571265, 0, 1, 0, 0.573571265, 0, - 0.819156051)
            elseif v18 == 2400 or (v18 <= 2424 or (SelectMonster == "Candy Pirate" or SelectArea == "Candy Island")) then
                Ms = "Candy Pirate"
                NameQuest = "CandyQuest1"
                QuestLv = 1
                NameMon = "Candy Pirate"
                CFrameQ = CFrame.new(- 1149.328, 13.5759039, - 14445.6143, - 0.156446099, 0, - 0.987686574, 0, 1, 0, 0.987686574, 0, - 0.156446099)
                CFrameMon = CFrame.new(- 1437.56348, 17.1481285, - 14385.6934, 0.173624337, 0, - 0.984811902, 0, 1, 0, 0.984811902, 0, 0.173624337)
            elseif v18 == 2425 or (v18 <= 2449 or (SelectMonster == "Snow Demon" or SelectArea == "Candy Island")) then
                Ms = "Snow Demon"
                NameQuest = "CandyQuest1"
                QuestLv = 2
                NameMon = "Snow Demon"
                CFrameQ = CFrame.new(- 1149.328, 13.5759039, - 14445.6143, - 0.156446099, 0, - 0.987686574, 0, 1, 0, 0.987686574, 0, - 0.156446099)
                CFrameMon = CFrame.new(- 916.222656, 17.1481285, - 14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0, - 0.500031412, 0, 0.866007268)
            elseif v18 == 2450 or (v18 <= 2474 or (SelectMonster == "Isle Outlaw" or SelectArea == "Tiki Outpost")) then
                Ms = "Isle Outlaw"
                NameQuest = "TikiQuest1"
                QuestLv = 1
                NameMon = "Isle Outlaw"
                CFrameQ = CFrame.new(- 16549.890625, 55.68635559082031, - 179.91360473632812)
                CFrameMon = CFrame.new(- 16162.8193359375, 11.6863374710083, - 96.45481872558594)
            elseif v18 == 2475 or (v18 <= 2524 or (SelectMonster == "Island Boy" or SelectArea == "Tiki Outpost")) then
                Ms = "Island Boy"
                NameQuest = "TikiQuest1"
                QuestLv = 2
                NameMon = "Island Boy"
                CFrameQ = CFrame.new(- 16549.890625, 55.68635559082031, - 179.91360473632812)
                CFrameMon = CFrame.new(- 16912.130859375, 11.787443161010742, - 133.0850830078125)
            elseif v18 >= 2525 or (SelectMonster == "Isle Champion" or SelectArea == "Tiki Outpost") then
                Ms = "Isle Champion"
                NameQuest = "TikiQuest2"
                QuestLv = 2
                NameMon = "Isle Champion"
                CFrameQ = CFrame.new(- 16542.447265625, 55.68632888793945, 1044.41650390625)
                CFrameMon = CFrame.new(- 16848.94140625, 21.68633460998535, 1041.4490966796875)
            end
        end
    end
    if First_Sea then
        tableMon = {
            "Bandit",
            "Monkey",
            "Gorilla",
            "Pirate",
            "Brute",
            "Desert Bandit",
            "Desert Officer",
            "Snow Bandit",
            "Snowman",
            "Chief Petty Officer",
            "Sky Bandit",
            "Dark Master",
            "Prisoner",
            "Dangerous Prisoner",
            "Toga Warrior",
            "Gladiator",
            "Military Soldier",
            "Military Spy",
            "Fishman Warrior",
            "Fishman Commando",
            "God\'s Guard",
            "Shanda",
            "Royal Squad",
            "Royal Soldier",
            "Galley Pirate",
            "Galley Captain"
        }
    elseif Second_Sea then
        tableMon = {
            "Raider",
            "Mercenary",
            "Swan Pirate",
            "Factory Staff",
            "Marine Lieutenant",
            "Marine Captain",
            "Zombie",
            "Vampire",
            "Snow Trooper",
            "Winter Warrior",
            "Lab Subordinate",
            "Horned Warrior",
            "Magma Ninja",
            "Lava Pirate",
            "Ship Deckhand",
            "Ship Engineer",
            "Ship Steward",
            "Ship Officer",
            "Arctic Warrior",
            "Snow Lurker",
            "Sea Soldier",
            "Water Fighter"
        }
    elseif Third_Sea then
        tableMon = {
            "Pirate Millionaire",
            "Dragon Crew Warrior",
            "Dragon Crew Archer",
            "Female Islander",
            "Giant Islander",
            "Marine Commodore",
            "Marine Rear Admiral",
            "Fishman Raider",
            "Fishman Captain",
            "Forest Pirate",
            "Mythological Pirate",
            "Jungle Pirate",
            "Musketeer Pirate",
            "Reborn Skeleton",
            "Living Zombie",
            "Demonic Soul",
            "Posessed Mummy",
            "Peanut Scout",
            "Peanut President",
            "Ice Cream Chef",
            "Ice Cream Commander",
            "Cookie Crafter",
            "Cake Guard",
            "Baking Staff",
            "Head Baker",
            "Cocoa Warrior",
            "Chocolate Bar Battler",
            "Sweet Thief",
            "Candy Rebel",
            "Candy Pirate",
            "Snow Demon",
            "Isle Outlaw",
            "Island Boy",
            "Isle Champion"
        }
    end
    if First_Sea then
        AreaList = {
            "Jungle",
            "Buggy",
            "Desert",
            "Snow",
            "Marine",
            "Sky",
            "Prison",
            "Colosseum",
            "Magma",
            "Fishman",
            "Sky Island",
            "Fountain"
        }
    elseif Second_Sea then
        AreaList = {
            "Area 1",
            "Area 2",
            "Zombie",
            "Marine",
            "Snow Mountain",
            "Ice fire",
            "Ship",
            "Frost",
            "Forgotten"
        }
    elseif Third_Sea then
        AreaList = {
            "Pirate Port",
            "Amazon",
            "Marine Tree",
            "Deep Forest",
            "Haunted Castle",
            "Nut Island",
            "Ice Cream Island",
            "Cake Island",
            "Choco Island",
            "Candy Island",
            "Tiki Outpost"
        }
    end
    function CheckBossQuest()
        if First_Sea then
            if SelectBoss ~= "The Gorilla King" then
                if SelectBoss ~= "Bobby" then
                    if SelectBoss ~= "The Saw" then
                        if SelectBoss ~= "Yeti" then
                            if SelectBoss ~= "Mob Leader" then
                                if SelectBoss ~= "Vice Admiral" then
                                    if SelectBoss ~= "Saber Expert" then
                                        if SelectBoss ~= "Warden" then
                                            if SelectBoss ~= "Chief Warden" then
                                                if SelectBoss ~= "Swan" then
                                                    if SelectBoss ~= "Magma Admiral" then
                                                        if SelectBoss ~= "Fishman Lord" then
                                                            if SelectBoss ~= "Wysper" then
                                                                if SelectBoss ~= "Thunder God" then
                                                                    if SelectBoss ~= "Cyborg" then
                                                                        if SelectBoss ~= "Ice Admiral" then
                                                                            if SelectBoss == "Greybeard" then
                                                                                BossMon = "Greybeard"
                                                                                NameBoss = "Greybeard"
                                                                                CFrameBoss = CFrame.new(- 5081.3452148438, 85.221641540527, 4257.3588867188)
                                                                            end
                                                                        else
                                                                            BossMon = "Ice Admiral"
                                                                            NameBoss = "Ice Admiral"
                                                                            CFrameBoss = CFrame.new(1266.08948, 26.1757946, - 1399.57678, - 0.573599219, 0, - 0.81913656, 0, 1, 0, 0.81913656, 0, - 0.573599219)
                                                                        end
                                                                    else
                                                                        BossMon = "Cyborg"
                                                                        NameBoss = "Cyborg"
                                                                        NameQuestBoss = "FountainQuest"
                                                                        QuestLvBoss = 3
                                                                        RewardBoss = "Reward:\n$20,000\n7,500,000 Exp."
                                                                        CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
                                                                        CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
                                                                    end
                                                                else
                                                                    BossMon = "Thunder God"
                                                                    NameBoss = "Thunder God"
                                                                    NameQuestBoss = "SkyExp2Quest"
                                                                    QuestLvBoss = 3
                                                                    RewardBoss = "Reward:\n$20,000\n5,800,000 Exp."
                                                                    CFrameQBoss = CFrame.new(- 7903.3828125, 5635.9897460938, - 1410.923828125)
                                                                    CFrameBoss = CFrame.new(- 7994.984375, 5761.025390625, - 2088.6479492188)
                                                                end
                                                            else
                                                                BossMon = "Wysper"
                                                                NameBoss = "Wysper"
                                                                NameQuestBoss = "SkyExp1Quest"
                                                                QuestLvBoss = 3
                                                                RewardBoss = "Reward:\n$15,000\n4,800,000 Exp."
                                                                CFrameQBoss = CFrame.new(- 7861.947265625, 5545.517578125, - 379.85974121094)
                                                                CFrameBoss = CFrame.new(- 7866.1333007813, 5576.4311523438, - 546.74816894531)
                                                            end
                                                        else
                                                            BossMon = "Fishman Lord"
                                                            NameBoss = "Fishman Lord"
                                                            NameQuestBoss = "FishmanQuest"
                                                            QuestLvBoss = 3
                                                            RewardBoss = "Reward:\n$15,000\n4,000,000 Exp."
                                                            CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                            CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
                                                        end
                                                    else
                                                        BossMon = "Magma Admiral"
                                                        NameBoss = "Magma Admiral"
                                                        NameQuestBoss = "MagmaQuest"
                                                        QuestLvBoss = 3
                                                        RewardBoss = "Reward:\n$15,000\n2,800,000 Exp."
                                                        CFrameQBoss = CFrame.new(- 5314.6220703125, 12.262420654297, 8517.279296875)
                                                        CFrameBoss = CFrame.new(- 5765.8969726563, 82.92064666748, 8718.3046875)
                                                    end
                                                else
                                                    BossMon = "Swan"
                                                    NameBoss = "Swan"
                                                    NameQuestBoss = "ImpelQuest"
                                                    QuestLvBoss = 3
                                                    RewardBoss = "Reward:\n$15,000\n1,600,000 Exp."
                                                    CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, - 0.309060812, 0, 0.951042235, 0, 1, 0, - 0.951042235, 0, - 0.309060812)
                                                    CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, - 0.731384635, 0, 0.681965172, 0, 1, 0, - 0.681965172, 0, - 0.731384635)
                                                end
                                            else
                                                BossMon = "Chief Warden"
                                                NameBoss = "Chief Warden"
                                                NameQuestBoss = "ImpelQuest"
                                                QuestLvBoss = 2
                                                RewardBoss = "Reward:\n$10,000\n1,000,000 Exp."
                                                CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, - 0.00062915677, 0.939684749, 0.00191645394, 0.999998152, - 0.0000280422337, - 0.939682961, 0.00181045406, 0.342041939)
                                                CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, - 0.731384635, 0, 0.681965172, 0, 1, 0, - 0.681965172, 0, - 0.731384635)
                                            end
                                        else
                                            BossMon = "Warden"
                                            NameBoss = "Warden"
                                            NameQuestBoss = "ImpelQuest"
                                            QuestLvBoss = 1
                                            RewardBoss = "Reward:\n$6,000\n850,000 Exp."
                                            CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, - 4.49946401e-6, 0.975376427, - 0.0000195412576, 1, 9.03162072e-6, - 0.975376427, - 0.0000210519756, 0.220546961)
                                            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, - 0.731384635, 0, 0.681965172, 0, 1, 0, - 0.681965172, 0, - 0.731384635)
                                        end
                                    else
                                        NameBoss = "Saber Expert"
                                        BossMon = "Saber Expert"
                                        CFrameBoss = CFrame.new(- 1458.89502, 29.8870335, - 50.633564)
                                    end
                                else
                                    BossMon = "Vice Admiral"
                                    NameBoss = "Vice Admiral"
                                    NameQuestBoss = "MarineQuest2"
                                    QuestLvBoss = 2
                                    RewardBoss = "Reward:\n$10,000\n180,000 Exp."
                                    CFrameQBoss = CFrame.new(- 5036.2465820313, 28.677835464478, 4324.56640625)
                                    CFrameBoss = CFrame.new(- 5006.5454101563, 88.032081604004, 4353.162109375)
                                end
                            else
                                BossMon = "Mob Leader"
                                NameBoss = "Mob Leader"
                                CFrameBoss = CFrame.new(- 2844.7307128906, 7.4180502891541, 5356.6723632813)
                            end
                        else
                            BossMon = "Yeti"
                            NameBoss = "Yeti"
                            NameQuestBoss = "SnowQuest"
                            QuestLvBoss = 3
                            RewardBoss = "Reward:\n$10,000\n180,000 Exp."
                            CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, - 1298.3576660156)
                            CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, - 1488.0262451172)
                        end
                    else
                        BossMon = "The Saw"
                        NameBoss = "The Saw"
                        CFrameBoss = CFrame.new(- 784.89715576172, 72.427383422852, 1603.5822753906)
                    end
                else
                    BossMon = "Bobby"
                    NameBoss = "Bobby"
                    NameQuestBoss = "BuggyQuest1"
                    QuestLvBoss = 3
                    RewardBoss = "Reward:\n$8,000\n35,000 Exp."
                    CFrameQBoss = CFrame.new(- 1140.1761474609, 4.752049446106, 3827.4057617188)
                    CFrameBoss = CFrame.new(- 1087.3760986328, 46.949409484863, 4040.1462402344)
                end
            else
                BossMon = "The Gorilla King"
                NameBoss = "The Gorrila King"
                NameQuestBoss = "JungleQuest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$2,000\n7,000 Exp."
                CFrameQBoss = CFrame.new(- 1601.6553955078, 36.85213470459, 153.38809204102)
                CFrameBoss = CFrame.new(- 1088.75977, 8.13463783, - 488.559906, - 0.707134247, 0, 0.707079291, 0, 1, 0, - 0.707079291, 0, - 0.707134247)
            end
        end
        if Second_Sea then
            if SelectBoss ~= "Diamond" then
                if SelectBoss ~= "Jeremy" then
                    if SelectBoss ~= "Fajita" then
                        if SelectBoss ~= "Don Swan" then
                            if SelectBoss ~= "Smoke Admiral" then
                                if SelectBoss ~= "Awakened Ice Admiral" then
                                    if SelectBoss ~= "Tide Keeper" then
                                        if SelectBoss ~= "Darkbeard" then
                                            if SelectBoss ~= "Cursed Captain" then
                                                if SelectBoss == "Order" then
                                                    BossMon = "Order"
                                                    NameBoss = "Order"
                                                    CFrameBoss = CFrame.new(- 6217.2021484375, 28.047645568848, - 5053.1357421875)
                                                end
                                            else
                                                BossMon = "Cursed Captain"
                                                NameBoss = "Cursed Captain"
                                                CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
                                            end
                                        else
                                            BossMon = "Darkbeard"
                                            NameBoss = "Darkbeard"
                                            CFrameMon = CFrame.new(3677.08203125, 62.751937866211, - 3144.8332519531)
                                        end
                                    else
                                        BossMon = "Tide Keeper"
                                        NameBoss = "Tide Keeper"
                                        NameQuestBoss = "ForgottenQuest"
                                        QuestLvBoss = 3
                                        RewardBoss = "Reward:\n$12,500\n38,000,000 Exp."
                                        CFrameQBoss = CFrame.new(- 3053.9814453125, 237.18954467773, - 10145.0390625)
                                        CFrameBoss = CFrame.new(- 3795.6423339844, 105.88877105713, - 11421.307617188)
                                    end
                                else
                                    BossMon = "Awakened Ice Admiral"
                                    NameBoss = "Awakened Ice Admiral"
                                    NameQuestBoss = "FrostQuest"
                                    QuestLvBoss = 3
                                    RewardBoss = "Reward:\n$20,000\n36,000,000 Exp."
                                    CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, - 6483.3520507813)
                                    CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, - 6894.5595703125)
                                end
                            else
                                BossMon = "Smoke Admiral"
                                NameBoss = "Smoke Admiral"
                                NameQuestBoss = "IceSideQuest"
                                QuestLvBoss = 3
                                RewardBoss = "Reward:\n$20,000\n25,000,000 Exp."
                                CFrameQBoss = CFrame.new(- 5429.0473632813, 15.977565765381, - 5297.9614257813)
                                CFrameBoss = CFrame.new(- 5275.1987304688, 20.757257461548, - 5260.6669921875)
                            end
                        else
                            BossMon = "Don Swan"
                            NameBoss = "Don Swan"
                            CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
                        end
                    else
                        BossMon = "Fajita"
                        NameBoss = "Fajita"
                        NameQuestBoss = "MarineQuest3"
                        QuestLvBoss = 3
                        RewardBoss = "Reward:\n$25,000\n15,000,000 Exp."
                        CFrameQBoss = CFrame.new(- 2441.986328125, 73.359344482422, - 3217.5324707031)
                        CFrameBoss = CFrame.new(- 2172.7399902344, 103.32216644287, - 4015.025390625)
                    end
                else
                    BossMon = "Jeremy"
                    NameBoss = "Jeremy"
                    NameQuestBoss = "Area2Quest"
                    QuestLvBoss = 3
                    RewardBoss = "Reward:\n$25,000\n11,500,000 Exp."
                    CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
                    CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
                end
            else
                BossMon = "Diamond"
                NameBoss = "Diamond"
                NameQuestBoss = "Area1Quest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$25,000\n9,000,000 Exp."
                CFrameQBoss = CFrame.new(- 427.5666809082, 73.313781738281, 1835.4208984375)
                CFrameBoss = CFrame.new(- 1576.7166748047, 198.59265136719, 13.724286079407)
            end
        end
        if Third_Sea then
            if SelectBoss ~= "Stone" then
                if SelectBoss ~= "Island Empress" then
                    if SelectBoss ~= "Kilo Admiral" then
                        if SelectBoss ~= "Captain Elephant" then
                            if SelectBoss ~= "Beautiful Pirate" then
                                if SelectBoss ~= "Cake Queen" then
                                    if SelectBoss ~= "Longma" then
                                        if SelectBoss ~= "Soul Reaper" then
                                            if SelectBoss == "rip_indra True Form" then
                                                BossMon = "rip_indra True Form"
                                                NameBoss = "rip_indra True Form"
                                                CFrameBoss = CFrame.new(- 5415.3920898438, 505.74133300781, - 2814.0166015625)
                                            end
                                        else
                                            BossMon = "Soul Reaper"
                                            NameBoss = "Soul Reaper"
                                            CFrameBoss = CFrame.new(- 9524.7890625, 315.80429077148, 6655.7192382813)
                                        end
                                    else
                                        BossMon = "Longma"
                                        NameBoss = "Longma"
                                        CFrameBoss = CFrame.new(- 10238.875976563, 389.7912902832, - 9549.7939453125)
                                    end
                                else
                                    BossMon = "Cake Queen"
                                    NameBoss = "Cake Queen"
                                    NameQuestBoss = "IceCreamIslandQuest"
                                    QuestLvBoss = 3
                                    RewardBoss = "Reward:\n$30,000\n112,500,000 Exp."
                                    CFrameQBoss = CFrame.new(- 819.376709, 64.9259796, - 10967.2832, - 0.766061664, 0, 0.642767608, 0, 1, 0, - 0.642767608, 0, - 0.766061664)
                                    CFrameBoss = CFrame.new(- 678.648804, 381.353943, - 11114.2012, - 0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, - 0.417492568, 0.0167988986, - 0.90852499)
                                end
                            else
                                BossMon = "Beautiful Pirate"
                                NameBoss = "Beautiful Pirate"
                                NameQuestBoss = "DeepForestIsland2"
                                QuestLvBoss = 3
                                RewardBoss = "Reward:\n$50,000\n70,000,000 Exp."
                                CFrameQBoss = CFrame.new(- 12682.096679688, 390.88653564453, - 9902.1240234375)
                                CFrameBoss = CFrame.new(5283.609375, 22.56223487854, - 110.78285217285)
                            end
                        else
                            BossMon = "Captain Elephant"
                            NameBoss = "Captain Elephant"
                            NameQuestBoss = "DeepForestIsland"
                            QuestLvBoss = 3
                            RewardBoss = "Reward:\n$40,000\n67,000,000 Exp."
                            CFrameQBoss = CFrame.new(- 13232.682617188, 332.40396118164, - 7626.01171875)
                            CFrameBoss = CFrame.new(- 13376.7578125, 433.28689575195, - 8071.392578125)
                        end
                    else
                        BossMon = "Kilo Admiral"
                        NameBoss = "Kilo Admiral"
                        NameQuestBoss = "MarineTreeIsland"
                        QuestLvBoss = 3
                        RewardBoss = "Reward:\n$35,000\n56,000,000 Exp."
                        CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, - 6739.9741210938)
                        CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, - 7144.4580078125)
                    end
                else
                    BossMon = "Island Empress"
                    NameBoss = "Island Empress"
                    NameQuestBoss = "AmazonQuest2"
                    QuestLvBoss = 3
                    RewardBoss = "Reward:\n$30,000\n52,000,000 Exp."
                    CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
                    CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
                end
            else
                BossMon = "Stone"
                NameBoss = "Stone"
                NameQuestBoss = "PiratePortQuest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$25,000\n40,000,000 Exp."
                CFrameQBoss = CFrame.new(- 289.76705932617, 43.819011688232, 5579.9384765625)
                CFrameBoss = CFrame.new(- 1027.6512451172, 92.404174804688, 6578.8530273438)
            end
        end
    end
    function MaterialMon()
        if SelectMaterial ~= "Radioactive Material" then
            if SelectMaterial ~= "Mystic Droplet" then
                if SelectMaterial ~= "Magma Ore" then
                    if SelectMaterial ~= "Angel Wings" then
                        if SelectMaterial ~= "Leather" then
                            if SelectMaterial ~= "Scrap Metal" then
                                if SelectMaterial ~= "Fish Tail" then
                                    if SelectMaterial ~= "Demonic Wisp" then
                                        if SelectMaterial ~= "Vampire Fang" then
                                            if SelectMaterial ~= "Conjured Cocoa" then
                                                if SelectMaterial ~= "Dragon Scale" then
                                                    if SelectMaterial ~= "Gunpowder" then
                                                        if SelectMaterial == "Mini Tusk" then
                                                            MMon = "Mythological Pirate"
                                                            MPos = CFrame.new(- 13545, 470, - 6917)
                                                            SP = "Default"
                                                        end
                                                    else
                                                        MMon = "Pistol Billionaire"
                                                        MPos = CFrame.new(- 469, 74, 5904)
                                                        SP = "Default"
                                                    end
                                                else
                                                    MMon = "Dragon Crew Archer"
                                                    MPos = CFrame.new(6594, 383, 139)
                                                    SP = "Default"
                                                end
                                            else
                                                MMon = "Chocolate Bar Battler"
                                                MPos = CFrame.new(620.6344604492188, 78.93644714355469, - 12581.369140625)
                                                SP = "Default"
                                            end
                                        else
                                            MMon = "Vampire"
                                            MPos = CFrame.new(- 6033, 7, - 1317)
                                            SP = "Default"
                                        end
                                    else
                                        MMon = "Demonic Soul"
                                        MPos = CFrame.new(- 9507, 172, 6158)
                                        SP = "Default"
                                    end
                                elseif Third_Sea then
                                    MMon = "Fishman Raider"
                                    MPos = CFrame.new(- 10993, 332, - 8940)
                                    SP = "Default"
                                elseif First_Sea then
                                    MMon = "Fishman Warrior"
                                    MPos = CFrame.new(61123, 19, 1569)
                                    SP = "Default"
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
                                    end
                                end
                            elseif First_Sea then
                                MMon = "Brute"
                                MPos = CFrame.new(- 1145, 15, 4350)
                                SP = "Default"
                            elseif Second_Sea then
                                MMon = "Swan Pirate"
                                MPos = CFrame.new(878, 122, 1235)
                                SP = "Default"
                            elseif Third_Sea then
                                MMon = "Jungle Pirate"
                                MPos = CFrame.new(- 12107, 332, - 10549)
                                SP = "Default"
                            end
                        elseif First_Sea then
                            MMon = "Brute"
                            MPos = CFrame.new(- 1145, 15, 4350)
                            SP = "Default"
                        elseif Second_Sea then
                            MMon = "Marine Captain"
                            MPos = CFrame.new(- 2010.5059814453125, 73.00115966796875, - 3326.620849609375)
                            SP = "Default"
                        elseif Third_Sea then
                            MMon = "Jungle Pirate"
                            MPos = CFrame.new(- 11975.78515625, 331.7734069824219, - 10620.0302734375)
                            SP = "Default"
                        end
                    else
                        MMon = "God\'s Guard"
                        MPos = CFrame.new(- 4698, 845, - 1912)
                        SP = "Default"
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 7859.09814, 5544.19043, - 381.476196)).Magnitude >= 5000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7859.09814, 5544.19043, - 381.476196))
                        end
                    end
                elseif First_Sea then
                    MMon = "Military Spy"
                    MPos = CFrame.new(- 5815, 84, 8820)
                    SP = "Default"
                elseif Second_Sea then
                    MMon = "Magma Ninja"
                    MPos = CFrame.new(- 5428, 78, - 5959)
                    SP = "Default"
                end
            else
                MMon = "Water Fighter"
                MPos = CFrame.new(- 3385, 239, - 10542)
                SP = "Default"
            end
        else
            MMon = "Factory Staff"
            MPos = CFrame.new(295, 73, - 56)
            SP = "Default"
        end
    end
    function UpdateIslandESP()
        local v19, v20, v21 = pairs(game:GetService("Workspace")._WorldOrigin.Locations:GetChildren())
        while true do
            local vu22
            v21, vu22 = v19(v20, v21)
            if v21 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu22
                if IslandESP then
                    if vu22.Name ~= "Sea" then
                        if vu22:FindFirstChild("NameEsp") then
                            vu22.NameEsp.TextLabel.Text = vu22.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - vu22.Position).Magnitude / 3) .. " Distance"
                        else
                            local v23 = Instance.new("BillboardGui", vu22)
                            v23.Name = "NameEsp"
                            v23.ExtentsOffset = Vector3.new(0, 1, 0)
                            v23.Size = UDim2.new(1, 200, 1, 30)
                            v23.Adornee = vu22
                            v23.AlwaysOnTop = true
                            local v24 = Instance.new("TextLabel", v23)
                            v24.Font = "GothamBold"
                            v24.FontSize = "Size14"
                            v24.TextWrapped = true
                            v24.Size = UDim2.new(1, 0, 1, 0)
                            v24.TextYAlignment = "Top"
                            v24.BackgroundTransparency = 1
                            v24.TextStrokeTransparency = 0.5
                            v24.TextColor3 = Color3.fromRGB(7, 236, 240)
                        end
                    end
                elseif vu22:FindFirstChild("NameEsp") then
                    vu22:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
    function isnil(p25)
        return p25 == nil
    end
    local function vu27(p26)
        return math.floor(tonumber(p26) + 0.5)
    end
    Number = math.random(1, 1000000)
    function UpdatePlayerChams()
		-- upvalues: (ref) vu27
        local v28, v29, v30 = pairs(game:GetService("Players"):GetChildren())
        while true do
            local vu31
            v30, vu31 = v28(v29, v30)
            if v30 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu31, (ref) vu27
                if not isnil(vu31.Character) then
                    if ESPPlayer then
                        if isnil(vu31.Character.Head) or vu31.Character.Head:FindFirstChild("NameEsp" .. Number) then
                            vu31.Character.Head["NameEsp" .. Number].TextLabel.Text = vu31.Name .. " | " .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - vu31.Character.Head.Position).Magnitude / 3) .. " Distance\nHealth : " .. vu27(vu31.Character.Humanoid.Health * 100 / vu31.Character.Humanoid.MaxHealth) .. "%"
                        else
                            local v32 = Instance.new("BillboardGui", vu31.Character.Head)
                            v32.Name = "NameEsp" .. Number
                            v32.ExtentsOffset = Vector3.new(0, 1, 0)
                            v32.Size = UDim2.new(1, 200, 1, 30)
                            v32.Adornee = vu31.Character.Head
                            v32.AlwaysOnTop = true
                            local v33 = Instance.new("TextLabel", v32)
                            v33.Font = Enum.Font.GothamSemibold
                            v33.FontSize = "Size14"
                            v33.TextWrapped = true
                            v33.Text = vu31.Name .. " \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - vu31.Character.Head.Position).Magnitude / 3) .. " Distance"
                            v33.Size = UDim2.new(1, 0, 1, 0)
                            v33.TextYAlignment = "Top"
                            v33.BackgroundTransparency = 1
                            v33.TextStrokeTransparency = 0.5
                            if vu31.Team ~= game.Players.LocalPlayer.Team then
                                v33.TextColor3 = Color3.new(255, 0, 0)
                            else
                                v33.TextColor3 = Color3.new(0, 255, 0)
                            end
                        end
                    elseif vu31.Character.Head:FindFirstChild("NameEsp" .. Number) then
                        vu31.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateChestChams()
		-- upvalues: (ref) vu27
        local v34, v35, v36 = pairs(game.Workspace:GetChildren())
        while true do
            local vu37
            v36, vu37 = v34(v35, v36)
            if v36 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu37, (ref) vu27
                if string.find(vu37.Name, "Chest") then
                    if ChestESP then
                        if string.find(vu37.Name, "Chest") then
                            if vu37:FindFirstChild("NameEsp" .. Number) then
                                vu37["NameEsp" .. Number].TextLabel.Text = vu37.Name .. "   \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - vu37.Position).Magnitude / 3) .. " Distance"
                            else
                                local v38 = Instance.new("BillboardGui", vu37)
                                v38.Name = "NameEsp" .. Number
                                v38.ExtentsOffset = Vector3.new(0, 1, 0)
                                v38.Size = UDim2.new(1, 200, 1, 30)
                                v38.Adornee = vu37
                                v38.AlwaysOnTop = true
                                local v39 = Instance.new("TextLabel", v38)
                                v39.Font = Enum.Font.GothamSemibold
                                v39.FontSize = "Size14"
                                v39.TextWrapped = true
                                v39.Size = UDim2.new(1, 0, 1, 0)
                                v39.TextYAlignment = "Top"
                                v39.BackgroundTransparency = 1
                                v39.TextStrokeTransparency = 0.5
                                if vu37.Name == "Chest1" then
                                    v39.TextColor3 = Color3.fromRGB(109, 109, 109)
                                    v39.Text = "Chest 1" .. " \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - vu37.Position).Magnitude / 3) .. " Distance"
                                end
                                if vu37.Name == "Chest2" then
                                    v39.TextColor3 = Color3.fromRGB(173, 158, 21)
                                    v39.Text = "Chest 2" .. " \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - vu37.Position).Magnitude / 3) .. " Distance"
                                end
                                if vu37.Name == "Chest3" then
                                    v39.TextColor3 = Color3.fromRGB(85, 255, 255)
                                    v39.Text = "Chest 3" .. " \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - vu37.Position).Magnitude / 3) .. " Distance"
                                end
                            end
                        end
                    elseif vu37:FindFirstChild("NameEsp" .. Number) then
                        vu37:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateDevilChams()
		-- upvalues: (ref) vu27
        local v40, v41, v42 = pairs(game.Workspace:GetChildren())
        while true do
            local vu43
            v42, vu43 = v40(v41, v42)
            if v42 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu43, (ref) vu27
                if DevilFruitESP then
                    if string.find(vu43.Name, "Fruit") then
                        if vu43.Handle:FindFirstChild("NameEsp" .. Number) then
                            vu43.Handle["NameEsp" .. Number].TextLabel.Text = vu43.Name .. "   \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - vu43.Handle.Position).Magnitude / 3) .. " Distance"
                        else
                            local v44 = Instance.new("BillboardGui", vu43.Handle)
                            v44.Name = "NameEsp" .. Number
                            v44.ExtentsOffset = Vector3.new(0, 1, 0)
                            v44.Size = UDim2.new(1, 200, 1, 30)
                            v44.Adornee = vu43.Handle
                            v44.AlwaysOnTop = true
                            local v45 = Instance.new("TextLabel", v44)
                            v45.Font = Enum.Font.GothamSemibold
                            v45.FontSize = "Size14"
                            v45.TextWrapped = true
                            v45.Size = UDim2.new(1, 0, 1, 0)
                            v45.TextYAlignment = "Top"
                            v45.BackgroundTransparency = 1
                            v45.TextStrokeTransparency = 0.5
                            v45.TextColor3 = Color3.fromRGB(255, 255, 255)
                            v45.Text = vu43.Name .. " \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - vu43.Handle.Position).Magnitude / 3) .. " Distance"
                        end
                    end
                elseif vu43.Handle:FindFirstChild("NameEsp" .. Number) then
                    vu43.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end)
        end
    end
    function UpdateFlowerChams()
		-- upvalues: (ref) vu27
        local v46, v47, v48 = pairs(game.Workspace:GetChildren())
        while true do
            local vu49
            v48, vu49 = v46(v47, v48)
            if v48 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu49, (ref) vu27
                if vu49.Name == "Flower2" or vu49.Name == "Flower1" then
                    if FlowerESP then
                        if vu49:FindFirstChild("NameEsp" .. Number) then
                            vu49["NameEsp" .. Number].TextLabel.Text = vu49.Name .. "   \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - vu49.Position).Magnitude / 3) .. " Distance"
                        else
                            local v50 = Instance.new("BillboardGui", vu49)
                            v50.Name = "NameEsp" .. Number
                            v50.ExtentsOffset = Vector3.new(0, 1, 0)
                            v50.Size = UDim2.new(1, 200, 1, 30)
                            v50.Adornee = vu49
                            v50.AlwaysOnTop = true
                            local v51 = Instance.new("TextLabel", v50)
                            v51.Font = Enum.Font.GothamSemibold
                            v51.FontSize = "Size14"
                            v51.TextWrapped = true
                            v51.Size = UDim2.new(1, 0, 1, 0)
                            v51.TextYAlignment = "Top"
                            v51.BackgroundTransparency = 1
                            v51.TextStrokeTransparency = 0.5
                            v51.TextColor3 = Color3.fromRGB(255, 0, 0)
                            if vu49.Name == "Flower1" then
                                v51.Text = "Blue Flower" .. " \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - vu49.Position).Magnitude / 3) .. " Distance"
                                v51.TextColor3 = Color3.fromRGB(0, 0, 255)
                            end
                            if vu49.Name == "Flower2" then
                                v51.Text = "Red Flower" .. " \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - vu49.Position).Magnitude / 3) .. " Distance"
                                v51.TextColor3 = Color3.fromRGB(255, 0, 0)
                            end
                        end
                    elseif vu49:FindFirstChild("NameEsp" .. Number) then
                        vu49:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateRealFruitChams()
		-- upvalues: (ref) vu27
        local v52, v53, v54 = pairs(game.Workspace.AppleSpawner:GetChildren())
        while true do
            local v55
            v54, v55 = v52(v53, v54)
            if v54 == nil then
                break
            end
            if v55:IsA("Tool") then
                if RealFruitESP then
                    if v55.Handle:FindFirstChild("NameEsp" .. Number) then
                        v55.Handle["NameEsp" .. Number].TextLabel.Text = v55.Name .. " " .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - v55.Handle.Position).Magnitude / 3) .. " Distance"
                    else
                        local v56 = Instance.new("BillboardGui", v55.Handle)
                        v56.Name = "NameEsp" .. Number
                        v56.ExtentsOffset = Vector3.new(0, 1, 0)
                        v56.Size = UDim2.new(1, 200, 1, 30)
                        v56.Adornee = v55.Handle
                        v56.AlwaysOnTop = true
                        local v57 = Instance.new("TextLabel", v56)
                        v57.Font = Enum.Font.GothamSemibold
                        v57.FontSize = "Size14"
                        v57.TextWrapped = true
                        v57.Size = UDim2.new(1, 0, 1, 0)
                        v57.TextYAlignment = "Top"
                        v57.BackgroundTransparency = 1
                        v57.TextStrokeTransparency = 0.5
                        v57.TextColor3 = Color3.fromRGB(255, 0, 0)
                        v57.Text = v55.Name .. " \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - v55.Handle.Position).Magnitude / 3) .. " Distance"
                    end
                elseif v55.Handle:FindFirstChild("NameEsp" .. Number) then
                    v55.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        end
        local v58, v59, v60 = pairs(game.Workspace.PineappleSpawner:GetChildren())
        while true do
            local v61
            v60, v61 = v58(v59, v60)
            if v60 == nil then
                break
            end
            if v61:IsA("Tool") then
                if RealFruitESP then
                    if v61.Handle:FindFirstChild("NameEsp" .. Number) then
                        v61.Handle["NameEsp" .. Number].TextLabel.Text = v61.Name .. " " .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - v61.Handle.Position).Magnitude / 3) .. " Distance"
                    else
                        local v62 = Instance.new("BillboardGui", v61.Handle)
                        v62.Name = "NameEsp" .. Number
                        v62.ExtentsOffset = Vector3.new(0, 1, 0)
                        v62.Size = UDim2.new(1, 200, 1, 30)
                        v62.Adornee = v61.Handle
                        v62.AlwaysOnTop = true
                        local v63 = Instance.new("TextLabel", v62)
                        v63.Font = Enum.Font.GothamSemibold
                        v63.FontSize = "Size14"
                        v63.TextWrapped = true
                        v63.Size = UDim2.new(1, 0, 1, 0)
                        v63.TextYAlignment = "Top"
                        v63.BackgroundTransparency = 1
                        v63.TextStrokeTransparency = 0.5
                        v63.TextColor3 = Color3.fromRGB(255, 174, 0)
                        v63.Text = v61.Name .. " \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - v61.Handle.Position).Magnitude / 3) .. " Distance"
                    end
                elseif v61.Handle:FindFirstChild("NameEsp" .. Number) then
                    v61.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        end
        local v64, v65, v66 = pairs(game.Workspace.BananaSpawner:GetChildren())
        while true do
            local v67
            v66, v67 = v64(v65, v66)
            if v66 == nil then
                break
            end
            if v67:IsA("Tool") then
                if RealFruitESP then
                    if v67.Handle:FindFirstChild("NameEsp" .. Number) then
                        v67.Handle["NameEsp" .. Number].TextLabel.Text = v67.Name .. " " .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - v67.Handle.Position).Magnitude / 3) .. " Distance"
                    else
                        local v68 = Instance.new("BillboardGui", v67.Handle)
                        v68.Name = "NameEsp" .. Number
                        v68.ExtentsOffset = Vector3.new(0, 1, 0)
                        v68.Size = UDim2.new(1, 200, 1, 30)
                        v68.Adornee = v67.Handle
                        v68.AlwaysOnTop = true
                        local v69 = Instance.new("TextLabel", v68)
                        v69.Font = Enum.Font.GothamSemibold
                        v69.FontSize = "Size14"
                        v69.TextWrapped = true
                        v69.Size = UDim2.new(1, 0, 1, 0)
                        v69.TextYAlignment = "Top"
                        v69.BackgroundTransparency = 1
                        v69.TextStrokeTransparency = 0.5
                        v69.TextColor3 = Color3.fromRGB(251, 255, 0)
                        v69.Text = v67.Name .. " \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - v67.Handle.Position).Magnitude / 3) .. " Distance"
                    end
                elseif v67.Handle:FindFirstChild("NameEsp" .. Number) then
                    v67.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        end
    end
    function UpdateIslandESP()
		-- upvalues: (ref) vu27
        local v70, v71, v72 = pairs(game:GetService("Workspace")._WorldOrigin.Locations:GetChildren())
        while true do
            local vu73
            v72, vu73 = v70(v71, v72)
            if v72 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu73, (ref) vu27
                if IslandESP then
                    if vu73.Name ~= "Sea" then
                        if vu73:FindFirstChild("NameEsp") then
                            vu73.NameEsp.TextLabel.Text = vu73.Name .. "   \n" .. vu27((game:GetService("Players").LocalPlayer.Character.Head.Position - vu73.Position).Magnitude / 3) .. " Distance"
                        else
                            local v74 = Instance.new("BillboardGui", vu73)
                            v74.Name = "NameEsp"
                            v74.ExtentsOffset = Vector3.new(0, 1, 0)
                            v74.Size = UDim2.new(1, 200, 1, 30)
                            v74.Adornee = vu73
                            v74.AlwaysOnTop = true
                            local v75 = Instance.new("TextLabel", v74)
                            v75.Font = "GothamBold"
                            v75.FontSize = "Size14"
                            v75.TextWrapped = true
                            v75.Size = UDim2.new(1, 0, 1, 0)
                            v75.TextYAlignment = "Top"
                            v75.BackgroundTransparency = 1
                            v75.TextStrokeTransparency = 0.5
                            v75.TextColor3 = Color3.fromRGB(7, 236, 240)
                        end
                    end
                elseif vu73:FindFirstChild("NameEsp") then
                    vu73:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
    function isnil(p76)
        return p76 == nil
    end
    local function vu78(p77)
        return math.floor(tonumber(p77) + 0.5)
    end
    Number = math.random(1, 1000000)
    function UpdatePlayerChams()
		-- upvalues: (ref) vu78
        local v79, v80, v81 = pairs(game:GetService("Players"):GetChildren())
        while true do
            local vu82
            v81, vu82 = v79(v80, v81)
            if v81 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu82, (ref) vu78
                if not isnil(vu82.Character) then
                    if ESPPlayer then
                        if isnil(vu82.Character.Head) or vu82.Character.Head:FindFirstChild("NameEsp" .. Number) then
                            vu82.Character.Head["NameEsp" .. Number].TextLabel.Text = vu82.Name .. " | " .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - vu82.Character.Head.Position).Magnitude / 3) .. " Distance\nHealth : " .. vu78(vu82.Character.Humanoid.Health * 100 / vu82.Character.Humanoid.MaxHealth) .. "%"
                        else
                            local v83 = Instance.new("BillboardGui", vu82.Character.Head)
                            v83.Name = "NameEsp" .. Number
                            v83.ExtentsOffset = Vector3.new(0, 1, 0)
                            v83.Size = UDim2.new(1, 200, 1, 30)
                            v83.Adornee = vu82.Character.Head
                            v83.AlwaysOnTop = true
                            local v84 = Instance.new("TextLabel", v83)
                            v84.Font = Enum.Font.GothamSemibold
                            v84.FontSize = "Size14"
                            v84.TextWrapped = true
                            v84.Text = vu82.Name .. " \n" .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - vu82.Character.Head.Position).Magnitude / 3) .. " Distance"
                            v84.Size = UDim2.new(1, 0, 1, 0)
                            v84.TextYAlignment = "Top"
                            v84.BackgroundTransparency = 1
                            v84.TextStrokeTransparency = 0.5
                            if vu82.Team ~= game.Players.LocalPlayer.Team then
                                v84.TextColor3 = Color3.new(255, 0, 0)
                            else
                                v84.TextColor3 = Color3.new(0, 255, 0)
                            end
                        end
                    elseif vu82.Character.Head:FindFirstChild("NameEsp" .. Number) then
                        vu82.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateChestChams()
		-- upvalues: (ref) vu78
        local v85, v86, v87 = pairs(game.Workspace:GetChildren())
        while true do
            local vu88
            v87, vu88 = v85(v86, v87)
            if v87 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu88, (ref) vu78
                if string.find(vu88.Name, "Chest") then
                    if ChestESP then
                        if string.find(vu88.Name, "Chest") then
                            if vu88:FindFirstChild("NameEsp" .. Number) then
                                vu88["NameEsp" .. Number].TextLabel.Text = vu88.Name .. "   \n" .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - vu88.Position).Magnitude / 3) .. " Distance"
                            else
                                local v89 = Instance.new("BillboardGui", vu88)
                                v89.Name = "NameEsp" .. Number
                                v89.ExtentsOffset = Vector3.new(0, 1, 0)
                                v89.Size = UDim2.new(1, 200, 1, 30)
                                v89.Adornee = vu88
                                v89.AlwaysOnTop = true
                                local v90 = Instance.new("TextLabel", v89)
                                v90.Font = Enum.Font.GothamSemibold
                                v90.FontSize = "Size14"
                                v90.TextWrapped = true
                                v90.Size = UDim2.new(1, 0, 1, 0)
                                v90.TextYAlignment = "Top"
                                v90.BackgroundTransparency = 1
                                v90.TextStrokeTransparency = 0.5
                                if vu88.Name == "Chest1" then
                                    v90.TextColor3 = Color3.fromRGB(109, 109, 109)
                                    v90.Text = "Chest 1" .. " \n" .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - vu88.Position).Magnitude / 3) .. " Distance"
                                end
                                if vu88.Name == "Chest2" then
                                    v90.TextColor3 = Color3.fromRGB(173, 158, 21)
                                    v90.Text = "Chest 2" .. " \n" .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - vu88.Position).Magnitude / 3) .. " Distance"
                                end
                                if vu88.Name == "Chest3" then
                                    v90.TextColor3 = Color3.fromRGB(85, 255, 255)
                                    v90.Text = "Chest 3" .. " \n" .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - vu88.Position).Magnitude / 3) .. " Distance"
                                end
                            end
                        end
                    elseif vu88:FindFirstChild("NameEsp" .. Number) then
                        vu88:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateDevilChams()
		-- upvalues: (ref) vu78
        local v91, v92, v93 = pairs(game.Workspace:GetChildren())
        while true do
            local vu94
            v93, vu94 = v91(v92, v93)
            if v93 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu94, (ref) vu78
                if DevilFruitESP then
                    if string.find(vu94.Name, "Fruit") then
                        if vu94.Handle:FindFirstChild("NameEsp" .. Number) then
                            vu94.Handle["NameEsp" .. Number].TextLabel.Text = vu94.Name .. "   \n" .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - vu94.Handle.Position).Magnitude / 3) .. " Distance"
                        else
                            local v95 = Instance.new("BillboardGui", vu94.Handle)
                            v95.Name = "NameEsp" .. Number
                            v95.ExtentsOffset = Vector3.new(0, 1, 0)
                            v95.Size = UDim2.new(1, 200, 1, 30)
                            v95.Adornee = vu94.Handle
                            v95.AlwaysOnTop = true
                            local v96 = Instance.new("TextLabel", v95)
                            v96.Font = Enum.Font.GothamSemibold
                            v96.FontSize = "Size14"
                            v96.TextWrapped = true
                            v96.Size = UDim2.new(1, 0, 1, 0)
                            v96.TextYAlignment = "Top"
                            v96.BackgroundTransparency = 1
                            v96.TextStrokeTransparency = 0.5
                            v96.TextColor3 = Color3.fromRGB(255, 255, 255)
                            v96.Text = vu94.Name .. " \n" .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - vu94.Handle.Position).Magnitude / 3) .. " Distance"
                        end
                    end
                elseif vu94.Handle:FindFirstChild("NameEsp" .. Number) then
                    vu94.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end)
        end
    end
    function UpdateFlowerChams()
		-- upvalues: (ref) vu78
        local v97, v98, v99 = pairs(game.Workspace:GetChildren())
        while true do
            local vu100
            v99, vu100 = v97(v98, v99)
            if v99 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu100, (ref) vu78
                if vu100.Name == "Flower2" or vu100.Name == "Flower1" then
                    if FlowerESP then
                        if vu100:FindFirstChild("NameEsp" .. Number) then
                            vu100["NameEsp" .. Number].TextLabel.Text = vu100.Name .. "   \n" .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - vu100.Position).Magnitude / 3) .. " Distance"
                        else
                            local v101 = Instance.new("BillboardGui", vu100)
                            v101.Name = "NameEsp" .. Number
                            v101.ExtentsOffset = Vector3.new(0, 1, 0)
                            v101.Size = UDim2.new(1, 200, 1, 30)
                            v101.Adornee = vu100
                            v101.AlwaysOnTop = true
                            local v102 = Instance.new("TextLabel", v101)
                            v102.Font = Enum.Font.GothamSemibold
                            v102.FontSize = "Size14"
                            v102.TextWrapped = true
                            v102.Size = UDim2.new(1, 0, 1, 0)
                            v102.TextYAlignment = "Top"
                            v102.BackgroundTransparency = 1
                            v102.TextStrokeTransparency = 0.5
                            v102.TextColor3 = Color3.fromRGB(255, 0, 0)
                            if vu100.Name == "Flower1" then
                                v102.Text = "Blue Flower" .. " \n" .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - vu100.Position).Magnitude / 3) .. " Distance"
                                v102.TextColor3 = Color3.fromRGB(0, 0, 255)
                            end
                            if vu100.Name == "Flower2" then
                                v102.Text = "Red Flower" .. " \n" .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - vu100.Position).Magnitude / 3) .. " Distance"
                                v102.TextColor3 = Color3.fromRGB(255, 0, 0)
                            end
                        end
                    elseif vu100:FindFirstChild("NameEsp" .. Number) then
                        vu100:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateRealFruitChams()
		-- upvalues: (ref) vu78
        local v103, v104, v105 = pairs(game.Workspace.AppleSpawner:GetChildren())
        while true do
            local v106
            v105, v106 = v103(v104, v105)
            if v105 == nil then
                break
            end
            if v106:IsA("Tool") then
                if RealFruitESP then
                    if v106.Handle:FindFirstChild("NameEsp" .. Number) then
                        v106.Handle["NameEsp" .. Number].TextLabel.Text = v106.Name .. " " .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - v106.Handle.Position).Magnitude / 3) .. " Distance"
                    else
                        local v107 = Instance.new("BillboardGui", v106.Handle)
                        v107.Name = "NameEsp" .. Number
                        v107.ExtentsOffset = Vector3.new(0, 1, 0)
                        v107.Size = UDim2.new(1, 200, 1, 30)
                        v107.Adornee = v106.Handle
                        v107.AlwaysOnTop = true
                        local v108 = Instance.new("TextLabel", v107)
                        v108.Font = Enum.Font.GothamSemibold
                        v108.FontSize = "Size14"
                        v108.TextWrapped = true
                        v108.Size = UDim2.new(1, 0, 1, 0)
                        v108.TextYAlignment = "Top"
                        v108.BackgroundTransparency = 1
                        v108.TextStrokeTransparency = 0.5
                        v108.TextColor3 = Color3.fromRGB(255, 0, 0)
                        v108.Text = v106.Name .. " \n" .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - v106.Handle.Position).Magnitude / 3) .. " Distance"
                    end
                elseif v106.Handle:FindFirstChild("NameEsp" .. Number) then
                    v106.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        end
        local v109, v110, v111 = pairs(game.Workspace.PineappleSpawner:GetChildren())
        while true do
            local v112
            v111, v112 = v109(v110, v111)
            if v111 == nil then
                break
            end
            if v112:IsA("Tool") then
                if RealFruitESP then
                    if v112.Handle:FindFirstChild("NameEsp" .. Number) then
                        v112.Handle["NameEsp" .. Number].TextLabel.Text = v112.Name .. " " .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - v112.Handle.Position).Magnitude / 3) .. " Distance"
                    else
                        local v113 = Instance.new("BillboardGui", v112.Handle)
                        v113.Name = "NameEsp" .. Number
                        v113.ExtentsOffset = Vector3.new(0, 1, 0)
                        v113.Size = UDim2.new(1, 200, 1, 30)
                        v113.Adornee = v112.Handle
                        v113.AlwaysOnTop = true
                        local v114 = Instance.new("TextLabel", v113)
                        v114.Font = Enum.Font.GothamSemibold
                        v114.FontSize = "Size14"
                        v114.TextWrapped = true
                        v114.Size = UDim2.new(1, 0, 1, 0)
                        v114.TextYAlignment = "Top"
                        v114.BackgroundTransparency = 1
                        v114.TextStrokeTransparency = 0.5
                        v114.TextColor3 = Color3.fromRGB(255, 174, 0)
                        v114.Text = v112.Name .. " \n" .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - v112.Handle.Position).Magnitude / 3) .. " Distance"
                    end
                elseif v112.Handle:FindFirstChild("NameEsp" .. Number) then
                    v112.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        end
        local v115, v116, v117 = pairs(game.Workspace.BananaSpawner:GetChildren())
        while true do
            local v118
            v117, v118 = v115(v116, v117)
            if v117 == nil then
                break
            end
            if v118:IsA("Tool") then
                if RealFruitESP then
                    if v118.Handle:FindFirstChild("NameEsp" .. Number) then
                        v118.Handle["NameEsp" .. Number].TextLabel.Text = v118.Name .. " " .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - v118.Handle.Position).Magnitude / 3) .. " Distance"
                    else
                        local v119 = Instance.new("BillboardGui", v118.Handle)
                        v119.Name = "NameEsp" .. Number
                        v119.ExtentsOffset = Vector3.new(0, 1, 0)
                        v119.Size = UDim2.new(1, 200, 1, 30)
                        v119.Adornee = v118.Handle
                        v119.AlwaysOnTop = true
                        local v120 = Instance.new("TextLabel", v119)
                        v120.Font = Enum.Font.GothamSemibold
                        v120.FontSize = "Size14"
                        v120.TextWrapped = true
                        v120.Size = UDim2.new(1, 0, 1, 0)
                        v120.TextYAlignment = "Top"
                        v120.BackgroundTransparency = 1
                        v120.TextStrokeTransparency = 0.5
                        v120.TextColor3 = Color3.fromRGB(251, 255, 0)
                        v120.Text = v118.Name .. " \n" .. vu78((game:GetService("Players").LocalPlayer.Character.Head.Position - v118.Handle.Position).Magnitude / 3) .. " Distance"
                    end
                elseif v118.Handle:FindFirstChild("NameEsp" .. Number) then
                    v118.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                end
            end
        end
    end
    spawn(function()
        while wait() do
            pcall(function()
                if MobESP then
                    local v121, v122, v123 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                    while true do
                        local v124
                        v123, v124 = v121(v122, v123)
                        if v123 == nil then
                            break
                        end
                        if v124:FindFirstChild("HumanoidRootPart") then
                            if not v124:FindFirstChild("MobEap") then
                                local v125 = Instance.new("BillboardGui")
                                local v126 = Instance.new("TextLabel")
                                v125.Parent = v124
                                v125.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                v125.Active = true
                                v125.Name = "MobEap"
                                v125.AlwaysOnTop = true
                                v125.LightInfluence = 1
                                v125.Size = UDim2.new(0, 200, 0, 50)
                                v125.StudsOffset = Vector3.new(0, 2.5, 0)
                                v126.Parent = v125
                                v126.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                v126.BackgroundTransparency = 1
                                v126.Size = UDim2.new(0, 200, 0, 50)
                                v126.Font = Enum.Font.GothamBold
                                v126.TextColor3 = Color3.fromRGB(7, 236, 240)
                                v126.Text.Size = 35
                            end
                            local v127 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v124.HumanoidRootPart.Position).Magnitude)
                            v124.MobEap.TextLabel.Text = v124.Name .. " - " .. v127 .. " Distance"
                        end
                    end
                else
                    local v128, v129, v130 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                    while true do
                        local v131
                        v130, v131 = v128(v129, v130)
                        if v130 == nil then
                            break
                        end
                        if v131:FindFirstChild("MobEap") then
                            v131.MobEap:Destroy()
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if SeaESP then
                    local v132, v133, v134 = pairs(game:GetService("Workspace").SeaBeasts:GetChildren())
                    while true do
                        local v135
                        v134, v135 = v132(v133, v134)
                        if v134 == nil then
                            break
                        end
                        if v135:FindFirstChild("HumanoidRootPart") then
                            if not v135:FindFirstChild("Seaesps") then
                                local v136 = Instance.new("BillboardGui")
                                local v137 = Instance.new("TextLabel")
                                v136.Parent = v135
                                v136.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                v136.Active = true
                                v136.Name = "Seaesps"
                                v136.AlwaysOnTop = true
                                v136.LightInfluence = 1
                                v136.Size = UDim2.new(0, 200, 0, 50)
                                v136.StudsOffset = Vector3.new(0, 2.5, 0)
                                v137.Parent = v136
                                v137.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                v137.BackgroundTransparency = 1
                                v137.Size = UDim2.new(0, 200, 0, 50)
                                v137.Font = Enum.Font.GothamBold
                                v137.TextColor3 = Color3.fromRGB(7, 236, 240)
                                v137.Text.Size = 35
                            end
                            local v138 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v135.HumanoidRootPart.Position).Magnitude)
                            v135.Seaesps.TextLabel.Text = v135.Name .. " - " .. v138 .. " Distance"
                        end
                    end
                else
                    local v139, v140, v141 = pairs(game:GetService("Workspace").SeaBeasts:GetChildren())
                    while true do
                        local v142
                        v141, v142 = v139(v140, v141)
                        if v141 == nil then
                            break
                        end
                        if v142:FindFirstChild("Seaesps") then
                            v142.Seaesps:Destroy()
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if NpcESP then
                    local v143, v144, v145 = pairs(game:GetService("Workspace").NPCs:GetChildren())
                    while true do
                        local v146
                        v145, v146 = v143(v144, v145)
                        if v145 == nil then
                            break
                        end
                        if v146:FindFirstChild("HumanoidRootPart") then
                            if not v146:FindFirstChild("NpcEspes") then
                                local v147 = Instance.new("BillboardGui")
                                local v148 = Instance.new("TextLabel")
                                v147.Parent = v146
                                v147.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                v147.Active = true
                                v147.Name = "NpcEspes"
                                v147.AlwaysOnTop = true
                                v147.LightInfluence = 1
                                v147.Size = UDim2.new(0, 200, 0, 50)
                                v147.StudsOffset = Vector3.new(0, 2.5, 0)
                                v148.Parent = v147
                                v148.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                v148.BackgroundTransparency = 1
                                v148.Size = UDim2.new(0, 200, 0, 50)
                                v148.Font = Enum.Font.GothamBold
                                v148.TextColor3 = Color3.fromRGB(7, 236, 240)
                                v148.Text.Size = 35
                            end
                            local v149 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v146.HumanoidRootPart.Position).Magnitude)
                            v146.NpcEspes.TextLabel.Text = v146.Name .. " - " .. v149 .. " Distance"
                        end
                    end
                else
                    local v150, v151, v152 = pairs(game:GetService("Workspace").NPCs:GetChildren())
                    while true do
                        local v153
                        v152, v153 = v150(v151, v152)
                        if v152 == nil then
                            break
                        end
                        if v153:FindFirstChild("NpcEspes") then
                            v153.NpcEspes:Destroy()
                        end
                    end
                end
            end)
        end
    end)
    function isnil(p154)
        return p154 == nil
    end
    local function vu156(p155)
        return math.floor(tonumber(p155) + 0.5)
    end
    Number = math.random(1, 1000000)
    function UpdateIslandMirageESP()
		-- upvalues: (ref) vu156
        local v157, v158, v159 = pairs(game:GetService("Workspace")._WorldOrigin.Locations:GetChildren())
        while true do
            local vu160
            v159, vu160 = v157(v158, v159)
            if v159 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu160, (ref) vu156
                if MirageIslandESP then
                    if vu160.Name == "Mirage Island" then
                        if vu160:FindFirstChild("NameEsp") then
                            vu160.NameEsp.TextLabel.Text = vu160.Name .. "   \n" .. vu156((game:GetService("Players").LocalPlayer.Character.Head.Position - vu160.Position).Magnitude / 3) .. " M"
                        else
                            local v161 = Instance.new("BillboardGui", vu160)
                            v161.Name = "NameEsp"
                            v161.ExtentsOffset = Vector3.new(0, 1, 0)
                            v161.Size = UDim2.new(1, 200, 1, 30)
                            v161.Adornee = vu160
                            v161.AlwaysOnTop = true
                            local v162 = Instance.new("TextLabel", v161)
                            v162.Font = "Code"
                            v162.FontSize = "Size14"
                            v162.TextWrapped = true
                            v162.Size = UDim2.new(1, 0, 1, 0)
                            v162.TextYAlignment = "Top"
                            v162.BackgroundTransparency = 1
                            v162.TextStrokeTransparency = 0.5
                            v162.TextColor3 = Color3.fromRGB(80, 245, 245)
                        end
                    end
                elseif vu160:FindFirstChild("NameEsp") then
                    vu160:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
    function isnil(p163)
        return p163 == nil
    end
    local function vu165(p164)
        return math.floor(tonumber(p164) + 0.5)
    end
    Number = math.random(1, 1000000)
    function UpdateAfdESP()
		-- upvalues: (ref) vu165
        local v166, v167, v168 = pairs(game:GetService("Workspace").NPCs:GetChildren())
        while true do
            local vu169
            v168, vu169 = v166(v167, v168)
            if v168 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu169, (ref) vu165
                if AfdESP then
                    if vu169.Name == "Advanced Fruit Dealer" then
                        if vu169:FindFirstChild("NameEsp") then
                            vu169.NameEsp.TextLabel.Text = vu169.Name .. "   \n" .. vu165((game:GetService("Players").LocalPlayer.Character.Head.Position - vu169.Position).Magnitude / 3) .. " M"
                        else
                            local v170 = Instance.new("BillboardGui", vu169)
                            v170.Name = "NameEsp"
                            v170.ExtentsOffset = Vector3.new(0, 1, 0)
                            v170.Size = UDim2.new(1, 200, 1, 30)
                            v170.Adornee = vu169
                            v170.AlwaysOnTop = true
                            local v171 = Instance.new("TextLabel", v170)
                            v171.Font = "Code"
                            v171.FontSize = "Size14"
                            v171.TextWrapped = true
                            v171.Size = UDim2.new(1, 0, 1, 0)
                            v171.TextYAlignment = "Top"
                            v171.BackgroundTransparency = 1
                            v171.TextStrokeTransparency = 0.5
                            v171.TextColor3 = Color3.fromRGB(80, 245, 245)
                        end
                    end
                elseif vu169:FindFirstChild("NameEsp") then
                    vu169:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
    function UpdateAuraESP()
		-- upvalues: (ref) vu165
        local v172, v173, v174 = pairs(game:GetService("Workspace").NPCs:GetChildren())
        while true do
            local vu175
            v174, vu175 = v172(v173, v174)
            if v174 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu175, (ref) vu165
                if AuraESP then
                    if vu175.Name == "Master of Enhancement" then
                        if vu175:FindFirstChild("NameEsp") then
                            vu175.NameEsp.TextLabel.Text = vu175.Name .. "   \n" .. vu165((game:GetService("Players").LocalPlayer.Character.Head.Position - vu175.Position).Magnitude / 3) .. " M"
                        else
                            local v176 = Instance.new("BillboardGui", vu175)
                            v176.Name = "NameEsp"
                            v176.ExtentsOffset = Vector3.new(0, 1, 0)
                            v176.Size = UDim2.new(1, 200, 1, 30)
                            v176.Adornee = vu175
                            v176.AlwaysOnTop = true
                            local v177 = Instance.new("TextLabel", v176)
                            v177.Font = "Code"
                            v177.FontSize = "Size14"
                            v177.TextWrapped = true
                            v177.Size = UDim2.new(1, 0, 1, 0)
                            v177.TextYAlignment = "Top"
                            v177.BackgroundTransparency = 1
                            v177.TextStrokeTransparency = 0.5
                            v177.TextColor3 = Color3.fromRGB(80, 245, 245)
                        end
                    end
                elseif vu175:FindFirstChild("NameEsp") then
                    vu175:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
    function UpdateLSDESP()
		-- upvalues: (ref) vu165
        local v178, v179, v180 = pairs(game:GetService("Workspace").NPCs:GetChildren())
        while true do
            local vu181
            v180, vu181 = v178(v179, v180)
            if v180 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu181, (ref) vu165
                if LADESP then
                    if vu181.Name == "Legendary Sword Dealer" then
                        if vu181:FindFirstChild("NameEsp") then
                            vu181.NameEsp.TextLabel.Text = vu181.Name .. "   \n" .. vu165((game:GetService("Players").LocalPlayer.Character.Head.Position - vu181.Position).Magnitude / 3) .. " M"
                        else
                            local v182 = Instance.new("BillboardGui", vu181)
                            v182.Name = "NameEsp"
                            v182.ExtentsOffset = Vector3.new(0, 1, 0)
                            v182.Size = UDim2.new(1, 200, 1, 30)
                            v182.Adornee = vu181
                            v182.AlwaysOnTop = true
                            local v183 = Instance.new("TextLabel", v182)
                            v183.Font = "Code"
                            v183.FontSize = "Size14"
                            v183.TextWrapped = true
                            v183.Size = UDim2.new(1, 0, 1, 0)
                            v183.TextYAlignment = "Top"
                            v183.BackgroundTransparency = 1
                            v183.TextStrokeTransparency = 0.5
                            v183.TextColor3 = Color3.fromRGB(80, 245, 245)
                        end
                    end
                elseif vu181:FindFirstChild("NameEsp") then
                    vu181:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
    function UpdateGeaESP()
		-- upvalues: (ref) vu165
        local v184, v185, v186 = pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren())
        while true do
            local vu187
            v186, vu187 = v184(v185, v186)
            if v186 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu187, (ref) vu165
                if GearESP then
                    if vu187.Name == "MeshPart" then
                        if vu187:FindFirstChild("NameEsp") then
                            vu187.NameEsp.TextLabel.Text = vu187.Name .. "   \n" .. vu165((game:GetService("Players").LocalPlayer.Character.Head.Position - vu187.Position).Magnitude / 3) .. " M"
                        else
                            local v188 = Instance.new("BillboardGui", vu187)
                            v188.Name = "NameEsp"
                            v188.ExtentsOffset = Vector3.new(0, 1, 0)
                            v188.Size = UDim2.new(1, 200, 1, 30)
                            v188.Adornee = vu187
                            v188.AlwaysOnTop = true
                            local v189 = Instance.new("TextLabel", v188)
                            v189.Font = "Code"
                            v189.FontSize = "Size14"
                            v189.TextWrapped = true
                            v189.Size = UDim2.new(1, 0, 1, 0)
                            v189.TextYAlignment = "Top"
                            v189.BackgroundTransparency = 1
                            v189.TextStrokeTransparency = 0.5
                            v189.TextColor3 = Color3.fromRGB(80, 245, 245)
                        end
                    end
                elseif vu187:FindFirstChild("NameEsp") then
                    vu187:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
    function TP2(p190)
        local v191 = (p190.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if v191 >= 1 then
            Speed = 350
        end
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(v191 / Speed, Enum.EasingStyle.Linear), {
            ["CFrame"] = p190
        }):Play()
        if _G.CancelTween2 then
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(v191 / Speed, Enum.EasingStyle.Linear), {
                ["CFrame"] = p190
            }):Cancel()
        end
        _G.Clip2 = true
        wait(v191 / Speed)
        _G.Clip2 = false
    end
    function Tween(pu192)
        Distance = (pu192.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
            game.Players.LocalPlayer.Character.Humanoid.Sit = true
        end
        pcall(function()
			-- upvalues: (ref) pu192
            local v193 = {
                ["CFrame"] = pu192
            }
            tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / 350, Enum.EasingStyle.Linear), v193)
        end)
        tween:Play()
        if Distance <= 350 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pu192
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end
    function TPB(p194)
        local v195 = game:service("TweenService")
        local v196 = TweenInfo.new((game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position - p194.Position).Magnitude / 300, Enum.EasingStyle.Linear)
        tween = v195:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, v196, {
            ["CFrame"] = p194
        })
        tween:Play()
        return {
            ["Stop"] = function(_)
                tween:Cancel()
            end
        }
    end
    function TPP(p197)
        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then
            local v198 = game:service("TweenService")
            local v199 = TweenInfo.new((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - p197.Position).Magnitude / 325, Enum.EasingStyle.Linear)
            tween = v198:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, v199, {
                ["CFrame"] = p197
            })
            tween:Play()
            return {
                ["Stop"] = function(_)
                    tween:Cancel()
                end
            }
        end
        tween:Cancel()
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
        wait(7)
    end
    function EquipTool(p200)
        if game.Players.LocalPlayer.Backpack:FindFirstChild(p200) then
            local v201 = game.Players.LocalPlayer.Backpack:FindFirstChild(p200)
            wait(0.4)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v201)
        end
    end
    spawn(function()
        local v202 = getrawmetatable(game)
        local vu203 = v202.__namecall
        setreadonly(v202, false)
        v202.__namecall = newcclosure(function(...)
			-- upvalues: (ref) vu203
            local v204 = getnamecallmethod()
            local v205 = {
                ...
            }
            if tostring(v204) ~= "FireServer" or (tostring(v205[1]) ~= "RemoteEvent" or (tostring(v205[2]) == "true" or (tostring(v205[2]) == "false" or not _G.UseSkill))) then
                return vu203(...)
            end
            if type(v205[2]) ~= "vector" then
                v205[2] = CFrame.new(PositionSkillMasteryDevilFruit)
            else
                v205[2] = PositionSkillMasteryDevilFruit
            end
            return vu203(unpack(v205))
        end)
    end)
    spawn(function()
        pcall(function()
            while task.wait() do
                local v206, v207, v208 = pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren())
                while true do
                    local v209
                    v208, v209 = v206(v207, v208)
                    if v208 == nil then
                        break
                    end
                    if v209:IsA("Tool") and v209:FindFirstChild("RemoteFunctionShoot") then
                        CurrentEquipGun = v209.Name
                    end
                end
            end
        end)
    end)
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.TeleportIsland or (_G.AutoQuestRace or (_G.AutoBuyBoat or (_G.dao or (_G.AutoMirage or (AutoFarmAcient or (_G.AutoQuestRace or (Auto_Law or (_G.AutoAllBoss or (_G.Autotushita or (_G.AutoHolyTorch or (_G.AutoTerrorshark or (_G.farmpiranya or (_G.DriveMytic or (_G.AutoDoughKingV2 or (PirateShip or (_G.AutoSeaBeast or (_G.AutoNear or (_G.BossRaid or (_G.GrabChest or (AutoCitizen or (_G.Ecto or (AutoEvoRace or (AutoBartilo or (AutoFactory or (BringChestz or (BringFruitz or (_G.AutoLevel or (_G.Clip2 or (AutoFarmNoQuest or (_G.AutoBone or (AutoFarmSelectMonsterQuest or (AutoFarmSelectMonsterNoQuest or (_G.AutoBoss or (AutoFarmBossQuest or (AutoFarmMasGun or (AutoFarmMasDevilFruit or (AutoFarmSelectArea or (AutoSecondSea or (AutoThirdSea or (AutoDeathStep or (AutoSuperhuman or (AutoSharkman or (AutoElectricClaw or (AutoDragonTalon or (AutoGodhuman or (AutoRengoku or (AutoBuddySword or (AutoPole or (AutoHallowSycthe or (AutoCavander or (AutoTushita or (AutoDarkDagger or (_G.CakePrince or (_G.AutoElite or (AutoRainbowHaki or (AutoSaber or (AutoFarmKen or (AutoKenHop or (AutoKenV2 or (KillPlayerMelee or (KillPlayerGun or (KillPlayerFruit or (AutoDungeon or (AutoNextIsland or (AutoAdvanceDungeon or (Musketeer or (RipIndra or (Auto_Serpent_Bow or (AutoTorch or (AutoSoulGuitar or (Auto_Cursed_Dual_Katana or (_G.AutoMaterial or (Auto_Quest_Yama_1 or (Auto_Quest_Yama_2 or (Auto_Quest_Yama_3 or (Auto_Quest_Tushita_1 or (Auto_Quest_Tushita_2 or (Auto_Quest_Tushita_3 or (_G.Factory or (_G.SwanGlasses or (AutoBartilo or (AutoEvoRace or _G.Ecto)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        local v210 = Instance.new("BodyVelocity")
                        v210.Name = "BodyClip"
                        v210.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        v210.MaxForce = Vector3.new(100000, 100000, 100000)
                        v210.Velocity = Vector3.new(0, 0, 0)
                    end
                else
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                end
            end)
        end
    end)
    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                if _G.TeleportIsland or (_G.AutoQuestRace or (_G.AutoBuyBoat or (_G.dao or (AutoFarmAcient or (_G.AutoMirage or (Auto_Law or (_G.AutoQuestRace or (_G.AutoAllBoss or (_G.AutoHolyTorch or (_G.Autotushita or (_G.farmpiranya or (_G.AutoTerrorshark or (_G.AutoNear or (_G.AutoDoughKingV2 or (PirateShip or (_G.AutoSeaBeast or (_G.DriveMytic or (_G.BossRaid or (_G.GrabChest or (AutoCitizen or (_G.Ecto or (AutoEvoRace or (AutoBartilo or (AutoFactory or (BringChestz or (BringFruitz or (_G.AutoLevel or (_G.Clip2 or (AutoFarmNoQuest or (_G.AutoBone or (AutoFarmSelectMonsterQuest or (AutoFarmSelectMonsterNoQuest or (_G.AutoBoss or (AutoFarmBossQuest or (AutoFarmMasGun or (AutoFarmMasDevilFruit or (AutoFarmSelectArea or (AutoSecondSea or (AutoThirdSea or (AutoDeathStep or (AutoSuperhuman or (AutoSharkman or (AutoElectricClaw or (AutoDragonTalon or (AutoGodhuman or (AutoRengoku or (AutoBuddySword or (AutoPole or (AutoHallowSycthe or (AutoCavander or (AutoTushita or (AutoDarkDagger or (_G.CakePrince or (_G.AutoElite or (AutoRainbowHaki or (AutoSaber or (AutoFarmKen or (AutoKenHop or (AutoKenV2 or (KillPlayerMelee or (KillPlayerGun or (KillPlayerFruit or (AutoDungeon or (AutoNextIsland or (AutoAdvanceDungeon or (Musketeer or (RipIndra or (Auto_Serpent_Bow or (AutoTorch or (AutoSoulGuitar or (Auto_Cursed_Dual_Katana or (_G.AutoMaterial or (Auto_Quest_Yama_1 or (Auto_Quest_Yama_2 or (Auto_Quest_Yama_3 or (Auto_Quest_Tushita_1 or (Auto_Quest_Tushita_2 or (Auto_Quest_Tushita_3 or (_G.Factory or (_G.SwanGlasses or (AutoBartilo or (AutoEvoRace or _G.Ecto)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                    local v211, v212, v213 = pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants())
                    while true do
                        local v214
                        v213, v214 = v211(v212, v213)
                        if v213 == nil then
                            break
                        end
                        if v214:IsA("BasePart") then
                            v214.CanCollide = false
                        end
                    end
                end
            end)
        end)
    end)
    function CheckMaterial(p215)
        local v216, v217, v218 = pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory"))
        while true do
            local v219
            v218, v219 = v216(v217, v218)
            if v218 == nil then
                break
            end
            if type(v219) == "table" and (v219.Type == "Material" and v219.Name == p215) then
                return v219.Count
            end
        end
        return 0
    end
    function Click()
        if not _G.FastAttack then
            local v220 = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
            local v221 = debug.getupvalues(v220)[2]
            require(game.ReplicatedStorage.Util.CameraShaker):Stop()
            v221.activeController.attacking = false
            v221.activeController.timeToNextAttack = 0
            v221.activeController.hitboxMagnitude = 180
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
        end
    end
    function GetWeaponInventory(p222)
        local v223, v224, v225 = pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory"))
        while true do
            local v226
            v225, v226 = v223(v224, v225)
            if v225 == nil then
                break
            end
            if type(v226) == "table" and (v226.Type == "Sword" and v226.Name == p222) then
                return true
            end
        end
        return false
    end
    Type11 = 1
    spawn(function()
        while wait(0.1) do
            if Type1 ~= 1 then
                if Type1 == 2 then
                    Pos2 = CFrame.new(- 120, 60, 0)
                end
            else
                Pos2 = CFrame.new(120, 60, 0)
            end
        end
    end)
    spawn(function()
        while wait(0.1) do
            Type1 = 1
            wait(2)
            Type1 = 2
            wait(2)
        end
    end)
    Type1 = 1
    spawn(function()
        while wait(0.1) do
            if Type ~= 1 then
                if Type ~= 2 then
                    if Type ~= 3 then
                        if Type == 4 then
                            Pos = CFrame.new(- 60, 0, 0)
                        end
                    else
                        Pos = CFrame.new(0, 0, - 60)
                    end
                else
                    Pos = CFrame.new(- 30, 0, - 30)
                end
            else
                Pos = CFrame.new(0, 60, 0)
            end
        end
    end)
    spawn(function()
        while wait(0.1) do
            Type = 1
            wait(1)
            Type = 2
            wait(1)
            Type = 3
            wait(1)
            Type = 4
            wait(1)
        end
    end)
    function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
    function BTP(p227)
        repeat
            wait(0.5)
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p227
            task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p227
        until (p227.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
    end
    function BTP(pu228)
        pcall(function()
			-- upvalues: (ref) pu228
            if (pu228.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and (not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0) then
                if NQuest ~= "FishmanQuest" then
                    if Mon ~= "God\'s Guard" then
                        if NQuest ~= "SkyExp1Quest" then
                            if NQuest ~= "ShipQuest1" then
                                if NQuest ~= "ShipQuest2" then
                                    if NQuest ~= "FrostQuest" then
                                        Mix_Farm = true
                                        repeat
                                            wait(0.5)
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pu228
                                            wait(0.05)
                                            game.Players.LocalPlayer.Character.Head:Destroy()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pu228
                                        until (pu228.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
                                        wait()
                                        Mix_Farm = nil
                                    else
                                        Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                        wait()
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 6508.5581054688, 89.034996032715, - 132.83953857422))
                                    end
                                else
                                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    wait()
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                end
                            else
                                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                wait()
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                            end
                        else
                            Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7894.6176757813, 5547.1416015625, - 380.29119873047))
                        end
                    else
                        Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 4607.82275, 872.54248, - 1667.55688))
                    end
                else
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            end
        end)
    end
    local v229 = Instance.new("ScreenGui")
    local vu230 = Instance.new("ImageButton")
    local v231 = Instance.new("UICorner")
    local vu232 = Instance.new("UIGradient")
    local v233 = Instance.new("UIAspectRatioConstraint")
    v229.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    v229.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    vu230.Parent = v229
    vu230.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu230.Position = UDim2.new(0.10615778, 0, 0.16217947, 0)
    vu230.Size = UDim2.new(0.0627121851, 0, 0.107579626, 0)
    vu230.Image = "rbxassetid://12258186601"
    v231.CornerRadius = UDim.new(0, 30)
    v231.Parent = vu230
    vu232.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(244, 0, 0)),
        ColorSequenceKeypoint.new(0.32, Color3.fromRGB(146, 255, 251)),
        ColorSequenceKeypoint.new(0.65, Color3.fromRGB(180, 255, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(96, 255, 231))
    })
    vu232.Parent = vu230
    v233.Parent = vu230
    v233.AspectRatio = 0.988
    local function v237()
		-- upvalues: (ref) vu232
        local v234 = Instance.new("LocalScript", vu232)
        local v235 = game:GetService("TweenService")
        local v236 = TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.In, - 1)
        v235:Create(v234.Parent, v236, {
            ["Rotation"] = 360
        }):Play()
    end
    coroutine.wrap(v237)()
    local function v251()
		-- upvalues: (ref) vu230
        local v238 = Instance.new("LocalScript", vu230)
        local v239 = game:GetService("UserInputService")
        local vu240 = v238.Parent
        local vu241 = nil
        local vu242 = 0.25
        local vu243 = nil
        local vu244 = nil
        local function vu248(p245)
			-- upvalues: (ref) vu243, (ref) vu244, (ref) vu240, (ref) vu242
            local v246 = p245.Position - vu243
            local v247 = UDim2.new(vu244.X.Scale, vu244.X.Offset + v246.X, vu244.Y.Scale, vu244.Y.Offset + v246.Y)
            game:GetService("TweenService"):Create(vu240, TweenInfo.new(vu242), {
                ["Position"] = v247
            }):Play()
        end
        vu240.InputBegan:Connect(function(pu249)
			-- upvalues: (ref) vu241, (ref) vu243, (ref) vu244, (ref) vu240
            if pu249.UserInputType == Enum.UserInputType.MouseButton1 or pu249.UserInputType == Enum.UserInputType.Touch then
                vu241 = true
                vu243 = pu249.Position
                vu244 = vu240.Position
                pu249.Changed:Connect(function()
					-- upvalues: (ref) pu249, (ref) vu241
                    if pu249.UserInputState == Enum.UserInputState.End then
                        vu241 = false
                    end
                end)
            end
        end)
        v239.InputChanged:Connect(function(p250)
			-- upvalues: (ref) vu241, (ref) vu248
            if (p250.UserInputType == Enum.UserInputType.MouseMovement or p250.UserInputType == Enum.UserInputType.Touch) and vu241 then
                vu248(p250)
            end
        end)
        v238.Parent.MouseButton1Click:Connect(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
        end)
    end
    coroutine.wrap(v251)()
    local vu252 = 0
    local vu253 = 60
    local vu254 = 0
    v3.Main:AddParagraph({
        ["Title"] = "Join Discord Server",
        ["Content"] = "test"
    })
    v3.Main:AddParagraph({
        ["Title"] = "Farming",
        ["Content"] = "Auto Farm"
    })
    local v255 = v3.Main:AddDropdown("DropdownSelectWeapon", {
        ["Title"] = "Dropdown",
        ["Values"] = {
            "Melee",
            "Sword",
            "Blox Fruit"
        },
        ["Multi"] = false,
        ["Default"] = 1
    })
    v255:SetValue("Melee")
    v255:OnChanged(function(p256)
        ChooseWeapon = p256
    end)
    task.spawn(function()
        while wait() do
            pcall(function()
                if ChooseWeapon ~= "Melee" then
                    if ChooseWeapon ~= "Sword" then
                        if ChooseWeapon ~= " Blox Fruit" then
                            local v257, v258, v259 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
                            while true do
                                local v260
                                v259, v260 = v257(v258, v259)
                                if v259 == nil then
                                    break
                                end
                                if v260.ToolTip == "Melee" and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v260.Name)) then
                                    SelectWeapon = v260.Name
                                end
                            end
                        else
                            local v261, v262, v263 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
                            while true do
                                local v264
                                v263, v264 = v261(v262, v263)
                                if v263 == nil then
                                    break
                                end
                                if v264.ToolTip == "Blox Fruit" and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v264.Name)) then
                                    SelectWeapon = v264.Name
                                end
                            end
                        end
                    else
                        local v265, v266, v267 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
                        while true do
                            local v268
                            v267, v268 = v265(v266, v267)
                            if v267 == nil then
                                break
                            end
                            if v268.ToolTip == "Sword" and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v268.Name)) then
                                SelectWeapon = v268.Name
                            end
                        end
                    end
                else
                    local v269, v270, v271 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
                    while true do
                        local v272
                        v271, v272 = v269(v270, v271)
                        if v271 == nil then
                            break
                        end
                        if v272.ToolTip == "Melee" and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v272.Name)) then
                            SelectWeapon = v272.Name
                        end
                    end
                end
            end)
        end
    end)
    v3.Main:AddToggle("ToggleAutoFarmLevel", {
        ["Title"] = "Auto Farm Level",
        ["Default"] = false
    }):OnChanged(function(p273)
        _G.AutoLevel = p273
    end)
    v4.ToggleAutoFarmLevel:SetValue(false)
    spawn(function()
		-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
        while task.wait() do
            if _G.AutoLevel then
                pcall(function()
					-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                    CheckLevel()
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            local v274, v275, v276 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                            while true do
                                local v277
                                v276, v277 = v274(v275, v276)
                                if v276 == nil then
                                    break
                                end
                                if v277:FindFirstChild("Humanoid") and (v277:FindFirstChild("HumanoidRootPart") and (v277.Humanoid.Health > 0 and v277.Name == Ms)) then
                                    repeat
                                        game:GetService("RunService").Heartbeat:wait()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v277.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                        v277.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v277.HumanoidRootPart.Transparency = 1
                                        v277.Humanoid.JumpPower = 0
                                        v277.Humanoid.WalkSpeed = 0
                                        v277.HumanoidRootPart.CanCollide = false
                                        FarmPos = v277.HumanoidRootPart.CFrame
                                        MonFarm = v277.Name
                                        Click()
                                    until not _G.AutoLevel or (not v277.Parent or v277.Humanoid.Health <= 0) or (not game:GetService("Workspace").Enemies:FindFirstChild(v277.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false)
                                end
                            end
                            local v278, v279, v280 = pairs(game:GetService("Workspace")._WorldOrigin.EnemySpawns:GetChildren())
                            while true do
                                local v281
                                v280, v281 = v278(v279, v280)
                                if v280 == nil then
                                    break
                                end
                                if string.find(v281.Name, NameMon) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v281.Position).Magnitude >= 10 then
                                    Tween(v281.CFrame * CFrame.new(vu252, vu253, vu254))
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude <= 2500 then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2500 then
                                    Tween(CFrameQ)
                                end
                            else
                                BTP(CFrameQ)
                            end
                        else
                            Tween(CFrameQ)
                        end
                        if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                        end
                    end
                    Tween(v.HumanoidRootPart.CFrame * Pos2)
                end)
            end
        end
    end)
    if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
        game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
    end
    if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
        game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
    end
    v3.Main:AddToggle("ToggleMobAura", {
        ["Title"] = "Auto Near Mob",
        ["Default"] = false
    }):OnChanged(function(p282)
        _G.AutoNear = p282
    end)
    v4.ToggleMobAura:SetValue(false)
    spawn(function()
        while wait(0.1) do
            if _G.AutoNear then
                pcall(function()
                    local v283, v284, v285 = pairs(game.Workspace.Enemies:GetChildren())
                    while true do
                        local v286
                        v285, v286 = v283(v284, v285)
                        if v285 == nil then
                            break
                        end
                        if v286:FindFirstChild("Humanoid") and (v286:FindFirstChild("HumanoidRootPart") and (v286.Humanoid.Health > 0 and (v286.Name and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v286:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000))) then
                            repeat
                                task.wait(0.1)
                                AutoHaki()
                                EquipTool(SelectWeapon)
                                Tween(v286.HumanoidRootPart.CFrame * Pos)
                                v286.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                v286.HumanoidRootPart.Transparency = 1
                                v286.Humanoid.JumpPower = 0
                                v286.Humanoid.WalkSpeed = 0
                                v286.HumanoidRootPart.CanCollide = false
                                FarmPos = v286.HumanoidRootPart.CFrame
                                MonFarm = v286.Name
                                Click()
                            until not _G.AutoNear or (not v286.Parent or v286.Humanoid.Health <= 0) or not game.Workspace.Enemies:FindFirstChild(v286.Name)
                        end
                    end
                end)
            end
        end
    end)
    v3.Main:AddButton({
        ["Title"] = "Redeem All Code",
        ["Description"] = "Redeem all code x2 exp",
        ["Callback"] = function()
            UseCode()
        end
    })
    function UseCode(p287)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(p287)
    end
    UseCode("Sub2Fer999")
    UseCode("Enyu_is_Pro")
    UseCode("Magicbus")
    UseCode("JCWK")
    UseCode("Starcodeheo")
    UseCode("Bluxxy")
    UseCode("THEGREATACE")
    UseCode("SUB2GAMERROBOT_EXP1")
    UseCode("StrawHatMaine")
    UseCode("Sub2OfficialNoobie")
    UseCode("SUB2NOOBMASTER123")
    UseCode("Sub2Daigrock")
    UseCode("Axiore")
    UseCode("TantaiGaming")
    UseCode("STRAWHATMAINE")
    v3.Main:AddButton({
        ["Title"] = "Fps Booster",
        ["Description"] = "Boost your fps",
        ["Callback"] = function()
            FPSBooster()
        end
    })
    function FPSBooster()
        local v288 = game
        local v289 = v288.Workspace
        local v290 = v288.Lighting
        local v291 = v289.Terrain
        sethiddenproperty(v290, "Technology", 2)
        sethiddenproperty(v291, "Decoration", false)
        v291.WaterWaveSize = 0
        v291.WaterWaveSpeed = 0
        v291.WaterReflectance = 0
        v291.WaterTransparency = 0
        v290.GlobalShadows = false
        v290.FogEnd = 9000000000
        v290.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        local v292, v293, v294 = pairs(v288:GetDescendants())
        local v295 = true
        while true do
            local v296
            v294, v296 = v292(v293, v294)
            if v294 == nil then
                break
            end
            if v296:IsA("Part") or (v296:IsA("Union") or (v296:IsA("CornerWedgePart") or v296:IsA("TrussPart"))) then
                v296.Material = "Plastic"
                v296.Reflectance = 0
            elseif v296:IsA("Decal") or v296:IsA("Texture") and v295 then
                v296.Transparency = 1
            elseif v296:IsA("ParticleEmitter") or v296:IsA("Trail") then
                v296.Lifetime = NumberRange.new(0)
            elseif v296:IsA("Explosion") then
                v296.BlastPressure = 1
                v296.BlastRadius = 1
            elseif v296:IsA("Fire") or (v296:IsA("SpotLight") or (v296:IsA("Smoke") or v296:IsA("Sparkles"))) then
                v296.Enabled = false
            elseif v296:IsA("MeshPart") then
                v296.Material = "Plastic"
                v296.Reflectance = 0
                v296.TextureID = 1.0385902758728956e16
            end
        end
        local v297, v298, v299 = pairs(v290:GetChildren())
        while true do
            local v300
            v299, v300 = v297(v298, v299)
            if v299 == nil then
                break
            end
            if v300:IsA("BlurEffect") or (v300:IsA("SunRaysEffect") or (v300:IsA("ColorCorrectionEffect") or (v300:IsA("BloomEffect") or v300:IsA("DepthOfFieldEffect")))) then
                v300.Enabled = false
            end
        end
    end
    v3.Main:AddParagraph({
        ["Title"] = "Mastery Farm",
        ["Content"] = "Auto farm your mastery"
    })
    local v301 = v3.Main:AddDropdown("DropdownMastery", {
        ["Title"] = "Farm Mode",
        ["Values"] = {
            "Level",
            "Near Mobs"
        },
        ["Multi"] = false,
        ["Default"] = 1
    })
    v301:SetValue("Level")
    v301:OnChanged(function(p302)
        TypeMastery = p302
    end)
    v3.Main:AddToggle("ToggleMasteryFruit", {
        ["Title"] = "Auto BF Mastery",
        ["Default"] = false
    }):OnChanged(function(p303)
        AutoFarmMasDevilFruit = p303
    end)
    v4.ToggleMasteryFruit:SetValue(false)
    v3.Main:AddToggle("ToggleMasteryGun", {
        ["Title"] = "Auto Gun Mastery",
        ["Default"] = false
    }):OnChanged(function(p304)
        AutoFarmMasGun = p304
    end)
    v4.ToggleMasteryGun:SetValue(false)
    KillPercent = 40
    local v306 = v3.Main:AddSlider("SliderHealt", {
        ["Title"] = "Health %",
        ["Description"] = "Health for mastery",
        ["Default"] = 40,
        ["Min"] = 0,
        ["Max"] = 100,
        ["Rounding"] = 1,
        ["Callback"] = function(p305)
            KillPercent = p305
        end
    })
    v306:OnChanged(function(p307)
        KillPercent = p307
    end)
    v306:SetValue(40)
    spawn(function()
		-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
        while task.wait(0.1) do
            if AutoFarmMasGun and TypeMastery == "Level" then
                pcall(function()
					-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                    CheckLevel(SelectMonster)
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        Tween(CFrameQ)
                        if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                        end
						-- goto l8
                    end
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
						-- ::l8::
                        return
                    end
                    local v308, v309, v310 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                    while true do
                        local v311
                        v310, v311 = v308(v309, v310)
                        if v310 == nil then
                            UseSkillGun = false
                            Tween(CFrameQ)
							-- goto l8
                        end
                        if v311:FindFirstChild("Humanoid") and (v311:FindFirstChild("HumanoidRootPart") and v311.Name == Ms) then
							-- ::l20::
                            if true then
                                game:GetService("RunService").Heartbeat:wait()
                                if v311.Humanoid.Health > v311.Humanoid.MaxHealth * KillPercent / 100 then
                                    UseSkillGun = false
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Click()
                                    Tween(v311.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                    v311.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v311.HumanoidRootPart.Transparency = 1
                                    v311.Humanoid.JumpPower = 0
                                    v311.Humanoid.WalkSpeed = 0
                                    v311.HumanoidRootPart.CanCollide = false
                                    Click()
                                    FarmPos = v311.HumanoidRootPart.CFrame
                                    MonFarm = v311.Name
                                else
                                    EquipTool(CurrentEquipGun)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v311.HumanoidRootPart.CFrame * Pos
                                    game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                                    UseSkillGun = true
                                end
                            end
                            if AutoFarmMasGun and (v311.Parent and v311.Humanoid.Health > 0) and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ~= false and (game:GetService("Workspace").Enemies:FindFirstChild(v311.Name) and not TypeMastery ~= "Queat")) then
								-- goto l20
                            end
                            UseSkillGun = false
                        end
                    end
                end)
            elseif AutoFarmMasGun and TypeMastery == "No Quest" then
                pcall(function()
					-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
					-- block 38
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude <= 2000 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 2000 then
                                Tween(CFrameMon)
                            end
                        else
                            BTP(CFrameMon)
                        end
                    else
                        Tween(CFrameMon)
                    end
                    CheckLevel()
                    if not game.Workspace.Enemies:FindFirstChild(Ms) then
                        UseSkillGun = false
                        Tween(CFrameMon)
						-- ::l36::
                        return
                    end
                    local v312, v313, v314 = pairs(game.Workspace.Enemies:GetChildren())
					-- ::l13::
                    local v315
                    v314, v315 = v312(v313, v314)
                    if v314 == nil then
						-- goto l36
                    end
                    if v315.Name ~= Ms or not (v315:FindFirstChild("Humanoid") and v315:FindFirstChild("HumanoidRootPart")) then
						-- goto l13
                    else
						-- goto l11
                    end
					-- ::l11::
					-- ::l12::
					-- ::l20::
                    if true then
                        game:GetService("RunService").Heartbeat:wait()
                        if v315.Humanoid.Health > v315.Humanoid.MaxHealth * KillPercent / 100 then
                            UseSkillGun = false
                            AutoHaki()
                            EquipTool(SelectWeapon)
                            Tween(v315.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                            v315.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                            v315.HumanoidRootPart.Transparency = 1
                            v315.Humanoid.JumpPower = 0
                            v315.Humanoid.WalkSpeed = 0
                            v315.HumanoidRootPart.CanCollide = false
                            FarmPos = v315.HumanoidRootPart.CFrame
                            MonFarm = v315.Name
                        else
                            EquipTool(CurrentEquipGun)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v315.HumanoidRootPart.CFrame * Pos
                            game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                            UseSkillGun = true
                        end
                    end
                    if AutoFarmMasGun and (v315.Parent and v315.Humanoid.Health > 0) and (game:GetService("Workspace").Enemies:FindFirstChild(v315.Name) and not TypeMastery ~= "No Quest") then
						-- goto l20
                    end
					-- goto l13
                end)
            elseif AutoFarmMasGun and TypeMastery == "Near Mobs" then
                pcall(function()
					-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                    local v316, v317, v318 = pairs(game.Workspace.Enemies:GetChildren())
                    while true do
                        local v319
                        v318, v319 = v316(v317, v318)
                        if v318 == nil then
                            return
                        end
                        if v319.Name and (v319:FindFirstChild("Humanoid") and (v319:FindFirstChild("HumanoidRootPart") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v319:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 2000)) then
                            repeat
                                if true then
                                    game:GetService("RunService").Heartbeat:wait()
                                    if v319.Humanoid.Health > v319.Humanoid.MaxHealth * KillPercent / 100 then
                                        UseSkillGun = false
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v319.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                        v319.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                        v319.HumanoidRootPart.Transparency = 1
                                        v319.Humanoid.JumpPower = 0
                                        v319.Humanoid.WalkSpeed = 0
                                        v319.HumanoidRootPart.CanCollide = false
                                        Click()
                                        FarmPos = v319.HumanoidRootPart.CFrame
                                        MonFarm = v319.Name
                                        Click()
                                    else
                                        EquipTool(CurrentEquipGun)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v319.HumanoidRootPart.CFrame * Pos
                                        game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                                        UseSkillGun = true
                                    end
                                end
                            until not AutoFarmMasGun or (not MasteryType == "Near Mobs" or (not v319.Parent or (v319.Humanoid.Health <= 0 or not TypeMastery == "Near Mobs")))
                            UseSkillGun = false
                        end
                    end
                end)
            elseif AutoFarmMasGun and TypeMastery == "Boss" then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        pcall(function()
							-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
							-- block 31
                            CheckBossQuest()
                            if not game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                                UseSkillGun = false
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss).HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
								-- ::l29::
                                return
                            end
                            local v320, v321, v322 = pairs(game:GetService("Workspace").Enemies:GetChildren())
							-- goto l4
							-- ::l3::
							-- goto l11
							-- ::l11::
                            if true then
                                game:GetService("RunService").Heartbeat:wait()
                                if v323.Humanoid.Health > v323.Humanoid.MaxHealth * KillPercent / 100 then
                                    UseSkillGun = false
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v323.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                    v323.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v323.HumanoidRootPart.Transparency = 1
                                    v323.Humanoid.JumpPower = 0
                                    v323.Humanoid.WalkSpeed = 0
                                    v323.HumanoidRootPart.CanCollide = false
                                    FarmPos = v323.HumanoidRootPart.CFrame
                                    MonFarm = v323.Name
                                else
                                    EquipTool(CurrentEquipGun)
                                    Tween(v323.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                    game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                                    UseSkillGun = true
                                end
                            end
                            if AutoFarmMasGun and (not TypeMastery ~= "Boss" and (v323.Parent and (v323.Humanoid.Health > 0 and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible ~= false))) and game:GetService("Workspace").Enemies:FindFirstChild(v323.Name) then
								-- goto l11
                            end
							-- ::l4::
                            local v323
                            v322, v323 = v320(v321, v322)
                            if v322 == nil then
								-- goto l29
                            end
                            if v323.Name ~= selectBoss or not (v323:FindFirstChild("Humanoid") and v323:FindFirstChild("HumanoidRootPart")) then
								-- goto l4
                            else
								-- goto l3
                            end
                        end)
                    end
                else
                    CheckBossQuest()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude <= 2000 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude < 2000 then
                                Tween(CFrameQBoss)
                            end
                        else
                            BTP(CFrameQBoss)
                            wait(3)
                        end
                    else
                        Tween(CFrameQBoss)
                    end
                    if (CFrameQBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
                    end
                end
            end
        end
    end)
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if UseSkillGun then
                pcall(function()
                    local v324, v325, v326 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                    while true do
                        local v327
                        v326, v327 = v324(v325, v326)
                        if v326 == nil then
                            break
                        end
                        if v327.Name == MonFarm then
                            game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].RemoteFunctionShoot:InvokeServer(v327.HumanoidRootPart.Position, v327.HumanoidRootPart)
                            ClickCamera()
                        end
                    end
                end)
            end
        end)
    end)
    spawn(function()
        while wait(1) do
            if UseSkillGun then
                pcall(function()
                    CheckLevel()
                    local v328, v329, v330 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                    while true do
                        local v331
                        v330, v331 = v328(v329, v330)
                        if v330 == nil then
                            break
                        end
                        if SkillZ then
                            local v332 = {
                                FarmPosMasteryGun.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v332))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                        end
                        if SkillX then
                            local v333 = {
                                FarmPosMasteryGun.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v333))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        pcall(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                if UseSkillGun then
                    local v334 = {
                        FarmPosMasteryGun.Position
                    }
                    game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.Gun.Value].RemoteEvent:FireServer(unpack(v334))
                end
            end)
        end)
    end)
    spawn(function()
		-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
        while task.wait(1) do
            if _G.UseSkill then
                pcall(function()
					-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
					-- block 48
                    if not _G.UseSkill then
						-- ::l3::
                        return
                    end
                    local v335, v336, v337 = pairs(game:GetService("Workspace").Enemies:GetChildren())
					-- ::l4::
                    local v338
                    v337, v338 = v335(v336, v337)
                    if v337 == nil then
						-- goto l3
                    end
                    if v338.Name ~= MonFarm or (not v338:FindFirstChild("Humanoid") or (not v338:FindFirstChild("HumanoidRootPart") or v338.Humanoid.Health > v338.Humanoid.MaxHealth * KillPercent / 100)) then
						-- goto l4
                    end
					-- ::l13::
                    game:GetService("RunService").Heartbeat:wait()
                    EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
                    Tween(v338.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                    PositionSkillMasteryDevilFruit = v338.HumanoidRootPart.Position
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit
                        local v339 = game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value
                        if SkillZ and 1 <= v339 then
                            game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                            wait(0.1)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                        end
                        if SkillX and 2 <= v339 then
                            game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                            wait(0.2)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                        end
                        if SkillC and 3 <= v339 then
                            game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
                            wait(0.3)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                        end
                        if SkillV and 4 <= v339 then
                            game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
                            wait(0.4)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
                        end
                        if SkillF and 5 <= v339 then
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
                            wait(0.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
                        end
                    end
                    if AutoFarmMasDevilFruit and (_G.UseSkill and v338.Humanoid.Health ~= 0) then
						-- goto l13
                    else
						-- goto l3
                    end
					-- ::l3::
					-- ::l2::
					-- goto l4
                end)
            end
        end
    end)
    spawn(function()
		-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
        while task.wait(0.1) do
            if AutoFarmMasDevilFruit and TypeMastery == "Level" then
                pcall(function()
					-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                    CheckLevel(SelectMonster)
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude <= 2500 then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2500 then
                                    Tween(CFrameQ)
                                end
                            else
                                BTP(CFrameQ)
                                wait(0.2)
                            end
                        else
                            Tween(CFrameQ)
                        end
                        if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                        end
						-- goto l17
                    end
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
						-- ::l17::
                        return
                    end
                    local v340, v341, v342 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                    while true do
                        local v343
                        v342, v343 = v340(v341, v342)
                        if v342 == nil then
                            _G.UseSkill = false
                            Tween(Q)
							-- goto l17
                        end
                        if v343:FindFirstChild("Humanoid") and (v343:FindFirstChild("HumanoidRootPart") and v343.Name == Ms) then
							-- ::l29::
                            if true then
                                game:GetService("RunService").Heartbeat:wait()
                                if v343.Humanoid.Health > v343.Humanoid.MaxHealth * KillPercent / 100 then
                                    _G.UseSkill = false
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Click()
                                    Tween(v343.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                    v343.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v343.HumanoidRootPart.Transparency = 1
                                    v343.Humanoid.JumpPower = 0
                                    v343.Humanoid.WalkSpeed = 0
                                    v343.HumanoidRootPart.CanCollide = false
                                    Click()
                                    FarmPos = v343.HumanoidRootPart.CFrame
                                    MonFarm = v343.Name
                                else
                                    _G.UseSkill = true
                                end
                            end
                            if AutoFarmMasDevilFruit and (v343.Parent and v343.Humanoid.Health ~= 0) and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ~= false and (game:GetService("Workspace").Enemies:FindFirstChild(v343.Name) and not TypeMastery ~= "Level")) then
								-- goto l29
                            end
                            _G.UseSkill = false
                        end
                    end
                end)
            elseif AutoFarmMasDevilFruit and TypeMastery == "No Quest" then
                pcall(function()
					-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
					-- block 39
                    CheckLevel()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude <= 2000 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 2000 then
                                Tween(CFrameMon)
                            end
                        else
                            BTP(CFrameMon)
                        end
                    else
                        Tween(CFrameMon)
                    end
                    if not game.Workspace.Enemies:FindFirstChild(Ms) then
                        _G.UseSkill = false
                        Tween(CFrameMon)
						-- ::l37::
                        return
                    end
                    local v344, v345, v346 = pairs(game.Workspace.Enemies:GetChildren())
					-- goto l13
					-- ::l20::
                    if true then
                        game:GetService("RunService").Heartbeat:wait()
                        if v347.Humanoid.Health > v347.Humanoid.MaxHealth * KillPercent / 100 then
                            _G.UseSkill = false
                            AutoHaki()
                            EquipTool(SelectWeapon)
                            Tween(v347.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                            v347.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                            v347.HumanoidRootPart.Transparency = 1
                            v347.Humanoid.JumpPower = 0
                            v347.Humanoid.WalkSpeed = 0
                            v347.HumanoidRootPart.CanCollide = false
                            FarmPos = v347.HumanoidRootPart.CFrame
                            MonFarm = v347.Name
                        else
                            _G.UseSkill = true
                        end
                    end
                    if AutoFarmMasDevilFruit and (v347.Parent and v347.Humanoid.Health ~= 0) and (game:GetService("Workspace").Enemies:FindFirstChild(v347.Name) and not TypeMastery ~= "No Quest") then
						-- goto l20
                    else
						-- goto l27
                    end
					-- ::l27::
                    _G.UseSkill = false
					-- ::l13::
                    local v347
                    v346, v347 = v344(v345, v346)
                    if v346 == nil then
						-- goto l37
                    end
                    if v347.Name ~= Ms or not (v347:FindFirstChild("Humanoid") and v347:FindFirstChild("HumanoidRootPart")) then
						-- goto l13
                    else
						-- goto l20
                    end
                end)
            elseif AutoFarmMasDevilFruit and TypeMastery == "Near Mobs" then
                pcall(function()
					-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                    local v348, v349, v350 = pairs(game.Workspace.Enemies:GetChildren())
                    while true do
                        local v351
                        v350, v351 = v348(v349, v350)
                        if v350 == nil then
                            return
                        end
                        if v351.Name and (v351:FindFirstChild("Humanoid") and (v351:FindFirstChild("HumanoidRootPart") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v351:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 2000)) then
                            repeat
                                if true then
                                    game:GetService("RunService").Heartbeat:wait()
                                    if v351.Humanoid.Health > v351.Humanoid.MaxHealth * KillPercent / 100 then
                                        _G.UseSkill = false
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v351.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                        v351.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                        v351.HumanoidRootPart.Transparency = 1
                                        v351.Humanoid.JumpPower = 0
                                        v351.Humanoid.WalkSpeed = 0
                                        v351.HumanoidRootPart.CanCollide = false
                                        FarmPos = v351.HumanoidRootPart.CFrame
                                        MonFarm = v351.Name
                                        Click()
                                    else
                                        _G.UseSkill = true
                                    end
                                end
                            until not AutoFarmMasDevilFruit or (not MasteryType == "Nearest" or (not v351.Parent or (v351.Humanoid.Health == 0 or not TypeMastery == "Nearest")))
                            _G.UseSkill = false
                        end
                    end
                end)
            elseif AutoFarmMasDevilFruit and TypeMastery == "Boss" then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        pcall(function()
							-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
							-- block 31
                            CheckBossQuest()
                            if not game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                                _G.UseSkill = false
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss).HumanoidRootPart.CFrame * PosY)
								-- ::l29::
                                return
                            end
                            local v352, v353, v354 = pairs(game:GetService("Workspace").Enemies:GetChildren())
							-- goto l4
							-- ::l3::
							-- goto l11
							-- ::l11::
                            if true then
                                game:GetService("RunService").Heartbeat:wait()
                                if v355.Humanoid.Health > v355.Humanoid.MaxHealth * KillPercent / 100 then
                                    _G.UseSkill = false
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v355.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                    v355.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v355.HumanoidRootPart.Transparency = 1
                                    v355.Humanoid.JumpPower = 0
                                    v355.Humanoid.WalkSpeed = 0
                                    v355.HumanoidRootPart.CanCollide = false
                                    FarmPos = v355.HumanoidRootPart.CFrame
                                    MonFarm = v355.Name
                                else
                                    _G.UseSkill = true
                                end
                            end
                            if AutoFarmMasDevilFruit and (not TypeMastery ~= "Boss" and (v355.Parent and (v355.Humanoid.Health ~= 0 and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible ~= false))) and game:GetService("Workspace").Enemies:FindFirstChild(v355.Name) then
								-- goto l11
                            end
							-- ::l4::
                            local v355
                            v354, v355 = v352(v353, v354)
                            if v354 == nil then
								-- goto l29
                            end
                            if v355.Name ~= selectBoss or not (v355:FindFirstChild("Humanoid") and v355:FindFirstChild("HumanoidRootPart")) then
								-- goto l4
                            else
								-- goto l3
                            end
                        end)
                    end
                else
                    CheckBossQuest()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude <= 2000 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude < 2000 then
                                Tween(CFrameQBoss)
                            end
                        else
                            BTP(CFrameQBoss)
                            wait(3)
                        end
                    else
                        Tween(CFrameQBoss)
                    end
                    if (CFrameQBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
                    end
                end
            end
        end
    end)
    v3.Main:AddParagraph({
        ["Title"] = "Misc Farm",
        ["Content"] = "Bone & Cake Prince & "
    })
    v3.Main:AddToggle("ToggleBone", {
        ["Title"] = "Auto Farm Bone",
        ["Default"] = false
    }):OnChanged(function(p356)
        _G.AutoBone = p356
    end)
    v4.ToggleBone:SetValue(false)
    local vu357 = CFrame.new(- 9515.75, 174.8521728515625, 6079.40625)
    spawn(function()
		-- upvalues: (ref) vu357
        while wait() do
            if _G.AutoBone then
                pcall(function()
					-- upvalues: (ref) vu357
                    local v358 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(v358, "Demonic Soul") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        if BypassTP then
                            wait()
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - vu357.Position).Magnitude <= 2500 then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - vu357.Position).Magnitude < 2500 then
                                    Tween(vu357)
                                end
                            else
                                BTP(vu357)
                            end
                        else
                            Tween(vu357)
                        end
                        if (vu357.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1)
                        end
						-- goto l18
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy"))) then
                            local v359, v360, v361 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                            while true do
                                local v362
                                v361, v362 = v359(v360, v361)
                                if v361 == nil then
                                    break
                                end
                                if v362:FindFirstChild("HumanoidRootPart") and (v362:FindFirstChild("Humanoid") and (v362.Humanoid.Health > 0 and (v362.Name == "Reborn Skeleton" or (v362.Name == "Living Zombie" or (v362.Name == "Demonic Soul" or v362.Name == "Posessed Mummy"))))) then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                        task.wait()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v362.HumanoidRootPart.CFrame * Pos)
                                        v362.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                        v362.HumanoidRootPart.Transparency = 1
                                        v362.Humanoid.JumpPower = 0
                                        v362.Humanoid.WalkSpeed = 0
                                        v362.HumanoidRootPart.CanCollide = false
                                        FarmPos = v362.HumanoidRootPart.CFrame
                                        MonFarm = v362.Name
                                        Click()
                                        if _G.AutoBone and (v362.Humanoid.Health > 0 and v362.Parent) and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
											-- goto l48
                                        end
                                    else
										-- ::l48::
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul") then
                            Tween(v.HumanoidRootPart.CFrame * Pos2)
                        end
                    end
					-- ::l18::
                end)
            end
        end
    end)
    v3.Main:AddToggle("ToggleCake", {
        ["Title"] = "Auto Farm Cake Prince",
        ["Default"] = false
    }):OnChanged(function(p363)
        _G.CakePrince = p363
    end)
    v4.ToggleCake:SetValue(false)
    spawn(function()
        while task.wait() do
            if _G.CakePrince then
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                        local v364, v365, v366 = pairs(game.Workspace.Enemies:GetChildren())
                        while true do
                            local v367
                            v366, v367 = v364(v365, v366)
                            if v366 == nil then
                                break
                            end
                            if _G.CakePrince and (v367.Name == "Cake Prince" and (v367:FindFirstChild("HumanoidRootPart") and (v367:FindFirstChild("Humanoid") and v367.Humanoid.Health > 0))) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v367.HumanoidRootPart.CFrame * Pos)
                                    v367.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v367.HumanoidRootPart.Transparency = 1
                                    v367.Humanoid.JumpPower = 0
                                    v367.Humanoid.WalkSpeed = 0
                                    v367.HumanoidRootPart.CanCollide = false
                                    FarmPos = v367.HumanoidRootPart.CFrame
                                    MonFarm = v367.Name
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), workspace.CurrentCamera.CFrame)
                                    BringMobs = false
                                until not _G.CakePrince or (not v367.Parent or v367.Humanoid.Health <= 0)
                                BringMobs = true
                            end
                        end
                    elseif game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(- 1990.672607421875, 4532.99951171875, - 14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
                        Tween(CFrame.new(- 2151.82153, 149.315704, - 12404.9053))
                        BirngMobs = true
                    end
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or (game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or (game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker"))) then
                    local v368, v369, v370 = pairs(game.Workspace.Enemies:GetChildren())
                    while true do
                        local v371
                        v370, v371 = v368(v369, v370)
                        if v370 == nil then
                            break
                        end
                        if v371:FindFirstChild("Humanoid") and (v371:FindFirstChild("HumanoidRootPart") and (v371.Humanoid.Health > 0 and (v371.Name == "Cookie Crafter" or (v371.Name == "Cake Guard" or (v371.Name == "Baking Staff" or v371.Name == "Head Baker"))))) and (v371:FindFirstChild("HumanoidRootPart") and (v371:FindFirstChild("Humanoid") and v371.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipTool(SelectWeapon)
                                Tween(v371.HumanoidRootPart.CFrame * Pos)
                                v371.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v371.HumanoidRootPart.Transparency = 1
                                v371.Humanoid.JumpPower = 0
                                v371.Humanoid.WalkSpeed = 0
                                v371.HumanoidRootPart.CanCollide = false
                                FarmPos = v371.HumanoidRootPart.CFrame
                                MonFarm = v371.Name
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), workspace.CurrentCamera.CFrame)
                            until not _G.CakePrince or (not v371.Parent or v371.Humanoid.Health <= 0)
                        end
                    end
                else
                    local v372 = CFrame.new(- 2077, 252, - 12373)
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v372.Position).Magnitude <= 2000 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v372.Position).Magnitude < 2000 then
                                Tween(v372)
                            end
                        else
                            BTP(v372)
                            wait(3)
                        end
                    else
                        Tween(v.HumanoidRootPart.CFrame * Pos2)
                    end
                end
            end
        end
    end)
    v3.Main:AddToggle("ToggleVatChatKiDi", {
        ["Title"] = "Auto Farm Ectoplasm",
        ["Default"] = false
    }):OnChanged(function(p373)
        _G.Ecto = p373
    end)
    v4.ToggleVatChatKiDi:SetValue(false)
    spawn(function()
        while wait(0.1) do
            pcall(function()
                if _G.Ecto then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or (game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or (game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer"))) then
                        local v374, v375, v376 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                        while true do
                            local v377
                            v376, v377 = v374(v375, v376)
                            if v376 == nil then
                                break
                            end
                            if (v377.Name == "Ship Steward" or (v377.Name == "Ship Engineer" or (v377.Name == "Ship Deckhand" or v377.Name == "Ship Officer" and v377:FindFirstChild("Humanoid")))) and v377.Humanoid.Health > 0 then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v377.HumanoidRootPart.CFrame * Pos)
                                    v377.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v377.HumanoidRootPart.Transparency = 1
                                    v377.Humanoid.JumpPower = 0
                                    v377.Humanoid.WalkSpeed = 0
                                    v377.HumanoidRootPart.CanCollide = false
                                    FarmPos = v377.HumanoidRootPart.CFrame
                                    MonFarm = v377.Name
                                    Click()
                                until _G.Ecto == false or (not v377.Parent or v377.Humanoid.Health == 0) or not game:GetService("Workspace").Enemies:FindFirstChild(v377.Name)
                            end
                        end
                    else
                        if (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        end
                        Tween(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                    end
                end
            end)
        end
    end)
    v3.Main:AddParagraph({
        ["Title"] = "Boss Farm",
        ["Content"] = ""
    })
    if First_Sea then
        tableBoss = {
            "The Gorilla King",
            "Bobby",
            "Yeti",
            "Mob Leader",
            "Vice Admiral",
            "Warden",
            "Chief Warden",
            "Swan",
            "Magma Admiral",
            "Fishman Lord",
            "Wysper",
            "Thunder God",
            "Cyborg",
            "Saber Expert"
        }
    elseif Second_Sea then
        tableBoss = {
            "Diamond",
            "Jeremy",
            "Fajita",
            "Don Swan",
            "Smoke Admiral",
            "Cursed Captain",
            "Darkbeard",
            "Order",
            "Awakened Ice Admiral",
            "Tide Keeper"
        }
    elseif Third_Sea then
        tableBoss = {
            "Stone",
            "Island Empress",
            "Kilo Admiral",
            "Captain Elephant",
            "Beautiful Pirate",
            "rip_indra True Form",
            "Longma",
            "Soul Reaper",
            "Cake Queen"
        }
    end
    local v378 = v3.Main:AddDropdown("DropdownBoss", {
        ["Title"] = "Dropdown",
        ["Values"] = tableBoss,
        ["Multi"] = false,
        ["Default"] = 1
    })
    v378:SetValue("")
    v378:OnChanged(function(p379)
        _G.SelectBoss = p379
    end)
    v3.Main:AddToggle("ToggleAutoFarmBoss", {
        ["Title"] = "Killing Boss",
        ["Default"] = false
    }):OnChanged(function(p380)
        _G.AutoBoss = p380
    end)
    v4.ToggleAutoFarmBoss:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoBoss and BypassTP then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        local v381, v382, v383 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                        while true do
                            local v384
                            v383, v384 = v381(v382, v383)
                            if v383 == nil then
                                break
                            end
                            if v384.Name == _G.SelectBoss and (v384:FindFirstChild("Humanoid") and (v384:FindFirstChild("HumanoidRootPart") and v384.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v384.HumanoidRootPart.CanCollide = false
                                    v384.Humanoid.WalkSpeed = 0
                                    v384.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    Tween(v384.HumanoidRootPart.CFrame * Pos)
                                    Click()
                                    BringMobs = false
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoBoss or (not v384.Parent or v384.Humanoid.Health <= 0)
                            end
                            BringMobs = true
                        end
                    elseif game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
                        if (game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 1500 then
                            BTP(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame)
                        else
                            Tween(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame)
                        end
                        BringMobs = true
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if _G.AutoBoss and not BypassTP then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        local v385, v386, v387 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                        while true do
                            local v388
                            v387, v388 = v385(v386, v387)
                            if v387 == nil then
                                break
                            end
                            if v388.Name == _G.SelectBoss then
                                if v388:FindFirstChild("Humanoid") and (v388:FindFirstChild("HumanoidRootPart") and v388.Humanoid.Health > 0) then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v388.HumanoidRootPart.CanCollide = false
                                        v388.Humanoid.WalkSpeed = 0
                                        v388.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        Tween(v388.HumanoidRootPart.CFrame * Pos)
                                        Click()
                                        BringMobs = false
                                    until not _G.AutoBoss or (not v388.Parent or v388.Humanoid.Health <= 0)
                                end
                                BringMobs = true
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                    end
                end)
                BringMobs = true
            end
        end
    end)
    v3.Main:AddParagraph({
        ["Title"] = "Material",
        ["Content"] = "Auto farm material"
    })
    if First_Sea then
        MaterialList = {
            "Scrap Metal",
            "Leather",
            "Angel Wings",
            "Magma Ore",
            "Fish Tail"
        }
    elseif Second_Sea then
        MaterialList = {
            "Scrap Metal",
            "Leather",
            "Radioactive Material",
            "Mystic Droplet",
            "Magma Ore",
            "Vampire Fang"
        }
    elseif Third_Sea then
        MaterialList = {
            "Scrap Metal",
            "Leather",
            "Demonic Wisp",
            "Conjured Cocoa",
            "Dragon Scale",
            "Gunpowder",
            "Fish Tail",
            "Mini Tusk"
        }
    end
    local v389 = v3.Main:AddDropdown("DropdownMaterial", {
        ["Title"] = "Dropdown",
        ["Values"] = MaterialList,
        ["Multi"] = false,
        ["Default"] = 1
    })
    v389:SetValue("Conjured Cocoa")
    v389:OnChanged(function(p390)
        SelectMaterial = p390
    end)
    v3.Main:AddToggle("ToggleMaterial", {
        ["Title"] = "Auto Farm Material",
        ["Default"] = false
    }):OnChanged(function(p391)
        _G.AutoMaterial = p391
    end)
    v4.ToggleMaterial:SetValue(false)
    spawn(function()
		-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
        while task.wait() do
            if _G.AutoMaterial then
                pcall(function()
					-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                    MaterialMon(SelectMaterial)
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude <= 3500 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude < 3500 then
                                Tween(MPos)
                            end
                        else
                            BTP(MPos)
                        end
                    else
                        Tween(MPos)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
                        local v392, v393, v394 = pairs(game.Workspace.Enemies:GetChildren())
                        while true do
                            local v395
                            v394, v395 = v392(v393, v394)
                            if v394 == nil then
                                break
                            end
                            if v395:FindFirstChild("Humanoid") and (v395:FindFirstChild("HumanoidRootPart") and (v395.Humanoid.Health > 0 and v395.Name == MMon)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v395.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                    v395.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v395.HumanoidRootPart.Transparency = 1
                                    v395.Humanoid.JumpPower = 0
                                    v395.Humanoid.WalkSpeed = 0
                                    v395.HumanoidRootPart.CanCollide = false
                                    FarmPos = v395.HumanoidRootPart.CFrame
                                    MonFarm = v395.Name
                                    Click()
                                until not _G.AutoMaterial or (not v395.Parent or v395.Humanoid.Health <= 0)
                            end
                        end
                    else
                        local v396, v397, v398 = pairs(game:GetService("Workspace")._WorldOrigin.EnemySpawns:GetChildren())
                        while true do
                            local v399
                            v398, v399 = v396(v397, v398)
                            if v398 == nil then
                                break
                            end
                            if string.find(v399.Name, Mon) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v399.Position).Magnitude >= 10 then
                                Tween(v399.CFrame * CFrame.new(vu252, vu253, vu254))
                            end
                        end
                    end
                end)
            end
        end
    end)
    if Third_Sea then
        v3.Main:AddParagraph({
            ["Title"] = "Rough Sea",
            ["Content"] = "Auto rough sea"
        })
        v3.Main:AddToggle("ToggleBoat", {
            ["Title"] = "Auto Buy Boat",
            ["Default"] = false
        }):OnChanged(function(p400)
            _G.AutoBuyBoat = p400
        end)
        v4.ToggleBoat:SetValue(false)
        task.spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoBuyBoat then
                        if game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                            if game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                                local v401, v402, v403 = pairs(game:GetService("Workspace").SeaBeasts:GetChildren())
                                while true do
                                    local v404
                                    v403, v404 = v401(v402, v403)
                                    if v403 == nil then
                                        break
                                    end
                                    if v404:FindFirstChild("HumanoidRootPart") then
                                        repeat
                                            wait()
                                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                            TPP(v404.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                                            EquipAllWeapon()
                                            AutoSkill = true
                                            AimBotSkillPosition = v404.HumanoidRootPart
                                            Skillaimbot = true
                                        until not v404:FindFirstChild("HumanoidRootPart") or _G.AutoBuyBoat == false
                                        AutoSkill = false
                                        Skillaimbot = false
                                    end
                                end
                            end
                        elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                            if game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                local v405, v406, v407 = pairs(game:GetService("Workspace").Boats:GetChildren())
                                while true do
                                    local v408
                                    v407, v408 = v405(v406, v407)
                                    if v407 == nil then
                                        break
                                    end
                                    if v408.Name == "PirateBrigade" and v408:FindFirstChild("VehicleSeat") then
                                        repeat
                                            wait()
                                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                            TPP(v408.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                        until not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") or _G.AutoBuyBoat == false
                                    end
                                end
                            end
                        else
                            if not game:GetService("Workspace").Boats:FindFirstChild("PirateBasic") then
                                if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                    buyb = TPP(CFrame.new(- 4513.90087890625, 16.76398277282715, - 2658.820556640625))
                                    if (CFrame.new(- 4513.90087890625, 16.76398277282715, - 2658.820556640625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                        if buyb then
                                            buyb:Stop()
                                        end
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                                            "BuyBoat",
                                            "PirateBrigade"
                                        }))
                                    end
									-- goto l3
                                end
                                if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
									-- goto l3
                                end
                                if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                    TPP(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
									-- goto l3
                                end
                                if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit ~= true then
									-- goto l3
                                end
                                while true do
                                    wait()
                                    if (game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                        TPB(CFrame.new(35.04552459716797, 17.750778198242188, 4819.267578125))
                                    end
                                    if game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or _G.AutoBuyBoat == false then
										-- goto l3
                                    end
                                end
                            end
                            if game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                local v409, v410, v411 = pairs(game:GetService("Workspace").Boats:GetChildren())
                                while true do
                                    local v412
                                    v411, v412 = v409(v410, v411)
                                    if v411 == nil then
                                        break
                                    end
                                    if v412.Name == "PirateBrigade" and v412:FindFirstChild("VehicleSeat") then
                                        repeat
                                            wait()
                                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                            TPP(v412.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                        until not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") or _G.AutoBuyBoat == false
                                    end
                                end
                            end
                        end
                    end
					-- ::l3::
                end)
            end
        end)
        v3.Main:AddToggle("ToggleTW", {
            ["Title"] = "Auto Press W",
            ["Default"] = false
        }):OnChanged(function(p413)
            _G.AutoW = p413
        end)
        v4.ToggleTW:SetValue(false)
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoW then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
                    end
                end)
            end
        end)
        v3.Main:AddToggle("ToggleTerrorshark", {
            ["Title"] = "Auto Kill Terrorshark",
            ["Default"] = false
        }):OnChanged(function(p414)
            _G.AutoTerrorshark = p414
        end)
        v4.ToggleTerrorshark:SetValue(false)
        spawn(function()
			-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
            while wait() do
                if _G.AutoTerrorshark then
                    pcall(function()
						-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                        if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                            local v415, v416, v417 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                            while true do
                                local v418
                                v417, v418 = v415(v416, v417)
                                if v417 == nil then
                                    break
                                end
                                if v418.Name == "Terrorshark" and (v418:FindFirstChild("Humanoid") and (v418:FindFirstChild("HumanoidRootPart") and v418.Humanoid.Health > 0)) then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v418.HumanoidRootPart.CanCollide = false
                                        v418.Humanoid.WalkSpeed = 0
                                        v418.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        Click()
                                        Tween(v418.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                    until not _G.AutoTerrorshark or (not v418.Parent or v418.Humanoid.Health <= 0)
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end)
                end
            end
        end)
        v3.Main:AddToggle("TogglePiranha", {
            ["Title"] = "Auto Kill Piranha",
            ["Default"] = false
        }):OnChanged(function(p419)
            _G.farmpiranya = p419
        end)
        v4.TogglePiranha:SetValue(false)
        spawn(function()
			-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
            while wait() do
                if _G.farmpiranya then
                    pcall(function()
						-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                        if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                            local v420, v421, v422 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                            while true do
                                local v423
                                v422, v423 = v420(v421, v422)
                                if v422 == nil then
                                    break
                                end
                                if v423.Name == "Piranha" and (v423:FindFirstChild("Humanoid") and (v423:FindFirstChild("HumanoidRootPart") and v423.Humanoid.Health > 0)) then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v423.HumanoidRootPart.CanCollide = false
                                        v423.Humanoid.WalkSpeed = 0
                                        v423.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        Click()
                                        Tween(v423.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                    until not _G.farmpiranya or (not v423.Parent or v423.Humanoid.Health <= 0)
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Piranha") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Piranha").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end)
                end
            end
        end)
        v3.Main:AddParagraph({
            ["Title"] = "Elite Hunter",
            ["Content"] = "Auto find and kill boss elite"
        })
        v3.Main:AddToggle("ToggleElite", {
            ["Title"] = "Auto Elite Hunter",
            ["Default"] = false
        }):OnChanged(function(p424)
            _G.AutoElite = p424
        end)
        v4.ToggleElite:SetValue(false)
        spawn(function()
			-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
            while task.wait() do
                if _G.AutoElite then
                    pcall(function()
						-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                        elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban")) then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or (game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
                                local v425, v426, v427 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                                while true do
                                    local v428
                                    v427, v428 = v425(v426, v427)
                                    if v427 == nil then
                                        break
                                    end
                                    if v428:FindFirstChild("Humanoid") and (v428:FindFirstChild("HumanoidRootPart") and v428.Humanoid.Health > 0) then
                                        if v428.Name == "Diablo" or (v428.Name == "Deandre" or v428.Name == "Urban") then
                                            repeat
                                                task.wait()
                                                EquipTool(SelectWeapon)
                                                AutoHaki()
                                                Tween(v428.HumanoidRootPart.CFrame * Pos)
                                                MonsterPosition = v428.HumanoidRootPart.CFrame
                                                v428.HumanoidRootPart.CFrame = v428.HumanoidRootPart.CFrame
                                                v428.Humanoid.JumpPower = 0
                                                v428.Humanoid.WalkSpeed = 0
                                                v428.HumanoidRootPart.CanCollide = false
                                                Click()
                                                FarmPos = v428.HumanoidRootPart.CFrame
                                                MonFarm = v428.Name
                                                v428.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                                BringMobs = false
                                            until _G.AutoElite == false or (v428.Humanoid.Health <= 0 or not v428.Parent)
                                        end
                                        BringMobs = true
                                    end
                                end
                            elseif BypassTP then
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                            end
                        end
                    end)
                end
                BirngMobs = true
            end
        end)
    end
    if Third_Sea then
        v3.Main:AddParagraph({
            ["Title"] = "Sea Beast",
            ["Content"] = "Auto Kill Sea Beast"
        })
        v3.Main:AddToggle("ToggleSeaBeAst", {
            ["Title"] = "Auto Sea Beast",
            ["Default"] = false
        }):OnChanged(function(p429)
            _G.AutoSeaBeast = p429
        end)
        v4.ToggleSeaBeAst:SetValue(false)
        local v430 = getrawmetatable(game)
        local vu431 = v430.__namecall
        setreadonly(v430, false)
        v430.__namecall = newcclosure(function(...)
			-- upvalues: (ref) vu431
            local v432 = getnamecallmethod()
            local v433 = {
                ...
            }
            if tostring(v432) ~= "FireServer" or (tostring(v433[1]) ~= "RemoteEvent" or (tostring(v433[2]) == "true" or (tostring(v433[2]) == "false" or not Skillaimbot))) then
                return vu431(...)
            end
            v433[2] = AimBotSkillPosition
            return vu431(unpack(v433))
        end)
        Skillz = true
        Skillx = true
        Skillc = true
        Skillv = true
        spawn(function()
            while wait() do
                pcall(function()
                    if AutoSkill then
                        if Skillz then
                            game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                            wait(0.1)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                        end
                        if Skillx then
                            game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                            wait(0.1)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                        end
                        if Skillc then
                            game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
                            wait(0.1)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                        end
                        if Skillv then
                            game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
                            wait(0.1)
                            game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
                        end
                    end
                end)
            end
        end)
        task.spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoSeaBeast then
                        if game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                            if game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                                local v434, v435, v436 = pairs(game:GetService("Workspace").SeaBeasts:GetChildren())
                                while true do
                                    local v437
                                    v436, v437 = v434(v435, v436)
                                    if v436 == nil then
                                        break
                                    end
                                    if v437:FindFirstChild("HumanoidRootPart") then
                                        repeat
                                            wait()
                                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                            TPP(v437.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                                            EquipAllWeapon()
                                            AutoSkill = true
                                            AimBotSkillPosition = v437.HumanoidRootPart
                                            Skillaimbot = true
                                        until not v437:FindFirstChild("HumanoidRootPart") or _G.AutoSeaBeast == false
                                        AutoSkill = false
                                        Skillaimbot = false
                                    end
                                end
                            end
                        elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                            if game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                local v438, v439, v440 = pairs(game:GetService("Workspace").Boats:GetChildren())
                                while true do
                                    local v441
                                    v440, v441 = v438(v439, v440)
                                    if v440 == nil then
                                        break
                                    end
                                    if v441.Name == "PirateBrigade" and v441:FindFirstChild("VehicleSeat") then
                                        repeat
                                            wait()
                                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                            TPP(v441.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                        until not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") or _G.AutoSeaBeast == false
                                    end
                                end
                            end
                        else
                            if not game:GetService("Workspace").Boats:FindFirstChild("PirateBasic") then
                                if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                    buyb = TPP(CFrame.new(- 4513.90087890625, 16.76398277282715, - 2658.820556640625))
                                    if (CFrame.new(- 4513.90087890625, 16.76398277282715, - 2658.820556640625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                        if buyb then
                                            buyb:Stop()
                                        end
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                                            "BuyBoat",
                                            "PirateBrigade"
                                        }))
                                    end
									-- goto l3
                                end
                                if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
									-- goto l3
                                end
                                if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                    TPP(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
									-- goto l3
                                end
                                if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit ~= true then
									-- goto l3
                                end
                                wait()
                                if (game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                    TPB(CFrame.new(35.04552459716797, 17.750778198242188, 4819.267578125))
                                end
                                if game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or _G.AutoSeaBeast == false then
									-- goto l3
                                end
                            end
                            if game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                local v442, v443, v444 = pairs(game:GetService("Workspace").Boats:GetChildren())
                                while true do
                                    local v445
                                    v444, v445 = v442(v443, v444)
                                    if v444 == nil then
                                        break
                                    end
                                    if v445.Name == "PirateBrigade" and v445:FindFirstChild("VehicleSeat") then
                                        repeat
                                            wait()
                                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                            TPP(v445.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                        until not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") or _G.AutoSeaBeast == false
                                    end
                                end
                            end
                        end
                    end
					-- ::l3::
                end)
            end
        end)
        v3.Main:AddToggle("ToggleAutoW", {
            ["Title"] = "Auto Press W",
            ["Default"] = false
        }):OnChanged(function(p446)
            _G.AutoW = p446
        end)
        v4.ToggleAutoW:SetValue(false)
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoW then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
                    end
                end)
            end
        end)
        v3.Main:AddParagraph({
            ["Title"] = "Mirage Island",
            ["Content"] = "Auto Summon Mystic Island"
        })
        v3.Main:AddToggle("ToggleMirage", {
            ["Title"] = "Auto Mirage Island",
            ["Default"] = false
        }):OnChanged(function(_)
            if state then
                _G.dao = true
            else
                _G.dao = false
            end
            if _G.dao then
                local v447 = {
                    "requestEntrance",
                    Vector3.new(- 12463.6025390625, 378.3270568847656, - 7566.0830078125)
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v447))
                wait(1)
                BTPZ(CFrame.new(- 5411.22021, 778.609863, - 2682.27759, 0.927179396, 0, 0.374617696, 0, 1, 0, - 0.374617696, 0, 0.927179396))
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                    "BuyBoat",
                    "MarineBrigade"
                }))
                function two(pu448)
                    pcall(function()
                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                    end)
                    if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - pu448.Position).Magnitude > 200 then
                        local vu449 = game:service("TweenService")
                        local vu450 = TweenInfo.new((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - pu448.Position).Magnitude / 325, Enum.EasingStyle.Linear)
                        local v452, v453 = pcall(function()
							-- upvalues: (ref) vu449, (ref) vu450, (ref) pu448
                            local v451 = {
                                ["CFrame"] = pu448
                            }
                            tweenz = vu449:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, vu450, v451)
                            tweenz:Play()
                        end)
                        err = v453
                        tween = v452
                        if not tween then
                            return err
                        end
                    else
                        pcall(function()
                            tweenz:Cancel()
                        end)
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = pu448
                    end
                    function _TweenCanCle()
                        tweenz:Cancel()
                    end
                end
                two(CFrame.new(- 5100.7085, 29.968586, - 6792.45459, - 0.33648631, - 0.0396691673, 0.940852463, - 6.40461678e-7, 0.999112308, 0.0421253517, - 0.941688359, 0.0141740013, - 0.336187631))
                wait(13)
                local v454 = next
                local v455, v456 = workspace.Boats.MarineBrigade:GetDescendants()
                while true do
                    local v457
                    v456, v457 = v454(v455, v456)
                    if v456 == nil then
                        break
                    end
                    if v457.Name:find("VehicleSeat") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v457.CFrame
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            Tween(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame * CFrame.new(0, 500, - 100))
                        end
                    end
                end
            end
        end)
        v4.ToggleMirage:SetValue(false)
        v3.Main:AddToggle("AutoW", {
            ["Title"] = "Auto Press W",
            ["Default"] = false
        }):OnChanged(function(p458)
            _G.AutoW = p458
        end)
        v4.AutoW:SetValue(false)
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoW then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
                    end
                end)
            end
        end)
    end
    v3.Main:AddParagraph({
        ["Title"] = "Items",
        ["Content"] = "Auto get items"
    })
    v3.Main:AddToggle("ToggleHallow", {
        ["Title"] = "Auto Hallow Scythe [Fully]",
        ["Default"] = false
    }):OnChanged(function(p459)
        AutoHallowSycthe = p459
    end)
    v4.ToggleHallow:SetValue(false)
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        local v460, v461, v462 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                        while true do
                            local v463
                            v462, v463 = v460(v461, v462)
                            if v462 == nil then
                                break
                            end
                            if string.find(v463.Name, "Soul Reaper") then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v463.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    Tween(v463.HumanoidRootPart.CFrame * Pos)
                                    v463.HumanoidRootPart.Transparency = 1
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    Click()
                                until v463.Humanoid.Health <= 0 or AutoHallowSycthe == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat
                            Tween(CFrame.new(- 8932.322265625, 146.83154296875, 6062.55078125))
                            wait()
                        until (CFrame.new(- 8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                        EquipTool("Hallow Essence")
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait(0.001) do
            if AutoHallowSycthe then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                    "Bones",
                    "Buy",
                    1,
                    1
                }))
            end
        end
    end)
    v3.Main:AddToggle("ToggleYama", {
        ["Title"] = "Auto Get Yama",
        ["Default"] = false
    }):OnChanged(function(p464)
        _G.AutoYama = p464
    end)
    v4.ToggleYama:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoYama and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then
                wait(0.1)
                fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") and _G.AutoYama then
                    break
                end
            end
        end
    end)
    v3.Main:AddToggle("ToggleTushita", {
        ["Title"] = "Auto Tushita",
        ["Default"] = false
    }):OnChanged(function(p465)
        AutoTushita = p465
    end)
    v4.ToggleTushita:SetValue(false)
    CFrame.new(- 10238.875976563, 389.7912902832, - 9549.7939453125)
    spawn(function()
        while task.wait(0.1) do
            if AutoTushita then
                pcall(function()
                    autoTushita()
                end)
            end
        end
    end)
    function enemyrip()
        Tween(CFrame.new(- 5332.30371, 423.985413, - 2673.48218))
        wait()
        if game.Workspace.Enemies:FindFirstChild("rip_indra True Form") then
            local v466 = game.Workspace.Enemies:GetChildren()
            local v467, v468, v469 = pairs(v466)
            while true do
                local v470
                v469, v470 = v467(v468, v469)
                if v469 == nil then
                    break
                end
                if v470.Name == "rip_indra True Form" and (v470:IsA("Model") and (v470:FindFirstChild("Humanoid") and (v470:FindFirstChild("HumanoidRootPart") and v470.Humanoid.Health > 0))) then
                    return v470
                end
            end
        end
        return game.ReplicatedStorage:FindFirstChild("rip_indra True Form")
    end
    function enemyEliteBoss()
        if game.Workspace.Enemies:FindFirstChild("Deandre") or (game.Workspace.Enemies:FindFirstChild("Urban") or game.Workspace.Enemies:FindFirstChild("Diablo")) then
            local v471 = game.Workspace.Enemies:GetChildren()
            local v472, v473, v474 = pairs(v471)
            while true do
                local v475
                v474, v475 = v472(v473, v474)
                if v474 == nil then
                    break
                end
                if v475.Name == "Deandre" or (v475.Name == "Diablo" or v475.Name == "Urban" and (v475:IsA("Model") and (v475:FindFirstChild("Humanoid") and (v475:FindFirstChild("HumanoidRootPart") and v475.Humanoid.Health > 0)))) then
                    return v475
                end
            end
        end
        return game.ReplicatedStorage:FindFirstChild("Deandre") or (game.ReplicatedStorage:FindFirstChild("Urban") or game.ReplicatedStorage:FindFirstChild("Diablo"))
    end
    function enemylongma()
        Tween(CFrame.new(- 10171.7051, 406.981995, - 9552.31738))
        if game.Workspace.Enemies:FindFirstChild("Longma") then
            local v476 = game.Workspace.Enemies:GetChildren()
            local v477, v478, v479 = pairs(v476)
            while true do
                local v480
                v479, v480 = v477(v478, v479)
                if v479 == nil then
                    break
                end
                if v480.Name == "Longma" and (v480:IsA("Model") and (v480:FindFirstChild("Humanoid") and (v480:FindFirstChild("HumanoidRootPart") and v480.Humanoid.Health > 0))) then
                    return v480
                end
            end
        end
        return game.ReplicatedStorage:FindFirstChild("Longma")
    end
    function autoTushita()
		-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
        if game.Players.LocalPlayer.Backpack:FindFirstChild("God\'s Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God\'s Chalice") then
            if game.Players.LocalPlayer.Backpack:FindFirstChild("God\'s Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God\'s Chalice") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky")
                wait(0.5)
                repeat
                    Tween(CFrame.new(- 5420.16602, 1084.9657, - 2666.8208))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 5420.16602, 1084.9657, - 2666.8208)).Magnitude <= 10
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red")
                wait(0.5)
                repeat
                    Tween(CFrame.new(- 5414.41357, 309.865753, - 2212.45776))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 5414.41357, 309.865753, - 2212.45776)).Magnitude <= 10
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White")
                wait(0.5)
                repeat
                    Tween(CFrame.new(- 4971.47559, 331.565765, - 3720.02954))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 4971.47559, 331.565765, - 3720.02954)).Magnitude <= 10
                wait(0.5)
                EquipTool("God\'s Chalice")
                wait(0.5)
                repeat
                    Tween(CFrame.new(- 5560.27295, 313.915466, - 2663.89795))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 5560.27295, 313.915466, - 2663.89795)).Magnitude <= 10
                wait(0.5)
                repeat
                    Tween(CFrame.new(- 5561.37451, 313.342529, - 2663.4948))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, - 2823.07373)).Magnitude <= 10
                wait(1)
                repeat
                    Tween(CFrame.new(5154.17676, 141.786423, 911.046326))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, - 2823.07373)).Magnitude <= 10
                wait(0.2)
                repeat
                    Tween(CFrame.new(5148.03613, 162.352493, 910.548218))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, - 2823.07373)).Magnitude <= 10
                wait(1)
                EquipTool("Holy Torch")
                wait(1)
                wait(0.4)
                repeat
                    Tween(CFrame.new(- 10752.7695, 412.229523, - 9366.36328))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, - 2823.07373)).Magnitude <= 10
                wait(0.4)
                repeat
                    Tween(CFrame.new(- 11673.4111, 331.749023, - 9474.34668))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, - 2823.07373)).Magnitude <= 10
                wait(0.4)
                repeat
                    Tween(CFrame.new(- 12133.3389, 519.47522, - 10653.1904))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, - 2823.07373)).Magnitude <= 10
                wait(0.4)
                repeat
                    Tween(CFrame.new(- 13336.5, 485.280396, - 6983.35254))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, - 2823.07373)).Magnitude <= 10
                wait(0.4)
                repeat
                    Tween(CFrame.new(- 13487.4131, 334.84845, - 7926.34863))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, - 2823.07373)).Magnitude <= 10
                wait(1)
            elseif game.Workspace.Enemies:FindFirstChild("Longma") or game.ReplicatedStorage:FindFirstChild("Longma") then
                pcall(function()
					-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                    EquipTool(SelectWeapon)
                    AutoHaki()
                    pcall(function()
						-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                        local v481 = enemylongma()
                        v481.HumanoidRootPart.CanCollide = false
                        v481.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        Tween(v481.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                        Click()
                    end)
                end)
            elseif game.Workspace.Enemies:FindFirstChild("rip_indra True Form") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form") then
                pcall(function()
					-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                    EquipTool(SelectWeapon)
                    AutoHaki()
                    pcall(function()
						-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                        local v482 = enemyrip()
                        v482.HumanoidRootPart.CanCollide = false
                        v482.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        Tween(v482.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                        Click()
                    end)
                end)
            else
                Tween(CFrame.new(- 12554.9443, 337.194092, - 7501.44727))
            end
        elseif game.Workspace.Enemies:FindFirstChild("Deandre") or (game.Workspace.Enemies:FindFirstChild("Urban") or (game.Workspace.Enemies:FindFirstChild("Diablo") or (game.ReplicatedStorage:FindFirstChild("Deandre") or (game.ReplicatedStorage:FindFirstChild("Urban") or game.ReplicatedStorage:FindFirstChild("Diablo"))))) then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckLevel()
                    AutoHaki()
                    pcall(function()
						-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                        EquipTool(SelectWeapon)
                        pcall(function()
							-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
                            local v483 = enemyEliteBoss()
                            v483.HumanoidRootPart.CanCollide = false
                            v483.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            Tween(v483.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
                            Click()
                        end)
                    end)
                end
            else
                repeat
                    Tween(CFrame.new(5420.49219, 314.446045, - 2823.07373))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, - 2823.07373)).Magnitude <= 10
                wait(1)
                repeat
                    Tween(CFrame.new(5420.49219, 314.446045, - 2823.07373))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, - 2823.07373)).Magnitude <= 10
                wait(1.1)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                wait(1)
            end
        else
            Tween(CFrame.new(- 12554.9443, 337.194092, - 7501.44727))
        end
    end
    v3.Main:AddToggle("ToggleFactory", {
        ["Title"] = "Auto Farm Factory",
        ["Default"] = false
    }):OnChanged(function(p484)
        _G.Factory = p484
    end)
    v4.ToggleFactory:SetValue(false)
    spawn(function()
		-- upvalues: (ref) vu252, (ref) vu253, (ref) vu254
		-- ::l0::
        while true do
            repeat
                if not wait() then
                    return
                end
            until _G.Factory
            if game.Workspace.Enemies:FindFirstChild("Core") then
                break
            end
            if game.ReplicatedStorage:FindFirstChild("Core") then
                repeat
                    Tween(CFrame.new(448.46756, 199.356781, - 441.389252))
                    wait()
                until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(448.46756, 199.356781, - 441.389252)).Magnitude <= 10
            end
        end
        local v485, v486, v487 = pairs(game.Workspace.Enemies:GetChildren())
		-- goto l9
		-- ::l7::
		-- goto l14
		-- ::l10::
        if v488.Name == "Core" and v488.Humanoid.Health > 0 then
			-- goto l19
        end
		-- ::l9::
        local v488
        v487, v488 = v485(v486, v487)
        if v487 ~= nil then
			-- goto l10
        end
		-- goto l0
		-- ::l14::
        wait(0.1)
        repeat
            Tween(CFrame.new(448.46756, 199.356781, - 441.389252))
            wait()
        until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(448.46756, 199.356781, - 441.389252)).Magnitude <= 10
        EquipTool(SelectWeapon)
        AutoHaki()
        Tween(v488.HumanoidRootPart.CFrame * CFrame.new(vu252, vu253, vu254))
        v488.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
        v488.HumanoidRootPart.Transparency = 1
        v488.Humanoid.JumpPower = 0
        v488.Humanoid.WalkSpeed = 0
        v488.HumanoidRootPart.CanCollide = false
        FarmPos = v488.HumanoidRootPart.CFrame
        MonFarm = v488.Name
        Click()
        if v488.Parent and (v488.Humanoid.Health > 0 and _G.Factory ~= false) then
			-- goto l14
        end
		-- goto l9
		-- ::l19::
		-- goto l7
    end)
    v3.Setting:AddParagraph({
        ["Title"] = "Setting",
        ["Content"] = "Setting Farm"
    })
    v3.Setting:AddToggle("ToggleFastAttack", {
        ["Title"] = "Fast Attack",
        ["Default"] = true
    }):OnChanged(function(p489)
        FastAttack = p489
    end)
    v4.ToggleFastAttack:SetValue(true)
    _G.FastAttackDelay = 0.13
    local v490 = game.Players.LocalPlayer
    local vu491 = require(v490.PlayerScripts.CombatFramework.Particle)
    local vu492 = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
    spawn(function()
		-- upvalues: (ref) vu492, (ref) vu491
        while task.wait() do
            pcall(function()
				-- upvalues: (ref) vu492, (ref) vu491
                if not shared.orl then
                    shared.orl = vu492.wrapAttackAnimationAsync
                end
                if not shared.cpc then
                    shared.cpc = vu491.play
                end
                function vu492.wrapAttackAnimationAsync(p493, p494, p495, p496, p497)
					-- upvalues: (ref) vu492, (ref) vu491
                    local v498 = vu492.getBladeHits(p494, p495, p496)
                    if v498 then
                        if FastAttack then
                            function vu491.play()
                            end
                            p493:Play(0.01, 0.01, 0.01)
                            p497(v498)
                            vu491.play = shared.cpc
                            wait(p493.length * 0.5)
                            p493:Stop()
                        else
                            p493:Play()
                        end
                    end
                end
            end)
        end
    end)
    function GetBladeHit()
        local v499 = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.blades[1]
        if not v499 then
            return v499
        end
        while v499.Parent ~= game.Players.LocalPlayer.Character do
            v499 = v499.Parent
        end
        return v499
    end
    function AttackHit()
        local vu500 = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2]
        local v501 = game.Players.LocalPlayer
        for v502 = 1, 1 do
            local v503 = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(v501.Character, {
                v501.Character.HumanoidRootPart
            }, 60)
            local v504, v505, v506 = pairs(v503)
            local vu507 = v502
            local v508 = {}
            local vu509 = {}
            while true do
                local v510
                v506, v510 = v504(v505, v506)
                if v506 == nil then
                    break
                end
                if v510.Parent:FindFirstChild("HumanoidRootPart") and not v508[v510.Parent] then
                    table.insert(vu509, v510.Parent.HumanoidRootPart)
                    v508[v510.Parent] = true
                end
            end
            if # vu509 > 0 then
                pcall(function()
					-- upvalues: (ref) vu500, (ref) vu509, (ref) vu507
                    vu500.activeController.timeToNextAttack = 1
                    vu500.activeController.attacking = false
                    vu500.activeController.blocking = false
                    vu500.activeController.timeToNextBlock = 0
                    vu500.activeController.increment = 3
                    vu500.activeController.hitboxMagnitude = 60
                    vu500.activeController.focusStart = 0
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(GetBladeHit()))
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", vu509, vu507, "")
                end)
            end
        end
    end
    spawn(function()
        while wait(0.1) do
            if FastAttack then
                pcall(function()
                    repeat
                        task.wait(_G.FastAttackDelay)
                        AttackHit()
                    until not FastAttack
                end)
            end
        end
    end)
    require(game.ReplicatedStorage.Util.CameraShaker):Stop()
    v3.Setting:AddToggle("ToggleBringMob", {
        ["Title"] = "Bring Mob",
        ["Default"] = true
    }):OnChanged(function(p511)
        BringMobs = p511
    end)
    v4.ToggleBringMob:SetValue(true)
    task.spawn(function()
        while task.wait() do
            if BringMobs then
                pcall(function()
                    local v512, v513, v514 = pairs(game.Workspace.Enemies:GetChildren())
                    while true do
                        local v515
                        v514, v515 = v512(v513, v514)
                        if v514 == nil then
                            break
                        end
                        if not string.find(v515.Name, "Boss") and (v515.Name == MonFarm and ((v515.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 and (InMyNetWork(v515.HumanoidRootPart) and InMyNetWork(v515.HumanoidRootPart)))) then
                            v515.HumanoidRootPart.CFrame = FarmPos
                            v515.HumanoidRootPart.CanCollide = false
                            v515.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                            if v515.Humanoid:FindFirstChild("Animator") then
                                v515.Humanoid.Animator:Destroy()
                            end
                        end
                    end
                end)
            end
        end
    end)
    task.spawn(function()
        while true do
            wait()
            if setscriptable then
                setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
            end
            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            end
        end
    end)
    function InMyNetWork(p516)
        if isnetworkowner then
            return isnetworkowner(p516)
        else
            return (p516.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350
        end
    end
    v3.Setting:AddToggle("ToggleBypassTP", {
        ["Title"] = "Bypass Tp",
        ["Default"] = false
    }):OnChanged(function(p517)
        BypassTP = p517
    end)
    v4.ToggleBypassTP:SetValue(false)
    v3.Setting:AddToggle("ToggleRemove", {
        ["Title"] = "Remove Dame Text",
        ["Default"] = true
    }):OnChanged(function(p518)
        FaiFaoRemovetext = p518
    end)
    v4.ToggleRemove:SetValue(true)
    spawn(function()
        while wait() do
            if FaiFaoRemovetext then
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
            else
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
            end
        end
    end)
    v3.Setting:AddParagraph({
        ["Title"] = "Setting Skill",
        ["Content"] = "Skill use for farm mastery"
    })
    v3.Setting:AddToggle("ToggleZ", {
        ["Title"] = "Skill Z",
        ["Default"] = true
    }):OnChanged(function(p519)
        SkillZ = p519
    end)
    v4.ToggleZ:SetValue(true)
    v3.Setting:AddToggle("ToggleX", {
        ["Title"] = "Skill X",
        ["Default"] = true
    }):OnChanged(function(p520)
        SkillX = p520
    end)
    v4.ToggleX:SetValue(true)
    v3.Setting:AddToggle("ToggleC", {
        ["Title"] = "Skill C",
        ["Default"] = true
    }):OnChanged(function(p521)
        SkillC = p521
    end)
    v4.ToggleC:SetValue(true)
    v3.Setting:AddToggle("ToggleV", {
        ["Title"] = "Skill V",
        ["Default"] = true
    }):OnChanged(function(p522)
        SkillV = p522
    end)
    v4.ToggleV:SetValue(true)
    v3.Setting:AddToggle("ToggleF", {
        ["Title"] = "Skill F",
        ["Default"] = true
    }):OnChanged(function(p523)
        SkillF = p523
    end)
    v4.ToggleF:SetValue(true)
    v3.Stats:AddToggle("ToggleMelee", {
        ["Title"] = "Auto Melee",
        ["Default"] = false
    }):OnChanged(function(p524)
        _G.Auto_Stats_Melee = p524
    end)
    v4.ToggleMelee:SetValue(false)
    v3.Stats:AddToggle("ToggleDe", {
        ["Title"] = "Auto Defense",
        ["Default"] = false
    }):OnChanged(function(p525)
        _G.Auto_Stats_Defense = p525
    end)
    v4.ToggleDe:SetValue(false)
    v3.Stats:AddToggle("ToggleSword", {
        ["Title"] = "Auto Sword",
        ["Default"] = false
    }):OnChanged(function(p526)
        _G.Auto_Stats_Sword = p526
    end)
    v4.ToggleSword:SetValue(false)
    v3.Stats:AddToggle("ToggleGun", {
        ["Title"] = "Auto Gun",
        ["Default"] = false
    }):OnChanged(function(p527)
        _G.Auto_Stats_Gun = p527
    end)
    v4.ToggleGun:SetValue(false)
    v3.Stats:AddToggle("ToggleFruit", {
        ["Title"] = "Auto Demon Fruit",
        ["Default"] = false
    }):OnChanged(function(p528)
        _G.Auto_Stats_Devil_Fruit = p528
    end)
    v4.ToggleFruit:SetValue(false)
    spawn(function()
        while wait() do
            if _G.Auto_Stats_Devil_Fruit then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                    "AddPoint",
                    "Demon Fruit",
                    3
                }))
            end
        end
    end)
    spawn(function()
        while wait() do
            if _G.Auto_Stats_Gun then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                    "AddPoint",
                    "Gun",
                    3
                }))
            end
        end
    end)
    spawn(function()
        while wait() do
            if _G.Auto_Stats_Sword then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                    "AddPoint",
                    "Sword",
                    3
                }))
            end
        end
    end)
    spawn(function()
        while wait() do
            if _G.Auto_Stats_Defense then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                    "AddPoint",
                    "Defense",
                    3
                }))
            end
        end
    end)
    spawn(function()
        while wait() do
            if _G.Auto_Stats_Melee then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                    "AddPoint",
                    "Melee",
                    3
                }))
            end
        end
    end)
    local v529, v530, v531 = pairs(game:GetService("Players"):GetChildren())
    local vu532 = {}
    while true do
        local v533
        v531, v533 = v529(v530, v531)
        if v531 == nil then
            break
        end
        table.insert(vu532, v533.Name)
    end
    local vu534 = v3.Player:AddDropdown("SelectedPly", {
        ["Title"] = "Dropdown",
        ["Values"] = vu532,
        ["Multi"] = false,
        ["Default"] = 1
    })
    local v535 = vu534
    vu534.SetValue(v535, "nil")
    local v536 = vu534
    vu534.OnChanged(v536, function(p537)
        _G.SelectPly = p537
    end)
    v3.Player:AddButton({
        ["Title"] = "Refresh Dropdown",
        ["Description"] = "Refresh player list",
        ["Callback"] = function()
			-- upvalues: (ref) vu532, (ref) vu534
            vu532 = {}
            vu534:Clear()
            local v538, v539, v540 = pairs(game:GetService("Players"):GetChildren())
            while true do
                local v541
                v540, v541 = v538(v539, v540)
                if v540 == nil then
                    break
                end
                vu534:Add(v541.Name)
            end
        end
    })
    v3.Player:AddToggle("ToggleTeleport", {
        ["Title"] = "Teleport To Player",
        ["Default"] = false
    }):OnChanged(function(p542)
        _G.TeleportPly = p542
        pcall(function()
            if _G.TeleportPly then
                repeat
                    Tween(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame)
                    wait()
                until _G.TeleportPly == false
            end
        end)
    end)
    v4.ToggleTeleport:SetValue(false)
    v3.Player:AddToggle("ToggleQuanSat", {
        ["Title"] = "Spectate Player",
        ["Default"] = false
    }):OnChanged(function(p543)
        SpectatePlys = p543
        local _ = game:GetService("Players").LocalPlayer.Character.Humanoid
        game:GetService("Players"):FindFirstChild(_G.SelectPly)
        repeat
            wait(0.1)
            game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
        until SpectatePlys == false
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    end)
    v4.ToggleQuanSat:SetValue(false)
    v3.Teleport:AddParagraph({
        ["Title"] = "World",
        ["Content"] = "Sea1 & Sea2 & Sea3"
    })
    v3.Teleport:AddButton({
        ["Title"] = "First Sea",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        end
    })
    v3.Teleport:AddButton({
        ["Title"] = "Second Sea",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    })
    v3.Teleport:AddButton({
        ["Title"] = "Third Sea",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
    })
    v3.Teleport:AddParagraph({
        ["Title"] = "Island",
        ["Content"] = "Teleport to Island"
    })
    if First_Sea then
        IslandList = {
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Sky Island 2",
            "Sky Island 3",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City",
            "Shank Room",
            "Mob Island"
        }
    elseif Second_Sea then
        IslandList = {
            "The Cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Factory",
            "Colossuim",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island",
            "Mini Sky Island"
        }
    elseif Third_Sea then
        IslandList = {
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "MiniSky",
            "Hydra Island",
            "Floating Turtle",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Cocoa Island",
            "Candy Island"
        }
    end
    local v544 = v3.Teleport:AddDropdown("DropdownIsland", {
        ["Title"] = "Dropdown",
        ["Values"] = IslandList,
        ["Multi"] = false,
        ["Default"] = 1
    })
    v544:SetValue("...")
    v544:OnChanged(function(p545)
        _G.SelectIsland = p545
    end)
    v3.Teleport:AddToggle("ToggleIsland", {
        ["Title"] = "Teleport",
        ["Default"] = false
    }):OnChanged(function(p546)
        _G.TeleportIsland = p546
        if _G.TeleportIsland ~= true then
			-- ::l3::
            return
        else
            while true do
                if true then
                    wait()
                    if _G.SelectIsland ~= "WindMill" then
                        if _G.SelectIsland ~= "Marine" then
                            if _G.SelectIsland ~= "Middle Town" then
                                if _G.SelectIsland ~= "Jungle" then
                                    if _G.SelectIsland ~= "Pirate Village" then
                                        if _G.SelectIsland ~= "Desert" then
                                            if _G.SelectIsland ~= "Snow Island" then
                                                if _G.SelectIsland ~= "MarineFord" then
                                                    if _G.SelectIsland ~= "Colosseum" then
                                                        if _G.SelectIsland ~= "Sky Island 1" then
                                                            if _G.SelectIsland ~= "Sky Island 2" then
                                                                if _G.SelectIsland ~= "Sky Island 3" then
                                                                    if _G.SelectIsland ~= "Prison" then
                                                                        if _G.SelectIsland ~= "Magma Village" then
                                                                            if _G.SelectIsland ~= "Under Water Island" then
                                                                                if _G.SelectIsland ~= "Fountain City" then
                                                                                    if _G.SelectIsland ~= "Shank Room" then
                                                                                        if _G.SelectIsland ~= "Mob Island" then
                                                                                            if _G.SelectIsland ~= "The Cafe" then
                                                                                                if _G.SelectIsland ~= "Frist Spot" then
                                                                                                    if _G.SelectIsland ~= "Dark Area" then
                                                                                                        if _G.SelectIsland ~= "Flamingo Mansion" then
                                                                                                            if _G.SelectIsland ~= "Flamingo Room" then
                                                                                                                if _G.SelectIsland ~= "Green Zone" then
                                                                                                                    if _G.SelectIsland ~= "Factory" then
                                                                                                                        if _G.SelectIsland ~= "Colossuim" then
                                                                                                                            if _G.SelectIsland ~= "Zombie Island" then
                                                                                                                                if _G.SelectIsland ~= "Two Snow Mountain" then
                                                                                                                                    if _G.SelectIsland ~= "Punk Hazard" then
                                                                                                                                        if _G.SelectIsland ~= "Cursed Ship" then
                                                                                                                                            if _G.SelectIsland ~= "Ice Castle" then
                                                                                                                                                if _G.SelectIsland ~= "Forgotten Island" then
                                                                                                                                                    if _G.SelectIsland ~= "Ussop Island" then
                                                                                                                                                        if _G.SelectIsland ~= "Mini Sky Island" then
                                                                                                                                                            if _G.SelectIsland ~= "Great Tree" then
                                                                                                                                                                if _G.SelectIsland ~= "Castle On The Sea" then
                                                                                                                                                                    if _G.SelectIsland ~= "MiniSky" then
                                                                                                                                                                        if _G.SelectIsland ~= "Port Town" then
                                                                                                                                                                            if _G.SelectIsland ~= "Hydra Island" then
                                                                                                                                                                                if _G.SelectIsland ~= "Floating Turtle" then
                                                                                                                                                                                    if _G.SelectIsland ~= "Mansion" then
                                                                                                                                                                                        if _G.SelectIsland ~= "Haunted Castle" then
                                                                                                                                                                                            if _G.SelectIsland ~= "Ice Cream Island" then
                                                                                                                                                                                                if _G.SelectIsland ~= "Peanut Island" then
                                                                                                                                                                                                    if _G.SelectIsland ~= "Cake Island" then
                                                                                                                                                                                                        if _G.SelectIsland ~= "Cocoa Island" then
                                                                                                                                                                                                            if _G.SelectIsland == "Candy Island" then
                                                                                                                                                                                                                Tween(CFrame.new(- 1014.4241943359375, 149.11068725585938, - 14555.962890625))
                                                                                                                                                                                                            end
                                                                                                                                                                                                        else
                                                                                                                                                                                                            Tween(CFrame.new(87.94276428222656, 73.55451202392578, - 12319.46484375))
                                                                                                                                                                                                        end
                                                                                                                                                                                                    else
                                                                                                                                                                                                        Tween(CFrame.new(- 1884.7747802734375, 19.327526092529297, - 11666.8974609375))
                                                                                                                                                                                                    end
                                                                                                                                                                                                else
                                                                                                                                                                                                    Tween(CFrame.new(- 2062.7475585938, 50.473892211914, - 10232.568359375))
                                                                                                                                                                                                end
                                                                                                                                                                                            else
                                                                                                                                                                                                Tween(CFrame.new(- 902.56817626953, 79.93204498291, - 10988.84765625))
                                                                                                                                                                                            end
                                                                                                                                                                                        else
                                                                                                                                                                                            Tween(CFrame.new(- 9515.3720703125, 164.00624084473, 5786.0610351562))
                                                                                                                                                                                        end
                                                                                                                                                                                    else
                                                                                                                                                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 12471.169921875, 374.94024658203, - 7551.677734375))
                                                                                                                                                                                    end
                                                                                                                                                                                else
                                                                                                                                                                                    Tween(CFrame.new(- 13274.528320313, 531.82073974609, - 7579.22265625))
                                                                                                                                                                                end
                                                                                                                                                                            else
                                                                                                                                                                                Tween(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
                                                                                                                                                                            end
                                                                                                                                                                        else
                                                                                                                                                                            Tween(CFrame.new(- 290.7376708984375, 6.729952812194824, 5343.5537109375))
                                                                                                                                                                        end
                                                                                                                                                                    else
                                                                                                                                                                        Tween(CFrame.new(- 260.65557861328, 49325.8046875, - 35253.5703125))
                                                                                                                                                                    end
                                                                                                                                                                else
                                                                                                                                                                    BTPZ(CFrame.new(- 5075.50927734375, 314.5155029296875, - 3150.0224609375))
                                                                                                                                                                end
                                                                                                                                                            else
                                                                                                                                                                Tween(CFrame.new(2681.2736816406, 1682.8092041016, - 7190.9853515625))
                                                                                                                                                            end
                                                                                                                                                        else
                                                                                                                                                            Tween(CFrame.new(- 288.74060058594, 49326.31640625, - 35248.59375))
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        Tween(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    Tween(CFrame.new(- 3032.7641601563, 317.89672851563, - 10075.373046875))
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                Tween(CFrame.new(6148.4116210938, 294.38687133789, - 6741.1166992188))
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            Tween(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        Tween(CFrame.new(- 6127.654296875, 15.951762199402, - 5040.2861328125))
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    Tween(CFrame.new(753.14288330078, 408.23559570313, - 5274.6147460938))
                                                                                                                                end
                                                                                                                            else
                                                                                                                                Tween(CFrame.new(- 5622.033203125, 492.19604492188, - 781.78552246094))
                                                                                                                            end
                                                                                                                        else
                                                                                                                            Tween(CFrame.new(- 1503.6224365234, 219.7956237793, 1369.3101806641))
                                                                                                                        end
                                                                                                                    else
                                                                                                                        Tween(CFrame.new(424.12698364258, 211.16171264648, - 427.54049682617))
                                                                                                                    end
                                                                                                                else
                                                                                                                    Tween(CFrame.new(- 2448.5300292969, 73.016105651855, - 3210.6306152344))
                                                                                                                end
                                                                                                            else
                                                                                                                Tween(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                                                                                                            end
                                                                                                        else
                                                                                                            Tween(CFrame.new(- 483.73370361328, 332.0383605957, 595.32708740234))
                                                                                                        end
                                                                                                    else
                                                                                                        Tween(CFrame.new(3780.0302734375, 22.652164459229, - 3498.5859375))
                                                                                                    end
                                                                                                else
                                                                                                    Tween(CFrame.new(- 11.311455726624, 29.276733398438, 2771.5224609375))
                                                                                                end
                                                                                            else
                                                                                                Tween(CFrame.new(- 380.47927856445, 77.220390319824, 255.82550048828))
                                                                                            end
                                                                                        else
                                                                                            Tween(CFrame.new(- 2850.20068, 7.39224768, 5354.99268))
                                                                                        end
                                                                                    else
                                                                                        Tween(CFrame.new(- 1442.16553, 29.8788261, - 28.3547478))
                                                                                    end
                                                                                else
                                                                                    Tween(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                                                                                end
                                                                            else
                                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                            end
                                                                        else
                                                                            Tween(CFrame.new(- 5247.7163085938, 12.883934020996, 8504.96875))
                                                                        end
                                                                    else
                                                                        Tween(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                                                                    end
                                                                else
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7894.6176757813, 5547.1416015625, - 380.29119873047))
                                                                end
                                                            else
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 4607.82275, 872.54248, - 1667.55688))
                                                            end
                                                        else
                                                            Tween(CFrame.new(- 4869.1025390625, 733.46051025391, - 2667.0180664063))
                                                        end
                                                    else
                                                        Tween(CFrame.new(- 1427.6203613281, 7.2881078720093, - 2792.7722167969))
                                                    end
                                                else
                                                    Tween(CFrame.new(- 4914.8212890625, 50.963626861572, 4281.0278320313))
                                                end
                                            else
                                                Tween(CFrame.new(1347.8067626953, 104.66806030273, - 1319.7370605469))
                                            end
                                        else
                                            Tween(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                                        end
                                    else
                                        Tween(CFrame.new(- 1181.3093261719, 4.7514905929565, 3803.5456542969))
                                    end
                                else
                                    Tween(CFrame.new(- 1612.7957763672, 36.852081298828, 149.12843322754))
                                end
                            else
                                Tween(CFrame.new(- 690.33081054688, 15.09425163269, 1582.2380371094))
                            end
                        else
                            Tween(CFrame.new(- 2566.4296875, 6.8556680679321, 2045.2561035156))
                        end
                    else
                        Tween(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                    end
                end
                if not _G.TeleportIsland then
					-- goto l3
                end
            end
        end
    end)
    v4.ToggleIsland:SetValue(false)
    function BTPZ(p547)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p547
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p547
    end
    local v548 = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits")
    Table_DevilFruitSniper = {}
    ShopDevilSell = {}
    local v549 = next
    local v550 = nil
    while true do
        local v551
        v550, v551 = v549(v548, v550)
        if v550 == nil then
            break
        end
        table.insert(Table_DevilFruitSniper, v551.Name)
        if v551.OnSale then
            table.insert(ShopDevilSell, v551.Name)
        end
    end
    _G.SelectFruit = ""
    local v552 = v3.Fruit:AddDropdown("DropdownFruit", {
        ["Title"] = "Dropdown",
        ["Values"] = Table_DevilFruitSniper,
        ["Multi"] = false,
        ["Default"] = 1
    })
    v552:SetValue("...")
    v552:OnChanged(function(p553)
        _G.SelectFruit = p553
    end)
    v3.Fruit:AddToggle("ToggleFruit", {
        ["Title"] = "Buy Fruit Sniper",
        ["Default"] = false
    }):OnChanged(function(p554)
        _G.AutoBuyFruitSniper = p554
    end)
    v4.ToggleFruit:SetValue(false)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.AutoBuyFruitSniper then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", "_G.SelectFruit", false)
                end
            end
        end)
    end)
    v3.Fruit:AddToggle("ToggleStore", {
        ["Title"] = "Store Fruit",
        ["Default"] = false
    }):OnChanged(function(p555)
        _G.AutoStoreFruit = p555
    end)
    v4.ToggleStore:SetValue(false)
    spawn(function()
        while task.wait() do
            if _G.AutoStoreFruit then
                pcall(function()
                    if _G.AutoStoreFruit then
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bomb-Bomb", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spike-Spike", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Chop-Chop", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spring-Spring", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rocket-Rocket", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Smoke-Smoke", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spin-Spin", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Flame-Flame", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Falcon", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ice-Ice", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Sand-Sand", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dark-Dark", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ghost-Ghost", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Diamond-Diamond", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Light-Light", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Love-Love", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rubber-Rubber", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Barrier-Barrier", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Magma-Magma", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Door-Door", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Quake-Quake", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Human-Human: Buddha", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spider-Spider", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Phoenix", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rumble-Rumble", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Pain-Pain", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Gravity-Gravity", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dough-Dough", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Shadow-Shadow", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Venom-Venom", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Control-Control", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Soul Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Soul-Soul", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dragon-Dragon", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Leopard-Leopard", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
                            end
                        end
                    end
                end)
            end
            wait(0.3)
        end
    end)
    v3.Fruit:AddToggle("ToggleRandomFruit", {
        ["Title"] = "Random Fruit",
        ["Default"] = false
    }):OnChanged(function(p556)
        _G.Random_Auto = p556
    end)
    v4.ToggleRandomFruit:SetValue(false)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.Random_Auto then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
                end
            end
        end)
    end)
    v3.Fruit:AddToggle("ToggleCollect", {
        ["Title"] = "Collect Devil Fruit",
        ["Default"] = false
    }):OnChanged(function(p557)
        _G.Tweenfruit = p557
    end)
    v4.ToggleCollect:SetValue(false)
    spawn(function()
        while wait(0.1) do
            if _G.Tweenfruit then
                local v558, v559, v560 = pairs(game.Workspace:GetChildren())
                while true do
                    local v561
                    v560, v561 = v558(v559, v560)
                    if v560 == nil then
                        break
                    end
                    if string.find(v561.Name, "Fruit") then
                        TP2(v561.Handle.CFrame)
                    end
                end
            end
        end
    end)
    v3.Fruit:AddParagraph({
        ["Title"] = "Esp",
        ["Content"] = ""
    })
    v3.Fruit:AddToggle("ToggleEspPlayer", {
        ["Title"] = "Esp Player",
        ["Default"] = false
    }):OnChanged(function(p562)
        ESPPlayer = p562
        UpdatePlayerChams()
    end)
    v4.ToggleEspPlayer:SetValue(false)
    v3.Fruit:AddToggle("ToggleEspFruit", {
        ["Title"] = "Esp Devil Fruit",
        ["Default"] = false
    }):OnChanged(function(p563)
        DevilFruitESP = p563
        while DevilFruitESP do
            wait()
            UpdateDevilChams()
        end
    end)
    v4.ToggleEspFruit:SetValue(false)
    v3.Fruit:AddToggle("ToggleEspIsland", {
        ["Title"] = "Esp Island",
        ["Default"] = false
    }):OnChanged(function(p564)
        IslandESP = p564
        while IslandESP do
            wait()
            UpdateIslandESP()
        end
    end)
    v4.ToggleEspIsland:SetValue(false)
    v3.Fruit:AddToggle("ToggleEspFlower", {
        ["Title"] = "Esp Flower",
        ["Default"] = false
    }):OnChanged(function(p565)
        FlowerESP = p565
        UpdateFlowerChams()
    end)
    v4.ToggleEspFlower:SetValue(false)
    spawn(function()
        while wait(2) do
            if FlowerESP then
                UpdateFlowerChams()
            end
            if DevilFruitESP then
                UpdateDevilChams()
            end
            if ChestESP then
                UpdateChestChams()
            end
            if ESPPlayer then
                UpdatePlayerChams()
            end
            if RealFruitESP then
                UpdateRealFruitChams()
            end
        end
    end)
    local v566 = v3.Raid:AddDropdown("DropdownRaid", {
        ["Title"] = "Dropdown",
        ["Values"] = {
            "Flame",
            "Ice",
            "Quake",
            "Light",
            "Dark",
            "Spider",
            "Rumble",
            "Magma",
            "Buddha",
            "Sand",
            "Phoenix",
            "Dough"
        },
        ["Multi"] = false,
        ["Default"] = 1
    })
    v566:SetValue("...")
    v566:OnChanged(function(p567)
        SelectChip = p567
    end)
    v3.Raid:AddToggle("ToggleBuy", {
        ["Title"] = "Buy Chip",
        ["Default"] = false
    }):OnChanged(function(p568)
        _G.Auto_Buy_Chips_Dungeon = p568
    end)
    v4.ToggleBuy:SetValue(false)
    spawn(function()
        while wait() do
            if _G.Auto_Buy_Chips_Dungeon then
                pcall(function()
                    local v569 = {
                        "RaidsNpc",
                        "Select",
                        SelectChip
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v569))
                end)
            end
        end
    end)
    v3.Raid:AddToggle("ToggleStart", {
        ["Title"] = "Start Raid",
        ["Default"] = false
    }):OnChanged(function(p570)
        _G.Auto_StartRaid = p570
    end)
    v4.ToggleStart:SetValue(false)
    spawn(function()
        while wait(0.1) do
            pcall(function()
                if _G.Auto_StartRaid and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false and (not game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
                    if Second_Sea then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                    elseif Third_Sea then
                        fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                    end
                end
            end)
        end
    end)
    v3.Raid:AddToggle("ToggleKillAura", {
        ["Title"] = "Kill Aura",
        ["Default"] = false
    }):OnChanged(function(p571)
        KillAura = p571
    end)
    v4.ToggleKillAura:SetValue(false)
    spawn(function()
        while wait() do
            if KillAura then
                pcall(function()
                    local v572, v573, v574 = pairs(game.Workspace.Enemies:GetDescendants())
                    while true do
                        local v575
                        v574, v575 = v572(v573, v574)
                        if v574 == nil then
                            break
                        end
                        if v575:FindFirstChild("Humanoid") and (v575:FindFirstChild("HumanoidRootPart") and v575.Humanoid.Health > 0) then
                            repeat
                                task.wait()
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                v575.Humanoid.Health = 0
                                v575.HumanoidRootPart.CanCollide = false
                            until not KillAura or (not v575.Parent or v575.Humanoid.Health <= 0)
                        end
                    end
                end)
            end
        end
    end)
    v3.Raid:AddToggle("ToggleNextIsland", {
        ["Title"] = "Next Island",
        ["Default"] = false
    }):OnChanged(function(p576)
        AutoNextIsland = p576
    end)
    v4.ToggleNextIsland:SetValue(false)
    spawn(function()
        while task.wait() do
            if AutoNextIsland then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                        if game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Island 5") then
                            Tween(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0, 70, 100))
                        elseif game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Island 4") then
                            Tween(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0, 70, 100))
                        elseif game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Island 3") then
                            Tween(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0, 70, 100))
                        elseif game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Island 2") then
                            Tween(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0, 70, 100))
                        elseif game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Island 1") then
                            Tween(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0, 70, 100))
                        end
                    end
                end)
            end
        end
    end)
    v3.Raid:AddToggle("ToggleAwake", {
        ["Title"] = "Auto Awake",
        ["Default"] = false
    }):OnChanged(function(p577)
        AutoAwakenAbilities = p577
    end)
    v4.ToggleAwake:SetValue(false)
    spawn(function()
        while task.wait() do
            if AutoAwakenAbilities then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
                end)
            end
        end
    end)
    v3.Raid:AddToggle("ToggleGetFruit", {
        ["Title"] = "Get Fruit Low Bely",
        ["Default"] = false
    }):OnChanged(function(p578)
        _G.Autofruit = p578
    end)
    spawn(function()
        while wait(0.1) do
            pcall(function()
                if _G.Autofruit then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Rocket-Rocket"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Spin-Spin"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Chop-Chop"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Spring-Spring"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Bomb-Bomb"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Smoke-Smoke"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Spike-Spike"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Flame-Flame"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Falcon-Falcon"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Ice-Ice"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Sand-Sand"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Dark-Dark"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Ghost-Ghost"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Diamond-Diamond"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Light-Light"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Rubber-Rubber"
                    }))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadFruit",
                        "Barrier-Barrier"
                    }))
                end
            end)
        end
    end)
    if Second_Sea then
        v3.Raid:AddButton({
            ["Title"] = "Raid Lab",
            ["Description"] = "",
            ["Callback"] = function()
                TP2(CFrame.new(- 6438.73535, 250.645355, - 4501.50684))
            end
        })
    elseif Third_Sea then
        v3.Raid:AddButton({
            ["Title"] = "Raid Lab",
            ["Description"] = "",
            ["Callback"] = function()
                TP2(CFrame.new(- 5017.40869, 314.844055, - 2823.0127, - 0.925743818, 4.48217499e-8, - 0.378151238, 4.55503146e-9, 1, 1.07377559e-7, 0.378151238, 9.7681621e-8, - 0.925743818))
            end
        })
    end
    v3.Raid:AddParagraph({
        ["Title"] = "Raid Law",
        ["Content"] = ""
    })
    v3.Raid:AddToggle("ToggleLaw", {
        ["Title"] = "Auto Law",
        ["Default"] = false
    }):OnChanged(function(p579)
        Auto_Law = p579
    end)
    v4.ToggleLaw:SetValue(false)
    spawn(function()
        pcall(function()
            while wait() do
                if Auto_Law and not (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or (game:GetService("Workspace").Enemies:FindFirstChild("Order") or game:GetService("ReplicatedStorage"):FindFirstChild("Order")))) then
                    wait(1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2")
                end
            end
        end)
    end)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if Auto_Law then
                    if not game:GetService("Workspace").Enemies:FindFirstChild("Order") and (not game:GetService("ReplicatedStorage"):FindFirstChild("Order") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip"))) then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                    end
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                            local v580, v581, v582 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                            while true do
                                local v583
                                v582, v583 = v580(v581, v582)
                                if v582 == nil then
                                    break
                                end
                                if v583.Name == "Order" then
                                    repeat
                                        game:GetService("RunService").Heartbeat:wait()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v583.HumanoidRootPart.CFrame * Pos)
                                        v583.HumanoidRootPart.CanCollide = false
                                        v583.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                                        Click()
                                    until not v583.Parent or (v583.Humanoid.Health <= 0 or Auto_Law == false)
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                            Tween(CFrame.new(- 6217.2021484375, 28.047645568848, - 5053.1357421875))
                        end
                    end
                end
            end
        end)
    end)
    v3.Race:AddButton({
        ["Title"] = "Timple Of Time",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
        end
    })
    v3.Race:AddButton({
        ["Title"] = "Lever Pull",
        ["Description"] = "",
        ["Callback"] = function()
            TP2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
        end
    })
    v3.Race:AddButton({
        ["Title"] = "Acient One",
        ["Description"] = "",
        ["Callback"] = function()
            TP2(CFrame.new(28981.552734375, 14888.4267578125, - 120.245849609375))
        end
    })
    v3.Race:AddParagraph({
        ["Title"] = "Auto Race",
        ["Content"] = ""
    })
    v3.Race:AddButton({
        ["Title"] = "Race Door",
        ["Description"] = "",
        ["Callback"] = function()
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(0.1)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(0.1)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(0.1)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(0.5)
            if game:GetService("Players").LocalPlayer.Data.Race.Value ~= "Human" then
                if game:GetService("Players").LocalPlayer.Data.Race.Value ~= "Skypiea" then
                    if game:GetService("Players").LocalPlayer.Data.Race.Value ~= "Fishman" then
                        if game:GetService("Players").LocalPlayer.Data.Race.Value ~= "Cyborg" then
                            if game:GetService("Players").LocalPlayer.Data.Race.Value ~= "Ghoul" then
                                if game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                                    TP2(CFrame.new(29012.341796875, 14890.9755859375, - 380.1492614746094))
                                end
                            else
                                TP2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                            end
                        else
                            TP2(CFrame.new(28502.681640625, 14895.9755859375, - 423.7279357910156))
                        end
                    else
                        TP2(CFrame.new(28231.17578125, 14890.9755859375, - 211.64173889160156))
                    end
                else
                    TP2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
                end
            else
                TP2(CFrame.new(29221.822265625, 14890.9755859375, - 205.99114990234375))
            end
        end
    })
    v3.Race:AddToggle("ToggleHumanandghoul", {
        ["Title"] = "Auto [ Human / Ghoul ] Trial",
        ["Default"] = false
    }):OnChanged(function(p584)
        KillAura = p584
    end)
    v4.ToggleHumanandghoul:SetValue(false)
    v3.Race:AddToggle("ToggleAutotrial", {
        ["Title"] = "Auto Trial",
        ["Default"] = false
    }):OnChanged(function(p585)
        _G.AutoQuestRace = p585
    end)
    v4.ToggleAutotrial:SetValue(false)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoQuestRace then
                    if game:GetService("Players").LocalPlayer.Data.Race.Value ~= "Human" then
                        if game:GetService("Players").LocalPlayer.Data.Race.Value ~= "Skypiea" then
                            if game:GetService("Players").LocalPlayer.Data.Race.Value ~= "Fishman" then
                                if game:GetService("Players").LocalPlayer.Data.Race.Value ~= "Cyborg" then
                                    if game:GetService("Players").LocalPlayer.Data.Race.Value ~= "Ghoul" then
                                        if game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                                            local v586, v587, v588 = pairs(game:GetService("Workspace"):GetDescendants())
                                            while true do
                                                local v589
                                                v588, v589 = v586(v587, v588)
                                                if v588 == nil then
                                                    break
                                                end
                                                if v589.Name == "StartPoint" then
                                                    Tween(v589.CFrame * CFrame.new(0, 10, 0))
                                                end
                                            end
                                        end
                                    else
                                        local v590, v591, v592 = pairs(game.Workspace.Enemies:GetDescendants())
                                        while true do
                                            local vu593
                                            v592, vu593 = v590(v591, v592)
                                            if v592 == nil then
                                                break
                                            end
                                            if vu593:FindFirstChild("Humanoid") and (vu593:FindFirstChild("HumanoidRootPart") and vu593.Humanoid.Health > 0) then
                                                pcall(function()
													-- upvalues: (ref) vu593
                                                    repeat
                                                        wait(0.1)
                                                        vu593.Humanoid.Health = 0
                                                        vu593.HumanoidRootPart.CanCollide = false
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                    until not _G.AutoQuestRace or (not vu593.Parent or vu593.Humanoid.Health <= 0)
                                                end)
                                            end
                                        end
                                    end
                                else
                                    Tween(CFrame.new(28654, 14898.7832, - 30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                                end
                            else
                                local v594, v595, v596 = pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants())
                                while true do
                                    local v597
                                    v596, v597 = v594(v595, v596)
                                    if v596 == nil then
                                        break
                                    end
                                    if v597.Name == "HumanoidRootPart" then
                                        Tween(v597.CFrame * Pos)
                                        local v598, v599, v600 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
                                        while true do
                                            local v601
                                            v600, v601 = v598(v599, v600)
                                            if v600 == nil then
                                                break
                                            end
                                            if v601:IsA("Tool") and v601.ToolTip == "Melee" then
                                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v601)
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        local v602, v603, v604 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
                                        while true do
                                            local v605
                                            v604, v605 = v602(v603, v604)
                                            if v604 == nil then
                                                break
                                            end
                                            if v605:IsA("Tool") and v605.ToolTip == "Blox Fruit" then
                                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v605)
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.5)
                                        local v606, v607, v608 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
                                        while true do
                                            local v609
                                            v608, v609 = v606(v607, v608)
                                            if v608 == nil then
                                                break
                                            end
                                            if v609:IsA("Tool") and v609.ToolTip == "Sword" then
                                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v609)
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.5)
                                        local v610, v611, v612 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
                                        while true do
                                            local v613
                                            v612, v613 = v610(v611, v612)
                                            if v612 == nil then
                                                break
                                            end
                                            if v613:IsA("Tool") and v613.ToolTip == "Gun" then
                                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v613)
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    end
                                end
                            end
                        else
                            local v614, v615, v616 = pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants())
                            while true do
                                local v617
                                v616, v617 = v614(v615, v616)
                                if v616 == nil then
                                    break
                                end
                                if v617.Name == "snowisland_Cylinder.081" then
                                    Tween(v617.CFrame * CFrame.new(0, 0, 0))
                                end
                            end
                        end
                    else
                        local v618, v619, v620 = pairs(game.Workspace.Enemies:GetDescendants())
                        while true do
                            local vu621
                            v620, vu621 = v618(v619, v620)
                            if v620 == nil then
                                break
                            end
                            if vu621:FindFirstChild("Humanoid") and (vu621:FindFirstChild("HumanoidRootPart") and vu621.Humanoid.Health > 0) then
                                pcall(function()
									-- upvalues: (ref) vu621
                                    repeat
                                        wait(0.1)
                                        vu621.Humanoid.Health = 0
                                        vu621.HumanoidRootPart.CanCollide = false
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until not _G.AutoQuestRace or (not vu621.Parent or vu621.Humanoid.Health <= 0)
                                end)
                            end
                        end
                    end
                end
            end
        end)
    end)
    v3.Race:AddParagraph({
        ["Title"] = "Misc Race",
        ["Content"] = "Auto Farm Acient Quest"
    })
    v3.Race:AddToggle("ToggleAutoAcientQuest", {
        ["Title"] = "Auto Acient Quest",
        ["Default"] = false
    }):OnChanged(function(p622)
        AutoFarmAcient = p622
    end)
    v4.ToggleAutoAcientQuest:SetValue(false)
    local vu623 = CFrame.new(216.211181640625, 126.9352035522461, - 12599.0732421875)
    spawn(function()
		-- upvalues: (ref) vu623
        while wait() do
            if AutoFarmAcient then
                pcall(function()
					-- upvalues: (ref) vu623
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or (game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or (game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel"))) then
                        local v624, v625, v626 = pairs(game:GetService("Workspace").Enemies:GetChildren())
                        while true do
                            local v627
                            v626, v627 = v624(v625, v626)
                            if v626 == nil then
                                break
                            end
                            if (v627.Name == "Cocoa Warrior" or (v627.Name == "Chocolate Bar Battler" or (v627.Name == "Sweet Thief" or v627.Name == "Candy Rebel"))) and (v627:FindFirstChild("Humanoid") and (v627:FindFirstChild("HumanoidRootPart") and v627.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    BringAcient = true
                                    v627.HumanoidRootPart.CanCollide = false
                                    v627.Humanoid.WalkSpeed = 0
                                    v627.Head.CanCollide = false
                                    FarmPos = v627.HumanoidRootPart.CFrame
                                    Tween(v627.HumanoidRootPart.CFrame * Pos)
                                    Click()
                                until not AutoFarmAcient or (not v627.Parent or v627.Humanoid.Health <= 0)
                                BringAcient = false
                            end
                        end
                    else
                        if BypassTP then
                            BTP(vu623)
                        else
                            Tween(vu623)
                        end
                        local v628, v629, v630 = pairs(game:GetService("ReplicatedStorage"):GetChildren())
                        while true do
                            local v631
                            v630, v631 = v628(v629, v630)
                            if v630 == nil then
                                break
                            end
                            if v631.Name ~= "Cocoa Warrior" then
                                if v631.Name ~= "Chocolate Bar Battler" then
                                    if v631.Name ~= "Sweet Thief" then
                                        if v631.Name == "Candy Rebel" then
                                            Tween(v631.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                        end
                                    else
                                        Tween(v631.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                    end
                                else
                                    Tween(v631.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                end
                            else
                                Tween(v631.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            end
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if AutoFarmAcient and game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                    AutoFarmAcient = true
                end
            end
        end)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if AutoFarmAcient then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                    wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
                end
            end)
        end
    end)
    v3.Shop:AddToggle("ToggleRandomBone", {
        ["Title"] = "Random Bone",
        ["Default"] = false
    }):OnChanged(function(p632)
        _G.AutoRandomBone = p632
    end)
    v4.ToggleRandomBone:SetValue(false)
    spawn(function()
        while wait(1e-52) do
            if _G.AutoRandomBone then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                    "Bones",
                    "Buy",
                    1,
                    1
                }))
            end
        end
    end)
    v3.Shop:AddButton({
        ["Title"] = "Geppo",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
        end
    })
    v3.Shop:AddButton({
        ["Title"] = "Buso Haki",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
        end
    })
    v3.Shop:AddButton({
        ["Title"] = "Soru",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
        end
    })
    v3.Shop:AddButton({
        ["Title"] = "Ken Haki",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
        end
    })
    v3.Shop:AddParagraph({
        ["Title"] = "Fighting Style",
        ["Content"] = ""
    })
    v3.Shop:AddButton({
        ["Title"] = "Black Leg",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
        end
    })
    v3.Shop:AddButton({
        ["Title"] = "Electro",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
        end
    })
    v3.Shop:AddButton({
        ["Title"] = "Fishman Karate",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
        end
    })
    v3.Shop:AddButton({
        ["Title"] = "Dragon Claw",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
        end
    })
    v3.Shop:AddButton({
        ["Title"] = "Superhuman",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
        end
    })
    v3.Shop:AddButton({
        ["Title"] = "Death Step",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
        end
    })
    v3.Shop:AddButton({
        ["Title"] = "Sharkman Karate",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
        end
    })
    v3.Shop:AddButton({
        ["Title"] = "Electric Claw",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
        end
    })
    v3.Shop:AddButton({
        ["Title"] = "Dragon Talon",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
        end
    })
    v3.Shop:AddButton({
        ["Title"] = "Godhuman",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
        end
    })
    v3.Shop:AddParagraph({
        ["Title"] = "Items",
        ["Content"] = ""
    })
    v3.Shop:AddButton({
        ["Title"] = "Refund Stats",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
        end
    })
    v3.Shop:AddButton({
        ["Title"] = "Reroll Race",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
        end
    })
    v3.Misc:AddToggle("ToggleRainbowHaki", {
        ["Title"] = "Rainbow Haki ",
        ["Default"] = value
    })
    RainbowHaki = value
    v3.Misc:AddToggle("ToggleRainbowYoru", {
        ["Title"] = "Rainbow Yoru ",
        ["Default"] = value
    })
    RainbowYoru = value
    spawn(function()
        while wait() do
            if RainbowYoru then
                pcall(function()
                    local v633, v634, v635 = pairs(game.Players.LocalPlayer.Character.DarkBlade.Right:GetChildren())
                    while true do
                        local v636
                        v635, v636 = v633(v634, v635)
                        if v635 == nil then
                            break
                        end
                        if v636.Name == "Runes" or (v636.Name == "Hold" or (v636.Name == "Bottom" or (v636.Name == "Gems" or (v636.Name == "Wings" or (v636.Name == "Blade" or v636.Name == "Tape"))))) then
                            v636.Color = Color3.fromHSV(tick() * 24 % 255 / 255, 1, 1)
                            v636.Material = "Neon"
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait(1) do
            if RainbowYoru then
                pcall(function()
                    local v637, v638, v639 = pairs(game.Players.LocalPlayer.Character.DarkBlade.Right.Handle:GetChildren())
                    while true do
                        local v640
                        v639, v640 = v637(v638, v639)
                        if v639 == nil then
                            break
                        end
                        if v640.Name == "Trail" then
                            v640.LightEmission = 1
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait(1) do
            if RainbowYoru then
                pcall(function()
                    local v641, v642, v643 = pairs(game.Players.LocalPlayer.Character.DarkBlade.Right.Handle.Attachment0:GetChildren())
                    while true do
                        local v644
                        v643, v644 = v641(v642, v643)
                        if v643 == nil then
                            break
                        end
                        if v644.Name == "Beam" then
                            v644.LightEmission = 1
                            v644.Texture = 0
                            v644.Width0 = 0
                            v644.Width1 = 0
                        end
                    end
                end)
            end
        end
    end)
    v3.Misc:AddToggle("ToggleInfiniteObRange", {
        ["Title"] = "Infinite Obversation Range",
        ["Default"] = value
    })
    getgenv().InfiniteObRange = value
    local v645 = game:GetService("Players").LocalPlayer.VisionRadius.Value
    while getgenv().InfiniteObRange do
        wait()
        local v646 = game:GetService("Players").LocalPlayer
        local v647 = v646.Character
        local v648 = v646.VisionRadius
        if v646 then
            if v647.Humanoid.Health <= 0 then
                wait(5)
            end
            v648.Value = math.huge
        elseif getgenv().InfiniteObRange == false and v646 then
            v648.Value = v645
        end
    end
    v3.Misc:AddToggle("ToggleShowChatdisabled", {
        ["Title"] = "Show Chat disabled",
        ["Default"] = value
    })
    _G.chat = value
    if _G.chat ~= true then
        if _G.chat == false then
            game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
        end
    else
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
    end
    v3.Misc:AddToggle("ToggleShowleaderboarddisabled", {
        ["Title"] = "Show leaderboard disabled",
        ["Default"] = a
    })
    _G.leaderboard = a
    if _G.leaderboard ~= true then
        if _G.leaderboard == false then
            game:GetService("StarterGui")
            game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
        end
    else
        game:GetService("StarterGui")
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
    end
    v3.Misc:AddToggle("ToggleHighlightMode", {
        ["Title"] = "Highlight Mode",
        ["Default"] = value
    })
    if value ~= true then
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.HP.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.StatsButton.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopButton.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Code.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Settings.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Mute.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.CrewButton.Visible = true
    else
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.HP.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.StatsButton.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.ShopButton.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Code.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Settings.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Mute.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.CrewButton.Visible = false
    end
    v3.Misc:AddToggle("ToggleXray", {
        ["Title"] = "Xray ",
        ["Default"] = value
    })
    NoWorld = value
    if NoWorld ~= true then
        if NoWorld == false then
            transparent = false
            x(transparent)
        end
    else
        transparent = true
        x(transparent)
    end
    function x(p649)
        if p649 then
            local v650, v651, v652 = pairs(workspace:GetDescendants())
            while true do
                local v653
                v652, v653 = v650(v651, v652)
                if v652 == nil then
                    break
                end
                if v653:IsA("BasePart") and not (v653.Parent:FindFirstChild("Humanoid") or v653.Parent.Parent:FindFirstChild("Humanoid")) then
                    v653.LocalTransparencyModifier = 0.7
                end
            end
        else
            local v654, v655, v656 = pairs(workspace:GetDescendants())
            while true do
                local v657
                v656, v657 = v654(v655, v656)
                if v656 == nil then
                    break
                end
                if v657:IsA("BasePart") and not (v657.Parent:FindFirstChild("Humanoid") or v657.Parent.Parent:FindFirstChild("Humanoid")) then
                    v657.LocalTransparencyModifier = 0
                end
            end
        end
    end
    spawn(function()
        while wait() do
            if RainbowHaki then
                pcall(function()
                    if game.Players.LocalPlayer.Character.HasBuso then
                        local v658, v659, v660 = pairs(game.Players.LocalPlayer.Character.Humanoid:GetChildren())
                        while true do
                            local v661
                            v660, v661 = v658(v659, v660)
                            if v660 == nil then
                                break
                            end
                            if v661.Name == "RightLowerArm_BusoLayer1" or (v661.Name == "RightLowerArm_BusoLayer2" or (v661.Name == "RightHand_BusoLayer1" or (v661.Name == "RightHand_BusoLayer2" or (v661.Name == "LeftLowerArm_BusoLayer1" or (v661.Name == "LeftLowerArm_BusoLayer2" or (v661.Name == "LeftHand_BusoLayer1" or (v661.Name == "LeftHand_BusoLayer2" or (v661.Name == "LeftHand_BusoLayer1" or (v661.Name == "RightUpperArm_BusoLayer1" or (v661.Name == "RightUpperArm_BusoLayer2" or (v661.Name == "LeftUpperArm_BusoLayer1" or (v661.Name == "LeftUpperArm_BusoLayer2" or (v661.Name == "UpperTorso_BusoLayer1" or (v661.Name == "UpperTorso_BusoLayer2" or (v661.Name == "LowerTorso_BusoLayer1" or (v661.Name == "LowerTorso_BusoLayer2" or (v661.Name == "Head_BusoLayer1" or (v661.Name == "Head_BusoLayer2" or (v661.Name == "RightUpperLeg_BusoLayer1" or (v661.Name == "RightUpperLeg_BusoLayer2" or (v661.Name == "LeftUpperLeg_BusoLayer1" or (v661.Name == "LeftUpperLeg_BusoLayer2" or (v661.Name == "RightLowerLeg_BusoLayer1" or (v661.Name == "RightLowerLeg_BusoLayer2" or (v661.Name == "LeftLowerLeg_BusoLayer1" or (v661.Name == "LeftLowerLeg_BusoLayer2" or (v661.Name == "LeftFoot_BusoLayer1" or (v661.Name == "LeftFoot_BusoLayer2" or (v661.Name == "RightFoot_BusoLayer1" or v661.Name == "RightFoot_BusoLayer2"))))))))))))))))))))))))))))) then
                                v661.Color = Color3.fromHSV(tick() * 24 % 255 / 255, 1, 1)
                            end
                        end
                    end
                end)
            end
        end
    end)
    v3.Misc:AddButton({
        ["Title"] = "Rejoin Server",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end
    })
    v3.Misc:AddButton({
        ["Title"] = "Hop Server",
        ["Description"] = "",
        ["Callback"] = function()
            Hop()
        end
    })
    function Hop()
        local vu662 = game.PlaceId
        local vu663 = {}
        local vu664 = ""
        local vu665 = os.date("!*t").hour
        function TPReturner()
			-- upvalues: (ref) vu664, (ref) vu662, (ref) vu663, (ref) vu665
            local v666
            if vu664 ~= "" then
                v666 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. vu662 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. vu664))
            else
                v666 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. vu662 .. "/servers/Public?sortOrder=Asc&limit=100"))
            end
            if v666.nextPageCursor and (v666.nextPageCursor ~= "null" and v666.nextPageCursor ~= nil) then
                vu664 = v666.nextPageCursor
            end
            local v667, v668, v669 = pairs(v666.data)
            local v670 = 0
            while true do
                local v671
                v669, v671 = v667(v668, v669)
                if v669 == nil then
                    break
                end
                local v672 = true
                local vu673 = tostring(v671.id)
                if tonumber(v671.maxPlayers) > tonumber(v671.playing) then
                    local v674, v675, v676 = pairs(vu663)
                    while true do
                        local v677
                        v676, v677 = v674(v675, v676)
                        if v676 == nil then
                            break
                        end
                        if v670 == 0 then
                            if tonumber(vu665) ~= tonumber(v677) then
                                pcall(function()
									-- upvalues: (ref) vu663, (ref) vu665
                                    vu663 = {}
                                    table.insert(vu663, vu665)
                                end)
                            end
                        elseif vu673 == tostring(v677) then
                            v672 = false
                        end
                        v670 = v670 + 1
                    end
                    if v672 == true then
                        table.insert(vu663, vu673)
                        wait()
                        pcall(function()
							-- upvalues: (ref) vu662, (ref) vu673
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(vu662, vu673, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
        function Teleport()
			-- upvalues: (ref) vu664
            while wait() do
                pcall(function()
					-- upvalues: (ref) vu664
                    TPReturner()
                    if vu664 ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        Teleport()
    end
    function UpdateIslandESP()
        local v678, v679, v680 = pairs(game:GetService("Workspace")._WorldOrigin.Locations:GetChildren())
        while true do
            local vu681
            v680, vu681 = v678(v679, v680)
            if v680 == nil then
                break
            end
            pcall(function()
				-- upvalues: (ref) vu681
                if IslandESP then
                    if vu681.Name ~= "Sea" then
                        if vu681:FindFirstChild("NameEsp") then
                            vu681.NameEsp.TextLabel.Text = vu681.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - vu681.Position).Magnitude / 3) .. " Distance"
                        else
                            local v682 = Instance.new("BillboardGui", vu681)
                            v682.Name = "NameEsp"
                            v682.ExtentsOffset = Vector3.new(0, 1, 0)
                            v682.Size = UDim2.new(1, 200, 1, 30)
                            v682.Adornee = vu681
                            v682.AlwaysOnTop = true
                            local v683 = Instance.new("TextLabel", v682)
                            v683.Font = "GothamBold"
                            v683.FontSize = "Size14"
                            v683.TextWrapped = true
                            v683.Size = UDim2.new(1, 0, 1, 0)
                            v683.TextYAlignment = "Top"
                            v683.BackgroundTransparency = 1
                            v683.TextStrokeTransparency = 0.5
                            v683.TextColor3 = Color3.fromRGB(7, 236, 240)
                        end
                    end
                elseif vu681:FindFirstChild("NameEsp") then
                    vu681:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
    function isnil(p684)
        return p684 == nil
    end
    Number = math.random(1, 1000000)
    v3.Misc:AddButton({
        ["Title"] = "Hop Server Low Player",
        ["Description"] = "",
        ["Callback"] = function()
            getgenv().AutoTeleport = true
            getgenv().DontTeleportTheSameNumber = true
            getgenv().CopytoClipboard = false
            if not game:IsLoaded() then
                print("Game is loading waiting...")
            end
            local vu685 = math.huge
            local vu686 = nil
            local vu687 = nil
            local vu688 = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
            function serversearch()
				-- upvalues: (ref) vu688, (ref) vu685, (ref) vu686, (ref) vu687
                local v689, v690, v691 = pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(vu688)).data)
                while true do
                    local v692
                    v691, v692 = v689(v690, v691)
                    if v691 == nil then
                        break
                    end
                    if type(v692) == "table" and (v692.playing ~= nil and vu685 > v692.playing) then
                        vu686 = v692.maxPlayers
                        vu685 = v692.playing
                        vu687 = v692.id
                    end
                end
            end
            function getservers()
				-- upvalues: (ref) vu688
                serversearch()
                local v693, v694, v695 = pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(vu688)))
                while true do
                    local v696
                    v695, v696 = v693(v694, v695)
                    if v695 == nil then
                        break
                    end
                    if v695 == "nextPageCursor" then
                        if vu688:find("&cursor=") then
                            vu688 = vu688:gsub(vu688:sub((vu688:find("&cursor="))), "")
                        end
                        vu688 = vu688 .. "&cursor=" .. v696
                        getservers()
                    end
                end
            end
            getservers()
            if AutoTeleport then
                if DontTeleportTheSameNumber then
                    if # game:GetService("Players"):GetPlayers() - 4 == vu685 then
                        return warn("It has same number of players (except you)")
                    end
                    if vu687 == game.JobId then
                        return warn("Your current server is the most empty server atm")
                    end
                end
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, vu687)
            end
        end
    })
    v3.Misc:AddParagraph({
        ["Title"] = "Open Ui",
        ["Content"] = ""
    })
    v3.Misc:AddButton({
        ["Title"] = "Devil Shop",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
        end
    })
    v3.Misc:AddButton({
        ["Title"] = "Color Haki",
        ["Description"] = "",
        ["Callback"] = function()
            game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
        end
    })
    v3.Misc:AddButton({
        ["Title"] = "Title Name",
        ["Description"] = "",
        ["Callback"] = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                "getTitles"
            }))
            game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
        end
    })
    v3.Misc:AddToggle("ToggleGraphic", {
        ["Title"] = "Graphic ",
        ["Default"] = v
    })
    if v then
        getgenv().mode = "Autumn"
        local v697 = game.Lighting
        v697.Ambient = Color3.fromRGB(33, 33, 33)
        v697.Brightness = 0.3
        v697.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
        v697.ColorShift_Top = Color3.fromRGB(255, 247, 237)
        v697.EnvironmentDiffuseScale = 0.105
        v697.EnvironmentSpecularScale = 0.522
        v697.GlobalShadows = true
        v697.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
        v697.ShadowSoftness = 0.04
        v697.GeographicLatitude = - 15.525
        v697.ExposureCompensation = 0.75
        local v698 = Instance.new("BloomEffect", v697)
        v698.Name = "BloomEffect_Graphic"
        v698.Enabled = true
        v698.Intensity = 0.04
        v698.Size = 1900
        v698.Threshold = 0.915
        local v699 = Instance.new("ColorCorrectionEffect", v697)
        v699.Name = "ColorCorrectionEffect1_Graphic"
        v699.Brightness = 0.176
        v699.Contrast = 0.39
        v699.Enabled = true
        v699.Saturation = 0.2
        v699.TintColor = Color3.fromRGB(217, 145, 57)
        if getgenv().mode ~= "Summer" then
            if getgenv().mode == "Autumn" then
                v699.TintColor = Color3.fromRGB(242, 193, 79)
            end
        else
            v699.TintColor = Color3.fromRGB(255, 220, 148)
        end
        local v700 = Instance.new("DepthOfFieldEffect", Graphic)
        v700.Name = "DepthOfFieldEffect_Graphic"
        v700.Enabled = true
        v700.FarIntensity = 0.077
        v700.FocusDistance = 21.54
        v700.InFocusRadius = 20.77
        v700.NearIntensity = 0.277
        local v701 = Instance.new("ColorCorrectionEffect", v697)
        v701.Name = "ColorCorrectionEffect2_Graphic"
        v701.Brightness = 0
        v701.Contrast = - 0.07
        v701.Saturation = 0
        v701.Enabled = true
        v701.TintColor = Color3.fromRGB(255, 247, 239)
        local v702 = Instance.new("ColorCorrectionEffect", v697)
        v702.Name = "ColorCorrectionEffect3_Graphic"
        v702.Brightness = 0.2
        v702.Contrast = 0.45
        v702.Saturation = - 0.1
        v702.Enabled = true
        v702.TintColor = Color3.fromRGB(255, 255, 255)
        local v703 = Instance.new("SunRaysEffect", v697)
        v703.Name = "SunRaysEffect_Graphic"
        v703.Enabled = false
        v703.Intensity = 0.01
        v703.Spread = 0.146
    else
        local v704 = game.Lighting
        v704.Ambient = Color3.fromRGB(170, 170, 170)
        v704.Brightness = 2
        v704.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
        v704.ColorShift_Top = Color3.fromRGB(0, 0, 0)
        v704.EnvironmentDiffuseScale = 0.105
        v704.EnvironmentSpecularScale = 0.522
        v704.GlobalShadows = false
        v704.OutdoorAmbient = Color3.fromRGB(127, 127, 127)
        v704.ShadowSoftness = 0
        v704.GeographicLatitude = 66
        v704.ExposureCompensation = 0.2
        game:GetService("Lighting").BloomEffect_Graphic:Destroy()
        game:GetService("Lighting").ColorCorrectionEffect1_Graphic:Destroy()
        game:GetService("Lighting").ColorCorrectionEffect2_Graphic:Destroy()
        game:GetService("Lighting").ColorCorrectionEffect3_Graphic:Destroy()
        game:GetService("Lighting").SunRaysEffect_Graphic:Destroy()
    end
    return
end