-- ts file was generated at discord.gg/25ms

local u1 = loadstring(game:HttpGet('https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua'))()
local v2 = u1:CreateWindow({
    Title = 'Banana Cat Hub-Blox Fruit [ Premium ]',
    SubTitle = 'By Obii',
    TabWidth = 160,
    Theme = 'Dark',
    Acrylic = false,
    Size = UDim2.fromOffset(500, 320),
    MinimizeKey = Enum.KeyCode.End,
})
local v3 = {
    Home = v2:AddTab({
        Title = 'Tab Information',
    }),
    Main = v2:AddTab({
        Title = 'Tab Farming',
    }),
    Sea = v2:AddTab({
        Title = 'Tab Volcano And Sea Event',
    }),
    ITM = v2:AddTab({
        Title = 'Tab Farming Other',
    }),
    Setting = v2:AddTab({
        Title = 'Setting Farm',
    }),
    Status = v2:AddTab({
        Title = 'Tab Status And Server',
    }),
    Stats = v2:AddTab({
        Title = 'Tab Stats',
    }),
    Player = v2:AddTab({
        Title = 'Tab Local Player',
    }),
    Teleport = v2:AddTab({
        Title = 'Tab Teleport',
    }),
    Visual = v2:AddTab({
        Title = 'Tab Visual',
    }),
    Fruit = v2:AddTab({
        Title = 'Tab Esp And Fruit',
    }),
    Raid = v2:AddTab({
        Title = 'Tab Raid',
    }),
    Race = v2:AddTab({
        Title = 'Tab Upgrade Race',
    }),
    Shop = v2:AddTab({
        Title = 'Tab Shop',
    }),
    Misc = v2:AddTab({
        Title = 'Tab Misc',
    }),
}
local _Options = u1.Options
local _PlaceId = game.PlaceId

if _PlaceId == 2753915549 then
    Sea1 = true
elseif _PlaceId == 4442272183 then
    Sea2 = true
elseif _PlaceId == 7449423635 then
    Sea3 = true
else
    game:Shutdown()
end

game:GetService('Players').LocalPlayer.Idled:connect(function()
    game:GetService('VirtualUser'):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait()
    game:GetService('VirtualUser'):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

Sea1 = false
Sea2 = false
Sea3 = false

local _PlaceId2 = game.PlaceId

if _PlaceId2 == 2753915549 then
    Sea1 = true
elseif _PlaceId2 == 4442272183 then
    Sea2 = true
elseif _PlaceId2 == 7449423635 then
    Sea3 = true
end

function CheckLevel()
    local _Value = game:GetService('Players').LocalPlayer.Data.Level.Value

    if Sea1 then
        if _Value == 1 or (_Value <= 9 or SelectMonster == 'Bandit') then
            Ms = 'Bandit'
            NameQuest = 'BanditQuest1'
            QuestLv = 1
            NameMon = 'Bandit'
            CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
        elseif _Value == 10 or (_Value <= 14 or SelectMonster == 'Monkey') then
            Ms = 'Monkey'
            NameQuest = 'JungleQuest'
            QuestLv = 1
            NameMon = 'Monkey'
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
        elseif _Value == 15 or (_Value <= 29 or SelectMonster == 'Gorilla') then
            Ms = 'Gorilla'
            NameQuest = 'JungleQuest'
            QuestLv = 2
            NameMon = 'Gorilla'
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
        elseif _Value == 30 or (_Value <= 39 or SelectMonster == 'Pirate') then
            Ms = 'Pirate'
            NameQuest = 'BuggyQuest1'
            QuestLv = 1
            NameMon = 'Pirate'
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
        elseif _Value == 40 or (_Value <= 59 or SelectMonster == 'Brute') then
            Ms = 'Brute'
            NameQuest = 'BuggyQuest1'
            QuestLv = 2
            NameMon = 'Brute'
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
        elseif _Value == 60 or (_Value <= 74 or SelectMonster == 'Desert Bandit') then
            Ms = 'Desert Bandit'
            NameQuest = 'DesertQuest'
            QuestLv = 1
            NameMon = 'Desert Bandit'
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
        elseif _Value == 75 or (_Value <= 89 or SelectMonster == 'Desert Officer') then
            Ms = 'Desert Officer'
            NameQuest = 'DesertQuest'
            QuestLv = 2
            NameMon = 'Desert Officer'
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
        elseif _Value == 90 or (_Value <= 99 or SelectMonster == 'Snow Bandit') then
            Ms = 'Snow Bandit'
            NameQuest = 'SnowQuest'
            QuestLv = 1
            NameMon = 'Snow Bandit'
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
        elseif _Value == 100 or (_Value <= 119 or SelectMonster == 'Snowman') then
            Ms = 'Snowman'
            NameQuest = 'SnowQuest'
            QuestLv = 2
            NameMon = 'Snowman'
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif _Value == 120 or (_Value <= 149 or SelectMonster == 'Chief Petty Officer') then
            Ms = 'Chief Petty Officer'
            NameQuest = 'MarineQuest2'
            QuestLv = 1
            NameMon = 'Chief Petty Officer'
            CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
            CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
        elseif _Value == 150 or (_Value <= 174 or SelectMonster == 'Sky Bandit') then
            Ms = 'Sky Bandit'
            NameQuest = 'SkyQuest'
            QuestLv = 1
            NameMon = 'Sky Bandit'
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
        elseif _Value == 175 or (_Value <= 189 or SelectMonster == 'Dark Master') then
            Ms = 'Dark Master'
            NameQuest = 'SkyQuest'
            QuestLv = 2
            NameMon = 'Dark Master'
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
        elseif _Value == 190 or (_Value <= 209 or SelectMonster == 'Prisoner') then
            Ms = 'Prisoner'
            NameQuest = 'PrisonerQuest'
            QuestLv = 1
            NameMon = 'Prisoner'
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
            CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, -0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
        elseif _Value == 210 or (_Value <= 249 or SelectMonster == 'Dangerous Prisoner') then
            Ms = 'Dangerous Prisoner'
            NameQuest = 'PrisonerQuest'
            QuestLv = 2
            NameMon = 'Dangerous Prisoner'
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
            CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, -0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827)
        elseif _Value == 250 or (_Value <= 274 or SelectMonster == 'Toga Warrior') then
            Ms = 'Toga Warrior'
            NameQuest = 'ColosseumQuest'
            QuestLv = 1
            NameMon = 'Toga Warrior'
            CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
            CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
        elseif _Value == 275 or (_Value <= 299 or SelectMonster == 'Gladiator') then
            Ms = 'Gladiator'
            NameQuest = 'ColosseumQuest'
            QuestLv = 2
            NameMon = 'Gladiator'
            CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
            CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
        elseif _Value == 300 or (_Value <= 324 or SelectMonster == 'Military Soldier') then
            Ms = 'Military Soldier'
            NameQuest = 'MagmaQuest'
            QuestLv = 1
            NameMon = 'Military Soldier'
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
        elseif _Value == 325 or (_Value <= 374 or SelectMonster == 'Military Spy') then
            Ms = 'Military Spy'
            NameQuest = 'MagmaQuest'
            QuestLv = 2
            NameMon = 'Military Spy'
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon = CFrame.new(-5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, -0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
        elseif _Value == 375 or (_Value <= 399 or SelectMonster == 'Fishman Warrior') then
            Ms = 'Fishman Warrior'
            NameQuest = 'FishmanQuest'
            QuestLv = 1
            NameMon = 'Fishman Warrior'
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif _Value == 400 or (_Value <= 449 or SelectMonster == 'Fishman Commando') then
            Ms = 'Fishman Commando'
            NameQuest = 'FishmanQuest'
            QuestLv = 2
            NameMon = 'Fishman Commando'
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif _Value == 10 or (_Value <= 474 or SelectMonster == "God's Guard") then
            Ms = "God's Guard"
            NameQuest = 'SkyExp1Quest'
            QuestLv = 1
            NameMon = "God's Guard"
            CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
            CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif _Value == 475 or (_Value <= 524 or SelectMonster == 'Shanda') then
            Ms = 'Shanda'
            NameQuest = 'SkyExp1Quest'
            QuestLv = 2
            NameMon = 'Shanda'
            CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
            CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif _Value == 525 or (_Value <= 549 or SelectMonster == 'Royal Squad') then
            Ms = 'Royal Squad'
            NameQuest = 'SkyExp2Quest'
            QuestLv = 1
            NameMon = 'Royal Squad'
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
        elseif _Value == 550 or (_Value <= 624 or SelectMonster == 'Royal Soldier') then
            Ms = 'Royal Soldier'
            NameQuest = 'SkyExp2Quest'
            QuestLv = 2
            NameMon = 'Royal Soldier'
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
        elseif _Value == 625 or (_Value <= 649 or SelectMonster == 'Galley Pirate') then
            Ms = 'Galley Pirate'
            NameQuest = 'FountainQuest'
            QuestLv = 1
            NameMon = 'Galley Pirate'
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
        elseif _Value >= 650 or SelectMonster == 'Galley Captain' then
            Ms = 'Galley Captain'
            NameQuest = 'FountainQuest'
            QuestLv = 2
            NameMon = 'Galley Captain'
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
        end
    end
    if Sea2 then
        if _Value == 700 or (_Value <= 724 or SelectMonster == 'Raider') then
            Ms = 'Raider'
            NameQuest = 'Area1Quest'
            QuestLv = 1
            NameMon = 'Raider'
            CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
            CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
        elseif _Value == 725 or (_Value <= 774 or SelectMonster == 'Mercenary') then
            Ms = 'Mercenary'
            NameQuest = 'Area1Quest'
            QuestLv = 2
            NameMon = 'Mercenary'
            CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
            CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
        elseif _Value == 775 or (_Value <= 799 or SelectMonster == 'Swan Pirate') then
            Ms = 'Swan Pirate'
            NameQuest = 'Area2Quest'
            QuestLv = 1
            NameMon = 'Swan Pirate'
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
            CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
        elseif _Value == 800 or (_Value <= 874 or SelectMonster == 'Factory Staff') then
            Ms = 'Factory Staff'
            NameQuest = 'Area2Quest'
            QuestLv = 2
            NameMon = 'Factory Staff'
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
            CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
        elseif _Value == 875 or (_Value <= 899 or SelectMonster == 'Marine Lieutenan') then
            Ms = 'Marine Lieutenant'
            NameQuest = 'MarineQuest3'
            QuestLv = 1
            NameMon = 'Marine Lieutenant'
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
        elseif _Value == 900 or (_Value <= 949 or SelectMonster == 'Marine Captain') then
            Ms = 'Marine Captain'
            NameQuest = 'MarineQuest3'
            QuestLv = 2
            NameMon = 'Marine Captain'
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
        elseif _Value == 950 or (_Value <= 974 or SelectMonster == 'Zombie') then
            Ms = 'Zombie'
            NameQuest = 'ZombieQuest'
            QuestLv = 1
            NameMon = 'Zombie'
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
        elseif _Value == 975 or (_Value <= 999 or SelectMonster == 'Vampire') then
            Ms = 'Vampire'
            NameQuest = 'ZombieQuest'
            QuestLv = 2
            NameMon = 'Vampire'
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
        elseif _Value == 1000 or (_Value <= 1049 or SelectMonster == 'Snow Trooper') then
            Ms = 'Snow Trooper'
            NameQuest = 'SnowMountainQuest'
            QuestLv = 1
            NameMon = 'Snow Trooper'
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
        elseif _Value == 1050 or (_Value <= 1099 or SelectMonster == 'Winter Warrior') then
            Ms = 'Winter Warrior'
            NameQuest = 'SnowMountainQuest'
            QuestLv = 2
            NameMon = 'Winter Warrior'
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
        elseif _Value == 1100 or (_Value <= 1124 or SelectMonster == 'Lab Subordinate') then
            Ms = 'Lab Subordinate'
            NameQuest = 'IceSideQuest'
            QuestLv = 1
            NameMon = 'Lab Subordinate'
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
        elseif _Value == 1125 or (_Value <= 1174 or SelectMonster == 'Horned Warrior') then
            Ms = 'Horned Warrior'
            NameQuest = 'IceSideQuest'
            QuestLv = 2
            NameMon = 'Horned Warrior'
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
        elseif _Value == 1175 or (_Value <= 1199 or SelectMonster == 'Magma Ninja') then
            Ms = 'Magma Ninja'
            NameQuest = 'FireSideQuest'
            QuestLv = 1
            NameMon = 'Magma Ninja'
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
        elseif _Value == 1200 or (_Value <= 1249 or SelectMonster == 'Lava Pirate') then
            Ms = 'Lava Pirate'
            NameQuest = 'FireSideQuest'
            QuestLv = 2
            NameMon = 'Lava Pirate'
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
        elseif _Value == 1250 or (_Value <= 1274 or SelectMonster == 'Ship Deckhand') then
            Ms = 'Ship Deckhand'
            NameQuest = 'ShipQuest1'
            QuestLv = 1
            NameMon = 'Ship Deckhand'
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif _Value == 1275 or (_Value <= 1299 or SelectMonster == 'Ship Engineer') then
            Ms = 'Ship Engineer'
            NameQuest = 'ShipQuest1'
            QuestLv = 2
            NameMon = 'Ship Engineer'
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif _Value == 1300 or (_Value <= 1324 or SelectMonster == 'Ship Steward') then
            Ms = 'Ship Steward'
            NameQuest = 'ShipQuest2'
            QuestLv = 1
            NameMon = 'Ship Steward'
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif _Value == 1325 or (_Value <= 1349 or SelectMonster == 'Ship Officer') then
            Ms = 'Ship Officer'
            NameQuest = 'ShipQuest2'
            QuestLv = 2
            NameMon = 'Ship Officer'
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif _Value == 1350 or (_Value <= 1374 or SelectMonster == 'Arctic Warrior') then
            Ms = 'Arctic Warrior'
            NameQuest = 'FrostQuest'
            QuestLv = 1
            NameMon = 'Arctic Warrior'
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
            end
        elseif _Value == 1375 or (_Value <= 1424 or SelectMonster == 'Snow Lurker') then
            Ms = 'Snow Lurker'
            NameQuest = 'FrostQuest'
            QuestLv = 2
            NameMon = 'Snow Lurker'
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
        elseif _Value == 1425 or (_Value <= 1449 or SelectMonster == 'Sea Soldier') then
            Ms = 'Sea Soldier'
            NameQuest = 'ForgottenQuest'
            QuestLv = 1
            NameMon = 'Sea Soldier'
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
        elseif _Value >= 1450 or SelectMonster == 'Water Fighter' then
            Ms = 'Water Fighter'
            NameQuest = 'ForgottenQuest'
            QuestLv = 2
            NameMon = 'Water Fighter'
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
        end
    end
    if Sea3 then
        if _Value == 1500 or (_Value <= 1524 or SelectMonster == 'Pirate Millionaire') then
            Ms = 'Pirate Millionaire'
            NameQuest = 'PiratePortQuest'
            QuestLv = 1
            NameMon = 'Pirate Millionaire'
            CFrameQ = CFrame.new(-450.1046447753906, 107.68145751953125, 5950.72607421875)
            CFrameMon = CFrame.new(-193.99227905273438, 56.12502670288086, 5755.7880859375)
        elseif _Value == 1525 or (_Value <= 1574 or SelectMonster == 'Pistol Billionaire') then
            Ms = 'Pistol Billionaire'
            NameQuest = 'PiratePortQuest'
            QuestLv = 2
            NameMon = 'Pistol Billionaire'
            CFrameQ = CFrame.new(-450.1046447753906, 107.68145751953125, 5950.72607421875)
            CFrameMon = CFrame.new(-188.14462280273438, 84.49613189697266, 6337.0419921875)
        elseif _Value == 1575 or (_Value <= 1599 or SelectMonster == 'Dragon Crew Warrior') then
            Ms = 'Dragon Crew Warrior'
            NameQuest = 'DragonCrewQuest'
            QuestLv = 1
            NameMon = 'Dragon Crew Warrior'
            CFrameQ = CFrame.new(6735.11083984375, 126.99046325683594, -711.0979614257813)
            CFrameMon = CFrame.new(6615.2333984375, 50.847679138183594, -978.93408203125)
        elseif _Value == 1600 or (_Value <= 1624 or SelectMonster == 'Dragon Crew Archer') then
            Ms = 'Dragon Crew Archer'
            NameQuest = 'DragonCrewQuest'
            QuestLv = 2
            NameMon = 'Dragon Crew Archer'
            CFrameQ = CFrame.new(6735.11083984375, 126.99046325683594, -711.0979614257813)
            CFrameMon = CFrame.new(6818.58935546875, 483.718994140625, 512.726806640625)
        elseif _Value == 1625 or (_Value <= 1649 or SelectMonster == 'Hydra Enforcer') then
            Ms = 'Hydra Enforcer'
            NameQuest = 'VenomCrewQuest'
            QuestLv = 1
            NameMon = 'Hydra Enforcer'
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4547.115234375, 1001.60205078125, 334.1954650878906)
        elseif _Value == 1650 or (_Value <= 1699 or SelectMonster == 'Venomous Assailant') then
            Ms = 'Venomous Assailant'
            NameQuest = 'VenomCrewQuest'
            QuestLv = 2
            NameMon = 'Venomous Assailant'
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4637.88525390625, 1077.85595703125, 882.4183959960938)
        elseif _Value == 1700 or (_Value <= 1724 or SelectMonster == 'Marine Commodore') then
            Ms = 'Marine Commodore'
            NameQuest = 'MarineTreeIsland'
            QuestLv = 1
            NameMon = 'Marine Commodore'
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
        elseif _Value == 1725 or (_Value <= 1774 or SelectMonster == 'Marine Rear Admiral') then
            Ms = 'Marine Rear Admiral'
            NameQuest = 'MarineTreeIsland'
            QuestLv = 2
            NameMon = 'Marine Rear Admiral'
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
        elseif _Value == 1775 or (_Value <= 1799 or SelectMonster == 'Fishman Raider') then
            Ms = 'Fishman Raider'
            NameQuest = 'DeepForestIsland3'
            QuestLv = 1
            NameMon = 'Fishman Raider'
            CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
            CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
        elseif _Value == 1800 or (_Value <= 1824 or SelectMonster == 'Fishman Captain') then
            Ms = 'Fishman Captain'
            NameQuest = 'DeepForestIsland3'
            QuestLv = 2
            NameMon = 'Fishman Captain'
            CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
            CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
        elseif _Value == 1825 or (_Value <= 1849 or SelectMonster == 'Forest Pirate') then
            Ms = 'Forest Pirate'
            NameQuest = 'DeepForestIsland'
            QuestLv = 1
            NameMon = 'Forest Pirate'
            CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
        elseif _Value == 1850 or (_Value <= 1899 or SelectMonster == 'Mythological Pirate') then
            Ms = 'Mythological Pirate'
            NameQuest = 'DeepForestIsland'
            QuestLv = 2
            NameMon = 'Mythological Pirate'
            CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
        elseif _Value == 1900 or (_Value <= 1924 or SelectMonster == 'Jungle Pirate') then
            Ms = 'Jungle Pirate'
            NameQuest = 'DeepForestIsland2'
            QuestLv = 1
            NameMon = 'Jungle Pirate'
            CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
        elseif _Value == 1925 or (_Value <= 1974 or SelectMonster == 'Musketeer Pirate') then
            Ms = 'Musketeer Pirate'
            NameQuest = 'DeepForestIsland2'
            QuestLv = 2
            NameMon = 'Musketeer Pirate'
            CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
        elseif _Value == 1975 or (_Value <= 1999 or SelectMonster == 'Reborn Skeleton') then
            Ms = 'Reborn Skeleton'
            NameQuest = 'HauntedQuest1'
            QuestLv = 1
            NameMon = 'Reborn Skeleton'
            CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.5295423e-8, -0.999978542, 2.0492047e-8, 1, 4.5162068e-8, 0.999978542, -2.0195568e-8, -0.00655503059)
            CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -0.000013950732, -0.208259016, -1.0807393e-6, 1, -0.00007206303, 0.208259016, 0.00007070804, 0.978073597)
        elseif _Value == 2000 or (_Value <= 2024 or SelectMonster == 'Living Zombie') then
            Ms = 'Living Zombie'
            NameQuest = 'HauntedQuest1'
            QuestLv = 2
            NameMon = 'Living Zombie'
            CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.5295423e-8, -0.999978542, 2.0492047e-8, 1, 4.5162068e-8, 0.999978542, -2.0195568e-8, -0.00655503059)
            CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.7754714e-8, 0.0324240364, -2.5800633e-8, 1, -6.068485e-8, -0.0324240364, 5.9816389999999995e-8, 0.999474227)
        elseif _Value == 2025 or (_Value <= 2049 or SelectMonster == 'Demonic Soul') then
            Ms = 'Demonic Soul'
            NameQuest = 'HauntedQuest2'
            QuestLv = 1
            NameMon = 'Demonic Soul'
            CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
        elseif _Value == 2050 or (_Value <= 2074 or SelectMonster == 'Posessed Mummy') then
            Ms = 'Posessed Mummy'
            NameQuest = 'HauntedQuest2'
            QuestLv = 2
            NameMon = 'Posessed Mummy'
            CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
        elseif _Value == 2075 or (_Value <= 2099 or SelectMonster == 'Peanut Scout') then
            Ms = 'Peanut Scout'
            NameQuest = 'NutsIslandQuest'
            QuestLv = 1
            NameMon = 'Peanut Scout'
            CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
        elseif _Value == 2100 or (_Value <= 2124 or SelectMonster == 'Peanut President') then
            Ms = 'Peanut President'
            NameQuest = 'NutsIslandQuest'
            QuestLv = 2
            NameMon = 'Peanut President'
            CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
        elseif _Value == 2125 or (_Value <= 2149 or SelectMonster == 'Ice Cream Chef') then
            Ms = 'Ice Cream Chef'
            NameQuest = 'IceCreamIslandQuest'
            QuestLv = 1
            NameMon = 'Ice Cream Chef'
            CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, '-0', -0.997525156, '-0', 1.00000012, '-0', 0.997525275, 0, -0.0703101456)
        elseif _Value == 2150 or (_Value <= 2199 or SelectMonster == 'Ice Cream Commander') then
            Ms = 'Ice Cream Commander'
            NameQuest = 'IceCreamIslandQuest'
            QuestLv = 2
            NameMon = 'Ice Cream Commander'
            CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, '-0', -0.997525156, '-0', 1.00000012, '-0', 0.997525275, 0, -0.0703101456)
        elseif _Value == 2200 or (_Value <= 2224 or SelectMonster == 'Cookie Crafter') then
            Ms = 'Cookie Crafter'
            NameQuest = 'CakeQuest1'
            QuestLv = 1
            NameMon = 'Cookie Crafter'
            CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
            CFrameMon = CFrame.new(-2321.71216, 36.699482, -12216.7871, -0.780074954, 0, 0.625686109, 0, 1, 0, -0.625686109, 0, -0.780074954)
        elseif _Value == 2225 or (_Value <= 2249 or SelectMonster == 'Cake Guard') then
            Ms = 'Cake Guard'
            NameQuest = 'CakeQuest1'
            QuestLv = 2
            NameMon = 'Cake Guard'
            CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
            CFrameMon = CFrame.new(-1418.11011, 36.6718941, -12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, -0.997700036, 0, 0.0677844882)
        elseif _Value == 2250 or (_Value <= 2274 or SelectMonster == 'Baking Staff') then
            Ms = 'Baking Staff'
            NameQuest = 'CakeQuest2'
            QuestLv = 1
            NameMon = 'Baking Staff'
            CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, '-0', -0.308980465, 0, 1, '-0', 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -0.254443765, 0, -0.967087567, 0, 1, 0, 0.967087567, 0, -0.254443765)
        elseif _Value == 2275 or (_Value <= 2299 or SelectMonster == 'Head Baker') then
            Ms = 'Head Baker'
            NameQuest = 'CakeQuest2'
            QuestLv = 2
            NameMon = 'Head Baker'
            CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, '-0', -0.308980465, 0, 1, '-0', 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-2251.5791, 52.2714615, -13033.3965, -0.991971016, 0, -0.126466095, 0, 1, 0, 0.126466095, 0, -0.991971016)
        elseif _Value == 2300 or (_Value <= 2324 or SelectMonster == 'Cocoa Warrior') then
            Ms = 'Cocoa Warrior'
            NameQuest = 'ChocQuest1'
            QuestLv = 1
            NameMon = 'Cocoa Warrior'
            CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            CFrameMon = CFrame.new(167.978516, 26.2254658, -12238.874, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)
        elseif _Value == 2325 or (_Value <= 2349 or SelectMonster == 'Chocolate Bar Battler') then
            Ms = 'Chocolate Bar Battler'
            NameQuest = 'ChocQuest1'
            QuestLv = 2
            NameMon = 'Chocolate Bar Battler'
            CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            CFrameMon = CFrame.new(701.312073, 25.5824986, -12708.2148, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685)
        elseif _Value == 2350 or (_Value <= 2374 or SelectMonster == 'Sweet Thief') then
            Ms = 'Sweet Thief'
            NameQuest = 'ChocQuest2'
            QuestLv = 1
            NameMon = 'Sweet Thief'
            CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
            CFrameMon = CFrame.new(-140.258301, 25.5824986, -12652.3115, 0.173624337, '-0', -0.984811902, 0, 1, '-0', 0.984811902, 0, 0.173624337)
        elseif _Value == 2375 or (_Value <= 2400 or SelectMonster == 'Candy Rebel') then
            Ms = 'Candy Rebel'
            NameQuest = 'ChocQuest2'
            QuestLv = 2
            NameMon = 'Candy Rebel'
            CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
            CFrameMon = CFrame.new(47.9231453, 25.5824986, -13029.2402, -0.819156051, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, -0.819156051)
        elseif _Value == 2400 or (_Value <= 2424 or SelectMonster == 'Candy Pirate') then
            Ms = 'Candy Pirate'
            NameQuest = 'CandyQuest1'
            QuestLv = 1
            NameMon = 'Candy Pirate'
            CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
            CFrameMon = CFrame.new(-1437.56348, 17.1481285, -14385.6934, 0.173624337, '-0', -0.984811902, 0, 1, '-0', 0.984811902, 0, 0.173624337)
        elseif _Value == 2425 or (_Value <= 2449 or SelectMonster == 'Snow Demon') then
            Ms = 'Snow Demon'
            NameQuest = 'CandyQuest1'
            QuestLv = 2
            NameMon = 'Snow Demon'
            CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
            CFrameMon = CFrame.new(-916.222656, 17.1481285, -14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
        elseif _Value == 2450 or (_Value <= 2474 or SelectMonster == 'Isle Outlaw') then
            Ms = 'Isle Outlaw'
            NameQuest = 'TikiQuest1'
            QuestLv = 1
            NameMon = 'Isle Outlaw'
            CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632813)
            CFrameMon = CFrame.new(-16162.8193359375, 11.6863374710083, -96.45481872558594)
        elseif _Value == 2475 or (_Value <= 2499 or SelectMonster == 'Island Boy') then
            Ms = 'Island Boy'
            NameQuest = 'TikiQuest1'
            QuestLv = 2
            NameMon = 'Island Boy'
            CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632813)
            CFrameMon = CFrame.new(-16357.3125, 20.632822036743164, 1005.64892578125)
        elseif _Value == 2500 or (_Value <= 2524 or SelectMonster == 'Sun-kissed Warrior') then
            Ms = 'Sun-kissed Warrior'
            NameQuest = 'TikiQuest2'
            QuestLv = 1
            NameMon = 'Sun-kissed Warrior'
            CFrameQ = CFrame.new(-16541.021484375, 54.77081298828125, 1051.461181640625)
            CFrameMon = CFrame.new(-16357.3125, 20.632822036743164, 1005.64892578125)
        elseif _Value == 2525 or (_Value <= 2549 or SelectMonster == 'Isle Champion') then
            Ms = 'Isle Champion'
            NameQuest = 'TikiQuest2'
            QuestLv = 2
            NameMon = 'Isle Champion'
            CFrameQ = CFrame.new(-16541.021484375, 54.77081298828125, 1051.461181640625)
            CFrameMon = CFrame.new(-16848.94140625, 21.68633460998535, 1041.4490966796875)
        elseif _Value == 2550 or (_Value <= 2574 or SelectMonster == 'Serpent Hunter') then
            Ms = 'Serpent Hunter'
            NameQuest = 'TikiQuest3'
            QuestLv = 1
            NameMon = 'Serpent Hunter'
            CFrameQ = CFrame.new(-16665.19140625, 104.59640502929688, 1579.6943359375)
            CFrameMon = CFrame.new(-16621.4140625, 121.40631103515625, 1290.6881103515625)
        elseif _Value == 2575 or (_Value <= 2599 or (SelectMonster == 'Skull Slayer' or _Value == 2600)) then
            Ms = 'Skull Slayer'
            NameQuest = 'TikiQuest3'
            QuestLv = 2
            NameMon = 'Skull Slayer'
            CFrameQ = CFrame.new(-16665.19140625, 104.59640502929688, 1579.6943359375)
            CFrameMon = CFrame.new(-16811.5703125, 84.625244140625, 1542.235107421875)
        end
    end
end

if Sea1 then
    tableMon = {
        'Bandit',
        'Monkey',
        'Gorilla',
        'Pirate',
        'Brute',
        'Desert Bandit',
        'Desert Officer',
        'Snow Bandit',
        'Snowman',
        'Chief Petty Officer',
        'Sky Bandit',
        'Dark Master',
        'Prisoner',
        'Dangerous Prisoner',
        'Toga Warrior',
        'Gladiator',
        'Military Soldier',
        'Military Spy',
        'Fishman Warrior',
        'Fishman Commando',
        "God's Guard",
        'Shanda',
        'Royal Squad',
        'Royal Soldier',
        'Galley Pirate',
        'Galley Captain',
    }
elseif Sea2 then
    tableMon = {
        'Raider',
        'Mercenary',
        'Swan Pirate',
        'Factory Staff',
        'Marine Lieutenant',
        'Marine Captain',
        'Zombie',
        'Vampire',
        'Snow Trooper',
        'Winter Warrior',
        'Lab Subordinate',
        'Horned Warrior',
        'Magma Ninja',
        'Lava Pirate',
        'Ship Deckhand',
        'Ship Engineer',
        'Ship Steward',
        'Ship Officer',
        'Arctic Warrior',
        'Snow Lurker',
        'Sea Soldier',
        'Water Fighter',
    }
elseif Sea3 then
    tableMon = {
        'Pirate Millionaire',
        'Dragon Crew Warrior',
        'Dragon Crew Archer',
        'Hydra Enforcer',
        'Venomous Assailant',
        'Marine Commodore',
        'Marine Rear Admiral',
        'Fishman Raider',
        'Fishman Captain',
        'Forest Pirate',
        'Mythological Pirate',
        'Jungle Pirate',
        'Musketeer Pirate',
        'Reborn Skeleton',
        'Living Zombie',
        'Demonic Soul',
        'Posessed Mummy',
        'Peanut Scout',
        'Peanut President',
        'Ice Cream Chef',
        'Ice Cream Commander',
        'Cookie Crafter',
        'Cake Guard',
        'Baking Staff',
        'Head Baker',
        'Cocoa Warrior',
        'Chocolate Bar Battler',
        'Sweet Thief',
        'Candy Rebel',
        'Candy Pirate',
        'Snow Demon',
        'Isle Outlaw',
        'Island Boy',
        'Sun-kissed Warrior',
        'Isle Champion',
        'Serpent Hunter',
        'Skull Slayer',
    }
end
if Sea1 then
    AreaList = {
        'Jungle',
        'Buggy',
        'Desert',
        'Snow',
        'Marine',
        'Sky',
        'Prison',
        'Colosseum',
        'Magma',
        'Fishman',
        'Sky Island',
        'Fountain',
    }
elseif Sea2 then
    AreaList = {
        'Area 1',
        'Area 2',
        'Zombie',
        'Marine',
        'Snow Mountain',
        'Ice fire',
        'Ship',
        'Frost',
        'Forgotten',
    }
elseif Sea3 then
    AreaList = {
        'Pirate Port',
        'Amazon',
        'Marine Tree',
        'Deep Forest',
        'Haunted Castle',
        'Nut Island',
        'Ice Cream Island',
        'Cake Island',
        'Choco Island',
        'Candy Island',
        'Tiki Outpost',
    }
end

function CheckBossQuest()
    if Sea1 then
        if SelectBoss ~= 'The Gorilla King' then
            if SelectBoss ~= 'Bobby' then
                if SelectBoss ~= 'The Saw' then
                    if SelectBoss ~= 'Yeti' then
                        if SelectBoss ~= 'Mob Leader' then
                            if SelectBoss ~= 'Vice Admiral' then
                                if SelectBoss ~= 'Saber Expert' then
                                    if SelectBoss ~= 'Warden' then
                                        if SelectBoss ~= 'Chief Warden' then
                                            if SelectBoss ~= 'Swan' then
                                                if SelectBoss ~= 'Magma Admiral' then
                                                    if SelectBoss ~= 'Fishman Lord' then
                                                        if SelectBoss ~= 'Wysper' then
                                                            if SelectBoss ~= 'Thunder God' then
                                                                if SelectBoss ~= 'Cyborg' then
                                                                    if SelectBoss ~= 'Ice Admiral' then
                                                                        if SelectBoss == 'Greybeard' then
                                                                            BossMon = 'Greybeard'
                                                                            NameBoss = 'Greybeard'
                                                                            CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
                                                                        end
                                                                    else
                                                                        BossMon = 'Ice Admiral'
                                                                        NameBoss = 'Ice Admiral'
                                                                        CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
                                                                    end
                                                                else
                                                                    BossMon = 'Cyborg'
                                                                    NameBoss = 'Cyborg'
                                                                    NameQuestBoss = 'FountainQuest'
                                                                    QuestLvBoss = 3
                                                                    RewardBoss = 'Reward:\n$20,000\n7,500,000 Exp.'
                                                                    CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
                                                                    CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
                                                                end
                                                            else
                                                                BossMon = 'Thunder God'
                                                                NameBoss = 'Thunder God'
                                                                NameQuestBoss = 'SkyExp2Quest'
                                                                QuestLvBoss = 3
                                                                RewardBoss = 'Reward:\n$20,000\n5,800,000 Exp.'
                                                                CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
                                                                CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
                                                            end
                                                        else
                                                            BossMon = 'Wysper'
                                                            NameBoss = 'Wysper'
                                                            NameQuestBoss = 'SkyExp1Quest'
                                                            QuestLvBoss = 3
                                                            RewardBoss = 'Reward:\n$15,000\n4,800,000 Exp.'
                                                            CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
                                                            CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
                                                        end
                                                    else
                                                        BossMon = 'Fishman Lord'
                                                        NameBoss = 'Fishman Lord'
                                                        NameQuestBoss = 'FishmanQuest'
                                                        QuestLvBoss = 3
                                                        RewardBoss = 'Reward:\n$15,000\n4,000,000 Exp.'
                                                        CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                        CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
                                                    end
                                                else
                                                    BossMon = 'Magma Admiral'
                                                    NameBoss = 'Magma Admiral'
                                                    NameQuestBoss = 'MagmaQuest'
                                                    QuestLvBoss = 3
                                                    RewardBoss = 'Reward:\n$15,000\n2,800,000 Exp.'
                                                    CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
                                                    CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
                                                end
                                            else
                                                BossMon = 'Swan'
                                                NameBoss = 'Swan'
                                                NameQuestBoss = 'ImpelQuest'
                                                QuestLvBoss = 3
                                                RewardBoss = 'Reward:\n$15,000\n1,600,000 Exp.'
                                                CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
                                                CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
                                            end
                                        else
                                            BossMon = 'Chief Warden'
                                            NameBoss = 'Chief Warden'
                                            NameQuestBoss = 'ImpelQuest'
                                            QuestLvBoss = 2
                                            RewardBoss = 'Reward:\n$10,000\n1,000,000 Exp.'
                                            CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -0.000028042234, -0.939682961, 0.00181045406, 0.342041939)
                                            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
                                        end
                                    else
                                        BossMon = 'Warden'
                                        NameBoss = 'Warden'
                                        NameQuestBoss = 'ImpelQuest'
                                        QuestLvBoss = 1
                                        RewardBoss = 'Reward:\n$6,000\n850,000 Exp.'
                                        CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.499464e-6, 0.975376427, -0.000019541258, 1, 9.031621e-6, -0.975376427, -0.000021051976, 0.220546961)
                                        CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
                                    end
                                else
                                    NameBoss = 'Saber Expert'
                                    BossMon = 'Saber Expert'
                                    CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
                                end
                            else
                                BossMon = 'Vice Admiral'
                                NameBoss = 'Vice Admiral'
                                NameQuestBoss = 'MarineQuest2'
                                QuestLvBoss = 2
                                RewardBoss = 'Reward:\n$10,000\n180,000 Exp.'
                                CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
                                CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
                            end
                        else
                            BossMon = 'Mob Leader'
                            NameBoss = 'Mob Leader'
                            CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
                        end
                    else
                        BossMon = 'Yeti'
                        NameBoss = 'Yeti'
                        NameQuestBoss = 'SnowQuest'
                        QuestLvBoss = 3
                        RewardBoss = 'Reward:\n$10,000\n180,000 Exp.'
                        CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
                        CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
                    end
                else
                    BossMon = 'The Saw'
                    NameBoss = 'The Saw'
                    CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
                end
            else
                BossMon = 'Bobby'
                NameBoss = 'Bobby'
                NameQuestBoss = 'BuggyQuest1'
                QuestLvBoss = 3
                RewardBoss = 'Reward:\n$8,000\n35,000 Exp.'
                CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
                CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
            end
        else
            BossMon = 'The Gorilla King'
            NameBoss = 'The Gorrila King'
            NameQuestBoss = 'JungleQuest'
            QuestLvBoss = 3
            RewardBoss = 'Reward:\n$2,000\n7,000 Exp.'
            CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
        end
    end
    if Sea2 then
        if SelectBoss ~= 'Diamond' then
            if SelectBoss ~= 'Jeremy' then
                if SelectBoss ~= 'Fajita' then
                    if SelectBoss ~= 'Don Swan' then
                        if SelectBoss ~= 'Smoke Admiral' then
                            if SelectBoss ~= 'Awakened Ice Admiral' then
                                if SelectBoss ~= 'Tide Keeper' then
                                    if SelectBoss ~= 'Darkbeard' then
                                        if SelectBoss ~= 'Cursed Captain' then
                                            if SelectBoss == 'Order' then
                                                BossMon = 'Order'
                                                NameBoss = 'Order'
                                                CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
                                            end
                                        else
                                            BossMon = 'Cursed Captain'
                                            NameBoss = 'Cursed Captain'
                                            CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
                                        end
                                    else
                                        BossMon = 'Darkbeard'
                                        NameBoss = 'Darkbeard'
                                        CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
                                    end
                                else
                                    BossMon = 'Tide Keeper'
                                    NameBoss = 'Tide Keeper'
                                    NameQuestBoss = 'ForgottenQuest'
                                    QuestLvBoss = 3
                                    RewardBoss = 'Reward:\n$12,500\n38,000,000 Exp.'
                                    CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
                                    CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
                                end
                            else
                                BossMon = 'Awakened Ice Admiral'
                                NameBoss = 'Awakened Ice Admiral'
                                NameQuestBoss = 'FrostQuest'
                                QuestLvBoss = 3
                                RewardBoss = 'Reward:\n$20,000\n36,000,000 Exp.'
                                CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
                                CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
                            end
                        else
                            BossMon = 'Smoke Admiral'
                            NameBoss = 'Smoke Admiral'
                            NameQuestBoss = 'IceSideQuest'
                            QuestLvBoss = 3
                            RewardBoss = 'Reward:\n$20,000\n25,000,000 Exp.'
                            CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
                            CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
                        end
                    else
                        BossMon = 'Don Swan'
                        NameBoss = 'Don Swan'
                        CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
                    end
                else
                    BossMon = 'Fajita'
                    NameBoss = 'Fajita'
                    NameQuestBoss = 'MarineQuest3'
                    QuestLvBoss = 3
                    RewardBoss = 'Reward:\n$25,000\n15,000,000 Exp.'
                    CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
                    CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
                end
            else
                BossMon = 'Jeremy'
                NameBoss = 'Jeremy'
                NameQuestBoss = 'Area2Quest'
                QuestLvBoss = 3
                RewardBoss = 'Reward:\n$25,000\n11,500,000 Exp.'
                CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
                CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
            end
        else
            BossMon = 'Diamond'
            NameBoss = 'Diamond'
            NameQuestBoss = 'Area1Quest'
            QuestLvBoss = 3
            RewardBoss = 'Reward:\n$25,000\n9,000,000 Exp.'
            CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
            CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
        end
    end
    if Sea3 then
        if SelectBoss ~= 'Stone' then
            if SelectBoss ~= 'Hydra Leader' then
                if SelectBoss ~= 'Kilo Admiral' then
                    if SelectBoss ~= 'Captain Elephant' then
                        if SelectBoss ~= 'Beautiful Pirate' then
                            if SelectBoss ~= 'Cake Queen' then
                                if SelectBoss ~= 'Longma' then
                                    if SelectBoss ~= 'Soul Reaper' then
                                        if SelectBoss == 'rip_indra True Form' then
                                            BossMon = 'rip_indra True Form'
                                            NameBoss = 'rip_indra True Form'
                                            CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
                                        end
                                    else
                                        BossMon = 'Soul Reaper'
                                        NameBoss = 'Soul Reaper'
                                        CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
                                    end
                                else
                                    BossMon = 'Longma'
                                    NameBoss = 'Longma'
                                    CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
                                end
                            else
                                BossMon = 'Cake Queen'
                                NameBoss = 'Cake Queen'
                                NameQuestBoss = 'IceCreamIslandQuest'
                                QuestLvBoss = 3
                                RewardBoss = 'Reward:\n$30,000\n112,500,000 Exp.'
                                CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
                                CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
                            end
                        else
                            BossMon = 'Beautiful Pirate'
                            NameBoss = 'Beautiful Pirate'
                            NameQuestBoss = 'DeepForestIsland2'
                            QuestLvBoss = 3
                            RewardBoss = 'Reward:\n$50,000\n70,000,000 Exp.'
                            CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
                            CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
                        end
                    else
                        BossMon = 'Captain Elephant'
                        NameBoss = 'Captain Elephant'
                        NameQuestBoss = 'DeepForestIsland'
                        QuestLvBoss = 3
                        RewardBoss = 'Reward:\n$40,000\n67,000,000 Exp.'
                        CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
                        CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
                    end
                else
                    BossMon = 'Kilo Admiral'
                    NameBoss = 'Kilo Admiral'
                    NameQuestBoss = 'MarineTreeIsland'
                    QuestLvBoss = 3
                    RewardBoss = 'Reward:\n$35,000\n56,000,000 Exp.'
                    CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
                    CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
                end
            else
                BossMon = 'Hydra Leader'
                NameBoss = 'Hydra Leader'
                NameQuestBoss = 'VenomCrewQuest'
                QuestLvBoss = 3
                RewardBoss = 'Reward:\n$30,000\n52,000,000 Exp.'
                CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
                CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
            end
        else
            BossMon = 'Stone'
            NameBoss = 'Stone'
            NameQuestBoss = 'PiratePortQuest'
            QuestLvBoss = 3
            RewardBoss = 'Reward:\n$25,000\n40,000,000 Exp.'
            CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
            CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
        end
    end
end
function MaterialMon()
    if SelectMaterial ~= 'Radioactive Material' then
        if SelectMaterial ~= 'Mystic Droplet' then
            if SelectMaterial ~= 'Magma Ore' then
                if SelectMaterial ~= 'Angel Wings' then
                    if SelectMaterial ~= 'Leather' then
                        if SelectMaterial ~= 'Scrap Metal' then
                            if SelectMaterial ~= 'Fish Tail' then
                                if SelectMaterial ~= 'Demonic Wisp' then
                                    if SelectMaterial ~= 'Vampire Fang' then
                                        if SelectMaterial ~= 'Conjured Cocoa' then
                                            if SelectMaterial ~= 'Dragon Scale' then
                                                if SelectMaterial ~= 'Gunpowder' then
                                                    if SelectMaterial ~= 'Hydra Enforcer' then
                                                        if SelectMaterial ~= 'Venomous Assailant' then
                                                            if SelectMaterial == 'Mini Tusk' then
                                                                MMon = 'Mythological Pirate'
                                                                MPos = CFrame.new()
                                                                SP = 'Default'
                                                            end
                                                        else
                                                            MMon = 'Venomous Assailant'
                                                            MPos = CFrame.new(4879.92041015625, 1089.46142578125, 1104.00830078125)
                                                            SP = 'Default'
                                                        end
                                                    else
                                                        MMon = 'Hydra Enforcer'
                                                        MPos = CFrame.new(4581.517578125, 1001.55908203125, 704.9378662109375)
                                                        SP = 'Default'
                                                    end
                                                else
                                                    MMon = 'Pistol Billionaire'
                                                    MPos = CFrame.new(-469, 74, 5904)
                                                    SP = 'Default'
                                                end
                                            else
                                                MMon = 'Dragon Crew Archer'
                                                MPos = CFrame.new(6827.91455078125, 609.4127197265625, 252.3538055419922)
                                                SP = 'Default'
                                            end
                                        else
                                            MMon = 'Chocolate Bar Battler'
                                            MPos = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
                                            SP = 'Default'
                                        end
                                    else
                                        MMon = 'Vampire'
                                        MPos = CFrame.new(-6033, 7, -1317)
                                        SP = 'Default'
                                    end
                                else
                                    MMon = 'Demonic Soul'
                                    MPos = CFrame.new(-9507, 172, 6158)
                                    SP = 'Default'
                                end
                            elseif Sea3 then
                                MMon = 'Fishman Raider'
                                MPos = CFrame.new(-10993, 332, -8940)
                                SP = 'Default'
                            elseif Sea1 then
                                MMon = 'Fishman Warrior'
                                MPos = CFrame.new(61123, 19, 1569)
                                SP = 'Default'

                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
                                end
                            end
                        elseif Sea1 then
                            MMon = 'Brute'
                            MPos = CFrame.new(-1145, 15, 4350)
                            SP = 'Default'
                        elseif Sea2 then
                            MMon = 'Swan Pirate'
                            MPos = CFrame.new(878, 122, 1235)
                            SP = 'Default'
                        elseif Sea3 then
                            MMon = 'Jungle Pirate'
                            MPos = CFrame.new(-12107, 332, -10549)
                            SP = 'Default'
                        end
                    elseif Sea1 then
                        MMon = 'Brute'
                        MPos = CFrame.new(-1145, 15, 4350)
                        SP = 'Default'
                    elseif Sea2 then
                        MMon = 'Marine Captain'
                        MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
                        SP = 'Default'
                    elseif Sea3 then
                        MMon = 'Jungle Pirate'
                        MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
                        SP = 'Default'
                    end
                else
                    MMon = "God's Guard"
                    MPos = CFrame.new(-4698, 845, -1912)
                    SP = 'Default'

                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7859.09814, 5544.19043, -381.476196))
                    end
                end
            elseif Sea1 then
                MMon = 'Military Spy'
                MPos = CFrame.new(-5815, 84, 8820)
                SP = 'Default'
            elseif Sea2 then
                MMon = 'Magma Ninja'
                MPos = CFrame.new(-5428, 78, -5959)
                SP = 'Default'
            end
        else
            MMon = 'Water Fighter'
            MPos = CFrame.new(-3385, 239, -10542)
            SP = 'Default'
        end
    else
        MMon = 'Factory Staff'
        MPos = CFrame.new(295, 73, -56)
        SP = 'Default'
    end
end
function UpdateIslandESP()
    local v8, v9, v10 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local u11

        v10, u11 = v8(v9, v10)

        if v10 == nil then
            break
        end

        pcall(function()
            if IslandESP then
                if u11.Name ~= 'Sea' then
                    if u11:FindFirstChild('NameEsp') then
                        u11.NameEsp.TextLabel.Text = u11.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - u11.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui = Instance.new('BillboardGui', u11)

                        _BillboardGui.Name = 'NameEsp'
                        _BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui.Adornee = u11
                        _BillboardGui.AlwaysOnTop = true

                        local _TextLabel = Instance.new('TextLabel', _BillboardGui)

                        _TextLabel.Font = 'GothamBold'
                        _TextLabel.FontSize = 'Size14'
                        _TextLabel.TextWrapped = true
                        _TextLabel.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel.TextYAlignment = 'Top'
                        _TextLabel.BackgroundTransparency = 1
                        _TextLabel.TextStrokeTransparency = 0.5
                        _TextLabel.TextColor3 = Color3.fromRGB(8, 0, 0)
                    end
                end
            elseif u11:FindFirstChild('NameEsp') then
                u11:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function isnil(p14)
    return p14 == nil
end

local function u16(p15)
    return math.floor(tonumber(p15) + 0.5)
end

Number = math.random(1, 1000000)

function UpdatePlayerChams()
    local v17, v18, v19 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local u20

        v19, u20 = v17(v18, v19)

        if v19 == nil then
            break
        end

        pcall(function()
            if not isnil(u20.Character) then
                if ESPPlayer then
                    if isnil(u20.Character.Head) or u20.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        u20.Character.Head['NameEsp' .. Number].TextLabel.Text = u20.Name .. ' | ' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - u20.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. u16(u20.Character.Humanoid.Health * 100 / u20.Character.Humanoid.MaxHealth) .. '%'
                    else
                        local _BillboardGui2 = Instance.new('BillboardGui', u20.Character.Head)

                        _BillboardGui2.Name = 'NameEsp' .. Number
                        _BillboardGui2.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui2.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui2.Adornee = u20.Character.Head
                        _BillboardGui2.AlwaysOnTop = true

                        local _TextLabel2 = Instance.new('TextLabel', _BillboardGui2)

                        _TextLabel2.Font = Enum.Font.GothamSemibold
                        _TextLabel2.FontSize = 'Size10'
                        _TextLabel2.TextWrapped = true
                        _TextLabel2.Text = u20.Name .. ' \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - u20.Character.Head.Position).Magnitude / 3) .. ' Distance'
                        _TextLabel2.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel2.TextYAlignment = 'Top'
                        _TextLabel2.BackgroundTransparency = 1
                        _TextLabel2.TextStrokeTransparency = 0.5

                        if u20.Team ~= game.Players.LocalPlayer.Team then
                            _TextLabel2.TextColor3 = Color3.new(255, 0, 0)
                        else
                            _TextLabel2.TextColor3 = Color3.new(0, 0, 254)
                        end
                    end
                elseif u20.Character.Head:FindFirstChild('NameEsp' .. Number) then
                    u20.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateChestChams()
    local v23, v24, v25 = pairs(game.Workspace:GetChildren())

    while true do
        local u26

        v25, u26 = v23(v24, v25)

        if v25 == nil then
            break
        end

        pcall(function()
            if string.find(u26.Name, 'Chest') then
                if ChestESP then
                    if string.find(u26.Name, 'Chest') then
                        if u26:FindFirstChild('NameEsp' .. Number) then
                            u26['NameEsp' .. Number].TextLabel.Text = u26.Name .. '   \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - u26.Position).Magnitude / 3) .. ' Distance'
                        else
                            local _BillboardGui3 = Instance.new('BillboardGui', u26)

                            _BillboardGui3.Name = 'NameEsp' .. Number
                            _BillboardGui3.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui3.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui3.Adornee = u26
                            _BillboardGui3.AlwaysOnTop = true

                            local _TextLabel3 = Instance.new('TextLabel', _BillboardGui3)

                            _TextLabel3.Font = Enum.Font.GothamSemibold
                            _TextLabel3.FontSize = 'Size14'
                            _TextLabel3.TextWrapped = true
                            _TextLabel3.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel3.TextYAlignment = 'Top'
                            _TextLabel3.BackgroundTransparency = 1
                            _TextLabel3.TextStrokeTransparency = 0.5

                            if u26.Name == 'Chest1' then
                                _TextLabel3.TextColor3 = Color3.fromRGB(109, 109, 109)
                                _TextLabel3.Text = 'Chest 1' .. ' \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - u26.Position).Magnitude / 3) .. ' Distance'
                            end
                            if u26.Name == 'Chest2' then
                                _TextLabel3.TextColor3 = Color3.fromRGB(173, 158, 21)
                                _TextLabel3.Text = 'Chest 2' .. ' \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - u26.Position).Magnitude / 3) .. ' Distance'
                            end
                            if u26.Name == 'Chest3' then
                                _TextLabel3.TextColor3 = Color3.fromRGB(85, 255, 255)
                                _TextLabel3.Text = 'Chest 3' .. ' \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - u26.Position).Magnitude / 3) .. ' Distance'
                            end
                        end
                    end
                elseif u26:FindFirstChild('NameEsp' .. Number) then
                    u26:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateDevilChams()
    local v29, v30, v31 = pairs(game.Workspace:GetChildren())

    while true do
        local u32

        v31, u32 = v29(v30, v31)

        if v31 == nil then
            break
        end

        pcall(function()
            if DevilFruitESP then
                if string.find(u32.Name, 'Fruit') then
                    if u32.Handle:FindFirstChild('NameEsp' .. Number) then
                        u32.Handle['NameEsp' .. Number].TextLabel.Text = u32.Name .. '   \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - u32.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui4 = Instance.new('BillboardGui', u32.Handle)

                        _BillboardGui4.Name = 'NameEsp' .. Number
                        _BillboardGui4.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui4.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui4.Adornee = u32.Handle
                        _BillboardGui4.AlwaysOnTop = true

                        local _TextLabel4 = Instance.new('TextLabel', _BillboardGui4)

                        _TextLabel4.Font = Enum.Font.GothamSemibold
                        _TextLabel4.FontSize = 'Size14'
                        _TextLabel4.TextWrapped = true
                        _TextLabel4.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel4.TextYAlignment = 'Top'
                        _TextLabel4.BackgroundTransparency = 1
                        _TextLabel4.TextStrokeTransparency = 0.5
                        _TextLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel4.Text = u32.Name .. ' \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - u32.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif u32.Handle:FindFirstChild('NameEsp' .. Number) then
                u32.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateFlowerChams()
    local v35, v36, v37 = pairs(game.Workspace:GetChildren())

    while true do
        local u38

        v37, u38 = v35(v36, v37)

        if v37 == nil then
            break
        end

        pcall(function()
            if u38.Name == 'Flower2' or u38.Name == 'Flower1' then
                if FlowerESP then
                    if u38:FindFirstChild('NameEsp' .. Number) then
                        u38['NameEsp' .. Number].TextLabel.Text = u38.Name .. '   \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - u38.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui5 = Instance.new('BillboardGui', u38)

                        _BillboardGui5.Name = 'NameEsp' .. Number
                        _BillboardGui5.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui5.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui5.Adornee = u38
                        _BillboardGui5.AlwaysOnTop = true

                        local _TextLabel5 = Instance.new('TextLabel', _BillboardGui5)

                        _TextLabel5.Font = Enum.Font.GothamSemibold
                        _TextLabel5.FontSize = 'Size14'
                        _TextLabel5.TextWrapped = true
                        _TextLabel5.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel5.TextYAlignment = 'Top'
                        _TextLabel5.BackgroundTransparency = 1
                        _TextLabel5.TextStrokeTransparency = 0.5
                        _TextLabel5.TextColor3 = Color3.fromRGB(255, 0, 0)

                        if u38.Name == 'Flower1' then
                            _TextLabel5.Text = 'Blue Flower' .. ' \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - u38.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel5.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if u38.Name == 'Flower2' then
                            _TextLabel5.Text = 'Red Flower' .. ' \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - u38.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel5.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    end
                elseif u38:FindFirstChild('NameEsp' .. Number) then
                    u38:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateRealFruitChams()
    local v41, v42, v43 = pairs(game.Workspace.AppleSpawner:GetChildren())

    while true do
        local v44

        v43, v44 = v41(v42, v43)

        if v43 == nil then
            break
        end
        if v44:IsA('Tool') then
            if RealFruitESP then
                if v44.Handle:FindFirstChild('NameEsp' .. Number) then
                    v44.Handle['NameEsp' .. Number].TextLabel.Text = v44.Name .. ' ' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - v44.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui6 = Instance.new('BillboardGui', v44.Handle)

                    _BillboardGui6.Name = 'NameEsp' .. Number
                    _BillboardGui6.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui6.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui6.Adornee = v44.Handle
                    _BillboardGui6.AlwaysOnTop = true

                    local _TextLabel6 = Instance.new('TextLabel', _BillboardGui6)

                    _TextLabel6.Font = Enum.Font.GothamSemibold
                    _TextLabel6.FontSize = 'Size14'
                    _TextLabel6.TextWrapped = true
                    _TextLabel6.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel6.TextYAlignment = 'Top'
                    _TextLabel6.BackgroundTransparency = 1
                    _TextLabel6.TextStrokeTransparency = 0.5
                    _TextLabel6.TextColor3 = Color3.fromRGB(255, 0, 0)
                    _TextLabel6.Text = v44.Name .. ' \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - v44.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v44.Handle:FindFirstChild('NameEsp' .. Number) then
                v44.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v47, v48, v49 = pairs(game.Workspace.PineappleSpawner:GetChildren())

    while true do
        local v50

        v49, v50 = v47(v48, v49)

        if v49 == nil then
            break
        end
        if v50:IsA('Tool') then
            if RealFruitESP then
                if v50.Handle:FindFirstChild('NameEsp' .. Number) then
                    v50.Handle['NameEsp' .. Number].TextLabel.Text = v50.Name .. ' ' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - v50.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui7 = Instance.new('BillboardGui', v50.Handle)

                    _BillboardGui7.Name = 'NameEsp' .. Number
                    _BillboardGui7.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui7.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui7.Adornee = v50.Handle
                    _BillboardGui7.AlwaysOnTop = true

                    local _TextLabel7 = Instance.new('TextLabel', _BillboardGui7)

                    _TextLabel7.Font = Enum.Font.GothamSemibold
                    _TextLabel7.FontSize = 'Size14'
                    _TextLabel7.TextWrapped = true
                    _TextLabel7.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel7.TextYAlignment = 'Top'
                    _TextLabel7.BackgroundTransparency = 1
                    _TextLabel7.TextStrokeTransparency = 0.5
                    _TextLabel7.TextColor3 = Color3.fromRGB(255, 174, 0)
                    _TextLabel7.Text = v50.Name .. ' \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - v50.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v50.Handle:FindFirstChild('NameEsp' .. Number) then
                v50.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v53, v54, v55 = pairs(game.Workspace.BananaSpawner:GetChildren())

    while true do
        local v56

        v55, v56 = v53(v54, v55)

        if v55 == nil then
            break
        end
        if v56:IsA('Tool') then
            if RealFruitESP then
                if v56.Handle:FindFirstChild('NameEsp' .. Number) then
                    v56.Handle['NameEsp' .. Number].TextLabel.Text = v56.Name .. ' ' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - v56.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui8 = Instance.new('BillboardGui', v56.Handle)

                    _BillboardGui8.Name = 'NameEsp' .. Number
                    _BillboardGui8.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui8.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui8.Adornee = v56.Handle
                    _BillboardGui8.AlwaysOnTop = true

                    local _TextLabel8 = Instance.new('TextLabel', _BillboardGui8)

                    _TextLabel8.Font = Enum.Font.GothamSemibold
                    _TextLabel8.FontSize = 'Size14'
                    _TextLabel8.TextWrapped = true
                    _TextLabel8.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel8.TextYAlignment = 'Top'
                    _TextLabel8.BackgroundTransparency = 1
                    _TextLabel8.TextStrokeTransparency = 0.5
                    _TextLabel8.TextColor3 = Color3.fromRGB(251, 255, 0)
                    _TextLabel8.Text = v56.Name .. ' \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - v56.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v56.Handle:FindFirstChild('NameEsp' .. Number) then
                v56.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end
end
function UpdateIslandESP()
    local v59, v60, v61 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local u62

        v61, u62 = v59(v60, v61)

        if v61 == nil then
            break
        end

        pcall(function()
            if IslandESP then
                if u62.Name ~= 'Sea' then
                    if u62:FindFirstChild('NameEsp') then
                        u62.NameEsp.TextLabel.Text = u62.Name .. '   \n' .. u16((game:GetService('Players').LocalPlayer.Character.Head.Position - u62.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui9 = Instance.new('BillboardGui', u62)

                        _BillboardGui9.Name = 'NameEsp'
                        _BillboardGui9.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui9.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui9.Adornee = u62
                        _BillboardGui9.AlwaysOnTop = true

                        local _TextLabel9 = Instance.new('TextLabel', _BillboardGui9)

                        _TextLabel9.Font = 'GothamBold'
                        _TextLabel9.FontSize = 'Size14'
                        _TextLabel9.TextWrapped = true
                        _TextLabel9.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel9.TextYAlignment = 'Top'
                        _TextLabel9.BackgroundTransparency = 1
                        _TextLabel9.TextStrokeTransparency = 0.5
                        _TextLabel9.TextColor3 = Color3.fromRGB(7, 236, 240)
                    end
                end
            elseif u62:FindFirstChild('NameEsp') then
                u62:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function isnil(p65)
    return p65 == nil
end

local function u67(p66)
    return math.floor(tonumber(p66) + 0.5)
end

Number = math.random(1, 1000000)

function UpdatePlayerChams()
    local v68, v69, v70 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local u71

        v70, u71 = v68(v69, v70)

        if v70 == nil then
            break
        end

        pcall(function()
            if not isnil(u71.Character) then
                if ESPPlayer then
                    if isnil(u71.Character.Head) or u71.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        u71.Character.Head['NameEsp' .. Number].TextLabel.Text = u71.Name .. ' | ' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - u71.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. u67(u71.Character.Humanoid.Health * 100 / u71.Character.Humanoid.MaxHealth) .. '%'
                    else
                        local _BillboardGui10 = Instance.new('BillboardGui', u71.Character.Head)

                        _BillboardGui10.Name = 'NameEsp' .. Number
                        _BillboardGui10.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui10.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui10.Adornee = u71.Character.Head
                        _BillboardGui10.AlwaysOnTop = true

                        local _TextLabel10 = Instance.new('TextLabel', _BillboardGui10)

                        _TextLabel10.Font = Enum.Font.GothamSemibold
                        _TextLabel10.FontSize = 'Size14'
                        _TextLabel10.TextWrapped = true
                        _TextLabel10.Text = u71.Name .. ' \n' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - u71.Character.Head.Position).Magnitude / 3) .. ' Distance'
                        _TextLabel10.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel10.TextYAlignment = 'Top'
                        _TextLabel10.BackgroundTransparency = 1
                        _TextLabel10.TextStrokeTransparency = 0.5

                        if u71.Team ~= game.Players.LocalPlayer.Team then
                            _TextLabel10.TextColor3 = Color3.new(255, 0, 0)
                        else
                            _TextLabel10.TextColor3 = Color3.new(0, 255, 0)
                        end
                    end
                elseif u71.Character.Head:FindFirstChild('NameEsp' .. Number) then
                    u71.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateChestChams()
    local v74, v75, v76 = pairs(game.Workspace:GetChildren())

    while true do
        local u77

        v76, u77 = v74(v75, v76)

        if v76 == nil then
            break
        end

        pcall(function()
            if string.find(u77.Name, 'Chest') then
                if ChestESP then
                    if string.find(u77.Name, 'Chest') then
                        if u77:FindFirstChild('NameEsp' .. Number) then
                            u77['NameEsp' .. Number].TextLabel.Text = u77.Name .. '   \n' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - u77.Position).Magnitude / 3) .. ' Distance'
                        else
                            local _BillboardGui11 = Instance.new('BillboardGui', u77)

                            _BillboardGui11.Name = 'NameEsp' .. Number
                            _BillboardGui11.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui11.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui11.Adornee = u77
                            _BillboardGui11.AlwaysOnTop = true

                            local _TextLabel11 = Instance.new('TextLabel', _BillboardGui11)

                            _TextLabel11.Font = Enum.Font.GothamSemibold
                            _TextLabel11.FontSize = 'Size14'
                            _TextLabel11.TextWrapped = true
                            _TextLabel11.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel11.TextYAlignment = 'Top'
                            _TextLabel11.BackgroundTransparency = 1
                            _TextLabel11.TextStrokeTransparency = 0.5

                            if u77.Name == 'Chest1' then
                                _TextLabel11.TextColor3 = Color3.fromRGB(109, 109, 109)
                                _TextLabel11.Text = 'Chest 1' .. ' \n' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - u77.Position).Magnitude / 3) .. ' Distance'
                            end
                            if u77.Name == 'Chest2' then
                                _TextLabel11.TextColor3 = Color3.fromRGB(173, 158, 21)
                                _TextLabel11.Text = 'Chest 2' .. ' \n' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - u77.Position).Magnitude / 3) .. ' Distance'
                            end
                            if u77.Name == 'Chest3' then
                                _TextLabel11.TextColor3 = Color3.fromRGB(85, 255, 255)
                                _TextLabel11.Text = 'Chest 3' .. ' \n' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - u77.Position).Magnitude / 3) .. ' Distance'
                            end
                        end
                    end
                elseif u77:FindFirstChild('NameEsp' .. Number) then
                    u77:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateDevilChams()
    local v80, v81, v82 = pairs(game.Workspace:GetChildren())

    while true do
        local u83

        v82, u83 = v80(v81, v82)

        if v82 == nil then
            break
        end

        pcall(function()
            if DevilFruitESP then
                if string.find(u83.Name, 'Fruit') then
                    if u83.Handle:FindFirstChild('NameEsp' .. Number) then
                        u83.Handle['NameEsp' .. Number].TextLabel.Text = u83.Name .. '   \n' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - u83.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui12 = Instance.new('BillboardGui', u83.Handle)

                        _BillboardGui12.Name = 'NameEsp' .. Number
                        _BillboardGui12.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui12.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui12.Adornee = u83.Handle
                        _BillboardGui12.AlwaysOnTop = true

                        local _TextLabel12 = Instance.new('TextLabel', _BillboardGui12)

                        _TextLabel12.Font = Enum.Font.GothamSemibold
                        _TextLabel12.FontSize = 'Size14'
                        _TextLabel12.TextWrapped = true
                        _TextLabel12.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel12.TextYAlignment = 'Top'
                        _TextLabel12.BackgroundTransparency = 1
                        _TextLabel12.TextStrokeTransparency = 0.5
                        _TextLabel12.TextColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel12.Text = u83.Name .. ' \n' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - u83.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif u83.Handle:FindFirstChild('NameEsp' .. Number) then
                u83.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateFlowerChams()
    local v86, v87, v88 = pairs(game.Workspace:GetChildren())

    while true do
        local u89

        v88, u89 = v86(v87, v88)

        if v88 == nil then
            break
        end

        pcall(function()
            if u89.Name == 'Flower2' or u89.Name == 'Flower1' then
                if FlowerESP then
                    if u89:FindFirstChild('NameEsp' .. Number) then
                        u89['NameEsp' .. Number].TextLabel.Text = u89.Name .. '   \n' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - u89.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui13 = Instance.new('BillboardGui', u89)

                        _BillboardGui13.Name = 'NameEsp' .. Number
                        _BillboardGui13.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui13.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui13.Adornee = u89
                        _BillboardGui13.AlwaysOnTop = true

                        local _TextLabel13 = Instance.new('TextLabel', _BillboardGui13)

                        _TextLabel13.Font = Enum.Font.GothamSemibold
                        _TextLabel13.FontSize = 'Size14'
                        _TextLabel13.TextWrapped = true
                        _TextLabel13.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel13.TextYAlignment = 'Top'
                        _TextLabel13.BackgroundTransparency = 1
                        _TextLabel13.TextStrokeTransparency = 0.5
                        _TextLabel13.TextColor3 = Color3.fromRGB(255, 0, 0)

                        if u89.Name == 'Flower1' then
                            _TextLabel13.Text = 'Blue Flower' .. ' \n' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - u89.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel13.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if u89.Name == 'Flower2' then
                            _TextLabel13.Text = 'Red Flower' .. ' \n' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - u89.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel13.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    end
                elseif u89:FindFirstChild('NameEsp' .. Number) then
                    u89:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateRealFruitChams()
    local v92, v93, v94 = pairs(game.Workspace.AppleSpawner:GetChildren())

    while true do
        local v95

        v94, v95 = v92(v93, v94)

        if v94 == nil then
            break
        end
        if v95:IsA('Tool') then
            if RealFruitESP then
                if v95.Handle:FindFirstChild('NameEsp' .. Number) then
                    v95.Handle['NameEsp' .. Number].TextLabel.Text = v95.Name .. ' ' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - v95.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui14 = Instance.new('BillboardGui', v95.Handle)

                    _BillboardGui14.Name = 'NameEsp' .. Number
                    _BillboardGui14.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui14.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui14.Adornee = v95.Handle
                    _BillboardGui14.AlwaysOnTop = true

                    local _TextLabel14 = Instance.new('TextLabel', _BillboardGui14)

                    _TextLabel14.Font = Enum.Font.GothamSemibold
                    _TextLabel14.FontSize = 'Size14'
                    _TextLabel14.TextWrapped = true
                    _TextLabel14.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel14.TextYAlignment = 'Top'
                    _TextLabel14.BackgroundTransparency = 1
                    _TextLabel14.TextStrokeTransparency = 0.5
                    _TextLabel14.TextColor3 = Color3.fromRGB(255, 0, 0)
                    _TextLabel14.Text = v95.Name .. ' \n' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - v95.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v95.Handle:FindFirstChild('NameEsp' .. Number) then
                v95.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v98, v99, v100 = pairs(game.Workspace.PineappleSpawner:GetChildren())

    while true do
        local v101

        v100, v101 = v98(v99, v100)

        if v100 == nil then
            break
        end
        if v101:IsA('Tool') then
            if RealFruitESP then
                if v101.Handle:FindFirstChild('NameEsp' .. Number) then
                    v101.Handle['NameEsp' .. Number].TextLabel.Text = v101.Name .. ' ' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - v101.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui15 = Instance.new('BillboardGui', v101.Handle)

                    _BillboardGui15.Name = 'NameEsp' .. Number
                    _BillboardGui15.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui15.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui15.Adornee = v101.Handle
                    _BillboardGui15.AlwaysOnTop = true

                    local _TextLabel15 = Instance.new('TextLabel', _BillboardGui15)

                    _TextLabel15.Font = Enum.Font.GothamSemibold
                    _TextLabel15.FontSize = 'Size14'
                    _TextLabel15.TextWrapped = true
                    _TextLabel15.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel15.TextYAlignment = 'Top'
                    _TextLabel15.BackgroundTransparency = 1
                    _TextLabel15.TextStrokeTransparency = 0.5
                    _TextLabel15.TextColor3 = Color3.fromRGB(255, 174, 0)
                    _TextLabel15.Text = v101.Name .. ' \n' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - v101.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v101.Handle:FindFirstChild('NameEsp' .. Number) then
                v101.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v104, v105, v106 = pairs(game.Workspace.BananaSpawner:GetChildren())

    while true do
        local v107

        v106, v107 = v104(v105, v106)

        if v106 == nil then
            break
        end
        if v107:IsA('Tool') then
            if RealFruitESP then
                if v107.Handle:FindFirstChild('NameEsp' .. Number) then
                    v107.Handle['NameEsp' .. Number].TextLabel.Text = v107.Name .. ' ' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - v107.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui16 = Instance.new('BillboardGui', v107.Handle)

                    _BillboardGui16.Name = 'NameEsp' .. Number
                    _BillboardGui16.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui16.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui16.Adornee = v107.Handle
                    _BillboardGui16.AlwaysOnTop = true

                    local _TextLabel16 = Instance.new('TextLabel', _BillboardGui16)

                    _TextLabel16.Font = Enum.Font.GothamSemibold
                    _TextLabel16.FontSize = 'Size14'
                    _TextLabel16.TextWrapped = true
                    _TextLabel16.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel16.TextYAlignment = 'Top'
                    _TextLabel16.BackgroundTransparency = 1
                    _TextLabel16.TextStrokeTransparency = 0.5
                    _TextLabel16.TextColor3 = Color3.fromRGB(251, 255, 0)
                    _TextLabel16.Text = v107.Name .. ' \n' .. u67((game:GetService('Players').LocalPlayer.Character.Head.Position - v107.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v107.Handle:FindFirstChild('NameEsp' .. Number) then
                v107.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end
end

spawn(function()
    while wait() do
        pcall(function()
            if MobESP then
                local v110, v111, v112 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v113

                    v112, v113 = v110(v111, v112)

                    if v112 == nil then
                        break
                    end
                    if v113:FindFirstChild('HumanoidRootPart') then
                        if not v113:FindFirstChild('MobEap') then
                            local _BillboardGui17 = Instance.new('BillboardGui')
                            local _TextLabel17 = Instance.new('TextLabel')

                            _BillboardGui17.Parent = v113
                            _BillboardGui17.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            _BillboardGui17.Active = true
                            _BillboardGui17.Name = 'MobEap'
                            _BillboardGui17.AlwaysOnTop = true
                            _BillboardGui17.LightInfluence = 1
                            _BillboardGui17.Size = UDim2.new(0, 200, 0, 50)
                            _BillboardGui17.StudsOffset = Vector3.new(0, 2.5, 0)
                            _TextLabel17.Parent = _BillboardGui17
                            _TextLabel17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            _TextLabel17.BackgroundTransparency = 1
                            _TextLabel17.Size = UDim2.new(0, 200, 0, 50)
                            _TextLabel17.Font = Enum.Font.GothamBold
                            _TextLabel17.TextColor3 = Color3.fromRGB(7, 236, 240)
                            _TextLabel17.Text.Size = 35
                        end

                        local v116 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v113.HumanoidRootPart.Position).Magnitude)

                        v113.MobEap.TextLabel.Text = v113.Name .. '-' .. v116 .. ' Distance'
                    end
                end
            else
                local v117, v118, v119 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v120

                    v119, v120 = v117(v118, v119)

                    if v119 == nil then
                        break
                    end
                    if v120:FindFirstChild('MobEap') then
                        v120.MobEap:Destroy()
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
                local v121, v122, v123 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

                while true do
                    local v124

                    v123, v124 = v121(v122, v123)

                    if v123 == nil then
                        break
                    end
                    if v124:FindFirstChild('HumanoidRootPart') then
                        if not v124:FindFirstChild('Seaesps') then
                            local _BillboardGui18 = Instance.new('BillboardGui')
                            local _TextLabel18 = Instance.new('TextLabel')

                            _BillboardGui18.Parent = v124
                            _BillboardGui18.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            _BillboardGui18.Active = true
                            _BillboardGui18.Name = 'Seaesps'
                            _BillboardGui18.AlwaysOnTop = true
                            _BillboardGui18.LightInfluence = 1
                            _BillboardGui18.Size = UDim2.new(0, 200, 0, 50)
                            _BillboardGui18.StudsOffset = Vector3.new(0, 2.5, 0)
                            _TextLabel18.Parent = _BillboardGui18
                            _TextLabel18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            _TextLabel18.BackgroundTransparency = 1
                            _TextLabel18.Size = UDim2.new(0, 200, 0, 50)
                            _TextLabel18.Font = Enum.Font.GothamBold
                            _TextLabel18.TextColor3 = Color3.fromRGB(7, 236, 240)
                            _TextLabel18.Text.Size = 35
                        end

                        local v127 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v124.HumanoidRootPart.Position).Magnitude)

                        v124.Seaesps.TextLabel.Text = v124.Name .. '-' .. v127 .. ' Distance'
                    end
                end
            else
                local v128, v129, v130 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

                while true do
                    local v131

                    v130, v131 = v128(v129, v130)

                    if v130 == nil then
                        break
                    end
                    if v131:FindFirstChild('Seaesps') then
                        v131.Seaesps:Destroy()
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
                local v132, v133, v134 = pairs(game:GetService('Workspace').NPCs:GetChildren())

                while true do
                    local v135

                    v134, v135 = v132(v133, v134)

                    if v134 == nil then
                        break
                    end
                    if v135:FindFirstChild('HumanoidRootPart') then
                        if not v135:FindFirstChild('NpcEspes') then
                            local _BillboardGui19 = Instance.new('BillboardGui')
                            local _TextLabel19 = Instance.new('TextLabel')

                            _BillboardGui19.Parent = v135
                            _BillboardGui19.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            _BillboardGui19.Active = true
                            _BillboardGui19.Name = 'NpcEspes'
                            _BillboardGui19.AlwaysOnTop = true
                            _BillboardGui19.LightInfluence = 1
                            _BillboardGui19.Size = UDim2.new(0, 200, 0, 50)
                            _BillboardGui19.StudsOffset = Vector3.new(0, 2.5, 0)
                            _TextLabel19.Parent = _BillboardGui19
                            _TextLabel19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            _TextLabel19.BackgroundTransparency = 1
                            _TextLabel19.Size = UDim2.new(0, 200, 0, 50)
                            _TextLabel19.Font = Enum.Font.GothamBold
                            _TextLabel19.TextColor3 = Color3.fromRGB(7, 236, 240)
                            _TextLabel19.Text.Size = 35
                        end

                        local v138 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v135.HumanoidRootPart.Position).Magnitude)

                        v135.NpcEspes.TextLabel.Text = v135.Name .. '-' .. v138 .. ' Distance'
                    end
                end
            else
                local v139, v140, v141 = pairs(game:GetService('Workspace').NPCs:GetChildren())

                while true do
                    local v142

                    v141, v142 = v139(v140, v141)

                    if v141 == nil then
                        break
                    end
                    if v142:FindFirstChild('NpcEspes') then
                        v142.NpcEspes:Destroy()
                    end
                end
            end
        end)
    end
end)

function isnil(p143)
    return p143 == nil
end

local function u145(p144)
    return math.floor(tonumber(p144) + 0.5)
end

Number = math.random(1, 1000000)

function UpdateIslandMirageESP()
    local v146, v147, v148 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local u149

        v148, u149 = v146(v147, v148)

        if v148 == nil then
            break
        end

        pcall(function()
            if MirageIslandESP then
                if u149.Name == 'Mirage Island' then
                    if u149:FindFirstChild('NameEsp') then
                        u149.NameEsp.TextLabel.Text = u149.Name .. '   \n' .. u145((game:GetService('Players').LocalPlayer.Character.Head.Position - u149.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui20 = Instance.new('BillboardGui', u149)

                        _BillboardGui20.Name = 'NameEsp'
                        _BillboardGui20.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui20.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui20.Adornee = u149
                        _BillboardGui20.AlwaysOnTop = true

                        local _TextLabel20 = Instance.new('TextLabel', _BillboardGui20)

                        _TextLabel20.Font = 'Code'
                        _TextLabel20.FontSize = 'Size14'
                        _TextLabel20.TextWrapped = true
                        _TextLabel20.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel20.TextYAlignment = 'Top'
                        _TextLabel20.BackgroundTransparency = 1
                        _TextLabel20.TextStrokeTransparency = 0.5
                        _TextLabel20.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u149:FindFirstChild('NameEsp') then
                u149:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function UpdateAuraESP()
    local v152, v153, v154 = pairs(game:GetService('Workspace').NPCs:GetChildren())

    while true do
        local u155

        v154, u155 = v152(v153, v154)

        if v154 == nil then
            break
        end

        pcall(function()
            if AuraESP then
                if u155.Name == 'Master of Enhancement' then
                    if u155:FindFirstChild('NameEsp') then
                        u155.NameEsp.TextLabel.Text = u155.Name .. '   \n' .. u145((game:GetService('Players').LocalPlayer.Character.Head.Position - u155.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui21 = Instance.new('BillboardGui', u155)

                        _BillboardGui21.Name = 'NameEsp'
                        _BillboardGui21.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui21.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui21.Adornee = u155
                        _BillboardGui21.AlwaysOnTop = true

                        local _TextLabel21 = Instance.new('TextLabel', _BillboardGui21)

                        _TextLabel21.Font = 'Code'
                        _TextLabel21.FontSize = 'Size14'
                        _TextLabel21.TextWrapped = true
                        _TextLabel21.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel21.TextYAlignment = 'Top'
                        _TextLabel21.BackgroundTransparency = 1
                        _TextLabel21.TextStrokeTransparency = 0.5
                        _TextLabel21.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u155:FindFirstChild('NameEsp') then
                u155:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function UpdateLSDESP()
    local v158, v159, v160 = pairs(game:GetService('Workspace').NPCs:GetChildren())

    while true do
        local u161

        v160, u161 = v158(v159, v160)

        if v160 == nil then
            break
        end

        pcall(function()
            if LADESP then
                if u161.Name == 'Legendary Sword Dealer' then
                    if u161:FindFirstChild('NameEsp') then
                        u161.NameEsp.TextLabel.Text = u161.Name .. '   \n' .. u145((game:GetService('Players').LocalPlayer.Character.Head.Position - u161.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui22 = Instance.new('BillboardGui', u161)

                        _BillboardGui22.Name = 'NameEsp'
                        _BillboardGui22.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui22.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui22.Adornee = u161
                        _BillboardGui22.AlwaysOnTop = true

                        local _TextLabel22 = Instance.new('TextLabel', _BillboardGui22)

                        _TextLabel22.Font = 'Code'
                        _TextLabel22.FontSize = 'Size14'
                        _TextLabel22.TextWrapped = true
                        _TextLabel22.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel22.TextYAlignment = 'Top'
                        _TextLabel22.BackgroundTransparency = 1
                        _TextLabel22.TextStrokeTransparency = 0.5
                        _TextLabel22.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u161:FindFirstChild('NameEsp') then
                u161:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function UpdateGeaESP()
    local v164, v165, v166 = pairs(game:GetService('Workspace').Map.MysticIsland:GetChildren())

    while true do
        local u167

        v166, u167 = v164(v165, v166)

        if v166 == nil then
            break
        end

        pcall(function()
            if GearESP then
                if u167.Name == 'MeshPart' then
                    if u167:FindFirstChild('NameEsp') then
                        u167.NameEsp.TextLabel.Text = u167.Name .. '   \n' .. u145((game:GetService('Players').LocalPlayer.Character.Head.Position - u167.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui23 = Instance.new('BillboardGui', u167)

                        _BillboardGui23.Name = 'NameEsp'
                        _BillboardGui23.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui23.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui23.Adornee = u167
                        _BillboardGui23.AlwaysOnTop = true

                        local _TextLabel23 = Instance.new('TextLabel', _BillboardGui23)

                        _TextLabel23.Font = 'Code'
                        _TextLabel23.FontSize = 'Size14'
                        _TextLabel23.TextWrapped = true
                        _TextLabel23.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel23.TextYAlignment = 'Top'
                        _TextLabel23.BackgroundTransparency = 1
                        _TextLabel23.TextStrokeTransparency = 0.5
                        _TextLabel23.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u167:FindFirstChild('NameEsp') then
                u167:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function Tween2(p170)
    local _Magnitude = (p170.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local _ = 350 <= _Magnitude
    local v172 = 350
    local v173 = TweenInfo.new(_Magnitude / v172, Enum.EasingStyle.Linear)
    local v174 = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, v173, {CFrame = p170})

    v174:Play()

    if _G.CancelTween2 then
        v174:Cancel()
    end

    _G.Clip2 = true

    wait(_Magnitude / v172)

    _G.Clip2 = false
end
function BTPZ(p175)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p175

    task.wait()

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p175
end

TweenSpeed = 350

function Tween(p176)
    local _Magnitude2 = (p176.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local v178 = TweenSpeed

    if _Magnitude2 >= 350 then
        v178 = TweenSpeed
    end

    local v179 = TweenInfo.new(_Magnitude2 / v178, Enum.EasingStyle.Linear)
    local v180 = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, v179, {CFrame = p176})

    v180:Play()

    if _G.StopTween then
        v180:Cancel()
    end
end
function CancelTween(p181)
    if not p181 then
        _G.StopTween = true

        wait()
        Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()

        _G.StopTween = false
    end
end
function EquipTool(p182)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(p182) then
        local v183 = game.Players.LocalPlayer.Backpack:FindFirstChild(p182)

        wait()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v183)
    end
end

spawn(function()
    local v184 = getrawmetatable(game)
    local ___namecall = v184.__namecall

    setreadonly(v184, false)

    v184.__namecall = newcclosure(function(...)
        local v186 = getnamecallmethod()
        local v187 = {...}

        if tostring(v186) ~= 'FireServer' or (tostring(v187[1]) ~= 'RemoteEvent' or (tostring(v187[2]) == 'true' or (tostring(v187[2]) == 'false' or not _G.UseSkill))) then
            return ___namecall(...)
        end
        if type(v187[2]) ~= 'vector' then
            v187[2] = CFrame.new(PositionSkillMasteryDevilFruit)
        else
            v187[2] = PositionSkillMasteryDevilFruit
        end

        return ___namecall(unpack(v187))
    end)
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoEvoRace or (_G.CastleRaid or (_G.CollectAzure or (_G.TweenToKitsune or (_G.GhostShip or (_G.Ship or (_G.Auto_Holy_Torch or (_G.TeleportPly or (_G.Auto_Sea3 or (_G.Auto_Sea2 or (_G.Tweenfruit or (_G.AutoFishCrew or (_G.Auto_Saber or (_G.AutoShark or (_G.Auto_Warden or (_G.Auto_RainbowHaki or (AutoFarmRace or (_G.AutoQuestRace or (Auto_Law or (AutoTushita or (_G.AutoHolyTorch or (_G.AutoTerrorshark or (_G.farmpiranya or (_G.Auto_MusketeerHat or (_G.Auto_ObservationV2 or (_G.AutoNear or (_G.Auto_PoleV1 or (_G.Auto_Buddy or (_G.Ectoplasm or (AutoEvoRace or (AutoBartilo or (_G.Auto_Canvander or (_G.AutoLevel or (_G.Auto_DualKatana or (Auto_Quest_Yama_3 or (Auto_Quest_Yama_2 or (Auto_Quest_Yama_1 or (Auto_Quest_Tushita_1 or (Auto_Quest_Tushita_2 or (Auto_Quest_Tushita_3 or (_G.Clip2 or (_G.Auto_Regoku or (_G.AutoBone or (_G.AutoBoneNoQuest or (_G.AutoBoss or (AutoFarmMasDevilFruit or (AutoHallowSycthe or (AutoTushita or (_G.CakePrince or (_G.Auto_SkullGuitar or (_G.AutoFarmSwan or (_G.DoughKing or (_G.AutoEliteor or (AutoNextIsland or (Musketeer or (_G.AutoMaterial or (AutoFarmRaceQuest or (_G.Factory or (_G.Auto_Saw or (_G.AutoFrozenDimension or (_G.AutoKillTrial or (_G.AutoUpgrade or _G.TweenToFrozenDimension))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                if not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
                    local _BodyVelocity = Instance.new('BodyVelocity')

                    _BodyVelocity.Name = 'BodyClip'
                    _BodyVelocity.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
                    _BodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                    _BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                end
            else
                game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip'):Destroy()
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        game:GetService('RunService').Stepped:Connect(function()
            if _G.AutoEvoRace or (_G.Auto_RainbowHaki or (_G.Auto_SkullGuitar or (_G.CastleRaid or (_G.CollectAzure or (_G.TweenToKitsune or (_G.Auto_Sea3 or (_G.Auto_Sea2 or (_G.GhostShip or (_G.Ship or (_G.Auto_Holy_Torch or (_G.TeleportPly or (_G.Tweenfruit or (_G.Auto_Saber or (_G.Auto_PoleV1 or (_G.Auto_MusketeerHat or (_G.AutoFishCrew or (_G.AutoShark or (AutoFarmRace or (_G.AutoQuestRace or (_G.Auto_Warden or (Auto_Law or (_G.Auto_DualKatana or (Auto_Quest_Tushita_1 or (Auto_Quest_Tushita_2 or (Auto_Quest_Tushita_3 or (AutoTushita or (_G.AutoHolyTorch or (_G.Auto_Buddy or (_G.AutoTerrorshark or (_G.farmpiranya or (Auto_Quest_Yama_3 or (_G.Auto_ObservationV2 or (Auto_Quest_Yama_2 or (Auto_Quest_Yama_1 or (_G.AutoNear or (_G.Ectoplasm or (AutoEvoRace or (_G.AutoKillTrial or (AutoBartilo or (_G.Auto_Regoku or (_G.AutoLevel or (_G.Clip2 or (_G.AutoBone or (_G.Auto_Canvander or (_G.AutoBoneNoQuest or (_G.AutoBoss or (_G.Auto_Saw or (AutoFarmMasDevilFruit or (AutoHallowSycthe or (AutoTushita or (_G.CakePrince or (_G.DoughKing or (_G.AutoFarmSwan or (_G.AutoEliteor or (AutoNextIsland or (Musketeer or (_G.AutoMaterial or (_G.Factory or (_G.AutoFrozenDimension or (AutoFarmRaceQuest or (_G.AutoUpgrade or _G.TweenToFrozenDimension))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                local v189, v190, v191 = pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants())

                while true do
                    local v192

                    v191, v192 = v189(v190, v191)

                    if v191 == nil then
                        break
                    end
                    if v192:IsA('BasePart') then
                        v192.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
task.spawn(function()
    if game.Players.LocalPlayer.Character:FindFirstChild('Stun') then
        game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild('Stun') then
                    game.Players.LocalPlayer.Character.Stun.Value = 0
                end
            end)
        end)
    end
end)

function CheckMaterial(p193)
    local v194, v195, v196 = pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))

    while true do
        local v197

        v196, v197 = v194(v195, v196)

        if v196 == nil then
            break
        end
        if type(v197) == 'table' and (v197.Type == 'Material' and v197.Name == p193) then
            return v197.Count
        end
    end

    return 0
end
function GetWeaponInventory(p198)
    local v199, v200, v201 = pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))

    while true do
        local v202

        v201, v202 = v199(v200, v201)

        if v201 == nil then
            break
        end
        if type(v202) == 'table' and (v202.Type == 'Sword' and v202.Name == p198) then
            return true
        end
    end

    return false
end

local _LocalPlayer = game.Players.LocalPlayer

function FindEnemiesInRange(p204, p205)
    local _Position = (_LocalPlayer.Character or _LocalPlayer.CharacterAdded:Wait()):GetPivot().Position
    local v207, v208, v209 = ipairs(p205)
    local v210 = nil

    while true do
        local v211

        v209, v211 = v207(v208, v209)

        if v209 == nil then
            break
        end
        if not v211:GetAttribute('IsBoat') and (v211:FindFirstChildOfClass('Humanoid') and v211.Humanoid.Health > 0) then
            local _Head = v211:FindFirstChild('Head')

            if _Head and ((_Position - _Head.Position).Magnitude <= 60 and v211 ~= _LocalPlayer.Character) then
                table.insert(p204, {v211, _Head})

                v210 = _Head
            end
        end
    end

    local v213, v214, v215 = ipairs(game.Players:GetPlayers())

    while true do
        local v216

        v215, v216 = v213(v214, v215)

        if v215 == nil then
            break
        end
        if v216.Character and v216 ~= _LocalPlayer then
            local _Head2 = v216.Character:FindFirstChild('Head')

            if _Head2 and (_Position - _Head2.Position).Magnitude <= 60 then
                table.insert(p204, {
                    v216.Character,
                    _Head2,
                })

                v210 = _Head2
            end
        end
    end

    return v210
end
function GetEquippedTool()
    local _Character = _LocalPlayer.Character

    if not _Character then
        return nil
    end

    local v219, v220, v221 = ipairs(_Character:GetChildren())

    while true do
        local v222

        v221, v222 = v219(v220, v221)

        if v221 == nil then
            break
        end
        if v222:IsA('Tool') then
            return v222
        end
    end

    return nil
end
function AttackNoCoolDown()
    local u223 = {}
    local v224 = game:GetService('Workspace').Enemies:GetChildren()
    local u225 = FindEnemiesInRange(u223, v224)

    if u225 then
        if GetEquippedTool() then
            pcall(function()
                local _ReplicatedStorage = game:GetService('ReplicatedStorage')
                local _RERegisterAttack = _ReplicatedStorage:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/RegisterAttack')
                local _RERegisterHit = _ReplicatedStorage:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/RegisterHit')

                if #u223 <= 0 then
                    task.wait(1e-9)
                else
                    _RERegisterAttack:FireServer(1e-9)
                    _RERegisterHit:FireServer(u225, u223)
                end
            end)
        end
    else
        return
    end
end

Type = 1

spawn(function()
    while wait() do
        if Type ~= 1 then
            if Type ~= 2 then
                if Type ~= 3 then
                    if Type ~= 4 then
                        if Type == 5 then
                            Pos = CFrame.new(0, 40, -40)
                        end
                    else
                        Pos = CFrame.new(0, 40, 40)
                    end
                else
                    Pos = CFrame.new(40, 40, 0)
                end
            else
                Pos = CFrame.new(-40, 40, 0)
            end
        else
            Pos = CFrame.new(0, 40, 0)
        end
    end
end)
spawn(function()
    while wait() do
        Type = 1

        wait(0.2)

        Type = 2

        wait(0.2)

        Type = 3

        wait(0.2)

        Type = 4

        wait(0.2)

        Type = 5

        wait(0.2)
    end
end)

function AutoHaki()
    if not game:GetService('Players').LocalPlayer.Character:FindFirstChild('HasBuso') then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Buso')
    end
end
function to(p229)
    repeat
        wait(_G.Fast_Delay)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p229

        task.wait()

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p229
    until (p229.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end
function to(p230)
    pcall(function()
        if (p230.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and (not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0) then
            if NameMon ~= 'FishmanQuest' then
                if Mon ~= "God's Guard" then
                    if NameMon ~= 'SkyExp1Quest' then
                        if NameMon ~= 'ShipQuest1' then
                            if NameMon ~= 'ShipQuest2' then
                                if NameMon ~= 'FrostQuest' then
                                    repeat
                                        wait(_G.Fast_Delay)

                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p230

                                        wait(0.05)
                                        game.Players.LocalPlayer.Character.Head:Destroy()

                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p230
                                    until (p230.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0

                                    wait()
                                else
                                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    wait()
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                                end
                            else
                                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                wait()
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                            end
                        else
                            Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait()
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        end
                    else
                        Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait()
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                    end
                else
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
            else
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        end
    end)
end

local _ScreenGui = Instance.new('ScreenGui')
local _ImageButton = Instance.new('ImageButton')
local _UICorner = Instance.new('UICorner')
local _ParticleEmitter = Instance.new('ParticleEmitter')
local _TweenService = game:GetService('TweenService')

_ScreenGui.Parent = game.CoreGui
_ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_ImageButton.Parent = _ScreenGui
_ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_ImageButton.BackgroundTransparency = 0.5
_ImageButton.BorderSizePixel = 0
_ImageButton.Position = UDim2.new(0.020833336999999993, 0, 0.10528908129999999, 0)
_ImageButton.Size = UDim2.new(0, 50, 0, 50)
_ImageButton.Draggable = true
_ImageButton.Image = 'http://www.roblox.com/asset/?id=130947856929902'
_UICorner.Parent = _ImageButton
_UICorner.CornerRadius = UDim.new(1, 0)
_ParticleEmitter.Parent = _ImageButton
_ParticleEmitter.LightEmission = 1
_ParticleEmitter.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.1),
    NumberSequenceKeypoint.new(1, 0),
})
_ParticleEmitter.Lifetime = NumberRange.new(0.5, 1)
_ParticleEmitter.Rate = 0
_ParticleEmitter.Speed = NumberRange.new(5, 10)
_ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(255, 85, 255), Color3.fromRGB(85, 255, 255))

local v236 = _TweenService
local u237 = _TweenService.Create(v236, _ImageButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0})
local u238 = true

_ImageButton.MouseButton1Down:Connect(function()
    _ParticleEmitter.Rate = 100

    task.delay(1, function()
        _ParticleEmitter.Rate = 0
    end)
    u237:Play()
    game:GetService('VirtualInputManager'):SendKeyEvent(true, Enum.KeyCode.End, false, game)
    u237.Completed:Connect(function()
        _ImageButton.Rotation = 0
    end)

    if u238 then
        u238 = false
        _ImageButton.BackgroundTransparency = 0.5
        _ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

        _TweenService:Create(_ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 50, 0, 50),
        }):Play()
    else
        u238 = true
        _ImageButton.BackgroundTransparency = 0
        _ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

        _TweenService:Create(_ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 60, 0, 60),
        }):Play()
    end
end)

if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Death') then
    game:GetService('ReplicatedStorage').Effect.Container.Death:Destroy()
end
if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Respawn') then
    game:GetService('ReplicatedStorage').Effect.Container.Respawn:Destroy()
end

v3.Home:AddButton({
    Title = 'Tik Tok',
    Description = 'Click(Copy)',
    Callback = function()
        setclipboard('https://www.tiktok.com/@hng.royal2?_t=ZS-8ywjDgNQ1ah&_r=1')
    end,
})
v3.Home:AddButton({
    Title = 'Telegram',
    Description = 'Click(Copy)',
    Callback = function()
        setclipboard('https://t.me/ayasourcecode')
    end,
})
v3.Home:AddButton({
    Title = 'Remember:',
    Description = 'This is not the real Banana Cat Hub, but a fake version made by HNC Roblox.',
    Callback = function()
        setclipboard('https://www.tiktok.com/@hnc_roblox?_t=ZS-8ywjDgNQ1ah&_r=1')
    end,
})

_G.FastAttackStrix_Mode = 'Super Fast Attack'

spawn(function()
    while wait() do
        if _G.FastAttackStrix_Mode then
            pcall(function()
                if _G.FastAttackStrix_Mode == 'Super Fast Attack' then
                    _G.Fast_Delay = 1e-9
                end
            end)
        end
    end
end)

local _DropdownSelectWeapon = v3.Main:AddDropdown('DropdownSelectWeapon', {
    Title = 'Select weapon',
    Description = '',
    Values = {
        'Melee',
        'Sword',
        'Blox Fruits',
    },
    Multi = false,
    Default = 1,
})

_DropdownSelectWeapon:SetValue('Melee')
_DropdownSelectWeapon:OnChanged(function(p240)
    ChooseWeapon = p240
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if ChooseWeapon ~= 'Melee' then
                if ChooseWeapon ~= 'Sword' then
                    if ChooseWeapon == 'Blox Fruit' then
                        local v241, v242, v243 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v244

                            v243, v244 = v241(v242, v243)

                            if v243 == nil then
                                break
                            end
                            if v244.ToolTip == 'Blox Fruit' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v244.Name)) then
                                SelectWeapon = v244.Name
                            end
                        end
                    end
                else
                    local v245, v246, v247 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                    while true do
                        local v248

                        v247, v248 = v245(v246, v247)

                        if v247 == nil then
                            break
                        end
                        if v248.ToolTip == 'Sword' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v248.Name)) then
                            SelectWeapon = v248.Name
                        end
                    end
                end
            else
                local v249, v250, v251 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                while true do
                    local v252

                    v251, v252 = v249(v250, v251)

                    if v251 == nil then
                        break
                    end
                    if v252.ToolTip == 'Melee' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v252.Name)) then
                        SelectWeapon = v252.Name
                    end
                end
            end
        end)
    end
end)
v3.Main:AddToggle('ToggleLevel', {
    Title = 'Auto Farm Level',
    Description = '',
    Default = false,
}):OnChanged(function(p253)
    _G.AutoLevel = p253

    if p253 == false then
        wait()
        Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
_Options.ToggleLevel:SetValue(false)
spawn(function()
    while task.wait() do
        if _G.AutoLevel then
            pcall(function()
                CheckLevel()

                if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                    if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        local v254, v255, v256 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v257

                            v256, v257 = v254(v255, v256)

                            if v256 == nil then
                                break
                            end
                            if v257:FindFirstChild('Humanoid') and (v257:FindFirstChild('HumanoidRootPart') and (v257.Humanoid.Health > 0 and v257.Name == Ms)) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()

                                    bringmob = true

                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v257.HumanoidRootPart.CFrame * Pos)

                                    v257.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v257.HumanoidRootPart.Transparency = 1
                                    v257.Humanoid.JumpPower = 0
                                    v257.Humanoid.WalkSpeed = 0
                                    v257.HumanoidRootPart.CanCollide = false
                                    FarmPos = v257.HumanoidRootPart.CFrame
                                    MonFarm = v257.Name
                                until not _G.AutoLevel or (not v257.Parent or v257.Humanoid.Health <= 0) or (not game:GetService('Workspace').Enemies:FindFirstChild(v257.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false)

                                bringmob = false
                            end
                        end

                        local v258, v259, v260 = pairs(game:GetService('Workspace')._WorldOrigin.EnemySpawns:GetChildren())

                        while true do
                            local v261

                            v260, v261 = v258(v259, v260)

                            if v260 == nil then
                                break
                            end
                            if string.find(v261.Name, NameMon) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v261.Position).Magnitude >= 10 then
                                Tween(v261.HumanoidRootPart.CFrame * Pos)
                            end
                        end
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                    Tween(CFrameQ)

                    if (CFrameQ.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, QuestLv)
                    end
                end
            end)
        end
    end
end)
v3.Main:AddToggle('ToggleMobAura', {
    Title = 'Auto Farm Nearest',
    Description = '',
    Default = false,
}):OnChanged(function(p262)
    _G.AutoNear = p262

    if p262 == false then
        wait()
        Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
_Options.ToggleMobAura:SetValue(false)
spawn(function()
    while wait() do
        if _G.AutoNear then
            pcall(function()
                local v263, v264, v265 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v266

                    v265, v266 = v263(v264, v265)

                    if v265 == nil then
                        break
                    end
                    if v266:FindFirstChild('Humanoid') and (v266:FindFirstChild('HumanoidRootPart') and (v266.Humanoid.Health > 0 and (v266.Name and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v266:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 5000))) then
                        repeat
                            wait(_G.Fast_Delay)
                            AttackNoCoolDown()

                            bringmob = true

                            AutoHaki()
                            EquipTool(SelectWeapon)
                            Tween(v266.HumanoidRootPart.CFrame * Pos)

                            v266.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v266.HumanoidRootPart.Transparency = 1
                            v266.Humanoid.JumpPower = 0
                            v266.Humanoid.WalkSpeed = 0
                            v266.HumanoidRootPart.CanCollide = false
                            FarmPos = v266.HumanoidRootPart.CFrame
                            MonFarm = v266.Name
                        until not _G.AutoNear or (not v266.Parent or v266.Humanoid.Health <= 0) or not game.Workspace.Enemies:FindFirstChild(v266.Name)

                        bringmob = false
                    end
                end
            end)
        end
    end
end)
v3.Main:AddToggle('ToggleCastleRaid', {
    Title = 'Auto Farm Pirates',
    Description = '',
    Default = false,
}):OnChanged(function(p267)
    _G.CastleRaid = p267
end)
_Options.ToggleCastleRaid:SetValue(false)
spawn(function()
    while wait() do
        if _G.CastleRaid then
            pcall(function()
                local v268 = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058e-9, 0.380223751, 3.588102e-8, 1, -1.06665446e-7, -0.380223751, 1.1229711e-7, 0.924894512)

                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                    Tween(v268)
                else
                    local v269, v270, v271 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v272

                        v271, v272 = v269(v270, v271)

                        if v271 == nil then
                            break
                        end
                        if _G.CastleRaid and (v272:FindFirstChild('HumanoidRootPart') and (v272:FindFirstChild('Humanoid') and (v272.Humanoid.Health > 0 and (v272.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000))) then
                            repeat
                                wait(_G.Fast_Delay)
                                AttackNoCoolDown()
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v272.HumanoidRootPart.CanCollide = false
                                v272.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                Tween(v272.HumanoidRootPart.CFrame * Pos)
                            until v272.Humanoid.Health <= 0 or not (v272.Parent and _G.CastleRaid)
                        end
                    end
                end
            end)
        end
    end
end)
v3.Main:AddToggle('ToggleHakiFortress', {
    Title = 'Activate Color Haki (Fortress)',
    Description = '',
    Default = false,
}):OnChanged(function(p273)
    _G.EnableHakiFortress = p273
end)
_Options.ToggleHakiFortress:SetValue(false)

local function u277(p274, p275)
    local v276 = {
        {
            StorageName = p274,
            Type = 'AuraSkin',
            Context = 'Equip',
        },
    }

    game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/FruitCustomizerRF'):InvokeServer(unpack(v276))
    Tween2(p275)
end
local function u281(p278, p279)
    local _Character2 = game.Players.LocalPlayer.Character

    if _Character2 and _Character2:FindFirstChild('HumanoidRootPart') then
        return (_Character2.HumanoidRootPart.Position - p278).Magnitude < p279
    else
        return false
    end
end

spawn(function()
    while true do
        if _G.EnableHakiFortress then
            u277('Snow White', Vector3.new(-4971.71826171875, 335.9582214355469, -3720.0595703125))

            while not u281(Vector3.new(-4971.71826171875, 335.9582214355469, -3720.0595703125), 1) do
                wait(0.1)
            end

            wait(0.5)
            u277('Pure Red', Vector3.new(-5414.92041015625, 314.2582092285156, -2212.20166015625))

            while not u281(Vector3.new(-5414.92041015625, 314.2582092285156, -2212.20166015625), 1) do
                wait(0.1)
            end

            wait(0.5)
            u277('Winter Sky', Vector3.new(-5420.26318359375, 1089.3582763671875, -2666.8193359375))

            while not u281(Vector3.new(-5420.26318359375, 1089.3582763671875, -2666.8193359375), 1) do
                wait(0.1)
            end

            wait(0.5)

            _G.EnableHakiFortress = false
        end

        wait(0.5)
    end
end)
v3.Main:AddToggle('ToggleCollectChest', {
    Title = 'Auto Farm Chest',
    Description = '',
    Default = false,
}):OnChanged(function(p282)
    _G.AutoCollectChest = p282
end)
spawn(function()
    while wait() do
        if _G.AutoCollectChest then
            local _LocalPlayer2 = game:GetService('Players').LocalPlayer
            local _Position2 = (_LocalPlayer2.Character or _LocalPlayer2.CharacterAdded:Wait()):GetPivot().Position
            local __ChestTagged = game:GetService('CollectionService'):GetTagged('_ChestTagged')
            local _huge = math.huge
            local v287 = nil

            for v288 = 1, #__ChestTagged do
                local v289 = __ChestTagged[v288]
                local _Magnitude3 = (v289:GetPivot().Position - _Position2).Magnitude

                if not v289:GetAttribute('IsDisabled') then
                    if _Magnitude3 < _huge then
                        v287 = v289
                        _huge = _Magnitude3
                    end
                end
            end

            if v287 then
                local _Position3 = v287:GetPivot().Position
                local v292 = CFrame.new(_Position3)

                Tween2(v292)
            end
        end
    end
end)
v3.Main:AddSection('Mastery')

local _DropdownMastery = v3.Main:AddDropdown('DropdownMastery', {
    Title = 'Auto Farm Mastery',
    Description = '',
    Values = {
        'Near Mobs',
    },
    Multi = false,
    Default = 1,
})

_DropdownMastery:SetValue(TypeMastery)
_DropdownMastery:OnChanged(function(p294)
    TypeMastery = p294
end)
v3.Main:AddToggle('ToggleMasteryFruit', {
    Title = 'Auto Mastery Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p295)
    AutoFarmMasDevilFruit = p295
end)
_Options.ToggleMasteryFruit:SetValue(false)

local _SliderHealt = v3.Main:AddSlider('SliderHealt', {
    Title = 'Mob HP',
    Description = '',
    Default = 20,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(p296)
        KillPercent = p296
    end,
})

_SliderHealt:OnChanged(function(p298)
    KillPercent = p298
end)
_SliderHealt:SetValue(20)
spawn(function()
    while task.wait() do
        if _G.UseSkill then
            pcall(function()
                if not _G.UseSkill then
                    return
                end

                local v299, v300, v301 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                local v302

                v301, v302 = v299(v300, v301)

                if v301 == nil then
                end
                if v302.Name ~= MonFarm or (not v302:FindFirstChild('Humanoid') or (not v302:FindFirstChild('HumanoidRootPart') or v302.Humanoid.Health > v302.Humanoid.MaxHealth * KillPercent / 100)) then
                end

                game:GetService('RunService').Heartbeat:wait()
                EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
                Tween(v302.HumanoidRootPart.CFrame * Pos)

                PositionSkillMasteryDevilFruit = v302.HumanoidRootPart.Position

                if game:GetService('Players').LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                    game:GetService('Players').LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit

                    local _Value2 = game:GetService('Players').LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value

                    if SkillZ and 1 <= _Value2 then
                        game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                        wait()
                        game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                    end
                    if SkillX and 2 <= _Value2 then
                        game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                        wait()
                        game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                    end
                    if SkillC and 3 <= _Value2 then
                        game:service('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                        wait()
                        game:service('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                    end
                    if SkillV and 4 <= _Value2 then
                        game:service('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                        wait()
                        game:service('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                    end
                    if SkillF and 5 <= _Value2 then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'F', false, game)
                        wait()
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'F', false, game)
                    end
                end
                if AutoFarmMasDevilFruit and (_G.UseSkill and v302.Humanoid.Health ~= 0) then
                else
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait(0.1) do
        if AutoFarmMasDevilFruit and TypeMastery == 'Near Mobs' then
            pcall(function()
                local v304, v305, v306 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v307

                    v306, v307 = v304(v305, v306)

                    if v306 == nil then
                        return
                    end
                    if v307.Name and (v307:FindFirstChild('Humanoid') and (v307:FindFirstChild('HumanoidRootPart') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v307:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 5000)) then
                        repeat
                            if true then
                                wait(_G.Fast_Delay)

                                if v307.Humanoid.Health > v307.Humanoid.MaxHealth * KillPercent / 100 then
                                    _G.UseSkill = false

                                    AutoHaki()

                                    bringmob = true

                                    EquipTool(SelectWeapon)
                                    Tween(v307.HumanoidRootPart.CFrame * Pos)

                                    v307.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v307.HumanoidRootPart.Transparency = 1
                                    v307.Humanoid.JumpPower = 0
                                    v307.Humanoid.WalkSpeed = 0
                                    v307.HumanoidRootPart.CanCollide = false
                                    FarmPos = v307.HumanoidRootPart.CFrame
                                    MonFarm = v307.Name

                                    AttackNoCoolDown()
                                else
                                    _G.UseSkill = true
                                end
                            end
                        until not AutoFarmMasDevilFruit or (not MasteryType == 'Near Mobs' or (not v307.Parent or v307.Humanoid.Health == 0))

                        bringmob = false
                        _G.UseSkill = false
                    end
                end
            end)
        end
    end
end)

if Sea3 then
    v3.Main:AddSection('X\u{1b0}\u{1a1}ng')

    local u308 = v3.Main:AddParagraph({
        Title = 'Bone Status',
        Content = '',
    })

    spawn(function()
        pcall(function()
            while wait() do
                local _Bones = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Check')

                u308:SetDesc('You have: ' .. tostring(_Bones) .. ' Bones')
            end
        end)
    end)
    v3.Main:AddToggle('ToggleBone', {
        Title = 'Auto Farm Bone',
        Description = '',
        Default = false,
    }):OnChanged(function(p310)
        _G.AutoBone = p310

        if p310 == false then
            wait()
            Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    _Options.ToggleBone:SetValue(false)

    local u311 = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)

    spawn(function()
        while wait() do
            if _G.AutoBone then
                pcall(function()
                    local _Text = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

                    if not string.find(_Text, 'Demonic Soul') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                    end
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                        if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true and (game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Demonic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy')))) then
                            local v313, v314, v315 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v316

                                v315, v316 = v313(v314, v315)

                                if v315 == nil then
                                    break
                                end
                                if v316:FindFirstChild('HumanoidRootPart') and (v316:FindFirstChild('Humanoid') and (v316.Humanoid.Health > 0 and (v316.Name == 'Reborn Skeleton' or (v316.Name == 'Living Zombie' or (v316.Name == 'Demonic Soul' or v316.Name == 'Posessed Mummy'))))) then
                                    if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Demonic Soul') then
                                        repeat
                                            wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            AutoHaki()

                                            bringmob = true

                                            EquipTool(SelectWeapon)
                                            Tween(v316.HumanoidRootPart.CFrame * Pos)

                                            v316.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v316.HumanoidRootPart.Transparency = 1
                                            v316.Humanoid.JumpPower = 0
                                            v316.Humanoid.WalkSpeed = 0
                                            v316.HumanoidRootPart.CanCollide = false
                                            FarmPos = v316.HumanoidRootPart.CFrame
                                            MonFarm = v316.Name
                                        until not _G.AutoBone or (v316.Humanoid.Health <= 0 or not v316.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')

                                        bringmob = false
                                    end
                                end
                            end
                        end
                    else
                        Tween(u311)

                        if (u311.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'HauntedQuest2', 1)
                        end
                    end
                end)
            end
        end
    end)

    local u317 = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)

    spawn(function()
        while wait() do
            if _G.AutoBoneNoQuest then
                pcall(function()
                    Tween(u317)

                    local _ = (u317.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3

                    if game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Demonic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy'))) then
                        local v318, v319, v320 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v321

                            v320, v321 = v318(v319, v320)

                            if v320 == nil then
                                break
                            end
                            if v321:FindFirstChild('HumanoidRootPart') and (v321:FindFirstChild('Humanoid') and (v321.Humanoid.Health > 0 and (v321.Name == 'Reborn Skeleton' or (v321.Name == 'Living Zombie' or (v321.Name == 'Demonic Soul' or v321.Name == 'Posessed Mummy'))))) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()

                                    bringmob = true

                                    EquipTool(SelectWeapon)
                                    Tween(v321.HumanoidRootPart.CFrame * Pos)

                                    v321.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v321.HumanoidRootPart.Transparency = 1
                                    v321.Humanoid.JumpPower = 0
                                    v321.Humanoid.WalkSpeed = 0
                                    v321.HumanoidRootPart.CanCollide = false
                                    FarmPos = v321.HumanoidRootPart.CFrame
                                    MonFarm = v321.Name
                                until not _G.AutoBoneNoQuest or (v321.Humanoid.Health <= 0 or not v321.Parent)
                            end
                        end
                    end
                end)
            end
        end
    end)
    v3.Main:AddToggle('ToggleRandomBone', {
        Title = 'Random Bones',
        Description = '',
        Default = false,
    }):OnChanged(function(p322)
        _G.AutoRandomBone = p322
    end)
    _Options.ToggleRandomBone:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoRandomBone then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'Bones',
                    'Buy',
                    1,
                    1,
                }))
            end
        end
    end)
end
if Sea3 then
    v3.Main:AddSection('Cake Prince')

    local u323 = v3.Main:AddParagraph({
        Title = 'Status',
        Content = '',
    })

    spawn(function()
        while wait() do
            pcall(function()
                if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 88 then
                    if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 87 then
                        if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 86 then
                            u323:SetDesc('T\u{1b0} L\u{1ec7}nh B\u{e1}nh : \u{2705}\u{fe0f}')
                        else
                            u323:SetDesc('C\u{f2}n: ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 39) .. ' ')
                        end
                    else
                        u323:SetDesc('C\u{f2}n: ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 40) .. '')
                    end
                else
                    u323:SetDesc('Left: ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 41) .. '')
                end
            end)
        end
    end)

    local _ToggleCake = v3.Main:AddToggle('ToggleCake', {
        Title = 'Auto Cake Prince',
        Description = '',
        Default = false,
    })
    local u325 = true

    _ToggleCake:OnChanged(function(p326)
        _G.CakePrince = p326

        if p326 then
            if u325 then
                u325 = false

                local v327 = CFrame.new(-2003.932861328125, 380.4824523925781, -12561.0185546875)

                Tween(v327)
            end
        else
            u325 = true

            wait()
            Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    _Options.ToggleCake:SetValue(false)
    spawn(function()
        while wait() do
            if _G.CakePrince then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') then
                        local v328, v329, v330 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v331

                            v330, v331 = v328(v329, v330)

                            if v330 == nil then
                                break
                            end
                            if v331.Name == 'Cake Prince' and (v331:FindFirstChild('Humanoid') and (v331:FindFirstChild('HumanoidRootPart') and v331.Humanoid.Health > 0)) then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v331.HumanoidRootPart.CanCollide = false
                                    v331.Humanoid.WalkSpeed = 0
                                    v331.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v331.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCoolDown()
                                until not _G.CakePrince or (not v331.Parent or v331.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]') then
                        Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif game:GetService('Workspace').Map.CakeLoaf.BigMirror.Other.Transparency == 1 and (game:GetService('Workspace').Enemies:FindFirstChild('Cookie Crafter') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Guard') or (game:GetService('Workspace').Enemies:FindFirstChild('Baking Staff') or game:GetService('Workspace').Enemies:FindFirstChild('Head Baker')))) then
                        local v332, v333, v334 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v335

                            v334, v335 = v332(v333, v334)

                            if v334 == nil then
                                break
                            end
                            if (v335.Name == 'Cookie Crafter' or (v335.Name == 'Cake Guard' or (v335.Name == 'Baking Staff' or v335.Name == 'Head Baker'))) and (v335:FindFirstChild('Humanoid') and (v335:FindFirstChild('HumanoidRootPart') and v335.Humanoid.Health > 0)) then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    AutoHaki()

                                    bringmob = true

                                    EquipTool(SelectWeapon)

                                    v335.HumanoidRootPart.CanCollide = false
                                    v335.Humanoid.WalkSpeed = 0
                                    v335.Head.CanCollide = false
                                    v335.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    FarmPos = v335.HumanoidRootPart.CFrame
                                    MonFarm = v335.Name

                                    Tween(v335.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCoolDown()
                                until not _G.CakePrince or (not v335.Parent or v335.Humanoid.Health <= 0) or (game:GetService('Workspace').Map.CakeLoaf.BigMirror.Other.Transparency == 0 or (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]') or game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]')))

                                bringmob = false
                            end
                        end
                    end
                end)
            end
        end
    end)
    v3.Main:AddToggle('ToggleDoughKing', {
        Title = 'Auto Dough King',
        Description = '',
        Default = false,
    }):OnChanged(function(p336)
        _G.DoughKing = p336

        if p336 == false then
            wait()
            Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    _Options.ToggleDoughKing:SetValue(false)
    spawn(function()
        while wait() do
            if _G.DoughKing then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                        local v337, v338, v339 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v340

                            v339, v340 = v337(v338, v339)

                            if v339 == nil then
                                break
                            end
                            if v340.Name == 'Dough King' and (v340:FindFirstChild('Humanoid') and (v340:FindFirstChild('HumanoidRootPart') and v340.Humanoid.Health > 0)) then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v340.HumanoidRootPart.CanCollide = false
                                    v340.Humanoid.WalkSpeed = 0
                                    v340.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v340.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCoolDown()
                                until not _G.DoughKing or (not v340.Parent or v340.Humanoid.Health <= 0)
                            end
                        end
                    end
                end)
            end
        end
    end)
    v3.Main:AddToggle('ToggleSpawnCake', {
        Title = 'Spawm Cake Prince',
        Description = '',
        Default = true,
    }):OnChanged(function(p341)
        _G.SpawnCakePrince = p341
    end)
    _Options.ToggleSpawnCake:SetValue(true)
end

spawn(function()
    while wait() do
        if _G.SpawnCakePrince then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'CakePrinceSpawner',
                true,
            }))
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'CakePrinceSpawner',
            }))
        end
    end
end)

if Sea2 then
    v3.Main:AddSection('Ectoplasm Farm')
    v3.Main:AddToggle('ToggleVatChatKiDi', {
        Title = 'Auto Farm Ectoplasm',
        Description = '',
        Default = false,
    }):OnChanged(function(p342)
        _G.Ectoplasm = p342
    end)
    _Options.ToggleVatChatKiDi:SetValue(false)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Ectoplasm then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Ship Deckhand') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Engineer') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Steward') or game:GetService('Workspace').Enemies:FindFirstChild('Ship Officer'))) then
                        local v343, v344, v345 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v346

                            v345, v346 = v343(v344, v345)

                            if v345 == nil then
                                break
                            end
                            if (v346.Name == 'Ship Steward' or (v346.Name == 'Ship Engineer' or (v346.Name == 'Ship Deckhand' or v346.Name == 'Ship Officer' and v346:FindFirstChild('Humanoid')))) and v346.Humanoid.Health > 0 then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()

                                    bringmob = true

                                    EquipTool(SelectWeapon)
                                    Tween(v346.HumanoidRootPart.CFrame * Pos)

                                    v346.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v346.HumanoidRootPart.Transparency = 1
                                    v346.Humanoid.JumpPower = 0
                                    v346.Humanoid.WalkSpeed = 0
                                    v346.HumanoidRootPart.CanCollide = false
                                    FarmPos = v346.HumanoidRootPart.CFrame
                                    MonFarm = v346.Name
                                until _G.Ectoplasm == false or (not v346.Parent or v346.Humanoid.Health == 0) or not game:GetService('Workspace').Enemies:FindFirstChild(v346.Name)

                                bringmob = false
                            end
                        end
                    else
                        if (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        end

                        Tween(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                    end
                end
            end)
        end
    end)
end

v3.Main:AddSection('Boss')

if Sea1 then
    tableBoss = {
        'The Gorilla King',
        'Bobby',
        'Yeti',
        'Mob Leader',
        'Vice Admiral',
        'Warden',
        'Chief Warden',
        'Swan',
        'Magma Admiral',
        'Fishman Lord',
        'Wysper',
        'Thunder God',
        'Cyborg',
        'Saber Expert',
    }
elseif Sea2 then
    tableBoss = {
        'Diamond',
        'Jeremy',
        'Fajita',
        'Don Swan',
        'Smoke Admiral',
        'Cursed Captain',
        'Darkbeard',
        'Order',
        'Awakened Ice Admiral',
        'Tide Keeper',
    }
elseif Sea3 then
    tableBoss = {
        'Stone',
        'Hydra Leader',
        'Kilo Admiral',
        'Captain Elephant',
        'Beautiful Pirate',
        'rip_indra True Form',
        'Longma',
        'Soul Reaper',
        'Cake Queen',
    }
end

local _DropdownBoss = v3.Main:AddDropdown('DropdownBoss', {
    Title = 'Select Boss',
    Description = '',
    Values = tableBoss,
    Multi = false,
    Default = 1,
})

_DropdownBoss:SetValue(_G.SelectBoss)
_DropdownBoss:OnChanged(function(p348)
    _G.SelectBoss = p348
end)
v3.Main:AddToggle('ToggleAutoFarmBoss', {
    Title = 'Auto Farm Boss',
    Description = '',
    Default = false,
}):OnChanged(function(p349)
    _G.AutoBoss = p349
end)
_Options.ToggleAutoFarmBoss:SetValue(false)
spawn(function()
    while wait() do
        if _G.AutoBoss then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild(_G.SelectBoss) then
                    local v350, v351, v352 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v353

                        v352, v353 = v350(v351, v352)

                        if v352 == nil then
                            break
                        end
                        if v353.Name == _G.SelectBoss and (v353:FindFirstChild('Humanoid') and (v353:FindFirstChild('HumanoidRootPart') and v353.Humanoid.Health > 0)) then
                            repeat
                                wait(_G.Fast_Delay)
                                AttackNoCoolDown()
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v353.HumanoidRootPart.CanCollide = false
                                v353.Humanoid.WalkSpeed = 0
                                v353.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                Tween(v353.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.AutoBoss or (not v353.Parent or v353.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss) then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                end
            end)
        end
    end
end)
v3.Main:AddSection('Material')

if Sea1 then
    MaterialList = {
        'Scrap Metal',
        'Leather',
        'Angel Wings',
        'Magma Ore',
        'Fish Tail',
    }
elseif Sea2 then
    MaterialList = {
        'Scrap Metal',
        'Leather',
        'Radioactive Material',
        'Mystic Droplet',
        'Magma Ore',
        'Vampire Fang',
    }
elseif Sea3 then
    MaterialList = {
        'Scrap Metal',
        'Leather',
        'Demonic Wisp',
        'Conjured Cocoa',
        'Dragon Scale',
        'Gunpowder',
        'Fish Tail',
        'Mini Tusk',
        'Hydra Enforcer',
        'Venomous Assailant',
    }
end

local _DropdownMaterial = v3.Main:AddDropdown('DropdownMaterial', {
    Title = 'Select Material',
    Description = '',
    Values = MaterialList,
    Multi = false,
    Default = 1,
})

_DropdownMaterial:SetValue(SelectMaterial)
_DropdownMaterial:OnChanged(function(p355)
    SelectMaterial = p355
end)
v3.Main:AddToggle('ToggleMaterial', {
    Title = 'Auto Farm Material',
    Description = '',
    Default = false,
}):OnChanged(function(p356)
    _G.AutoMaterial = p356

    if p356 == false then
        wait()
        Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
_Options.ToggleMaterial:SetValue(false)
spawn(function()
    while task.wait() do
        if _G.AutoMaterial then
            pcall(function()
                MaterialMon(SelectMaterial)
                Tween(MPos)

                if game:GetService('Workspace').Enemies:FindFirstChild(MMon) then
                    local v357, v358, v359 = pairs(game.Workspace.Enemies:GetChildren())

                    while true do
                        local v360

                        v359, v360 = v357(v358, v359)

                        if v359 == nil then
                            break
                        end
                        if v360:FindFirstChild('Humanoid') and (v360:FindFirstChild('HumanoidRootPart') and (v360.Humanoid.Health > 0 and v360.Name == MMon)) then
                            repeat
                                wait(_G.Fast_Delay)
                                AttackNoCoolDown()
                                AutoHaki()

                                bringmob = true

                                EquipTool(SelectWeapon)
                                Tween(v360.HumanoidRootPart.CFrame * Pos)

                                v360.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v360.HumanoidRootPart.Transparency = 1
                                v360.Humanoid.JumpPower = 0
                                v360.Humanoid.WalkSpeed = 0
                                v360.HumanoidRootPart.CanCollide = false
                                FarmPos = v360.HumanoidRootPart.CFrame
                                MonFarm = v360.Name
                            until not _G.AutoMaterial or (not v360.Parent or v360.Humanoid.Health <= 0)

                            bringmob = false
                        end
                    end
                else
                    local v361, v362, v363 = pairs(game:GetService('Workspace')._WorldOrigin.EnemySpawns:GetChildren())

                    while true do
                        local v364

                        v363, v364 = v361(v362, v363)

                        if v363 == nil then
                            break
                        end
                        if string.find(v364.Name, Mon) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v364.Position).Magnitude >= 10 then
                            Tween(v364.HumanoidRootPart.CFrame * Pos)
                        end
                    end
                end
            end)
        end
    end
end)

if Sea3 then
    v3.Sea:AddSection('Kitsune Island Status')

    local u365 = v3.Sea:AddParagraph({
        Title = '',
        Content = '',
    })

    function UpdateKitsune()
        if game:GetService('Workspace').Map:FindFirstChild('KitsuneIsland') then
            u365:SetDesc('Kitsune Island : \u{2705}\u{fe0f}')
        else
            u365:SetDesc('Kitsune Island : \u{274c}\u{fe0f}')
        end
    end

    spawn(function()
        pcall(function()
            while wait() do
                UpdateKitsune()
            end
        end)
    end)
    v3.Sea:AddToggle('ToggleEspKitsune', {
        Title = 'Esp Kitsune island',
        Description = '',
        Default = false,
    }):OnChanged(function(p366)
        KitsuneIslandEsp = p366

        while KitsuneIslandEsp do
            wait()
            UpdateIslandKisuneESP()
        end
    end)
    _Options.ToggleEspKitsune:SetValue(false)

    function UpdateIslandKisuneESP()
        local v367, v368, v369 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

        while true do
            local u370

            v369, u370 = v367(v368, v369)

            if v369 == nil then
                break
            end

            pcall(function()
                if KitsuneIslandEsp then
                    if u370.Name == 'Kitsune Island' then
                        if u370:FindFirstChild('NameEsp') then
                            u370.NameEsp.TextLabel.Text = u370.Name .. '   \n' .. u145((game:GetService('Players').LocalPlayer.Character.Head.Position - u370.Position).Magnitude / 3) .. ' M'
                        else
                            local _BillboardGui24 = Instance.new('BillboardGui', u370)

                            _BillboardGui24.Name = 'NameEsp'
                            _BillboardGui24.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui24.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui24.Adornee = u370
                            _BillboardGui24.AlwaysOnTop = true

                            local _TextLabel24 = Instance.new('TextLabel', _BillboardGui24)

                            _TextLabel24.Font = 'Code'
                            _TextLabel24.FontSize = 'Size14'
                            _TextLabel24.TextWrapped = true
                            _TextLabel24.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel24.TextYAlignment = 'Top'
                            _TextLabel24.BackgroundTransparency = 1
                            _TextLabel24.TextStrokeTransparency = 0.5
                            _TextLabel24.TextColor3 = Color3.fromRGB(80, 245, 245)
                        end
                    end
                elseif u370:FindFirstChild('NameEsp') then
                    u370:FindFirstChild('NameEsp'):Destroy()
                end
            end)
        end
    end

    v3.Sea:AddToggle('ToggleTPKitsune', {
        Title = 'Fly to Kitsune Island',
        Description = '',
        Default = false,
    }):OnChanged(function(p373)
        _G.TweenToKitsune = p373
    end)
    _Options.ToggleTPKitsune:SetValue(false)
    spawn(function()
        local v374 = nil

        while not v374 do
            v374 = game:GetService('Workspace').Map:FindFirstChild('KitsuneIsland')

            wait()
        end
        while wait() do
            if _G.TweenToKitsune then
                local _ShrineActive = v374:FindFirstChild('ShrineActive')

                if _ShrineActive then
                    local v376, v377, v378 = pairs(_ShrineActive:GetDescendants())

                    while true do
                        local v379

                        v378, v379 = v376(v377, v378)

                        if v378 == nil then
                            break
                        end
                        if v379:IsA('BasePart') and v379.Name:find('NeonShrinePart') then
                            Tween(v379.CFrame)
                        end
                    end
                end
            end
        end
    end)
    v3.Sea:AddToggle('ToggleCollectAzure', {
        Title = 'Auto Collect Azure Ember',
        Description = '',
        Default = false,
    }):OnChanged(function(p380)
        _G.CollectAzure = p380
    end)
    _Options.ToggleCollectAzure:SetValue(false)
    spawn(function()
        while wait() do
            if _G.CollectAzure then
                pcall(function()
                    if game:GetService('Workspace'):FindFirstChild('AttachedAzureEmber') then
                        Tween(game:GetService('Workspace'):WaitForChild('EmberTemplate'):FindFirstChild('Part').CFrame)
                    end
                end)
            end
        end
    end)
end

v3.Sea:AddButton({
    Title = 'Auto Trade Azure Ember',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage'):WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RF/KitsuneStatuePray'):InvokeServer()
    end,
})

if Sea3 then
    v3.Sea:AddSection('Sea')

    local _Players = game:GetService('Players')
    local _RunService = game:GetService('RunService')
    local _VirtualInputManager = game:GetService('VirtualInputManager')
    local _Workspace = game:GetService('Workspace')
    local u385 = 350

    v3.Sea:AddSlider('SliderSpeedBoat', {
        Title = 'Boat Speed',
        Description = '',
        Default = u385,
        Min = 0,
        Max = 350,
        Rounding = 1,
        Callback = function(p386)
            u385 = p386
        end,
    }):SetValue(u385)

    local _AutoFindPrehistoric = v3.Sea:AddToggle('AutoFindPrehistoric', {
        Title = 'Auto Find Prehistoric Island',
        Description = '',
        Default = false,
    })

    _Options.AutoFindPrehistoric:SetValue(false)
    _AutoFindPrehistoric:OnChanged(function(p388)
        _G.AutoFindPrehistoric = p388
    end)

    local u389 = {}
    local u390 = false
    local u391 = false

    _RunService.RenderStepped:Connect(function()
        if _G.AutoFindPrehistoric then
            local _Character3 = _Players.LocalPlayer.Character

            if _Character3 and _Character3:FindFirstChild('Humanoid') then
                local function v397()
                    if u390 then
                        return
                    end

                    u390 = true

                    local v393, v394, v395 = pairs(u389)

                    while true do
                        local v396

                        v395, v396 = v393(v394, v395)

                        if v395 == nil then
                            break
                        end
                        if v396 and (v396.Parent and (v396.Name == 'VehicleSeat' and not v396.Occupant)) then
                            Tween2(v396.CFrame)

                            break
                        end
                    end

                    u390 = false
                end

                local _Humanoid = _Character3.Humanoid
                local v399, v400, v401 = pairs(_Workspace.Boats:GetChildren())
                local v402 = false
                local v403 = nil

                while true do
                    local v404

                    v401, v404 = v399(v400, v401)

                    if v401 == nil then
                        break
                    end

                    local _VehicleSeat = v404:FindFirstChild('VehicleSeat')

                    if _VehicleSeat and _VehicleSeat.Occupant == _Humanoid then
                        u389[v404.Name] = _VehicleSeat
                        v403 = _VehicleSeat
                        v402 = true
                    elseif _VehicleSeat and _VehicleSeat.Occupant == nil then
                        v397()
                    end
                end

                if v402 then
                    v403.MaxSpeed = u385
                    v403.CFrame = CFrame.new(Vector3.new(v403.Position.X, v403.Position.Y, v403.Position.Z)) * v403.CFrame.Rotation

                    _VirtualInputManager:SendKeyEvent(true, 'W', false, game)

                    local v406, v407, v408 = pairs(_Workspace.Boats:GetDescendants())

                    while true do
                        local v409

                        v408, v409 = v406(v407, v408)

                        if v408 == nil then
                            break
                        end
                        if v409:IsA('BasePart') then
                            v409.CanCollide = false
                        end
                    end

                    local v410, v411, v412 = pairs(_Character3:GetDescendants())

                    while true do
                        local v413

                        v412, v413 = v410(v411, v412)

                        if v412 == nil then
                            break
                        end
                        if v413:IsA('BasePart') then
                            v413.CanCollide = false
                        end
                    end

                    local v414, v415, v416 = ipairs({
                        'ShipwreckIsland',
                        'SandIsland',
                        'TreeIsland',
                        'TinyIsland',
                        'MysticIsland',
                        'KitsuneIsland',
                        'FrozenDimension',
                    })

                    while true do
                        local v417

                        v416, v417 = v414(v415, v416)

                        if v416 == nil then
                            break
                        end

                        local v418 = _Workspace.Map:FindFirstChild(v417)

                        if v418 and v418:IsA('Model') then
                            v418:Destroy()
                        end
                    end

                    if _Workspace.Map:FindFirstChild('PrehistoricIsland') then
                        _VirtualInputManager:SendKeyEvent(false, 'W', false, game)

                        _G.AutoFindPrehistoric = false

                        if not u391 then
                            u1:Notify({
                                Title = 'Banana Cat Hub',
                                Content = '\u{110}\u{1ea3}o Dung Nham T\u{ec}m Th\u{1ea5}y',
                                Duration = 10,
                            })

                            u391 = true
                        end
                    end
                else
                    return
                end
            else
                return
            end
        else
            u391 = false

            return
        end
    end)

    local _AutoFindMirage = v3.Sea:AddToggle('AutoFindMirage', {
        Title = 'Auto Find Mirage',
        Description = '',
        Default = false,
    })

    _Options.AutoFindMirage:SetValue(false)
    _AutoFindMirage:OnChanged(function(p420)
        _G.AutoFindMirage = p420
    end)

    local u421 = {}
    local u422 = false
    local u423 = false

    _RunService.RenderStepped:Connect(function()
        if _G.AutoFindMirage then
            local _Character4 = _Players.LocalPlayer.Character

            if _Character4 and _Character4:FindFirstChild('Humanoid') then
                local function v429()
                    if u422 then
                        return
                    end

                    u422 = true

                    local v425, v426, v427 = pairs(u421)

                    while true do
                        local v428

                        v427, v428 = v425(v426, v427)

                        if v427 == nil then
                            break
                        end
                        if v428 and (v428.Parent and (v428.Name == 'VehicleSeat' and not v428.Occupant)) then
                            Tween2(v428.CFrame)

                            break
                        end
                    end

                    u422 = false
                end

                local _Humanoid2 = _Character4.Humanoid
                local v431, v432, v433 = pairs(_Workspace.Boats:GetChildren())
                local v434 = false
                local v435 = nil

                while true do
                    local v436

                    v433, v436 = v431(v432, v433)

                    if v433 == nil then
                        break
                    end

                    local _VehicleSeat2 = v436:FindFirstChild('VehicleSeat')

                    if _VehicleSeat2 and _VehicleSeat2.Occupant == _Humanoid2 then
                        u421[v436.Name] = _VehicleSeat2
                        v435 = _VehicleSeat2
                        v434 = true
                    elseif _VehicleSeat2 and _VehicleSeat2.Occupant == nil then
                        v429()
                    end
                end

                if v434 then
                    v435.MaxSpeed = u385
                    v435.CFrame = CFrame.new(Vector3.new(v435.Position.X, v435.Position.Y, v435.Position.Z)) * v435.CFrame.Rotation

                    _VirtualInputManager:SendKeyEvent(true, 'W', false, game)

                    local v438, v439, v440 = pairs(_Workspace.Boats:GetDescendants())

                    while true do
                        local v441

                        v440, v441 = v438(v439, v440)

                        if v440 == nil then
                            break
                        end
                        if v441:IsA('BasePart') then
                            v441.CanCollide = false
                        end
                    end

                    local v442, v443, v444 = pairs(_Character4:GetDescendants())

                    while true do
                        local v445

                        v444, v445 = v442(v443, v444)

                        if v444 == nil then
                            break
                        end
                        if v445:IsA('BasePart') then
                            v445.CanCollide = false
                        end
                    end

                    local v446, v447, v448 = ipairs({
                        'ShipwreckIsland',
                        'SandIsland',
                        'TreeIsland',
                        'TinyIsland',
                        'PrehistoricIsland',
                        'KitsuneIsland',
                        'FrozenDimension',
                    })

                    while true do
                        local v449

                        v448, v449 = v446(v447, v448)

                        if v448 == nil then
                            break
                        end

                        local v450 = _Workspace.Map:FindFirstChild(v449)

                        if v450 and v450:IsA('Model') then
                            v450:Destroy()
                        end
                    end

                    if _Workspace.Map:FindFirstChild('MysticIsland') then
                        _VirtualInputManager:SendKeyEvent(false, 'W', false, game)

                        _G.AutoFindMirage = false

                        if not u423 then
                            u1:Notify({
                                Title = 'Banana Cat Hub',
                                Content = '\u{110}\u{1ea3}o B\u{ed} \u{1ea8}n T\u{ec}m Th\u{1ea5}y',
                                Duration = 10,
                            })

                            u423 = true
                        end
                    end
                else
                    return
                end
            else
                return
            end
        else
            u423 = false

            return
        end
    end)

    local _AutoFindFrozen = v3.Sea:AddToggle('AutoFindFrozen', {
        Title = 'Auto Find Leviathan Island',
        Description = '',
        Default = false,
    })

    _Options.AutoFindFrozen:SetValue(false)
    _AutoFindFrozen:OnChanged(function(p452)
        _G.AutoFindFrozen = p452
    end)

    local u453 = {}
    local u454 = false
    local u455 = false

    _RunService.RenderStepped:Connect(function()
        if _G.AutoFindFrozen then
            local _Character5 = _Players.LocalPlayer.Character

            if _Character5 and _Character5:FindFirstChild('Humanoid') then
                local function v461()
                    if u454 then
                        return
                    end

                    u454 = true

                    local v457, v458, v459 = pairs(u453)

                    while true do
                        local v460

                        v459, v460 = v457(v458, v459)

                        if v459 == nil then
                            break
                        end
                        if v460 and (v460.Parent and (v460.Name == 'VehicleSeat' and not v460.Occupant)) then
                            Tween2(v460.CFrame)

                            break
                        end
                    end

                    u454 = false
                end

                local _Humanoid3 = _Character5.Humanoid
                local v463, v464, v465 = pairs(_Workspace.Boats:GetChildren())
                local v466 = false
                local v467 = nil

                while true do
                    local v468

                    v465, v468 = v463(v464, v465)

                    if v465 == nil then
                        break
                    end

                    local _VehicleSeat3 = v468:FindFirstChild('VehicleSeat')

                    if _VehicleSeat3 and _VehicleSeat3.Occupant == _Humanoid3 then
                        u453[v468.Name] = _VehicleSeat3
                        v467 = _VehicleSeat3
                        v466 = true
                    elseif _VehicleSeat3 and _VehicleSeat3.Occupant == nil then
                        v461()
                    end
                end

                if v466 then
                    v467.MaxSpeed = u385
                    v467.CFrame = CFrame.new(Vector3.new(v467.Position.X, v467.Position.Y, v467.Position.Z)) * v467.CFrame.Rotation

                    _VirtualInputManager:SendKeyEvent(true, 'W', false, game)

                    local v470, v471, v472 = pairs(_Workspace.Boats:GetDescendants())

                    while true do
                        local v473

                        v472, v473 = v470(v471, v472)

                        if v472 == nil then
                            break
                        end
                        if v473:IsA('BasePart') then
                            v473.CanCollide = false
                        end
                    end

                    local v474, v475, v476 = pairs(_Character5:GetDescendants())

                    while true do
                        local v477

                        v476, v477 = v474(v475, v476)

                        if v476 == nil then
                            break
                        end
                        if v477:IsA('BasePart') then
                            v477.CanCollide = false
                        end
                    end

                    local v478, v479, v480 = ipairs({
                        'ShipwreckIsland',
                        'SandIsland',
                        'TreeIsland',
                        'TinyIsland',
                        'MysticIsland',
                        'KitsuneIsland',
                        'PrehistoricIsland',
                    })

                    while true do
                        local v481

                        v480, v481 = v478(v479, v480)

                        if v480 == nil then
                            break
                        end

                        local v482 = _Workspace.Map:FindFirstChild(v481)

                        if v482 and v482:IsA('Model') then
                            v482:Destroy()
                        end
                    end

                    if _Workspace.Map:FindFirstChild('FrozenDimension') then
                        _VirtualInputManager:SendKeyEvent(false, 'W', false, game)

                        _G.AutoFindFrozen = false

                        if not u455 then
                            u1:Notify({
                                Title = 'Banana Cat Hub',
                                Content = '\u{110}\u{1ea3}o Leviathan T\u{ec}m Th\u{1ea5}y',
                                Duration = 10,
                            })

                            u455 = true
                        end
                    end
                else
                    return
                end
            else
                return
            end
        else
            u455 = false

            return
        end
    end)
    v3.Sea:AddToggle('AutoComeTiki', {
        Title = 'Go Back To Tiki Outpost',
        Description = '',
        Default = false,
    }):OnChanged(function(p483)
        _G.AutoComeTiki = p483
    end)
    _RunService.RenderStepped:Connect(function()
        if not _G.AutoComeTiki then
            return
        end

        local _Character6 = _Players.LocalPlayer.Character

        if not (_Character6 and _Character6:FindFirstChild('Humanoid')) then
            return
        end

        local _Humanoid4 = _Character6.Humanoid
        local v486, v487, v488 = pairs(_Workspace.Boats:GetChildren())
        local v489 = nil

        while true do
            local v490

            v488, v490 = v486(v487, v488)

            if v488 == nil then
                _VehicleSeat4 = v489

                break
            end

            local _VehicleSeat4 = v490:FindFirstChild('VehicleSeat')

            if _VehicleSeat4 and _VehicleSeat4.Occupant == _Humanoid4 then
                break
            end
        end

        if _VehicleSeat4 then
            _VehicleSeat4.MaxSpeed = u385

            local v492 = CFrame.new(-16217.7568359375, 9.126761436462402, 446.06536865234375)
            local _Position4 = _VehicleSeat4.Position
            local _Position5 = v492.Position
            local v495 = (_Position5 - _Position4).unit * _VehicleSeat4.MaxSpeed * _RunService.RenderStepped:Wait()

            _VehicleSeat4.CFrame = _VehicleSeat4.CFrame + v495

            CFrame.new(_Position4, _Position5)

            _VehicleSeat4.CFrame = CFrame.new(_VehicleSeat4.Position, _Position5)

            if (_VehicleSeat4.Position - _Position5).magnitude < 120 then
                _G.AutoComeTiki = false

                _VirtualInputManager:SendKeyEvent(false, 'W', false, game)
            end
        end
    end)
    v3.Sea:AddToggle('AutoComeHydra', {
        Title = 'Go Back To Hydra Island',
        Description = '',
        Default = false,
    }):OnChanged(function(p496)
        _G.AutoComeHydra = p496
    end)
    _RunService.RenderStepped:Connect(function()
        if not _G.AutoComeHydra then
            return
        end

        local _Character7 = _Players.LocalPlayer.Character

        if not (_Character7 and _Character7:FindFirstChild('Humanoid')) then
            return
        end

        local _Humanoid5 = _Character7.Humanoid
        local v499, v500, v501 = pairs(_Workspace.Boats:GetChildren())
        local v502 = nil

        while true do
            local v503

            v501, v503 = v499(v500, v501)

            if v501 == nil then
                _VehicleSeat5 = v502

                break
            end

            local _VehicleSeat5 = v503:FindFirstChild('VehicleSeat')

            if _VehicleSeat5 and _VehicleSeat5.Occupant == _Humanoid5 then
                break
            end
        end

        if _VehicleSeat5 then
            _VehicleSeat5.MaxSpeed = u385

            local v505 = CFrame.new(5193.9375, -0.04690289497375488, 1631.578369140625)
            local _Position6 = _VehicleSeat5.Position
            local _Position7 = v505.Position
            local v508 = (_Position7 - _Position6).unit * _VehicleSeat5.MaxSpeed * _RunService.RenderStepped:Wait()

            _VehicleSeat5.CFrame = _VehicleSeat5.CFrame + v508

            CFrame.new(_Position6, _Position7)

            _VehicleSeat5.CFrame = CFrame.new(_VehicleSeat5.Position, _Position7)

            if (_VehicleSeat5.Position - _Position7).magnitude < 120 then
                _G.AutoComeHydra = false

                _VirtualInputManager:SendKeyEvent(false, 'W', false, game)
            end
        end
    end)
    v3.Sea:AddButton({
        Title = 'Travel to Hunting Zone',
        Description = '',
        Callback = function()
            Tween2(CFrame.new(-16917.154296875, 7.757596015930176, 511.8203125))
        end,
    })

    local u509 = {}
    local _DropdownBoat = v3.Sea:AddDropdown('DropdownBoat', {
        Title = 'Select Boat',
        Description = '',
        Values = {
            'Beast Hunter',
            'Sleigh',
            'Miracle',
            'The Sentinel',
            'Guardian',
            'Lantern',
            'Dinghy',
            'PirateSloop',
            'PirateBrigade',
            'PirateGrandBrigade',
            'MarineGrandBrigade',
            'MarineBrigade',
            'MarineSloop',
        },
        Multi = false,
        Default = 1,
    })

    _DropdownBoat:SetValue(selectedBoat)
    _DropdownBoat:OnChanged(function(p511)
        selectedBoat = p511
    end)

    local function u518(p512)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'BuyBoat',
            p512,
        }))
        task.delay(2, function()
            local v513, v514, v515 = pairs(_Workspace.Boats:GetChildren())

            while true do
                local v516

                v515, v516 = v513(v514, v515)

                if v515 == nil then
                    break
                end
                if v516:IsA('Model') and v516.Name == p512 then
                    local _VehicleSeat6 = v516:FindFirstChild('VehicleSeat')

                    if _VehicleSeat6 and not _VehicleSeat6.Occupant then
                        u509[p512] = _VehicleSeat6
                    end
                end
            end
        end)
    end
    local function u523()
        local v519, v520, v521 = pairs(u509)

        while true do
            local v522

            v521, v522 = v519(v520, v521)

            if v521 == nil then
                break
            end
            if v522 and (v522.Parent and (v522.Name == 'VehicleSeat' and not v522.Occupant)) then
                Tween2(v522.CFrame)
            end
        end
    end

    game:GetService('RunService').RenderStepped:Connect(function()
        local v524, v525, v526 = pairs(u509)

        while true do
            local v527

            v526, v527 = v524(v525, v526)

            if v526 == nil then
                break
            end
            if v527 and (v527.Parent and (v527.Name == 'VehicleSeat' and not v527.Occupant)) then
                u509[v526] = v527
            end
        end
    end)
    v3.Sea:AddButton({
        Title = 'Buy Boad',
        Description = '',
        Callback = function()
            u518(selectedBoat)
        end,
    })
    v3.Sea:AddButton({
        Title = 'Fly To My Boat',
        Description = '',
        Callback = function()
            u523()
        end,
    })
    v3.Sea:AddToggle('ToggleTerrorshark', {
        Title = 'Attack Terrorshark',
        Description = '',
        Default = false,
    }):OnChanged(function(p528)
        _G.AutoTerrorshark = p528
    end)
    _Options.ToggleTerrorshark:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoTerrorshark then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') then
                        local v529, v530, v531 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v532

                            v531, v532 = v529(v530, v531)

                            if v531 == nil then
                                break
                            end
                            if v532.Name == 'Terrorshark' and (v532:FindFirstChild('Humanoid') and (v532:FindFirstChild('HumanoidRootPart') and v532.Humanoid.Health > 0)) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v532.HumanoidRootPart.CanCollide = false
                                    v532.Humanoid.WalkSpeed = 0
                                    v532.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v532.HumanoidRootPart.CFrame * Pos)
                                until not _G.AutoTerrorshark or (not v532.Parent or v532.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark') then
                        Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end)
            end
        end
    end)
    v3.Sea:AddToggle('TogglePiranha', {
        Title = 'Attack Piranha',
        Description = '',
        Default = false,
    }):OnChanged(function(p533)
        _G.farmpiranya = p533
    end)
    _Options.TogglePiranha:SetValue(false)
    spawn(function()
        while wait() do
            if _G.farmpiranya then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Piranha') then
                        local v534, v535, v536 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v537

                            v536, v537 = v534(v535, v536)

                            if v536 == nil then
                                break
                            end
                            if v537.Name == 'Piranha' and (v537:FindFirstChild('Humanoid') and (v537:FindFirstChild('HumanoidRootPart') and v537.Humanoid.Health > 0)) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v537.HumanoidRootPart.CanCollide = false
                                    v537.Humanoid.WalkSpeed = 0
                                    v537.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v537.HumanoidRootPart.CFrame * Pos)
                                until not _G.farmpiranya or (not v537.Parent or v537.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Piranha') then
                        Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Piranha').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end)
            end
        end
    end)
    v3.Sea:AddToggle('ToggleShark', {
        Title = 'Attack Shark',
        Description = '',
        Default = false,
    }):OnChanged(function(p538)
        _G.AutoShark = p538
    end)
    _Options.ToggleShark:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoShark then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Shark') then
                        local v539, v540, v541 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v542

                            v541, v542 = v539(v540, v541)

                            if v541 == nil then
                                break
                            end
                            if v542.Name == 'Shark' and (v542:FindFirstChild('Humanoid') and (v542:FindFirstChild('HumanoidRootPart') and v542.Humanoid.Health > 0)) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v542.HumanoidRootPart.CanCollide = false
                                    v542.Humanoid.WalkSpeed = 0
                                    v542.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v542.HumanoidRootPart.CFrame * Pos)

                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                until not _G.AutoShark or (not v542.Parent or v542.Humanoid.Health <= 0)
                            end
                        end
                    else
                        Tween(game:GetService('Workspace').Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0))

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark') then
                            Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v3.Sea:AddToggle('ToggleFishCrew', {
        Title = 'Attack Fish Crew',
        Description = '',
        Default = false,
    }):OnChanged(function(p543)
        _G.AutoFishCrew = p543
    end)
    _Options.ToggleFishCrew:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoFishCrew then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') then
                        local v544, v545, v546 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v547

                            v546, v547 = v544(v545, v546)

                            if v546 == nil then
                                break
                            end
                            if v547.Name == 'Fish Crew Member' and (v547:FindFirstChild('Humanoid') and (v547:FindFirstChild('HumanoidRootPart') and v547.Humanoid.Health > 0)) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v547.HumanoidRootPart.CanCollide = false
                                    v547.Humanoid.WalkSpeed = 0
                                    v547.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v547.HumanoidRootPart.CFrame * Pos)

                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                until not _G.AutoFishCrew or (not v547.Parent or v547.Humanoid.Health <= 0)
                            end
                        end
                    else
                        Tween(game:GetService('Workspace').Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0))

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Fish Crew Member') then
                            Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Fish Crew Member').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v3.Sea:AddToggle('ToggleShip', {
        Title = 'Attack Ship',
        Description = '',
        Default = false,
    }):OnChanged(function(p548)
        _G.Ship = p548
    end)
    _Options.ToggleShip:SetValue(false)

    function CheckPirateBoat()
        local v549 = next
        local v550, v551 = game:GetService('Workspace').Enemies:GetChildren()
        local v552 = {
            'PirateGrandBrigade',
            'PirateBrigade',
        }

        while true do
            local v553

            v551, v553 = v549(v550, v551)

            if v551 == nil then
                break
            end
            if table.find(v552, v553.Name) and (v553:FindFirstChild('Health') and v553.Health.Value > 0) then
                return v553
            end
        end
    end

    spawn(function()
        while wait() do
            if _G.Ship then
                pcall(function()
                    if CheckPirateBoat() then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                        wait(0.5)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)

                        local v554 = CheckPirateBoat()

                        repeat
                            wait()
                            spawn(Tween(v554.Engine.CFrame * CFrame.new(0, -20, 0)), 1)

                            AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                            Skillaimbot = true
                            AutoSkill = false
                        until not v554 or (not v554.Parent or (v554.Health.Value <= 0 or not CheckPirateBoat()))

                        Skillaimbot = true
                        AutoSkill = false
                    end
                end)
            end
        end
    end)
    v3.Sea:AddToggle('ToggleGhostShip', {
        Title = 'Attack Ghost Ship',
        Description = '',
        Default = false,
    }):OnChanged(function(p555)
        _G.GhostShip = p555
    end)
    _Options.ToggleGhostShip:SetValue(false)

    function CheckPirateBoat()
        local v556 = next
        local v557, v558 = game:GetService('Workspace').Enemies:GetChildren()
        local v559 = {
            'FishBoat',
        }

        while true do
            local v560

            v558, v560 = v556(v557, v558)

            if v558 == nil then
                break
            end
            if table.find(v559, v560.Name) and (v560:FindFirstChild('Health') and v560.Health.Value > 0) then
                return v560
            end
        end
    end

    spawn(function()
        while wait() do
            pcall(function()
                if _G.bjirFishBoat and CheckPirateBoat() then
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                    wait()
                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)

                    local v561 = CheckPirateBoat()

                    repeat
                        wait()
                        spawn(Tween(v561.Engine.CFrame * CFrame.new(0, -20, 0), 1))

                        AutoSkill = true
                        Skillaimbot = true
                        AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                    until v561.Parent or (v561.Health.Value <= 0 or not CheckPirateBoat())

                    AutoSkill = false
                    Skillaimbot = false
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            if _G.bjirFishBoat then
                pcall(function()
                    if CheckPirateBoat() then
                        AutoHaki()
                        game:GetService('VirtualUser'):CaptureController()
                        game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))

                        local v562, v563, v564 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v565

                            v564, v565 = v562(v563, v564)

                            if v564 == nil then
                                break
                            end
                            if v565:IsA('Tool') and v565.ToolTip == 'Melee' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v565)
                            end
                        end

                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'C', false, game.Players.LocalPlayer.Character.HumanoidRootPart)

                        local v566, v567, v568 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v569

                            v568, v569 = v566(v567, v568)

                            if v568 == nil then
                                break
                            end
                            if v569:IsA('Tool') and v569.ToolTip == 'Blox Fruit' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v569)
                            end
                        end

                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'V', false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'V', false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait()

                        local v570, v571, v572 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v573

                            v572, v573 = v570(v571, v572)

                            if v572 == nil then
                                break
                            end
                            if v573:IsA('Tool') and v573.ToolTip == 'Sword' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v573)
                            end
                        end

                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait()

                        local v574, v575, v576 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v577

                            v576, v577 = v574(v575, v576)

                            if v576 == nil then
                                break
                            end
                            if v577:IsA('Tool') and v577.ToolTip == 'Gun' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v577)
                            end
                        end

                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                    end
                end)
            end
        end
    end)
    v3.Main:AddSection('Elite')

    local u578 = v3.Main:AddParagraph({
        Title = 'Elite Status',
        Content = '',
    })

    spawn(function()
        while wait() do
            pcall(function()
                if game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') or (game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') or (game:GetService('ReplicatedStorage'):FindFirstChild('Urban') or (game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban'))))) then
                    u578:SetDesc('Elite Boss: \u{2705}\u{fe0f} | Killed:  ' .. game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress'))
                else
                    u578:SetDesc('Elite Boss: \u{274c}\u{fe0f} | Killed: ' .. game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress'))
                end
            end)
        end
    end)
    v3.Main:AddToggle('ToggleElite', {
        Title = 'Auto Elite Hunter',
        Description = '',
        Default = false,
    }):OnChanged(function(p579)
        _G.AutoElite = p579
    end)
    _Options.ToggleElite:SetValue(false)
    spawn(function()
        while task.wait() do
            if _G.AutoElite then
                pcall(function()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')

                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Diablo') or (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Deandre') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Urban')) then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban')) then
                            local v580, v581, v582 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v583

                                v582, v583 = v580(v581, v582)

                                if v582 == nil then
                                    break
                                end
                                if v583:FindFirstChild('Humanoid') and (v583:FindFirstChild('HumanoidRootPart') and (v583.Humanoid.Health > 0 and (v583.Name == 'Diablo' or (v583.Name == 'Deandre' or v583.Name == 'Urban')))) then
                                    repeat
                                        wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        EquipTool(SelectWeapon)
                                        AutoHaki()
                                        Tween2(v583.HumanoidRootPart.CFrame * Pos)

                                        v583.Humanoid.WalkSpeed = 0
                                        v583.HumanoidRootPart.CanCollide = false
                                        v583.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    until _G.AutoElite == false or (v583.Humanoid.Health <= 0 or not v583.Parent)
                                end
                            end
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') then
                            Tween2(game:GetService('ReplicatedStorage'):FindFirstChild('Diablo').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') then
                            Tween2(game:GetService('ReplicatedStorage'):FindFirstChild('Deandre').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Urban') then
                            Tween2(game:GetService('ReplicatedStorage'):FindFirstChild('Urban').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if Sea3 then
    v3.Sea:AddSection('Mirage Island')

    local u584 = v3.Sea:AddParagraph({
        Title = 'Status',
        Content = '',
    })

    task.spawn(function()
        while task.wait() do
            pcall(function()
                local _MoonTextureId = game:GetService('Lighting').Sky.MoonTextureId

                if _MoonTextureId == 'http://www.roblox.com/asset/?id=9709149431' then
                    FullMoonStatus = '100%'
                elseif _MoonTextureId == 'http://www.roblox.com/asset/?id=9709149052' then
                    FullMoonStatus = '75%'
                elseif _MoonTextureId == 'http://www.roblox.com/asset/?id=9709143733' then
                    FullMoonStatus = '50%'
                elseif _MoonTextureId == 'http://www.roblox.com/asset/?id=9709150401' then
                    FullMoonStatus = '25%'
                elseif _MoonTextureId == 'http://www.roblox.com/asset/?id=9709149680' then
                    FullMoonStatus = '15%'
                else
                    FullMoonStatus = '0%'
                end
            end)
        end
    end)
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if game.Workspace.Map:FindFirstChild('MysticIsland') then
                    MirageStatus = '\u{2705}\u{fe0f}'
                else
                    MirageStatus = '\u{274c}\u{fe0f}'
                end
            end)
        end
    end)
    spawn(function()
        pcall(function()
            while wait() do
                u584:SetDesc('Mirage: ' .. MirageStatus .. ' | Full Moon: ' .. FullMoonStatus)
            end
        end)
    end)
    v3.Sea:AddButton({
        Title = 'Fly To The High Mountain',
        Description = '',
        Callback = function()
            TweenToHighestPoint()
        end,
    })

    function TweenToHighestPoint()
        local v586 = getHighestPoint()

        if v586 then
            Tween2(v586.CFrame * CFrame.new(0, 211.88, 0))
        end
    end
    function getHighestPoint()
        if not game.Workspace.Map:FindFirstChild('MysticIsland') then
            return nil
        end

        local v587, v588, v589 = pairs(game:GetService('Workspace').Map.MysticIsland:GetDescendants())

        while true do
            local v590

            v589, v590 = v587(v588, v589)

            if v589 == nil then
                break
            end
            if v590:IsA('MeshPart') and v590.MeshId == 'rbxassetid://83190276951914' then
                return v590
            end
        end
    end
end

v3.Sea:AddToggle('ToggleTpAdvanced', {
    Title = 'Fly To Advanced Fruit Dealer',
    Description = '',
    Default = false,
}):OnChanged(function(p591)
    _G.AutoTpAdvanced = p591
end)
spawn(function()
    while wait() do
        if _G.AutoTpAdvanced then
            local _AdvancedFruitDealer = game.ReplicatedStorage.NPCs:FindFirstChild('Advanced Fruit Dealer')

            if _AdvancedFruitDealer and _AdvancedFruitDealer:IsA('Model') then
                local _PrimaryPart = _AdvancedFruitDealer.PrimaryPart

                if _PrimaryPart then
                    _PrimaryPart = _AdvancedFruitDealer.PrimaryPart.Position
                end
                if _PrimaryPart then
                    Tween2(CFrame.new(_PrimaryPart))
                end
            end
        end
    end
end)
v3.Sea:AddToggle('ToggleTweenGear', {
    Title = 'Fly To Gear',
    Description = '',
    Default = false,
}):OnChanged(function(p594)
    _G.TweenToGear = p594
end)
_Options.ToggleTweenGear:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenToGear and game:GetService('Workspace').Map:FindFirstChild('MysticIsland') then
                local v595, v596, v597 = pairs(game:GetService('Workspace').Map.MysticIsland:GetChildren())

                while true do
                    local v598

                    v597, v598 = v595(v596, v597)

                    if v597 == nil then
                        break
                    end
                    if v598:IsA('MeshPart') and v598.Material == Enum.Material.Neon then
                        Tween2(v598.CFrame)
                    end
                end
            end
        end
    end)
end)
v3.Sea:AddToggle('Togglelockmoon', {
    Title = 'Look Moon',
    Description = '',
    Default = false,
}):OnChanged(function(p599)
    _G.AutoLockMoon = p599
end)
_Options.Togglelockmoon:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon then
                local v600 = game.Lighting:GetMoonDirection()
                local v601 = game.Workspace.CurrentCamera.CFrame.p + v600 * 100

                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, v601)
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon then
                game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('ActivateAbility')
            end
        end)
    end
end)
v3.ITM:AddToggle('ToggleAutoSaber', {
    Title = 'Auto Saber',
    Description = '',
    Default = false,
}):OnChanged(function(p602)
    _G.Auto_Saber = p602
end)
_Options.ToggleAutoSaber:SetValue(false)
spawn(function()
    while task.wait() do
        if _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
            pcall(function()
                if game:GetService('Workspace').Map.Jungle.Final.Part.Transparency ~= 0 then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Saber Expert') or game:GetService('ReplicatedStorage'):FindFirstChild('Saber Expert') then
                        local v603, v604, v605 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v606

                            v605, v606 = v603(v604, v605)

                            if v605 == nil then
                                break
                            end
                            if v606:FindFirstChild('Humanoid') and (v606:FindFirstChild('HumanoidRootPart') and (v606.Humanoid.Health > 0 and v606.Name == 'Saber Expert')) then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    EquipTool(SelectWeapon)
                                    Tween(v606.HumanoidRootPart.CFrame * Pos)

                                    v606.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v606.HumanoidRootPart.Transparency = 1
                                    v606.Humanoid.JumpPower = 0
                                    v606.Humanoid.WalkSpeed = 0
                                    v606.HumanoidRootPart.CanCollide = false
                                    bringmob = true
                                    FarmPos = v606.HumanoidRootPart.CFrame
                                    MonFarm = v606.Name

                                    AttackNoCoolDown()
                                until v606.Humanoid.Health <= 0 or not _G.Auto_Saber

                                bringmob = true

                                if v606.Humanoid.Health <= 0 then
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'PlaceRelic')
                                end
                            end
                        end
                    end
                elseif game:GetService('Workspace').Map.Jungle.QuestPlates.Door.Transparency ~= 0 then
                    if game:GetService('Workspace').Map.Desert.Burn.Part.Transparency ~= 0 then
                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'SickMan') == 0 then
                            if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') ~= nil then
                                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') ~= 0 then
                                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') == 1 then
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
                                        wait(0.5)
                                        EquipTool('Relic')
                                        wait(0.5)
                                        Tween(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.6690688e-9, 0.481375456, 2.53852e-8, 1, -5.799956e-8, -0.481375456, 6.3057264e-8, 0.876514494))
                                    end
                                elseif game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader') or game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader') then
                                    Tween(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))

                                    local v607, v608, v609 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                    while true do
                                        local v610

                                        v609, v610 = v607(v608, v609)

                                        if v609 == nil then
                                            break
                                        end
                                        if v610.Name == 'Mob Leader' then
                                            if game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader [Lv. 120] [Boss]') and (v610:FindFirstChild('Humanoid') and (v610:FindFirstChild('HumanoidRootPart') and v610.Humanoid.Health > 0)) then
                                                repeat
                                                    task.wait(_G.Fast_Delay)
                                                    AutoHaki()
                                                    EquipTool(SelectWeapon)

                                                    v610.HumanoidRootPart.CanCollide = false
                                                    v610.Humanoid.WalkSpeed = 0
                                                    v610.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                                    Tween(v610.HumanoidRootPart.CFrame * Pos)
                                                    AttackNoCoolDown()
                                                until v610.Humanoid.Health <= 0 or not _G.Auto_Saber
                                            end
                                            if game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader') then
                                                Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                            end
                                        end
                                    end
                                end
                            else
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
                            end
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'GetCup')
                            wait(0.5)
                            EquipTool('Cup')
                            wait(0.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'FillCup', game:GetService('Players').LocalPlayer.Character.Cup)
                            wait(0)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'SickMan')
                        end
                    elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Torch') or game.Players.LocalPlayer.Character:FindFirstChild('Torch') then
                        EquipTool('Torch')
                        Tween(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.2879909e-9, 0.761243105, -5.706529e-10, 1, 1.2058454e-9, -0.761243105, 3.4754487999999997e-10, -0.648466587))
                    else
                        Tween(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.00003423728, -0.258850515, 0.965917408))
                    end
                elseif (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717149999999998e-9, -0.928667724, 3.970995e-8, 1, 1.9167934999999998e-8, 0.928667724, -4.398698e-8, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 100 then
                    Tween(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717149999999998e-9, -0.928667724, 3.970995e-8, 1, 1.9167934999999998e-8, 0.928667724, -4.398698e-8, 0.37091279))
                else
                    Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait(1)

                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate1.Button.CFrame

                    wait(1)

                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate2.Button.CFrame

                    wait(1)

                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate3.Button.CFrame

                    wait(1)

                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate4.Button.CFrame

                    wait(1)

                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate5.Button.CFrame

                    wait(1)
                end
            end)
        end
    end
end)
v3.ITM:AddToggle('ToggleAutoPoleV1', {
    Title = 'Auto Pole V1',
    Description = '',
    Default = false,
}):OnChanged(function(p611)
    _G.Auto_PoleV1 = p611
end)
_Options.ToggleAutoPoleV1:SetValue(false)

local u612 = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)

spawn(function()
    while wait() do
        if _G.Auto_PoleV1 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Thunder God') then
                    local v613, v614, v615 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v616

                        v615, v616 = v613(v614, v615)

                        if v615 == nil then
                            break
                        end
                        if v616.Name == 'Thunder God' and (v616:FindFirstChild('Humanoid') and (v616:FindFirstChild('HumanoidRootPart') and v616.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v616.HumanoidRootPart.CanCollide = false
                                v616.Humanoid.WalkSpeed = 0
                                v616.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v616.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_PoleV1 or (not v616.Parent or v616.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u612.Position).Magnitude < 1500 then
                    Tween(u612)
                end

                Tween(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625))

                if game:GetService('ReplicatedStorage'):FindFirstChild('Thunder God') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Thunder God').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)
v3.ITM:AddToggle('ToggleAutoSaw', {
    Title = 'Auto Shark Saw',
    Description = '',
    Default = false,
}):OnChanged(function(p617)
    _G.Auto_Saw = p617
end)
_Options.ToggleAutoSaw:SetValue(false)

local u618 = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)

spawn(function()
    while wait() do
        if _G.Auto_Saw then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('The Saw') then
                    local v619, v620, v621 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v622

                        v621, v622 = v619(v620, v621)

                        if v621 == nil then
                            break
                        end
                        if v622.Name == 'The Saw' and (v622:FindFirstChild('Humanoid') and (v622:FindFirstChild('HumanoidRootPart') and v622.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v622.HumanoidRootPart.CanCollide = false
                                v622.Humanoid.WalkSpeed = 0
                                v622.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v622.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_Saw or (not v622.Parent or v622.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u618.Position).Magnitude < 1500 then
                    Tween(u618)
                end

                Tween(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))

                if game:GetService('ReplicatedStorage'):FindFirstChild('The Saw') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('The Saw').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)
v3.ITM:AddToggle('ToggleAutoWarden', {
    Title = 'Auto Warden',
    Description = '',
    Default = false,
}):OnChanged(function(p623)
    _G.Auto_Warden = p623
end)
_Options.ToggleAutoWarden:SetValue(false)

local u624 = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976563)

spawn(function()
    while wait() do
        if _G.Auto_Warden then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Chief Warden') then
                    local v625, v626, v627 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v628

                        v627, v628 = v625(v626, v627)

                        if v627 == nil then
                            break
                        end
                        if v628.Name == 'Chief Warden' and (v628:FindFirstChild('Humanoid') and (v628:FindFirstChild('HumanoidRootPart') and v628.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v628.HumanoidRootPart.CanCollide = false
                                v628.Humanoid.WalkSpeed = 0
                                v628.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v628.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_Warden or (not v628.Parent or v628.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u624.Position).Magnitude < 1500 then
                    Tween(u624)
                end

                Tween(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976563))

                if game:GetService('ReplicatedStorage'):FindFirstChild('Chief Warden') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Chief Warden').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)

if Sea3 then
    v3.ITM:AddToggle('ToggleHallow', {
        Title = 'Hallow Scythe',
        Description = '',
        Default = false,
    }):OnChanged(function(p629)
        AutoHallowSycthe = p629
    end)
    _Options.ToggleHallow:SetValue(false)
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') then
                        local v630, v631, v632 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v633

                            v632, v633 = v630(v631, v632)

                            if v632 == nil then
                                break
                            end
                            if string.find(v633.Name, 'Soul Reaper') then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v633.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v633.HumanoidRootPart.CFrame * Pos)

                                    v633.HumanoidRootPart.Transparency = 1

                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until v633.Humanoid.Health <= 0 or AutoHallowSycthe == false
                            end
                        end
                    elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hallow Essence') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hallow Essence') then
                        repeat
                            Tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                            wait()
                        until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8

                        wait()
                        EquipTool('Hallow Essence')
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper') then
                        Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'Bones',
                    'Buy',
                    1,
                    1,
                }))
            end
        end
    end)
    v3.ITM:AddToggle('ToggleYama', {
        Title = 'Yama',
        Description = '',
        Default = false,
    }):OnChanged(function(p634)
        _G.AutoYama = p634
    end)
    _Options.ToggleYama:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoYama and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress') >= 30 then
                wait()
                fireclickdetector(game:GetService('Workspace').Map.Waterfall.SealedKatana.Handle.ClickDetector)

                if not game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Yama') and _G.AutoYama then
                    break
                end
            end
        end
    end)
    v3.ITM:AddToggle('ToggleTushita', {
        Title = 'Tushita',
        Description = '',
        Default = false,
    }):OnChanged(function(p635)
        AutoTushita = p635
    end)
    _Options.ToggleTushita:SetValue(false)
    spawn(function()
        while true do
            repeat
                if not wait() then
                    return
                end
            until AutoTushita

            if game:GetService('Workspace').Enemies:FindFirstChild('Longma') then
                break
            end

            Tween(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
        end

        local v636, v637, v638 = pairs(game:GetService('Workspace').Enemies:GetChildren())
        local v639

        v638, v639 = v636(v637, v638)

        if v638 ~= nil then
        end
        if v639.Name == ('Longma' or v639.Name == 'Longma') and (v639.Humanoid.Health > 0 and (v639:IsA('Model') and (v639:FindFirstChild('Humanoid') and v639:FindFirstChild('HumanoidRootPart')))) then
        else
        end

        wait(_G.Fast_Delay)
        AttackNoCoolDown()
        AutoHaki()

        if not game.Players.LocalPlayer.Character:FindFirstChild(SelectWeapon) then
            wait()
            EquipTool(SelectWeapon)
        end

        FarmPos = v639.HumanoidRootPart.CFrame
        v639.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
        v639.Humanoid.JumpPower = 0
        v639.Humanoid.WalkSpeed = 0
        v639.HumanoidRootPart.CanCollide = false

        v639.Humanoid:ChangeState(11)
        Tween(v639.HumanoidRootPart.CFrame * Pos)

        if AutoTushita and (v639.Parent and v639.Humanoid.Health > 0) then
        else
        end
    end)
    v3.ITM:AddToggle('ToggleHoly', {
        Title = 'Light The Holy Torch',
        Description = '',
        Default = false,
    }):OnChanged(function(p640)
        _G.Auto_Holy_Torch = p640
    end)
    _Options.ToggleHoly:SetValue(false)
    spawn(function()
        while wait() do
            if _G.Auto_Holy_Torch then
                pcall(function()
                    wait()

                    repeat
                        Tween(CFrame.new(-10752, 417, -9366))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10752, 417, -9366)).Magnitude <= 10

                    wait()

                    repeat
                        Tween(CFrame.new(-11672, 334, -9474))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-11672, 334, -9474)).Magnitude <= 10

                    wait()

                    repeat
                        Tween(CFrame.new(-12132, 521, -10655))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12132, 521, -10655)).Magnitude <= 10

                    wait()

                    repeat
                        Tween(CFrame.new(-13336, 486, -6985))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13336, 486, -6985)).Magnitude <= 10

                    wait()

                    repeat
                        Tween(CFrame.new(-13489, 332, -7925))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                end)
            end
        end
    end)
end

v3.ITM:AddToggle('ToggleAutoCanvander', {
    Title = 'Auto Canvander',
    Description = '',
    Default = false,
}):OnChanged(function(p641)
    _G.Auto_Canvander = p641
end)
_Options.ToggleAutoCanvander:SetValue(false)

local u642 = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875)

spawn(function()
    while wait() do
        if _G.Auto_Canvander then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Beautiful Pirate') then
                    local v643, v644, v645 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v646

                        v645, v646 = v643(v644, v645)

                        if v645 == nil then
                            break
                        end
                        if v646.Name == 'Beautiful Pirate' and (v646:FindFirstChild('Humanoid') and (v646:FindFirstChild('HumanoidRootPart') and v646.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v646.HumanoidRootPart.CanCollide = false
                                v646.Humanoid.WalkSpeed = 0
                                v646.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v646.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_Canvander or (not v646.Parent or v646.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u642.Position).Magnitude < 1500 then
                    Tween(u642)
                end

                Tween(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))

                if game:GetService('ReplicatedStorage'):FindFirstChild('Beautiful Pirate') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Beautiful Pirate').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)
v3.ITM:AddToggle('ToggleAutoMusketeerHat', {
    Title = 'Auto Musketeer Hat',
    Description = '',
    Default = false,
}):OnChanged(function(p647)
    _G.Auto_MusketeerHat = p647
end)
_Options.ToggleAutoMusketeerHat:SetValue(false)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_MusketeerHat then
                if game:GetService('Players').LocalPlayer.Data.Level.Value < 1800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress').KilledBandits ~= false then
                    if game:GetService('Players').LocalPlayer.Data.Level.Value < 1800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress').KilledBoss ~= false then
                        if game:GetService('Players').LocalPlayer.Data.Level.Value >= 1800 and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen') == 2 then
                            Tween(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                        end
                    elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible and (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Captain Elephant') and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                            local v648, v649, v650 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local u651

                                v650, u651 = v648(v649, v650)

                                if v650 == nil then
                                    break
                                end
                                if u651.Name == 'Captain Elephant' then
                                    OldCFrameElephant = u651.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        pcall(function()
                                            EquipTool(SelectWeapon)
                                            AutoHaki()

                                            u651.HumanoidRootPart.CanCollide = false
                                            u651.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                            Tween(u651.HumanoidRootPart.CFrame * Pos)

                                            u651.HumanoidRootPart.CanCollide = false
                                            u651.HumanoidRootPart.CFrame = OldCFrameElephant

                                            AttackNoCoolDown()
                                        end)
                                    until _G.Auto_MusketeerHat == false or (u651.Humanoid.Health <= 0 or not u651.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            Tween(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                        end
                    else
                        Tween(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))

                        if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                        end
                    end
                elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Forest Pirate') and (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, '50') and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Forest Pirate') then
                        local v652, v653, v654 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local u655

                            v654, u655 = v652(v653, v654)

                            if v654 == nil then
                                break
                            end
                            if u655.Name == 'Forest Pirate' then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    pcall(function()
                                        EquipTool(SelectWeapon)
                                        AutoHaki()

                                        u655.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        Tween(u655.HumanoidRootPart.CFrame * Pos)

                                        u655.HumanoidRootPart.CanCollide = false

                                        AttackNoCoolDown()

                                        PosMon = u655.HumanoidRootPart.CFrame
                                        MonFarm = u655.Name
                                        bringmob = true
                                    end)
                                until _G.Auto_MusketeerHat == false or (not u655.Parent or u655.Humanoid.Health <= 0) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false

                                bringmob = false
                            end
                        end
                    else
                        bringmob = false

                        Tween(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                    end
                else
                    Tween(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))

                    if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'CitizenQuest', 1)
                    end
                end
            end
        end
    end)
end)
v3.ITM:AddToggle('ToggleAutoObservationV2', {
    Title = 'Auto Observation V2',
    Description = '',
    Default = false,
}):OnChanged(function(p656)
    _G.Auto_ObservationV2 = p656
end)
_Options.ToggleAutoObservationV2:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_ObservationV2 then
                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen') ~= 3 then
                    _G.Auto_MusketeerHat = true
                else
                    _G.Auto_MusketeerHat = false

                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Banana') and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Apple') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Pineapple')) then
                        repeat
                            Tween(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                            wait()
                        until not _G.Auto_ObservationV2 or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10

                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                    elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Fruit Bowl') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Fruit Bowl') then
                        repeat
                            Tween(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                            wait()
                        until not _G.Auto_ObservationV2 or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10

                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk2', 'Start')
                        wait(1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk2', 'Buy')
                    else
                        local v657, v658, v659 = pairs(game:GetService('Workspace'):GetDescendants())

                        while true do
                            local v660

                            v659, v660 = v657(v658, v659)

                            if v659 == nil then
                                break
                            end
                            if v660.Name == 'Apple' or (v660.Name == 'Banana' or v660.Name == 'Pineapple') then
                                v660.Handle.CFrame = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)

                                wait()
                                firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v660.Handle, 0)
                                wait()
                            end
                        end
                    end
                end
            end
        end)
    end
end)
v3.ITM:AddToggle('ToggleAutoRainbowHaki', {
    Title = 'Auto Rainbow Haki',
    Description = '',
    Default = false,
}):OnChanged(function(p661)
    _G.Auto_RainbowHaki = p661
end)
_Options.ToggleAutoRainbowHaki:SetValue(false)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_RainbowHaki then
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible then
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Stone') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Stone') then
                            local v662, v663, v664 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v665

                                v664, v665 = v662(v663, v664)

                                if v664 == nil then
                                    break
                                end
                                if v665.Name == 'Stone' then
                                    OldCFrameRainbow = v665.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v665.HumanoidRootPart.CFrame * Pos)

                                        v665.HumanoidRootPart.CanCollide = false
                                        v665.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v665.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v665.Humanoid.Health <= 0 or not v665.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(-1086.11621, 38.8425903, 6768.71436))
                        end
                    elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Hydra Leader') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Hydra Leader') then
                            local v666, v667, v668 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v669

                                v668, v669 = v666(v667, v668)

                                if v668 == nil then
                                    break
                                end
                                if v669.Name == 'Hydra Leader' then
                                    OldCFrameRainbow = v669.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v669.HumanoidRootPart.CFrame * Pos)

                                        v669.HumanoidRootPart.CanCollide = false
                                        v669.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v669.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v669.Humanoid.Health <= 0 or not v669.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(5713.98877, 601.922974, 202.751251))
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Kilo Admiral') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Kilo Admiral') then
                            local v670, v671, v672 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v673

                                v672, v673 = v670(v671, v672)

                                if v672 == nil then
                                    break
                                end
                                if v673.Name == 'Kilo Admiral' then
                                    OldCFrameRainbow = v673.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v673.HumanoidRootPart.CFrame * Pos)

                                        v673.HumanoidRootPart.CanCollide = false
                                        v673.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v673.HumanoidRootPart.CFrame = OldCFrameRainbow

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v673.Humanoid.Health <= 0 or not v673.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(2877.61743, 423.558685, -7207.31006))
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Captain Elephant') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                            local v674, v675, v676 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v677

                                v676, v677 = v674(v675, v676)

                                if v676 == nil then
                                    break
                                end
                                if v677.Name == 'Captain Elephant' then
                                    OldCFrameRainbow = v677.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v677.HumanoidRootPart.CFrame * Pos)

                                        v677.HumanoidRootPart.CanCollide = false
                                        v677.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v677.HumanoidRootPart.CFrame = OldCFrameRainbow

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v677.Humanoid.Health <= 0 or not v677.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(-13485.0283, 331.709259, -8012.4873))
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Beautiful Pirate') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Beautiful Pirate') then
                            local v678, v679, v680 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v681

                                v680, v681 = v678(v679, v680)

                                if v680 == nil then
                                    break
                                end
                                if v681.Name == 'Beautiful Pirate' then
                                    OldCFrameRainbow = v681.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v681.HumanoidRootPart.CFrame * Pos)

                                        v681.HumanoidRootPart.CanCollide = false
                                        v681.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v681.HumanoidRootPart.CFrame = OldCFrameRainbow

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v681.Humanoid.Health <= 0 or not v681.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                        end
                    else
                        Tween(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))

                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('HornedMan', 'Bet')
                        end
                    end
                else
                    Tween(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))

                    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('HornedMan', 'Bet')
                    end
                end
            end
        end
    end)
end)
v3.ITM:AddToggle('ToggleAutoSkullGuitar', {
    Title = 'Auto Skull Guitar',
    Description = '',
    Default = false,
}):OnChanged(function(p682)
    _G.Auto_SkullGuitar = p682
end)
_Options.ToggleAutoSkullGuitar:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_SkullGuitar and GetWeaponInventory('Skull Guitar') == false then
                if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 5000 then
                    Tween(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                elseif game:GetService('Workspace').NPCs:FindFirstChild('Skeleton Machine') then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('soulGuitarBuy', true)
                elseif game:GetService('Workspace').Map['Haunted Castle'].Candle1.Transparency ~= 0 then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2), 'Error') then
                        Tween(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                    elseif string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2), 'Nothing') then
                        Tween('Wait Full Moon')
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2, true)
                    end
                elseif game:GetService('Workspace').Map['Haunted Castle'].Placard1.Left.Part.Transparency ~= 0 then
                    if game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment1:FindFirstChild('ClickDetector') then
                        if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part1:FindFirstChild('ClickDetector') then
                            Quest4 = true

                            repeat
                                wait()
                                Tween(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625))
                            until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_SkullGuitar

                            wait(1)
                            Tween(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part3.CFrame)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part3.ClickDetector)
                            wait(1)
                            Tween(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part4.CFrame)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part4.ClickDetector)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part4.ClickDetector)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part4.ClickDetector)
                            wait(1)
                            Tween(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part6.CFrame)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part6.ClickDetector)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part6.ClickDetector)
                            wait(1)
                            Tween(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part8.CFrame)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part8.ClickDetector)
                            wait(1)
                            Tween(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part10.CFrame)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part10.ClickDetector)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part10.ClickDetector)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part10.ClickDetector)
                        else
                            Quest3 = true
                        end
                    else
                        if game:GetService('Workspace').NPCs:FindFirstChild('Ghost') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                                'GuitarPuzzleProgress',
                                'Ghost',
                            }))
                        end
                        if game.Workspace.Enemies:FindFirstChild('Living Zombie') then
                            local v683, v684, v685 = pairs(game.Workspace.Enemies:GetChildren())

                            while true do
                                local v686

                                v685, v686 = v683(v684, v685)

                                if v685 == nil then
                                    break
                                end
                                if v686:FindFirstChild('HumanoidRootPart') and (v686:FindFirstChild('Humanoid') and (v686.Humanoid.Health > 0 and v686.Name == 'Living Zombie')) then
                                    EquipTool(SelectWeapon)

                                    v686.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v686.HumanoidRootPart.Transparency = 1
                                    v686.Humanoid.JumpPower = 0
                                    v686.Humanoid.WalkSpeed = 0
                                    v686.HumanoidRootPart.CanCollide = false
                                    v686.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)

                                    Tween(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                end
                            end
                        else
                            Tween(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                        end
                    end
                else
                    Quest2 = true

                    repeat
                        wait()
                        Tween(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875))
                    until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_SkullGuitar

                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard7.Left.ClickDetector)
                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard6.Left.ClickDetector)
                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard5.Left.ClickDetector)
                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard4.Right.ClickDetector)
                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard3.Left.ClickDetector)
                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard2.Right.ClickDetector)
                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard1.Right.ClickDetector)
                    wait(1)
                end
            end
        end)
    end
end)
v3.ITM:AddToggle('ToggleAutoBuddy', {
    Title = 'Auto Buddy',
    Description = '',
    Default = false,
}):OnChanged(function(p687)
    _G.Auto_Buddy = p687
end)
_Options.ToggleAutoBuddy:SetValue(false)

local u688 = CFrame.new(-731.2034301757813, 381.5658874511719, -11198.4951171875)

spawn(function()
    while wait() do
        if _G.Auto_Buddy then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Cake Queen') then
                    local v689, v690, v691 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v692

                        v691, v692 = v689(v690, v691)

                        if v691 == nil then
                            break
                        end
                        if v692.Name == 'Cake Queen' and (v692:FindFirstChild('Humanoid') and (v692:FindFirstChild('HumanoidRootPart') and v692.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v692.HumanoidRootPart.CanCollide = false
                                v692.Humanoid.WalkSpeed = 0
                                v692.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v692.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_Buddy or (not v692.Parent or v692.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u688.Position).Magnitude < 1500 then
                    Tween(u688)
                end

                Tween(CFrame.new(-731.2034301757813, 381.5658874511719, -11198.4951171875))

                if game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)
v3.ITM:AddToggle('ToggleAutoDualKatana', {
    Title = 'Auto CDK',
    Description = '',
    Default = false,
}):OnChanged(function(p693)
    _G.Auto_DualKatana = p693
end)
_Options.ToggleAutoDualKatana:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_DualKatana then
                if game.Players.LocalPlayer.Character:FindFirstChild('Tushita') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Tushita') or (game.Players.LocalPlayer.Character:FindFirstChild('Yama') or game.Players.LocalPlayer.Backpack:FindFirstChild('Yama'))) then
                    if game.Players.LocalPlayer.Character:FindFirstChild('Tushita') or game.Players.LocalPlayer.Backpack:FindFirstChild('Tushita') then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild('Tushita') then
                            EquipTool('Tushita')
                        end
                    elseif (game.Players.LocalPlayer.Character:FindFirstChild('Yama') or game.Players.LocalPlayer.Backpack:FindFirstChild('Yama')) and game.Players.LocalPlayer.Backpack:FindFirstChild('Yama') then
                        EquipTool('Yama')
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LoadItem', 'Tushita')
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_DualKatana then
                if GetMaterial('Alucard Fragment') ~= 0 then
                    if GetMaterial('Alucard Fragment') ~= 1 then
                        if GetMaterial('Alucard Fragment') ~= 2 then
                            if GetMaterial('Alucard Fragment') ~= 3 then
                                if GetMaterial('Alucard Fragment') ~= 4 then
                                    if GetMaterial('Alucard Fragment') ~= 5 then
                                        if GetMaterial('Alucard Fragment') == 6 then
                                            if game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton Boss [Lv. 2025] [Boss]') or game:GetService('Workspace').ReplicatedStorage:FindFirstChild('Cursed Skeleton Boss [Lv. 2025] [Boss]') then
                                                Auto_Quest_Yama_1 = false
                                                Auto_Quest_Yama_2 = false
                                                Auto_Quest_Yama_3 = false
                                                Auto_Quest_Tushita_1 = false
                                                Auto_Quest_Tushita_2 = false
                                                Auto_Quest_Tushita_3 = false

                                                if game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton Boss [Lv. 2025] [Boss]') or game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton [Lv. 2200]') then
                                                    local v694, v695, v696 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                                    while true do
                                                        local v697

                                                        v696, v697 = v694(v695, v696)

                                                        if v696 == nil then
                                                            break
                                                        end
                                                        if (v697.Name == 'Cursed Skeleton Boss' or v697.Name == 'Cursed Skeleton') and v697.Humanoid.Health > 0 then
                                                            EquipTool(Sword)
                                                            Tween(v697.HumanoidRootPart.CFrame * pos)

                                                            v697.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                            v697.HumanoidRootPart.Transparency = 1
                                                            v697.Humanoid.JumpPower = 0
                                                            v697.Humanoid.WalkSpeed = 0
                                                            v697.HumanoidRootPart.CanCollide = false
                                                            bringmob = true
                                                            FarmPos = v697.HumanoidRootPart.CFrame
                                                            MonFarm = v697.Name

                                                            AttackNoCoolDown()
                                                        end
                                                    end
                                                end
                                            elseif (CFrame.new(-12361.7060546875, 603.3547973632813, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 100 then
                                                Tween(CFrame.new(-12361.7060546875, 603.3547973632813, -6550.5341796875))
                                            else
                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Good')
                                                wait(1)
                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Evil')
                                                wait(1)
                                                Tween(CFrame.new(-12361.7060546875, 603.3547973632813, -6550.5341796875))
                                                wait(1.5)
                                                game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                                                wait(1.5)
                                                Tween(CFrame.new(-12253.5419921875, 598.8999633789063, -6546.8388671875))
                                            end
                                        end
                                    else
                                        Auto_Quest_Yama_1 = false
                                        Auto_Quest_Yama_2 = false
                                        Auto_Quest_Yama_3 = false
                                        Auto_Quest_Tushita_1 = false
                                        Auto_Quest_Tushita_2 = false
                                        Auto_Quest_Tushita_3 = true

                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Good')
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Good')
                                    end
                                else
                                    Auto_Quest_Yama_1 = false
                                    Auto_Quest_Yama_2 = false
                                    Auto_Quest_Yama_3 = false
                                    Auto_Quest_Tushita_1 = false
                                    Auto_Quest_Tushita_2 = true
                                    Auto_Quest_Tushita_3 = false

                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Good')
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Good')
                                end
                            else
                                Auto_Quest_Yama_1 = false
                                Auto_Quest_Yama_2 = false
                                Auto_Quest_Yama_3 = false
                                Auto_Quest_Tushita_1 = true
                                Auto_Quest_Tushita_2 = false
                                Auto_Quest_Tushita_3 = false

                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Good')
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Good')
                            end
                        else
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = true
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false

                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Evil')
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Evil')
                        end
                    else
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = true
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Evil')
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Evil')
                    end
                else
                    Auto_Quest_Yama_1 = true
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Evil')
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Evil')
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Yama_1 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Mythological Pirate') then
                    local v698, v699, v700 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v701

                        v700, v701 = v698(v699, v700)

                        if v700 == nil then
                            break
                        end
                        if v701.Name == 'Mythological Pirate' then
                            repeat
                                wait()
                                Tween(v701.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2))
                            until _G.Auto_DualKatana == false or Auto_Quest_Yama_1 == false

                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Evil')
                        end
                    end
                else
                    Tween(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if Auto_Quest_Yama_2 then
                local v702, v703, v704 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v705

                    v704, v705 = v702(v703, v704)

                    if v704 == nil then
                        break
                    end
                    if v705:FindFirstChild('HazeESP') then
                        v705.HazeESP.Size = UDim2.new(50, 50, 50, 50)
                        v705.HazeESP.MaxDistance = 'inf'
                    end
                end

                local v706, v707, v708 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                while true do
                    local v709

                    v708, v709 = v706(v707, v708)

                    if v708 == nil then
                        break
                    end
                    if v709:FindFirstChild('HazeESP') then
                        v709.HazeESP.Size = UDim2.new(50, 50, 50, 50)
                        v709.HazeESP.MaxDistance = 'inf'
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            local v710, v711, v712 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            while true do
                local v713

                v712, v713 = v710(v711, v712)

                if v712 == nil then
                    break
                end
                if Auto_Quest_Yama_2 and (v713:FindFirstChild('HazeESP') and (v713.HumanoidRootPart.Position - FarmPossEsp.Position).magnitude <= 300) then
                    v713.HumanoidRootPart.CFrame = FarmPossEsp
                    v713.HumanoidRootPart.CanCollide = false
                    v713.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                    if not v713.HumanoidRootPart:FindFirstChild('BodyVelocity') then
                        local _BodyVelocity2 = Instance.new('BodyVelocity', v713.HumanoidRootPart)

                        _BodyVelocity2.MaxForce = Vector3.new(1, 1, 1) * math.huge
                        _BodyVelocity2.Velocity = Vector3.new(0, 0, 0)
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Yama_2 then
            pcall(function()
                local v715, v716, v717 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    while true do
                        local v718

                        v717, v718 = v715(v716, v717)

                        if v717 == nil then
                            return
                        end
                        if v718:FindFirstChild('HazeESP') then
                            break
                        end

                        local v719, v720, v721 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                        while true do
                            local v722

                            v721, v722 = v719(v720, v721)

                            if v721 == nil then
                                break
                            end
                            if v722:FindFirstChild('HazeESP') then
                                if (v722.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                                    Tween(v722.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                else
                                    Tween(v722.HumanoidRootPart.CFrameMon * CFrame.new(2, 20, 2))
                                end
                            end
                        end
                    end

                    if true then
                        wait()

                        if (v718.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                            EquipTool(Sword)
                            Tween(v718.HumanoidRootPart.CFrame * Pos)

                            v718.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v718.HumanoidRootPart.Transparency = 1
                            v718.Humanoid.JumpPower = 0
                            v718.Humanoid.WalkSpeed = 0
                            v718.HumanoidRootPart.CanCollide = false
                            FarmPos = v718.HumanoidRootPart.CFrame
                            MonFarm = v718.Name

                            AttackNoCoolDown()

                            if v718.Humanoid.Health <= 0 and v718.Humanoid:FindFirstChild('Animator') then
                                v718.Humanoid.Animator:Destroy()
                            end
                        else
                            Tween(v718.HumanoidRootPart.CFrame * Pos)
                        end
                    end
                    if _G.Auto_DualKatana ~= false and (Auto_Quest_Yama_2 ~= false and (v718.Parent and (v718.Humanoid.Health > 0 and v718:FindFirstChild('HazeESP')))) then
                        break
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Yama_3 then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild('Hallow Essence') then
                    Tween(game:GetService('Workspace').Map['Haunted Castle'].Summoner.Detection.CFrame)
                end
                if not game:GetService('Workspace').Map:FindFirstChild('HellDimension') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') or game.ReplicatedStorage:FindFirstChild('Soul Reaper [Lv. 2100] [Raid Boss]') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') then
                            local v723, v724, v725 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v726

                                v725, v726 = v723(v724, v725)

                                if v725 == nil then
                                    break
                                end
                                if v726.Name == 'Soul Reaper' and v726.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        Tween(v726.HumanoidRootPart.CFrame * Pos)
                                    until _G.Auto_DualKatana == false or Auto_Quest_Yama_3 == false or game:GetService('Workspace').Map:FindFirstChild('HellDimension')
                                end
                            end
                        else
                            Tween(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                        end
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Buy', 1, 1)
                    end

                    return
                end

                wait()

                if not (game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton [Lv. 2200]') or (game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton [Lv. 2200] [Boss]') or game:GetService('Workspace').Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]"))) then
                    wait(5)
                    Tween(game:GetService('Workspace').Map.HellDimension.Torch1.CFrame)
                    wait(1.5)
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                    wait(1.5)
                    Tweem(game:GetService('Workspace').Map.HellDimension.Torch2.CFrame)
                    wait(1.5)
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                    wait(1.5)
                    Tween(game:GetService('Workspace').Map.HellDimension.Torch3.CFrame)
                    wait(1.5)
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                    wait(1.5)
                    Tween(game:GetService('Workspace').Map.HellDimension.Exit.CFrame)
                end

                local v727, v728, v729 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                local v730

                v729, v730 = v727(v728, v729)

                if v729 == nil then
                end
                if v730.Name ~= 'Cursed Skeleton' and (v730.Name ~= 'Cursed Skeleton' and v730.Name ~= "Hell's Messenger") or v730.Humanoid.Health <= 0 then
                end

                wait()
                EquipTool(Sword)
                Tween(v730.HumanoidRootPart.CFrame * Pos)

                v730.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                v730.HumanoidRootPart.Transparency = 1
                v730.Humanoid.JumpPower = 0
                v730.Humanoid.WalkSpeed = 0
                v730.HumanoidRootPart.CanCollide = false
                FarmPos = v730.HumanoidRootPart.CFrame
                MonFarm = v730.Name

                AttackNoCoolDown()

                if v730.Humanoid.Health <= 0 and v730.Humanoid:FindFirstChild('Animator') then
                    v730.Humanoid.Animator:Destroy()
                end
                if v730.Humanoid.Health <= 0 or (not v730.Parent or Auto_Quest_Yama_3 == false) then
                else
                end
                if _G.Auto_DualKatana == false or (Auto_Quest_Yama_3 == false or GetMaterial('Alucard Fragment') == 3) then
                end
                if true then
                else
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_1 then
            Tween(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
            wait(5)
            Tween(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
            wait(5)
            Tween(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_2 then
            pcall(function()
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                    Tween(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))

                    return
                end

                local v731, v732, v733 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                wait()
                EquipTool(Sword)
                Tween(v734.HumanoidRootPart.CFrame * Pos)

                v734.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                v734.HumanoidRootPart.Transparency = 1
                v734.Humanoid.JumpPower = 0
                v734.Humanoid.WalkSpeed = 0
                v734.HumanoidRootPart.CanCollide = false
                FarmPos = v734.HumanoidRootPart.CFrame
                MonFarm = v734.Name

                AttackNoCoolDown()

                if v734.Humanoid.Health <= 0 and v734.Humanoid:FindFirstChild('Animator') then
                    v734.Humanoid.Animator:Destroy()
                end
                if v734.Humanoid.Health > 0 and (v734.Parent and Auto_Quest_Tushita_2 ~= false) then
                end

                local v734

                v733, v734 = v731(v732, v733)

                if v733 == nil then
                end
                if Auto_Quest_Tushita_2 and (v734:FindFirstChild('HumanoidRootPart') and (v734:FindFirstChild('Humanoid') and (v734.Humanoid.Health > 0 and (v734.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000))) then
                else
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_3 then
            pcall(function()
                if not (game:GetService('Workspace').Enemies:FindFirstChild('Cake Queen') or game.ReplicatedStorage:FindFirstChild('Cake Queen [Lv. 2175] [Boss]')) then
                end
                if not game:GetService('Workspace').Enemies:FindFirstChild('Cake Queen') then
                    Tween(CFrame.new(-709.3132934570313, 381.6005859375, -11011.396484375))
                end

                local v735, v736, v737 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                local v738

                v737, v738 = v735(v736, v737)

                if v737 == nil then
                end
                if v738.Name ~= 'Cake Queen' or v738.Humanoid.Health <= 0 then
                end

                while true do
                    wait()
                    EquipTool(Sword)
                    Tween(v738.HumanoidRootPart.CFrame * Pos)

                    v738.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                    v738.HumanoidRootPart.Transparency = 1
                    v738.Humanoid.JumpPower = 0
                    v738.Humanoid.WalkSpeed = 0
                    v738.HumanoidRootPart.CanCollide = false
                    FarmPos = v738.HumanoidRootPart.CFrame
                    MonFarm = v738.Name

                    AttackNoCoolDown()

                    if v738.Humanoid.Health <= 0 and v738.Humanoid:FindFirstChild('Animator') then
                        v738.Humanoid.Animator:Destroy()
                    end
                    if _G.Auto_DualKatana == false or Auto_Quest_Tushita_3 == false or game:GetService('Workspace').Map:FindFirstChild('HeavenlyDimension') then
                    end
                end

                local v739, v740 = v741(v742, v739)

                if v739 == nil then
                end
                if v740.Name ~= 'Cursed Skeleton' and (v740.Name ~= 'Cursed Skeleton' and v740.Name ~= "Heaven's Guardian") or v740.Humanoid.Health <= 0 then
                end

                wait()
                EquipTool(Sword)
                Tween(v740.HumanoidRootPart.CFrame * Pos)

                v740.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                v740.HumanoidRootPart.Transparency = 1
                v740.Humanoid.JumpPower = 0
                v740.Humanoid.WalkSpeed = 0
                v740.HumanoidRootPart.CanCollide = false
                FarmPos = v740.HumanoidRootPart.CFrame
                MonFarm = v740.Name

                AttackNoCoolDown()

                if v740.Humanoid.Health <= 0 and v740.Humanoid:FindFirstChild('Animator') then
                    v740.Humanoid.Animator:Destroy()
                end
                if v740.Humanoid.Health <= 0 or (not v740.Parent or Auto_Quest_Tushita_3 == false) then
                else
                end
                if not _G.Auto_DualKatana or (not Auto_Quest_Tushita_3 or GetMaterial('Alucard Fragment') == 6) then
                end
                if true then
                else
                end

                wait()

                if not (game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton [Lv. 2200]') or (game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton [Lv. 2200] [Boss]') or game:GetService('Workspace').Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]"))) then
                    wait(5)
                    Tween(game:GetService('Workspace').Map.HeavenlyDimension.Torch1.CFrame)
                    wait(1.5)
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                    wait(1.5)
                    Tween(game:GetService('Workspace').Map.HeavenlyDimension.Torch2.CFrame)
                    wait(1.5)
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                    wait(1.5)
                    Tween(game:GetService('Workspace').Map.HeavenlyDimension.Torch3.CFrame)
                    wait(1.5)
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                    wait(1.5)
                    Tween(game:GetService('Workspace').Map.HeavenlyDimension.Exit.CFrame)
                end

                local v741, v742

                v741, v742, v739 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                if not game:GetService('Workspace').Map:FindFirstChild('HeavenlyDimension') then
                    return
                end
            end)
        end
    end
end)

if Sea2 then
    v3.ITM:AddToggle('ToggleFactory', {
        Title = 'Auto Factory',
        Description = '',
        Default = false,
    }):OnChanged(function(p743)
        _G.Factory = p743
    end)
    _Options.ToggleFactory:SetValue(false)
    spawn(function()
        while true do
            repeat
                if not wait() then
                    return
                end
            until _G.Factory

            if game.Workspace.Enemies:FindFirstChild('Core') then
                break
            end
            if game.ReplicatedStorage:FindFirstChild('Core') then
                Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                wait()

                if _G.Factory and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude > 10 then
                    break
                end
            end
        end

        local v744, v745, v746 = pairs(game.Workspace.Enemies:GetChildren())

        if v747.Name == 'Core' and v747.Humanoid.Health > 0 then
        end

        local v747

        v746, v747 = v744(v745, v746)

        if v746 ~= nil then
        end

        wait(_G.Fast_Delay)
        AttackNoCoolDown()

        repeat
            Tween(CFrame.new(448.46756, 199.356781, -441.389252))
            wait()
        until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10

        EquipTool(SelectWeapon)
        AutoHaki()
        Tween(v747.HumanoidRootPart.CFrame * Pos)

        v747.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
        v747.HumanoidRootPart.Transparency = 1
        v747.Humanoid.JumpPower = 0
        v747.Humanoid.WalkSpeed = 0
        v747.HumanoidRootPart.CanCollide = false
        FarmPos = v747.HumanoidRootPart.CFrame
        MonFarm = v747.Name

        if v747.Parent and (v747.Humanoid.Health > 0 and _G.Factory ~= false) then
        end
    end)
end

v3.ITM:AddToggle('ToggleAutoFarmSwan', {
    Title = 'Auto Swan',
    Description = '',
    Default = false,
}):OnChanged(function(p748)
    _G.Auto_FarmSwan = p748
end)
_Options.ToggleAutoFarmSwan:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarmSwan then
                if game:GetService('Workspace').Enemies:FindFirstChild('Don Swan') then
                    local v749, v750, v751 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local u752

                        v751, u752 = v749(v750, v751)

                        if v751 == nil then
                            break
                        end
                        if u752.Name == 'Don Swan' and (u752.Humanoid.Health > 0 and (u752:IsA('Model') and (u752:FindFirstChild('Humanoid') and u752:FindFirstChild('HumanoidRootPart')))) then
                            repeat
                                task.wait()
                                pcall(function()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    u752.HumanoidRootPart.CanCollide = false
                                    u752.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                    Tween(u752.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCoolDown()
                                end)
                            until _G.AutoFarmSwan == false or u752.Humanoid.Health <= 0
                        end
                    end
                else
                    task.wait()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))

                    if (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 4 and _G.AutoFarmSwan ~= false then
                        break
                    end
                end
            end
        end
    end)
end)
v3.ITM:AddToggle('ToggleAutoRengoku', {
    Title = 'Rengoku',
    Description = '',
    Default = false,
}):OnChanged(function(p753)
    _G.Auto_Regoku = p753
end)
_Options.ToggleAutoRengoku:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Auto_Regoku then
                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hidden Key') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hidden Key') then
                    EquipTool('Hidden Key')
                    Tween(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                elseif game:GetService('Workspace').Enemies:FindFirstChild('Snow Lurker') or game:GetService('Workspace').Enemies:FindFirstChild('Arctic Warrior') then
                    local v754, v755, v756 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v757

                        v756, v757 = v754(v755, v756)

                        if v756 == nil then
                            break
                        end
                        if (v757.Name == 'Snow Lurker' or v757.Name == 'Arctic Warrior') and v757.Humanoid.Health > 0 then
                            repeat
                                task.wait(_G.Fast_Delay)
                                EquipTool(SelectWeapon)
                                AutoHaki()

                                v757.HumanoidRootPart.CanCollide = false
                                v757.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                FarmPos = v757.HumanoidRootPart.CFrame
                                MonFarm = v757.Name

                                Tween(v757.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()

                                bringmob = true
                            until game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hidden Key') or (_G.Auto_Regoku == false or (not v757.Parent or v757.Humanoid.Health <= 0))

                            bringmob = false
                        end
                    end
                else
                    bringmob = false

                    Tween(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                end
            end
        end
    end)
end)

if Sea2 or Sea3 then
    v3.ITM:AddToggle('ToggleHakiColor', {
        Title = 'Buy Haki Color',
        Description = '',
        Default = false,
    }):OnChanged(function(p758)
        _G.Auto_Buy_Enchancement = p758
    end)
    _Options.ToggleHakiColor:SetValue(false)
    spawn(function()
        while wait() do
            if _G.Auto_Buy_Enchancement then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'ColorsDealer',
                    '2',
                }))
            end
        end
    end)
end
if Sea2 then
    v3.Main:AddToggle('ToggleSwordLengend', {
        Title = 'Auto Buy Lengendary Sword',
        Description = '',
        Default = false,
    }):OnChanged(function(p759)
        _G.BuyLengendSword = p759
    end)
    _Options.ToggleSwordLengend:SetValue(false)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.BuyLengendSword or Triple_A then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '2',
                    }))
                else
                    wait()
                end
            end)
        end
    end)
end
if Sea2 then
    v3.Main:AddToggle('ToggleEvoRace', {
        Title = 'Auto Upgrade Race V2',
        Description = '',
        Default = false,
    }):OnChanged(function(p760)
        _G.AutoEvoRace = p760
    end)
    _Options.ToggleEvoRace:SetValue(false)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.AutoEvoRace and not game:GetService('Players').LocalPlayer.Data.Race:FindFirstChild('Evolved') then
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') ~= 0 then
                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') ~= 1 then
                            if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') == 2 then
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '3')
                            end
                        else
                            pcall(function()
                                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 1') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 1') then
                                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 2') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 2') then
                                        if not (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 3') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 3')) then
                                            if game:GetService('Workspace').Enemies:FindFirstChild('Zombie') then
                                                local v761, v762, v763 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                                while true do
                                                    local v764

                                                    v763, v764 = v761(v762, v763)

                                                    if v763 == nil then
                                                        break
                                                    end
                                                    if v764.Name == 'Zombie' then
                                                        repeat
                                                            task.wait(_G.Fast_Delay)
                                                            AutoHaki()
                                                            EquipTool(SelectWeapon)
                                                            Tween(v764.HumanoidRootPart.CFrame * Pos)

                                                            v764.HumanoidRootPart.CanCollide = false
                                                            v764.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                                            AttackNoCoolDown()

                                                            FarmPos = v764.HumanoidRootPart.CFrame
                                                            MonFarm = v764.Name
                                                            bringmob = true
                                                        until game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 3') or (not v764.Parent or (v764.Humanoid.Health <= 0 or _G.AutoEvoRace == false))

                                                        bringmob = false
                                                    end
                                                end
                                            else
                                                Tween(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                            end
                                        end
                                    else
                                        Tween(game:GetService('Workspace').Flower2.CFrame)
                                    end
                                else
                                    Tween(game:GetService('Workspace').Flower1.CFrame)
                                end
                            end)
                        end
                    else
                        Tween(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.390141e-8, -0.68292886, 3.5996322e-8, 1, 5.5066703e-8, 0.68292886, 1.5642466999999998e-8, -0.730484903))

                        if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.3)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '2')
                        end
                    end
                end
            end
        end)
    end)
end

v3.Setting:AddToggle('ToggleAutoT', {
    Title = 'Auto Turn On Race V3',
    Description = '',
    Default = false,
}):OnChanged(function(p765)
    _G.AutoT = p765
end)
_Options.ToggleAutoT:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoT then
                game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('ActivateAbility')
            end
        end)
    end
end)
v3.Setting:AddToggle('ToggleAutoY', {
    Title = 'Auto Turn On Race V4',
    Description = '',
    Default = false,
}):OnChanged(function(p766)
    _G.AutoY = p766
end)
_Options.ToggleAutoY:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoY then
                game:GetService('VirtualInputManager'):SendKeyEvent(true, 'Y', false, game)
                wait()
                game:GetService('VirtualInputManager'):SendKeyEvent(false, 'Y', false, game)
            end
        end)
    end
end)
v3.Setting:AddToggle('ToggleAutoKen', {
    Title = 'Auto Ken',
    Description = '',
    Default = false,
}):OnChanged(function(p767)
    _G.AutoKen = p767

    if p767 then
        game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('Ken', true)
    else
        game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('Ken', false)
    end
end)
_Options.ToggleAutoKen:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoKen then
                game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('Ken', true)
            end
        end)
    end
end)
v3.Setting:AddToggle('ToggleSaveSpawn', {
    Title = 'Auto Save Spawm Point',
    Description = '',
    Default = false,
}):OnChanged(function(p768)
    _G.SaveSpawn = p768

    if p768 then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'SetSpawnPoint',
        }))
    end
end)
_Options.ToggleSaveSpawn:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.SaveSpawn then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'SetSpawnPoint',
                }))
            end
        end)
    end
end)
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
v3.Setting:AddToggle('ToggleBringMob', {
    Title = 'Bring Mob',
    Description = '',
    Default = true,
}):OnChanged(function(p769)
    _G.BringMob = p769
end)
_Options.ToggleBringMob:SetValue(true)
spawn(function()
    while wait() do
        pcall(function()
            local v770, v771, v772 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            while true do
                local v773

                v772, v773 = v770(v771, v772)

                if v772 == nil then
                    break
                end
                if _G.BringMob and (bringmob and (v773.Name == MonFarm and (v773:FindFirstChild('Humanoid') and v773.Humanoid.Health > 0))) then
                    if v773.Name ~= 'Factory Staff' then
                        if v773.Name == MonFarm and (v773.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000 then
                            v773.HumanoidRootPart.CFrame = FarmPos
                            v773.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v773.HumanoidRootPart.Transparency = 1
                            v773.Humanoid.JumpPower = 0
                            v773.Humanoid.WalkSpeed = 0

                            if v773.Humanoid:FindFirstChild('Animator') then
                                v773.Humanoid.Animator:Destroy()
                            end

                            v773.HumanoidRootPart.CanCollide = false
                            v773.Head.CanCollide = false

                            v773.Humanoid:ChangeState(11)
                            v773.Humanoid:ChangeState(14)
                            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                        end
                    elseif (v773.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000 then
                        v773.Head.CanCollide = false
                        v773.HumanoidRootPart.CanCollide = false
                        v773.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        v773.HumanoidRootPart.CFrame = FarmPos

                        if v773.Humanoid:FindFirstChild('Animator') then
                            v773.Humanoid.Animator:Destroy()
                        end

                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                    end
                end
            end
        end)
    end
end)
v3.Setting:AddToggle('ToggleRemoveNotify', {
    Title = 'Remove Notify',
    Description = '',
    Default = false,
}):OnChanged(function(p774)
    RemoveNotify = p774
end)
_Options.ToggleRemoveNotify:SetValue(false)
spawn(function()
    while wait() do
        if RemoveNotify then
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
        else
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
        end
    end
end)
v3.Setting:AddToggle('ToggleWhite', {
    Title = 'White Screen',
    Description = '',
    Default = false,
}):OnChanged(function(p775)
    _G.WhiteScreen = p775

    if _G.WhiteScreen ~= true then
        if _G.WhiteScreen == false then
            game:GetService('RunService'):Set3dRenderingEnabled(true)
        end
    else
        game:GetService('RunService'):Set3dRenderingEnabled(false)
    end
end)
_Options.ToggleWhite:SetValue(false)
v3.Setting:AddSection('Skill')
v3.Setting:AddToggle('ToggleZ', {
    Title = 'Z',
    Description = '',
    Default = true,
}):OnChanged(function(p776)
    SkillZ = p776
end)
_Options.ToggleZ:SetValue(true)
v3.Setting:AddToggle('ToggleX', {
    Title = 'X',
    Description = '',
    Default = true,
}):OnChanged(function(p777)
    SkillX = p777
end)
_Options.ToggleX:SetValue(true)
v3.Setting:AddToggle('ToggleC', {
    Title = 'C',
    Description = '',
    Default = true,
}):OnChanged(function(p778)
    SkillC = p778
end)
_Options.ToggleC:SetValue(true)
v3.Setting:AddToggle('ToggleV', {
    Title = 'V',
    Description = '',
    Default = true,
}):OnChanged(function(p779)
    SkillV = p779
end)
_Options.ToggleV:SetValue(true)
v3.Setting:AddToggle('ToggleF', {
    Title = 'F',
    Description = '',
    Default = false,
}):OnChanged(function(p780)
    SkillF = p780
end)
_Options.ToggleF:SetValue(true)

local _Status = v3.Status
local v782 = _Status
local _AddParagraph = _Status.AddParagraph
local v784 = {
    Title = 'Information',
    Content = '\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\n' .. 'Name : ' .. game.Players.LocalPlayer.DisplayName .. ' (@' .. game.Players.LocalPlayer.Name .. ')\n' .. 'Level : ' .. game:GetService('Players').LocalPlayer.Data.Level.Value .. '\n' .. 'Beli : ' .. game:GetService('Players').LocalPlayer.Data.Beli.Value .. '\n' .. 'Fragments : ' .. game:GetService('Players').LocalPlayer.Data.Fragments.Value .. '\n' .. 'Wanted Beli : ' .. game:GetService('Players').LocalPlayer.leaderstats['Bounty/Honor'].Value .. '\n' .. 'HP: ' .. game.Players.LocalPlayer.Character.Humanoid.Health .. '/' .. game.Players.LocalPlayer.Character.Humanoid.MaxHealth .. '\n' .. 'Energy : ' .. game.Players.LocalPlayer.Character.Energy.Value .. '/' .. game.Players.LocalPlayer.Character.Energy.MaxValue .. '\n' .. 'Race : ' .. game:GetService('Players').LocalPlayer.Data.Race.Value .. '\n' .. 'Fruit : ' .. game:GetService('Players').LocalPlayer.Data.DevilFruit.Value .. '\n\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}',
}

_AddParagraph(v782, v784)

local u785 = v3.Status:AddParagraph({
    Title = 'Time',
    Content = '',
})

local function u795()
    local _t = os.date('*t')
    local v787 = _t.hour % 24
    local v788 = v787 < 12 and 'AM' or 'PM'
    local __02i02i02is = string.format('%02i:%02i:%02i %s', (v787 - 1) % 12 + 1, _t.min, _t.sec, v788)
    local __02d02d04d = string.format('%02d/%02d/%04d', _t.day, _t.month, _t.year)
    local _LocalizationService = game:GetService('LocalizationService')
    local _LocalPlayer3 = game:GetService('Players').LocalPlayer
    local _ = _LocalPlayer3.Name
    local v793, v794 = pcall(function()
        return _LocalizationService:GetCountryRegionForPlayerAsync(_LocalPlayer3)
    end)

    u785:SetDesc(__02d02d04d .. '-' .. __02i02i02is .. ' [ ' .. (not v793 and 'Unknown' or v794) .. ' ]')
end

spawn(function()
    while true do
        u795()
        game:GetService('RunService').RenderStepped:Wait()
    end
end)

local u796 = v3.Status:AddParagraph({
    Title = 'Server time',
    Content = '',
})

local function u801()
    local v797 = math.floor(workspace.DistributedGameTime + 0.5)
    local v798 = math.floor(v797 / 3600) % 24
    local v799 = math.floor(v797 / 60) % 60
    local v800 = v797 % 60

    u796:SetDesc(string.format('%02d Ti\u{1ebf}ng-%02d Ph\u{fa}t-%02d Gi\u{e2}y', v798, v799, v800))
end

spawn(function()
    while task.wait() do
        pcall(u801)
    end
end)

local u802 = v3.Status:AddParagraph({
    Title = 'Frozen Dimension',
    Content = '',
})

spawn(function()
    pcall(function()
        while wait() do
            if game:GetService('Workspace').Map:FindFirstChild('FrozenDimension') then
                u802:SetDesc('\u{2705}')
            else
                u802:SetDesc('\u{274c}')
            end
        end
    end)
end)
v3.Status:AddInput('Input', {
    Title = 'Server ID',
    Default = '',
    Placeholder = '',
    Numeric = false,
    Finished = false,
    Callback = function(p803)
        _G.Job = p803
    end,
})
v3.Status:AddButton({
    Title = 'Join Server ID',
    Description = '',
    Callback = function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer)
    end,
})
v3.Status:AddButton({
    Title = 'Copy Server ID',
    Description = '',
    Callback = function()
        setclipboard(tostring(game.JobId))
    end,
})
v3.Status:AddToggle('MyToggle', {
    Title = 'Spam Join Server ID',
    Default = false,
}):OnChanged(function(p804)
    _G.Join = p804
end)
spawn(function()
    while wait() do
        if _G.Join then
            game:GetService('TeleportService'):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer)
        end
    end
end)
v3.Stats:AddToggle('ToggleMelee', {
    Title = 'Melee',
    Description = '',
    Default = false,
}):OnChanged(function(p805)
    _G.Auto_Stats_Melee = p805
end)
_Options.ToggleMelee:SetValue(false)
v3.Stats:AddToggle('ToggleDe', {
    Title = 'Defense',
    Description = '',
    Default = false,
}):OnChanged(function(p806)
    _G.Auto_Stats_Defense = p806
end)
_Options.ToggleDe:SetValue(false)
v3.Stats:AddToggle('ToggleSword', {
    Title = 'Sword',
    Description = '',
    Default = false,
}):OnChanged(function(p807)
    _G.Auto_Stats_Sword = p807
end)
_Options.ToggleSword:SetValue(false)
v3.Stats:AddToggle('ToggleGun', {
    Title = 'Gun',
    Description = '',
    Default = false,
}):OnChanged(function(p808)
    _G.Auto_Stats_Gun = p808
end)
_Options.ToggleGun:SetValue(false)
v3.Stats:AddToggle('ToggleFruit', {
    Title = 'Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p809)
    _G.Auto_Stats_Devil_Fruit = p809
end)
_Options.ToggleFruit:SetValue(false)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Devil_Fruit then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'AddPoint',
                'Demon Fruit',
                3,
            }))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Gun then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'AddPoint',
                'Gun',
                3,
            }))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Sword then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'AddPoint',
                'Sword',
                3,
            }))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Defense then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'AddPoint',
                'Defense',
                3,
            }))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Melee then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'AddPoint',
                'Melee',
                3,
            }))
        end
    end
end)

local v810, v811, v812 = pairs(game:GetService('Players'):GetChildren())
local u813 = u145
local u814 = {}

while true do
    local v815

    v812, v815 = v810(v811, v812)

    if v812 == nil then
        break
    end

    table.insert(u814, v815.Name)
end

local _SelectedPly = v3.Player:AddDropdown('SelectedPly', {
    Title = 'Select Player',
    Description = '',
    Values = u814,
    Multi = false,
    Default = 1,
})

_SelectedPly:SetValue(_G.SelectPly)
_SelectedPly:OnChanged(function(p817)
    _G.SelectPly = p817
end)
v3.Player:AddButton({
    Title = 'Load',
    Description = '',
    Callback = function()
        table.clear(u814)

        local v818, v819, v820 = pairs(game:GetService('Players'):GetChildren())

        while true do
            local v821

            v820, v821 = v818(v819, v820)

            if v820 == nil then
                break
            end

            table.insert(u814, v821.Name)
        end
    end,
})
v3.Player:AddToggle('ToggleTeleport', {
    Title = 'TP To Player',
    Description = '',
    Default = false,
}):OnChanged(function(p822)
    _G.TeleportPly = p822

    if p822 == false then
        wait()
        AutoHaki()
        Tween2(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
_Options.ToggleTeleport:SetValue(false)
spawn(function()
    while wait() do
        if _G.TeleportPly then
            pcall(function()
                if game.Players:FindFirstChild(_G.SelectPly) then
                    Tween2(game.Players[_G.SelectPly].Character.HumanoidRootPart.CFrame)
                end
            end)
        end
    end
end)
v3.Player:AddSection('Other')
v3.Player:AddToggle('ToggleNoClip', {
    Title = 'Noclip',
    Description = '',
    Default = true,
}):OnChanged(function(p823)
    _G.LOf = p823
end)
_Options.ToggleNoClip:SetValue(true)
spawn(function()
    pcall(function()
        game:GetService('RunService').Stepped:Connect(function()
            if _G.LOf then
                local v824, v825, v826 = pairs(game.Players.LocalPlayer.Character:GetDescendants())

                while true do
                    local v827

                    v826, v827 = v824(v825, v826)

                    if v826 == nil then
                        break
                    end
                    if v827:IsA('BasePart') then
                        v827.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
v3.Player:AddToggle('ToggleWalkonWater', {
    Title = 'Walk On Water',
    Description = '',
    Default = true,
}):OnChanged(function(p828)
    _G.WalkonWater = p828
end)
_Options.ToggleWalkonWater:SetValue(true)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkonWater then
                game:GetService('Workspace').Map['WaterBase-Plane'].Size = Vector3.new(1000, 112, 1000)
            else
                game:GetService('Workspace').Map['WaterBase-Plane'].Size = Vector3.new(1000, 80, 1000)
            end
        end)
    end
end)
v3.Player:AddToggle('ToggleEnablePvp', {
    Title = 'Enable PVP',
    Description = '',
    Default = false,
}):OnChanged(function(p829)
    _G.EnabledPvP = p829
end)
_Options.ToggleEnablePvp:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.EnabledPvP and game:GetService('Players').LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EnablePvp')
            end
        end
    end)
end)

local _Sea = v3.Teleport:AddSection('Sea')

v3.Teleport:AddToggle('ToggleAutoSea2', {
    Title = 'Auto Sea 2',
    Description = '',
    Default = false,
}):OnChanged(function(p831)
    _G.Auto_Sea2 = p831
end)
_Options.ToggleAutoSea2:SetValue(false)
spawn(function()
    while wait() do
        if _G.Auto_Sea2 then
            pcall(function()
                if game:GetService('Players').LocalPlayer.Data.Level.Value >= 700 and World1 then
                    if game:GetService('Workspace').Map.Ice.Door.CanCollide ~= false or game:GetService('Workspace').Map.Ice.Door.Transparency ~= 1 then
                        if game:GetService('Workspace').Map.Ice.Door.CanCollide == false and game:GetService('Workspace').Map.Ice.Door.Transparency == 1 then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Ice Admiral') then
                                local v832, v833, v834 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v835

                                    v834, v835 = v832(v833, v834)

                                    if v834 == nil then
                                        break
                                    end
                                    if v835.Name == 'Ice Admiral' then
                                        if not v835.Humanoid.Health > 0 then
                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
                                        elseif v835:FindFirstChild('Humanoid') and (v835:FindFirstChild('HumanoidRootPart') and v835.Humanoid.Health > 0) then
                                            OldCFrameSecond = v835.HumanoidRootPart.CFrame

                                            repeat
                                                task.wait(_G.Fast_Delay)
                                                AutoHaki()
                                                EquipTool(SelectWeapon)

                                                v835.HumanoidRootPart.CanCollide = false
                                                v835.Humanoid.WalkSpeed = 0
                                                v835.Head.CanCollide = false
                                                v835.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                v835.HumanoidRootPart.CFrame = OldCFrameSecond

                                                Tween(v835.HumanoidRootPart.CFrame * Pos)
                                                AttackNoCoolDown()
                                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                            until not _G.Auto_Sea2 or (not v835.Parent or v835.Humanoid.Health <= 0)
                                        end
                                    end
                                end
                            elseif game:GetService('ReplicatedStorage'):FindFirstChild('Ice Admiral') then
                                Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Ice Admiral').HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                            end
                        end
                    else
                        local v836 = CFrame.new(4849.29883, 5.65138149, 719.611877)

                        repeat
                            Tween(v836)
                            wait()
                        until (v836.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.Auto_Sea2 == false

                        wait(1.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('DressrosaQuestProgress', 'Detective')
                        wait(0.5)
                        EquipTool('Key')

                        repeat
                            Tween(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            wait()
                        until (Vector3.new(1347.7124, 37.3751602, -1325.6488) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.Auto_Sea2 == false

                        wait(0.5)
                    end
                end
            end)
        end
    end
end)
v3.Teleport:AddToggle('ToggleAutoSea3', {
    Title = 'Auto Sea 3',
    Description = '',
    Default = false,
}):OnChanged(function(p837)
    _G.Auto_Sea3 = p837
end)
_Options.ToggleAutoSea3:SetValue(false)
spawn(function()
    while wait() do
        if _G.AutoSea3 then
            pcall(function()
                if game:GetService('Players').LocalPlayer.Data.Level.Value >= 1500 and World2 then
                    _G.AutoLevel = false

                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ZQuestProgress', 'General') == 0 then
                        Tween(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))

                        if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(1.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ZQuestProgress', 'Begin')
                        end

                        wait(1.8)

                        if game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') then
                            local v838, v839, v840 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v841

                                v840, v841 = v838(v839, v840)

                                if v840 == nil then
                                    break
                                end
                                if v841.Name == 'rip_indra' then
                                    OldCFrameThird = v841.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v841.HumanoidRootPart.CFrame * Pos)

                                        v841.HumanoidRootPart.CFrame = OldCFrameThird
                                        v841.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v841.HumanoidRootPart.CanCollide = false
                                        v841.Humanoid.WalkSpeed = 0

                                        AttackNoCoolDown()
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
                                    until _G.AutoSea3 == false or (v841.Humanoid.Health <= 0 or not v841.Parent)
                                end
                            end
                        elseif not game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            Tween(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                        end
                    end
                end
            end)
        end
    end
end)
v3.Teleport:AddButton({
    Title = 'Sea 1',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelMain')
    end,
})
v3.Teleport:AddButton({
    Title = 'Sea 2',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
    end,
})
v3.Teleport:AddButton({
    Title = 'Sea 3',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
    end,
})
v3.Teleport:AddSection('Island')

if Sea1 then
    IslandList = {
        'WindMill',
        'Marine',
        'Middle Town',
        'Jungle',
        'Pirate Village',
        'Desert',
        'Snow Island',
        'MarineFord',
        'Colosseum',
        'Sky Island 1',
        'Sky Island 2',
        'Sky Island 3',
        'Prison',
        'Magma Village',
        'Under Water Island',
        'Fountain City',
        'Shank Room',
        'Mob Island',
    }
elseif Sea2 then
    IslandList = {
        'The Cafe',
        'Frist Spot',
        'Dark Area',
        'Flamingo Mansion',
        'Flamingo Room',
        'Green Zone',
        'Factory',
        'Colossuim',
        'Zombie Island',
        'Two Snow Mountain',
        'Punk Hazard',
        'Cursed Ship',
        'Ice Castle',
        'Forgotten Island',
        'Ussop Island',
        'Mini Sky Island',
    }
elseif Sea3 then
    IslandList = {
        'Mansion',
        'Port Town',
        'Great Tree',
        'Castle On The Sea',
        'MiniSky',
        'Hydra Island',
        'Floating Turtle',
        'Haunted Castle',
        'Ice Cream Island',
        'Peanut Island',
        'Cake Island',
        'Cocoa Island',
        'Candy Island',
        'Tiki Outpost',
    }
end

local _DropdownIsland = v3.Teleport:AddDropdown('DropdownIsland', {
    Title = 'Select Island',
    Description = '',
    Values = IslandList,
    Multi = false,
    Default = 1,
})

_DropdownIsland:SetValue(_G.SelectIsland)
_DropdownIsland:OnChanged(function(p843)
    _G.SelectIsland = p843
end)
v3.Teleport:AddButton({
    Title = 'Teleport To Island',
    Description = '',
    Callback = function()
        if _G.SelectIsland ~= 'WindMill' then
            if _G.SelectIsland ~= 'Marine' then
                if _G.SelectIsland ~= 'Middle Town' then
                    if _G.SelectIsland ~= 'Jungle' then
                        if _G.SelectIsland ~= 'Pirate Village' then
                            if _G.SelectIsland ~= 'Desert' then
                                if _G.SelectIsland ~= 'Snow Island' then
                                    if _G.SelectIsland ~= 'MarineFord' then
                                        if _G.SelectIsland ~= 'Colosseum' then
                                            if _G.SelectIsland ~= 'Sky Island 1' then
                                                if _G.SelectIsland ~= 'Sky Island 2' then
                                                    if _G.SelectIsland ~= 'Sky Island 3' then
                                                        if _G.SelectIsland ~= 'Prison' then
                                                            if _G.SelectIsland ~= 'Magma Village' then
                                                                if _G.SelectIsland ~= 'Under Water Island' then
                                                                    if _G.SelectIsland ~= 'Fountain City' then
                                                                        if _G.SelectIsland ~= 'Shank Room' then
                                                                            if _G.SelectIsland ~= 'Mob Island' then
                                                                                if _G.SelectIsland ~= 'The Cafe' then
                                                                                    if _G.SelectIsland ~= 'Frist Spot' then
                                                                                        if _G.SelectIsland ~= 'Dark Area' then
                                                                                            if _G.SelectIsland ~= 'Flamingo Mansion' then
                                                                                                if _G.SelectIsland ~= 'Flamingo Room' then
                                                                                                    if _G.SelectIsland ~= 'Green Zone' then
                                                                                                        if _G.SelectIsland ~= 'Factory' then
                                                                                                            if _G.SelectIsland ~= 'Colossuim' then
                                                                                                                if _G.SelectIsland ~= 'Zombie Island' then
                                                                                                                    if _G.SelectIsland ~= 'Two Snow Mountain' then
                                                                                                                        if _G.SelectIsland ~= 'Punk Hazard' then
                                                                                                                            if _G.SelectIsland ~= 'Cursed Ship' then
                                                                                                                                if _G.SelectIsland ~= 'Ice Castle' then
                                                                                                                                    if _G.SelectIsland ~= 'Forgotten Island' then
                                                                                                                                        if _G.SelectIsland ~= 'Ussop Island' then
                                                                                                                                            if _G.SelectIsland ~= 'Mini Sky Island' then
                                                                                                                                                if _G.SelectIsland ~= 'Great Tree' then
                                                                                                                                                    if _G.SelectIsland ~= 'Castle On The Sea' then
                                                                                                                                                        if _G.SelectIsland ~= 'MiniSky' then
                                                                                                                                                            if _G.SelectIsland ~= 'Port Town' then
                                                                                                                                                                if _G.SelectIsland ~= 'Hydra Island' then
                                                                                                                                                                    if _G.SelectIsland ~= 'Floating Turtle' then
                                                                                                                                                                        if _G.SelectIsland ~= 'Mansion' then
                                                                                                                                                                            if _G.SelectIsland ~= 'Castle On The Sea' then
                                                                                                                                                                                if _G.SelectIsland ~= 'Haunted Castle' then
                                                                                                                                                                                    if _G.SelectIsland ~= 'Ice Cream Island' then
                                                                                                                                                                                        if _G.SelectIsland ~= 'Peanut Island' then
                                                                                                                                                                                            if _G.SelectIsland ~= 'Cake Island' then
                                                                                                                                                                                                if _G.SelectIsland ~= 'Cocoa Island' then
                                                                                                                                                                                                    if _G.SelectIsland ~= 'Candy Island' then
                                                                                                                                                                                                        if _G.SelectIsland == 'Tiki Outpost' then
                                                                                                                                                                                                            Tween2(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
                                                                                                                                                                                                        end
                                                                                                                                                                                                    else
                                                                                                                                                                                                        Tween2(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                                                                                                                                                                                                    end
                                                                                                                                                                                                else
                                                                                                                                                                                                    Tween2(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                                                                                                                                                                                                end
                                                                                                                                                                                            else
                                                                                                                                                                                                Tween2(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                                                                                                                                                                                            end
                                                                                                                                                                                        else
                                                                                                                                                                                            Tween2(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                                                                                                                                                                                        end
                                                                                                                                                                                    else
                                                                                                                                                                                        Tween2(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                                                                                                                                                                                    end
                                                                                                                                                                                else
                                                                                                                                                                                    Tween2(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                                                                                                                                                                                end
                                                                                                                                                                            else
                                                                                                                                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
                                                                                                                                                                            end
                                                                                                                                                                        else
                                                                                                                                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-12468.5380859375, 375.0094299316406, -7554.62548828125))
                                                                                                                                                                        end
                                                                                                                                                                    else
                                                                                                                                                                        Tween2(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                                                                                                                                                                    end
                                                                                                                                                                else
                                                                                                                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
                                                                                                                                                                end
                                                                                                                                                            else
                                                                                                                                                                Tween2(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                                                                                                                                                            end
                                                                                                                                                        else
                                                                                                                                                            Tween2(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    Tween2(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                Tween2(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            Tween2(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        Tween2(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    Tween2(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                                                                                                                                end
                                                                                                                            else
                                                                                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.40197753906, 125.05712890625, 32885.875))
                                                                                                                            end
                                                                                                                        else
                                                                                                                            Tween2(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                                                                                                                        end
                                                                                                                    else
                                                                                                                        Tween2(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                                                                                                                    end
                                                                                                                else
                                                                                                                    Tween2(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                                                                                                                end
                                                                                                            else
                                                                                                                Tween2(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                                                                                                            end
                                                                                                        else
                                                                                                            Tween2(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                                                                                                        end
                                                                                                    else
                                                                                                        Tween2(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                                                                                                    end
                                                                                                else
                                                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625))
                                                                                                end
                                                                                            else
                                                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
                                                                                            end
                                                                                        else
                                                                                            Tween2(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                                                                                        end
                                                                                    else
                                                                                        Tween2(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                                                                                    end
                                                                                else
                                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
                                                                                    wait()
                                                                                    Tween2(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                                                                                end
                                                                            else
                                                                                Tween2(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                                                                            end
                                                                        else
                                                                            Tween2(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                                                                        end
                                                                    else
                                                                        Tween2(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                                                                    end
                                                                else
                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                end
                                                            else
                                                                Tween2(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                                                            end
                                                        else
                                                            Tween2(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                                                        end
                                                    else
                                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                                                    end
                                                else
                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.82275, 872.54248, -1667.55688))
                                                end
                                            else
                                                Tween2(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                                            end
                                        else
                                            Tween2(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                                        end
                                    else
                                        Tween2(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                                    end
                                else
                                    Tween2(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                                end
                            else
                                Tween2(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                            end
                        else
                            Tween2(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                        end
                    else
                        Tween2(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                    end
                else
                    Tween2(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                end
            else
                Tween2(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
            end
        else
            Tween2(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
        end
    end,
})
v3.Teleport:AddButton({
    Title = 'Stop Teleport',
    Description = '',
    Callback = function()
        CancelTween()
    end,
})
v3.Visual:AddButton({
    Title = 'Fake',
    Description = '',
    Callback = function()
        local _LocalPlayer4 = game:GetService('Players').LocalPlayer
        local v845 = require(game:GetService('ReplicatedStorage').Notification)
        local _Data = _LocalPlayer4:WaitForChild('Data')
        local v847 = require(game.ReplicatedStorage:WaitForChild('EXPFunction'))
        local v848 = require(game:GetService('ReplicatedStorage').Effect.Container.LevelUp)
        local v849 = require(game:GetService('ReplicatedStorage').Util.Sound)
        local v850 = game:GetService('ReplicatedStorage').Util.Sound.Storage.Other:FindFirstChild('LevelUp_Proxy') or game:GetService('ReplicatedStorage').Util.Sound.Storage.Other:FindFirstChild('LevelUp')

        function v129(p851)
            repeat
                local v852

                p851, v852 = string.gsub(p851, '^(-?%d+)(%d%d%d)', '%1,%2')
            until v852 == 0

            return p851
        end

        v845.new('<Color=Yellow>QUEST COMPLETED!<Color=/>'):Display()
        v845.new('Earned<Color=Yellow>9,999,999,999,999 Exp.<Color=/>(+None)'):Display()
        v845.new('Earned<Color=Green>$9,999,999,999,999<Color=/>'):Display()

        _LocalPlayer4.Data.Exp.Value = 999999999999
        _LocalPlayer4.Data.Beli.Value = _LocalPlayer4.Data.Beli.Value + 999999999999
        delay = 0
        count = 0

        while _LocalPlayer4.Data.Exp.Value - v847(_Data.Level.Value) > 0 do
            _LocalPlayer4.Data.Exp.Value = _LocalPlayer4.Data.Exp.Value - v847(_Data.Level.Value)
            _LocalPlayer4.Data.Level.Value = _LocalPlayer4.Data.Level.Value + 1
            _LocalPlayer4.Data.Points.Value = _LocalPlayer4.Data.Points.Value + 3

            v848({_LocalPlayer4})
            v849:Play(v850.Value)
            v845.new('<Color=Green>LEVEL UP!<Color=/>(' .. _LocalPlayer4.Data.Level.Value .. ')'):Display()

            count = count + 1

            if count >= 5 then
                delay = tick()
                count = 0

                wait()
            end
        end
    end,
})
v3.Visual:AddInput('Input_Level', {
    Title = 'Level',
    Default = '',
    Placeholder = '...',
    Numeric = false,
    Finished = false,
    Callback = function(p853)
        game:GetService('Players').LocalPlayer.Data.Level.Value = tonumber(p853)
    end,
})
v3.Visual:AddInput('Input_EXP', {
    Title = 'EXP',
    Default = '',
    Placeholder = '...',
    Numeric = false,
    Finished = false,
    Callback = function(p854)
        game:GetService('Players').LocalPlayer.Data.Exp.Value = tonumber(p854)
    end,
})
v3.Visual:AddInput('Input_Beli', {
    Title = 'Beli',
    Default = '',
    Placeholder = '...',
    Numeric = false,
    Finished = false,
    Callback = function(p855)
        game:GetService('Players').LocalPlayer.Data.Beli.Value = tonumber(p855)
    end,
})
v3.Visual:AddInput('Input_Fragments', {
    Title = 'Fragments',
    Default = '',
    Placeholder = '...',
    Numeric = false,
    Finished = false,
    Callback = function(p856)
        game:GetService('Players').LocalPlayer.Data.Fragments.Value = tonumber(p856)
    end,
})

local _GetFruits = game.ReplicatedStorage:FindFirstChild('Remotes').CommF_:InvokeServer('GetFruits')

Table_DevilFruitSniper = {}
ShopDevilSell = {}

local v858 = next
local v859 = nil

while true do
    local v860

    v859, v860 = v858(_GetFruits, v859)

    if v859 == nil then
        break
    end

    table.insert(Table_DevilFruitSniper, v860.Name)

    if v860.OnSale then
        table.insert(ShopDevilSell, v860.Name)
    end
end

_G.SelectFruit = 'Dragon-Dragon'
_G.PermanentFruit = 'Dragon-Dragon'
_G.AutoBuyFruitSniper = false
_G.AutoSwitchPermanentFruit = false

local _DropdownFruit = v3.Fruit:AddDropdown('DropdownFruit', {
    Title = 'Select Fruit',
    Description = '',
    Values = Table_DevilFruitSniper,
    Multi = false,
    Default = 1,
})

_DropdownFruit:SetValue(_G.SelectFruit)
_DropdownFruit:OnChanged(function(p862)
    _G.SelectFruit = p862
end)
v3.Fruit:AddToggle('ToggleFruit', {
    Title = 'Buy',
    Description = '',
    Default = false,
}):OnChanged(function(p863)
    if p863 then
        _G.AutoBuyFruitSniper = true

        pcall(function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GetFruits')
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PurchaseRawFruit', _G.SelectFruit, false)
        end)

        _G.AutoBuyFruitSniper = false
    end
end)
_Options.ToggleFruit:SetValue(false)

local _DropdownPermanentFruit = v3.Fruit:AddDropdown('DropdownPermanentFruit', {
    Title = 'Select Permanent Fruit',
    Description = '',
    Values = Table_DevilFruitSniper,
    Multi = false,
    Default = 1,
})

_DropdownPermanentFruit:SetValue(_G.PermanentFruit)
_DropdownPermanentFruit:OnChanged(function(p865)
    _G.PermanentFruit = p865
end)
v3.Fruit:AddToggle('TogglePermanentFruit', {
    Title = 'Use Permanent Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p866)
    if p866 then
        _G.AutoSwitchPermanentFruit = true

        pcall(function()
            local v867 = {
                'SwitchFruit',
                _G.PermanentFruit,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v867))
        end)

        _G.AutoSwitchPermanentFruit = false
    end
end)
_Options.TogglePermanentFruit:SetValue(false)
v3.Fruit:AddToggle('ToggleStore', {
    Title = 'Store Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p868)
    _G.AutoStoreFruit = p868
end)
_Options.ToggleStore:SetValue(false)
spawn(function()
    while task.wait() do
        if _G.AutoStoreFruit then
            pcall(function()
                if _G.AutoStoreFruit then
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Bomb Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bomb Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Bomb-Bomb', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bomb Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spike Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spike Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Spike-Spike', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spike Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Chop Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Chop Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Chop-Chop', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Blade Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spring Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spring Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Spring-Spring', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spring Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Rocket Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Kilo Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Rocket-Rocket', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Kilo Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Smoke Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Smoke Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Smoke-Smoke', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Smoke Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spin Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spin Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Spin-Spin', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spin Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flame Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flame Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Flame-Flame', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flame Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Falcon Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Falcon Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Falcon', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('alcon Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Ice Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Ice Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Ice-Ice', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Ice Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Sand Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Sand Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Sand-Sand', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Sand Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dark Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dark Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Dark-Dark', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dark Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Ghost Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Revive Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Ghost-Ghost', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Revive Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Diamond Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Diamond Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Diamond-Diamond', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Diamond Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Light Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Light Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Light-Light', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Light Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Love Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Love Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Love-Love', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Love Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Rubber Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rubber Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Rubber-Rubber', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rubber Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Barrier Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Barrier Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Barrier-Barrier', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Barrier Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Magma Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Magma Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Magma-Magma', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Magma Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Portal Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Portal Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Door-Door', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Portal Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Quake Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Quake Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Quake-Quake', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Quake Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Buddha Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Buddha Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Buddha', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Buddha Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spider Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spider Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Spider-Spider', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spider Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Bird: Phoenix Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Phoenix Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Phoenix', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Phoenix Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Rumble Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rumble Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Rumble-Rumble', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rumble Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Pain Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Pain Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Pain-Pain', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Pain Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Gravity Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Gravity Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Gravity-Gravity', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Gravity Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dough Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dough Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Dough-Dough', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dough Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Shadow Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Shadow Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Shadow-Shadow', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Shadow Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Venom Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Venom Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Venom-Venom', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Venom Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Control Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Control Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Control-Control', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Control Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spirit Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spirit Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Soul-Soul', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spirit Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Dragon-Dragon', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Fruit'))

                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Leopard Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Leopard Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Leopard-Leopard', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Leopard Fruit'))
                        end
                    end
                end
            end)
        end

        wait()
    end
end)
v3.Fruit:AddToggle('ToggleRandomFruit', {
    Title = 'Random Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p869)
    _G.Random_Auto = p869
end)
_Options.ToggleRandomFruit:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Random_Auto then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Cousin', 'Buy')
            end
        end
    end)
end)
v3.Fruit:AddToggle('ToggleCollectTP', {
    Title = 'Get Fruit (TP)',
    Description = 'Risk',
    Default = false,
}):OnChanged(function(p870)
    _G.CollectFruitTP = p870
end)
_Options.ToggleCollectTP:SetValue(false)
spawn(function()
    while wait() do
        if _G.CollectFruitTP then
            local v871, v872, v873 = pairs(game.Workspace:GetChildren())

            while true do
                local v874

                v873, v874 = v871(v872, v873)

                if v873 == nil then
                    break
                end
                if string.find(v874.Name, 'Fruit') then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v874.Handle.CFrame
                end
            end
        end
    end
end)
v3.Fruit:AddToggle('ToggleCollect', {
    Title = 'Get Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p875)
    _G.Tweenfruit = p875
end)
_Options.ToggleCollect:SetValue(false)
spawn(function()
    while wait() do
        if _G.Tweenfruit then
            local v876, v877, v878 = pairs(game.Workspace:GetChildren())

            while true do
                local v879

                v878, v879 = v876(v877, v878)

                if v878 == nil then
                    break
                end
                if string.find(v879.Name, 'Fruit') then
                    Tween(v879.Handle.CFrame)
                end
            end
        end
    end
end)
v3.Fruit:AddSection('Esp')
v3.Fruit:AddToggle('ToggleEspPlayer', {
    Title = 'Player',
    Description = '',
    Default = false,
}):OnChanged(function(p880)
    ESPPlayer = p880

    UpdatePlayerChams()
end)
_Options.ToggleEspPlayer:SetValue(false)
v3.Fruit:AddToggle('ToggleEspFruit', {
    Title = 'Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p881)
    DevilFruitESP = p881

    while DevilFruitESP do
        wait()
        UpdateDevilChams()
    end
end)
_Options.ToggleEspFruit:SetValue(false)
v3.Fruit:AddToggle('ToggleEspIsland', {
    Title = 'Island',
    Description = '',
    Default = false,
}):OnChanged(function(p882)
    IslandESP = p882

    while IslandESP do
        wait()
        UpdateIslandESP()
    end
end)
_Options.ToggleEspIsland:SetValue(false)
v3.Fruit:AddToggle('ToggleEspFlower', {
    Title = 'Flower',
    Description = '',
    Default = false,
}):OnChanged(function(p883)
    FlowerESP = p883

    UpdateFlowerChams()
end)
_Options.ToggleEspFlower:SetValue(false)
spawn(function()
    while wait() do
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
v3.Fruit:AddToggle('ToggleEspRealFruit', {
    Title = 'Real Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p884)
    RealFruitEsp = p884

    while RealFruitEsp do
        wait()
        UpdateRealFruitEsp()
    end
end)
_Options.ToggleEspRealFruit:SetValue(false)

function UpdateRealFruitEsp()
    local v885, v886, v887 = pairs(game.Workspace.AppleSpawner:GetChildren())

    while true do
        local v888

        v887, v888 = v885(v886, v887)

        if v887 == nil then
            break
        end
        if v888:IsA('Tool') then
            if RealFruitEsp then
                if v888.Handle:FindFirstChild('NameEsp' .. Number) then
                    v888.Handle['NameEsp' .. Number].TextLabel.Text = v888.Name .. ' ' .. u813((game:GetService('Players').LocalPlayer.Character.Head.Position - v888.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui25 = Instance.new('BillboardGui', v888.Handle)

                    _BillboardGui25.Name = 'NameEsp' .. Number
                    _BillboardGui25.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui25.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui25.Adornee = v888.Handle
                    _BillboardGui25.AlwaysOnTop = true

                    local _TextLabel25 = Instance.new('TextLabel', _BillboardGui25)

                    _TextLabel25.Font = Enum.Font.GothamSemibold
                    _TextLabel25.FontSize = 'Size14'
                    _TextLabel25.TextWrapped = true
                    _TextLabel25.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel25.TextYAlignment = 'Top'
                    _TextLabel25.BackgroundTransparency = 1
                    _TextLabel25.TextStrokeTransparency = 0.5
                    _TextLabel25.TextColor3 = Color3.fromRGB(255, 0, 0)
                    _TextLabel25.Text = v888.Name .. ' \n' .. u813((game:GetService('Players').LocalPlayer.Character.Head.Position - v888.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v888.Handle:FindFirstChild('NameEsp' .. Number) then
                v888.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v891, v892, v893 = pairs(game.Workspace.PineappleSpawner:GetChildren())

    while true do
        local v894

        v893, v894 = v891(v892, v893)

        if v893 == nil then
            break
        end
        if v894:IsA('Tool') then
            if RealFruitEsp then
                if v894.Handle:FindFirstChild('NameEsp' .. Number) then
                    v894.Handle['NameEsp' .. Number].TextLabel.Text = v894.Name .. ' ' .. u813((game:GetService('Players').LocalPlayer.Character.Head.Position - v894.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui26 = Instance.new('BillboardGui', v894.Handle)

                    _BillboardGui26.Name = 'NameEsp' .. Number
                    _BillboardGui26.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui26.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui26.Adornee = v894.Handle
                    _BillboardGui26.AlwaysOnTop = true

                    local _TextLabel26 = Instance.new('TextLabel', _BillboardGui26)

                    _TextLabel26.Font = Enum.Font.GothamSemibold
                    _TextLabel26.FontSize = 'Size14'
                    _TextLabel26.TextWrapped = true
                    _TextLabel26.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel26.TextYAlignment = 'Top'
                    _TextLabel26.BackgroundTransparency = 1
                    _TextLabel26.TextStrokeTransparency = 0.5
                    _TextLabel26.TextColor3 = Color3.fromRGB(255, 174, 0)
                    _TextLabel26.Text = v894.Name .. ' \n' .. u813((game:GetService('Players').LocalPlayer.Character.Head.Position - v894.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v894.Handle:FindFirstChild('NameEsp' .. Number) then
                v894.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v897, v898, v899 = pairs(game.Workspace.BananaSpawner:GetChildren())

    while true do
        local v900

        v899, v900 = v897(v898, v899)

        if v899 == nil then
            break
        end
        if v900:IsA('Tool') then
            if RealFruitEsp then
                if v900.Handle:FindFirstChild('NameEsp' .. Number) then
                    v900.Handle['NameEsp' .. Number].TextLabel.Text = v900.Name .. ' ' .. u813((game:GetService('Players').LocalPlayer.Character.Head.Position - v900.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui27 = Instance.new('BillboardGui', v900.Handle)

                    _BillboardGui27.Name = 'NameEsp' .. Number
                    _BillboardGui27.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui27.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui27.Adornee = v900.Handle
                    _BillboardGui27.AlwaysOnTop = true

                    local _TextLabel27 = Instance.new('TextLabel', _BillboardGui27)

                    _TextLabel27.Font = Enum.Font.GothamSemibold
                    _TextLabel27.FontSize = 'Size14'
                    _TextLabel27.TextWrapped = true
                    _TextLabel27.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel27.TextYAlignment = 'Top'
                    _TextLabel27.BackgroundTransparency = 1
                    _TextLabel27.TextStrokeTransparency = 0.5
                    _TextLabel27.TextColor3 = Color3.fromRGB(251, 255, 0)
                    _TextLabel27.Text = v900.Name .. ' \n' .. u813((game:GetService('Players').LocalPlayer.Character.Head.Position - v900.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v900.Handle:FindFirstChild('NameEsp' .. Number) then
                v900.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end
end

v3.Fruit:AddToggle('ToggleIslandMirageEsp', {
    Title = 'Mirage Island',
    Description = '',
    Default = false,
}):OnChanged(function(p903)
    IslandMirageEsp = p903

    while IslandMirageEsp do
        wait()
        UpdateIslandMirageEsp()
    end
end)
_Options.ToggleIslandMirageEsp:SetValue(false)

function isnil(p904)
    return p904 == nil
end

local function u906(p905)
    return math.floor(tonumber(p905) + 0.5)
end

Number = math.random(1, 1000000)

function UpdateIslandMirageEsp()
    local v907, v908, v909 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local u910

        v909, u910 = v907(v908, v909)

        if v909 == nil then
            break
        end

        pcall(function()
            if MirageIslandESP then
                if u910.Name == 'Mirage Island' then
                    if u910:FindFirstChild('NameEsp') then
                        u910.NameEsp.TextLabel.Text = u910.Name .. '   \n' .. u906((game:GetService('Players').LocalPlayer.Character.Head.Position - u910.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui28 = Instance.new('BillboardGui', u910)

                        _BillboardGui28.Name = 'NameEsp'
                        _BillboardGui28.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui28.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui28.Adornee = u910
                        _BillboardGui28.AlwaysOnTop = true

                        local _TextLabel28 = Instance.new('TextLabel', _BillboardGui28)

                        _TextLabel28.Font = Enum.Font.Code
                        _TextLabel28.FontSize = Enum.FontSize.Size14
                        _TextLabel28.TextWrapped = true
                        _TextLabel28.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel28.TextYAlignment = Enum.TextYAlignment.Top
                        _TextLabel28.BackgroundTransparency = 1
                        _TextLabel28.TextStrokeTransparency = 0.5
                        _TextLabel28.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u910:FindFirstChild('NameEsp') then
                u910:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end

local _DropdownRaid = v3.Raid:AddDropdown('DropdownRaid', {
    Title = 'Select Chip',
    Description = '',
    Values = {
        'Flame',
        'Ice',
        'Quake',
        'Light',
        'Dark',
        'Spider',
        'Rumble',
        'Magma',
        'Buddha',
        'Sand',
        'Phoenix',
        'Dough',
    },
    Multi = false,
    Default = 1,
})

_DropdownRaid:SetValue(SelectChip)
_DropdownRaid:OnChanged(function(p914)
    SelectChip = p914
end)
v3.Raid:AddToggle('ToggleBuy', {
    Title = 'Buy Chip',
    Description = '',
    Default = false,
}):OnChanged(function(p915)
    _G.Auto_Buy_Chips_Dungeon = p915
end)
_Options.ToggleBuy:SetValue(false)
spawn(function()
    while wait() do
        if _G.Auto_Buy_Chips_Dungeon then
            pcall(function()
                local v916 = {
                    'RaidsNpc',
                    'Select',
                    SelectChip,
                }

                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v916))
            end)
        end
    end
end)
v3.Raid:AddToggle('ToggleStart', {
    Title = 'Auto Start Raid',
    Description = '',
    Default = false,
}):OnChanged(function(p917)
    _G.Auto_StartRaid = p917
end)
_Options.ToggleStart:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_StartRaid and (game:GetService('Players').LocalPlayer.PlayerGui.Main.Timer.Visible == false and (not game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 1') and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Special Microchip') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Special Microchip')))) then
                if Sea2 then
                    Tween2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'SetSpawnPoint',
                    }))
                    fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                elseif Sea3 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
                    Tween2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.482175e-8, -0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, -0.925743818))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'SetSpawnPoint',
                    }))
                    fireclickdetector(game:GetService('Workspace').Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
                end
            end
        end)
    end
end)
v3.Raid:AddToggle('ToggleNextIsland', {
    Title = 'Auto Farm Raid',
    Description = '',
    Default = false,
}):OnChanged(function(p918)
    AutoNextIsland = p918

    if not p918 then
        _G.AutoNear = false
    end
end)
_Options.ToggleNextIsland:SetValue(false)
spawn(function()
    local u919 = {}

    while task.wait() do
        if AutoNextIsland then
            pcall(function()
                local _Character8 = game.Players.LocalPlayer.Character

                if _Character8 and _Character8:FindFirstChild('HumanoidRootPart') then
                    local _Locations = game:GetService('Workspace')._WorldOrigin.Locations
                    local _Position8 = _Character8.HumanoidRootPart.Position

                    if (_Position8 - Vector3.new(-6438.73535, 250.645355, -4501.50684)).Magnitude < 1 or (_Position8 - Vector3.new(-5017.40869, 314.844055, -2823.0127)).Magnitude < 1 then
                        u919 = {}
                    end
                    if _Locations:FindFirstChild('Island 1') then
                        _G.AutoNear = true
                    end
                    if _Locations:FindFirstChild('Island 2') and not u919['Island 2'] then
                        Tween(_Locations:FindFirstChild('Island 2').CFrame)

                        u919['Island 2'] = true
                        AutoNextIsland = false

                        wait()

                        AutoNextIsland = true
                    elseif _Locations:FindFirstChild('Island 3') and not u919['Island 3'] then
                        Tween(_Locations:FindFirstChild('Island 3').CFrame)

                        u919['Island 3'] = true
                        AutoNextIsland = false

                        wait()

                        AutoNextIsland = true
                    elseif _Locations:FindFirstChild('Island 4') and not u919['Island 4'] then
                        Tween(_Locations:FindFirstChild('Island 4').CFrame)

                        u919['Island 4'] = true
                        AutoNextIsland = false

                        wait()

                        AutoNextIsland = true
                    elseif _Locations:FindFirstChild('Island 5') and not u919['Island 5'] then
                        Tween(_Locations:FindFirstChild('Island 5').CFrame)

                        u919['Island 5'] = true
                        AutoNextIsland = false

                        wait()

                        AutoNextIsland = true
                    end
                end
            end)
        end
    end
end)
v3.Raid:AddToggle('ToggleAwake', {
    Title = 'Auto Awakening Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p923)
    AutoAwakenAbilities = p923
end)
_Options.ToggleAwake:SetValue(false)
spawn(function()
    while task.wait() do
        if AutoAwakenAbilities then
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Awakener', 'Awaken')
            end)
        end
    end
end)
v3.Raid:AddToggle('ToggleGetFruit', {
    Title = 'Give Up Normal Fruit\u{2014}>Raid Chip',
    Description = '',
    Default = false,
}):OnChanged(function(p924)
    _G.Autofruit = p924
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Autofruit then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Rocket-Rocket',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Spin-Spin',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Chop-Chop',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Spring-Spring',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Bomb-Bomb',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Smoke-Smoke',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Spike-Spike',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Flame-Flame',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Falcon-Falcon',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Ice-Ice',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Sand-Sand',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Dark-Dark',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Ghost-Ghost',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Diamond-Diamond',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Light-Light',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Rubber-Rubber',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Barrier-Barrier',
                }))
            end
        end)
    end
end)

if Sea2 then
    v3.Raid:AddButton({
        Title = 'Fly To The Raid Room',
        Description = '',
        Callback = function()
            Tween2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
        end,
    })
elseif Sea3 then
    v3.Raid:AddButton({
        Title = 'Fly To The Raid Room',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
            Tween2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.482175e-8, -0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, -0.925743818))
        end,
    })
end

v3.Raid:AddSection('Law')
v3.Raid:AddToggle('ToggleLaw', {
    Title = 'Auto Raid Low (Fully)',
    Description = '',
    Default = false,
}):OnChanged(function(p925)
    Auto_Law = p925
end)
_Options.ToggleLaw:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if Auto_Law and not (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Microchip') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Microchip') or (game:GetService('Workspace').Enemies:FindFirstChild('Order') or game:GetService('ReplicatedStorage'):FindFirstChild('Order')))) then
                wait()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Microchip', '1')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Microchip', '2')
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        while wait() do
            if Auto_Law then
                if not game:GetService('Workspace').Enemies:FindFirstChild('Order') and (not game:GetService('ReplicatedStorage'):FindFirstChild('Order') and (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Microchip') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Microchip'))) then
                    fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                end
                if game:GetService('ReplicatedStorage'):FindFirstChild('Order') or game:GetService('Workspace').Enemies:FindFirstChild('Order') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Order') then
                        local v926, v927, v928 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v929

                            v928, v929 = v926(v927, v928)

                            if v928 == nil then
                                break
                            end
                            if v929.Name == 'Order' then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v929.HumanoidRootPart.CFrame * Pos)

                                    v929.HumanoidRootPart.CanCollide = false
                                    v929.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                until not v929.Parent or (v929.Humanoid.Health <= 0 or Auto_Law == false)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Order') then
                        Tween(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                    end
                end
            end
        end
    end)
end)
v3.Race:AddButton({
    Title = 'Temple Of Time',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
    end,
})
v3.Race:AddButton({
    Title = 'Auto Pull Lever',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        Tween2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end,
})
v3.Race:AddButton({
    Title = 'TP Buy Gear NPC',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        Tween2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end,
})
v3.Race:AddSection('Race')
v3.Race:AddButton({
    Title = 'Race Door',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))

        if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Human' then
            if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Skypiea' then
                if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Fishman' then
                    if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Cyborg' then
                        if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Ghoul' then
                            if game:GetService('Players').LocalPlayer.Data.Race.Value == 'Mink' then
                                Tween2(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
                            end
                        else
                            Tween2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                        end
                    else
                        Tween2(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
                    end
                else
                    Tween2(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
                end
            else
                Tween2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
            end
        else
            Tween2(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
        end
    end,
})
v3.Race:AddToggle('ToggleHumanandghoul', {
    Title = 'Overcome Challenges [Human/Ghoul]',
    Description = '',
    Default = false,
}):OnChanged(function(p930)
    KillAura = p930
end)
_Options.ToggleHumanandghoul:SetValue(false)
v3.Race:AddToggle('ToggleAutotrial', {
    Title = 'Overcome Challenges',
    Description = '',
    Default = false,
}):OnChanged(function(p931)
    _G.AutoQuestRace = p931
end)
_Options.ToggleAutotrial:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
                if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Human' then
                    if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Skypiea' then
                        if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Fishman' then
                            if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Cyborg' then
                                if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Ghoul' then
                                    if game:GetService('Players').LocalPlayer.Data.Race.Value == 'Mink' then
                                        local v932, v933, v934 = pairs(game:GetService('Workspace'):GetDescendants())

                                        while true do
                                            local v935

                                            v934, v935 = v932(v933, v934)

                                            if v934 == nil then
                                                break
                                            end
                                            if v935.Name == 'StartPoint' then
                                                Tween(v935.CFrame * CFrame.new(0, 10, 0))
                                            end
                                        end
                                    end
                                else
                                    local v936, v937, v938 = pairs(game.Workspace.Enemies:GetDescendants())

                                    while true do
                                        local u939

                                        v938, u939 = v936(v937, v938)

                                        if v938 == nil then
                                            break
                                        end
                                        if u939:FindFirstChild('Humanoid') and (u939:FindFirstChild('HumanoidRootPart') and u939.Humanoid.Health > 0) then
                                            pcall(function()
                                                repeat
                                                    wait()

                                                    u939.Humanoid.Health = 0
                                                    u939.HumanoidRootPart.CanCollide = false

                                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                                until not _G.AutoQuestRace or (not u939.Parent or u939.Humanoid.Health <= 0)
                                            end)
                                        end
                                    end
                                end
                            else
                                Tween(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                            end
                        else
                            local v940, v941, v942 = pairs(game:GetService('Workspace').SeaBeasts.SeaBeast1:GetDescendants())

                            while true do
                                local v943

                                v942, v943 = v940(v941, v942)

                                if v942 == nil then
                                    break
                                end
                                if v943.Name == 'HumanoidRootPart' then
                                    Tween(v943.CFrame * Pos)

                                    local v944, v945, v946 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v947

                                        v946, v947 = v944(v945, v946)

                                        if v946 == nil then
                                            break
                                        end
                                        if v947:IsA('Tool') and v947.ToolTip == 'Melee' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v947)
                                        end
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

                                    local v948, v949, v950 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v951

                                        v950, v951 = v948(v949, v950)

                                        if v950 == nil then
                                            break
                                        end
                                        if v951:IsA('Tool') and v951.ToolTip == 'Blox Fruit' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v951)
                                        end
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait()

                                    local v952, v953, v954 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v955

                                        v954, v955 = v952(v953, v954)

                                        if v954 == nil then
                                            break
                                        end
                                        if v955:IsA('Tool') and v955.ToolTip == 'Sword' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v955)
                                        end
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait()

                                    local v956, v957, v958 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v959

                                        v958, v959 = v956(v957, v958)

                                        if v958 == nil then
                                            break
                                        end
                                        if v959:IsA('Tool') and v959.ToolTip == 'Gun' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v959)
                                        end
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                end
                            end
                        end
                    else
                        local v960, v961, v962 = pairs(game:GetService('Workspace').Map.SkyTrial.Model:GetDescendants())

                        while true do
                            local v963

                            v962, v963 = v960(v961, v962)

                            if v962 == nil then
                                break
                            end
                            if v963.Name == 'snowisland_Cylinder.081' then
                                BTPZ(v963.CFrame * CFrame.new(0, 0, 0))
                            end
                        end
                    end
                else
                    local v964, v965, v966 = pairs(game.Workspace.Enemies:GetDescendants())

                    while true do
                        local u967

                        v966, u967 = v964(v965, v966)

                        if v966 == nil then
                            break
                        end
                        if u967:FindFirstChild('Humanoid') and (u967:FindFirstChild('HumanoidRootPart') and u967.Humanoid.Health > 0) then
                            pcall(function()
                                repeat
                                    wait()

                                    u967.Humanoid.Health = 0
                                    u967.HumanoidRootPart.CanCollide = false

                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.AutoQuestRace or (not u967.Parent or u967.Humanoid.Health <= 0)
                            end)
                        end
                    end
                end
            end
        end
    end)
end)
v3.Race:AddToggle('ToggleKillTrial', {
    Title = 'Kill Trial',
    Description = '',
    Default = false,
}):OnChanged(function(p968)
    _G.AutoKillTrial = p968
end)
_Options.ToggleKillTrial:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoKillTrial then
                local v969, v970, v971 = pairs(game:GetService('Players'):GetChildren())

                while true do
                    local v972

                    v971, v972 = v969(v970, v971)

                    if v971 == nil then
                        break
                    end
                    if v972.Name and (v972.Name ~= game.Players.LocalPlayer.Name and ((v972.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 and v972.Character.Humanoid.Health > 0)) then
                        repeat
                            wait(_G.Fast_Delay)
                            EquipTool(SelectWeapon)
                            AutoHaki()
                            Tween(v972.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5))

                            v972.Character.HumanoidRootPart.CanCollide = false
                            v972.Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                            AttackNoCoolDown()
                        until not _G.AutoKillTrial or (not v972.Parent or v972.Character.Humanoid.Health <= 0)
                    end
                end
            end
        end)
    end
end)
v3.Race:AddSection('')

local _ToggleFarmRace = v3.Race:AddToggle('ToggleFarmRace', {
    Title = 'Farm Race',
    Description = '',
    Default = false,
})
local u974 = false

_ToggleFarmRace:OnChanged(function(p975)
    u974 = p975
end)
_Options.ToggleFarmRace:SetValue(false)
spawn(function()
    while wait() do
        if u974 then
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild('RaceTransformed') then
                    if game.Players.LocalPlayer.Character.RaceTransformed.Value ~= true then
                        if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                            _G.AutoBoneNoQuest = true

                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'Y', false, game)
                            wait()
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'Y', false, game)
                        end
                    else
                        _G.AutoBoneNoQuest = false

                        Tween(CFrame.new(-9698.4736328125, 445.09442138671875, 6545.8525390625))
                    end
                end
            end)
        else
            _G.AutoBoneNoQuest = false
        end
    end
end)
v3.Race:AddToggle('ToggleUpgrade', {
    Title = 'Buy Gear',
    Description = '',
    Default = false,
}):OnChanged(function(p976)
    _G.AutoUpgrade = p976

    if _G.AutoUpgrade then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('UpgradeRace', 'Buy')
    end
end)
_Options.ToggleUpgrade:SetValue(false)
v3.Shop:AddSection('Haki')
v3.Shop:AddButton({
    Title = 'Geppo',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Geppo')
    end,
})
v3.Shop:AddButton({
    Title = 'Buso',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Buso')
    end,
})
v3.Shop:AddButton({
    Title = 'Soru',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Soru')
    end,
})
v3.Shop:AddButton({
    Title = 'Ken',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk', 'Buy')
    end,
})
v3.Shop:AddSection('Ki\u{1ebf}m')
v3.Shop:AddButton({
    Title = 'Cutlass',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cutlass')
    end,
})
v3.Shop:AddButton({
    Title = 'Katana',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Katana')
    end,
})
v3.Shop:AddButton({
    Title = 'Iron Mace',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Iron Mace')
    end,
})
v3.Shop:AddButton({
    Title = 'Duel Katana',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Duel Katana')
    end,
})
v3.Shop:AddButton({
    Title = 'Triple Katana',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Triple Katana')
    end,
})
v3.Shop:AddButton({
    Title = 'Pipe',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Pipe')
    end,
})
v3.Shop:AddButton({
    Title = 'Dual-Headed Blade',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Dual-Headed Blade')
    end,
})
v3.Shop:AddButton({
    Title = 'Bisento',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Bisento')
    end,
})
v3.Shop:AddButton({
    Title = 'Soul Cane',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Soul Cane')
    end,
})
v3.Shop:AddButton({
    Title = 'Pole V2',
    Description = '',
    Callback = function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer('ThunderGodTalk')
    end,
})
v3.Shop:AddSection('V\u{f5}')
v3.Shop:AddButton({
    Title = 'Black Leg',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
    end,
})
v3.Shop:AddButton({
    Title = 'Electro',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
    end,
})
v3.Shop:AddButton({
    Title = 'Fishman Karate',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')
    end,
})
v3.Shop:AddButton({
    Title = 'Dragon Claw',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
    end,
})
v3.Shop:AddButton({
    Title = 'Superhuman',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
    end,
})
v3.Shop:AddButton({
    Title = 'Death Step',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
    end,
})
v3.Shop:AddButton({
    Title = 'Sharkman Karate',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate', true)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
    end,
})
v3.Shop:AddButton({
    Title = 'Electric Claw',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
    end,
})
v3.Shop:AddButton({
    Title = 'Dragon Talon',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')
    end,
})
v3.Shop:AddButton({
    Title = 'Godhuman',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman')
    end,
})
v3.Shop:AddButton({
    Title = 'Sanguine Art',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySanguineArt')
    end,
})
v3.Shop:AddSection('Other')
v3.Shop:AddButton({
    Title = 'Reset Stats',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '2')
    end,
})
v3.Shop:AddButton({
    Title = 'Random Race',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '2')
    end,
})
v3.Shop:AddButton({
    Title = 'Change To Ghoul Race',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'Ectoplasm',
            'Change',
            4,
        }))
    end,
})
v3.Shop:AddButton({
    Title = 'Change To Cyborg Race',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CyborgTrainer',
            'Buy',
        }))
    end,
})
v3.Shop:AddButton({
    Title = 'Change to Draco',
    Description = 'Sea 3 Only',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))

        local v977 = Vector3.new(5814.42724609375, 1208.3267822265625, 884.5785522460938)
        local _LocalPlayer5 = game.Players.LocalPlayer
        local _Character9 = _LocalPlayer5.Character

        if not _Character9 then
            _Character9 = _LocalPlayer5.CharacterAdded:Wait()
        end

        repeat
            wait()
        until (_Character9.HumanoidRootPart.Position - v977).Magnitude < 1

        local v980 = {
            {
                NPC = 'Dragon Wizard',
                Command = 'DragonRace',
            },
        }

        game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/InteractDragonQuest'):InvokeServer(unpack(v980))
    end,
})
v3.Misc:AddButton({
    Title = 'Rejoin',
    Description = '',
    Callback = function()
        game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
    end,
})
v3.Misc:AddButton({
    Title = 'Hop Server',
    Description = '',
    Callback = function()
        Hop()
    end,
})

function Hop()
    local _PlaceId3 = game.PlaceId
    local u982 = {}
    local u983 = ''
    local _hour = os.date('!*t').hour

    function TPReturner()
        local v985

        if u983 ~= '' then
            v985 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId3 .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. u983))
        else
            v985 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId3 .. '/servers/Public?sortOrder=Asc&limit=100'))
        end
        if v985.nextPageCursor and (v985.nextPageCursor ~= 'null' and v985.nextPageCursor ~= nil) then
            u983 = v985.nextPageCursor
        end

        local v986, v987, v988 = pairs(v985.data)
        local v989 = 0

        while true do
            local v990

            v988, v990 = v986(v987, v988)

            if v988 == nil then
                break
            end

            local v991 = true
            local u992 = tostring(v990.id)

            if tonumber(v990.maxPlayers) > tonumber(v990.playing) then
                local v993, v994, v995 = pairs(u982)

                while true do
                    local v996

                    v995, v996 = v993(v994, v995)

                    if v995 == nil then
                        break
                    end
                    if v989 == 0 then
                        if tonumber(_hour) ~= tonumber(v996) then
                            pcall(function()
                                u982 = {}

                                table.insert(u982, _hour)
                            end)
                        end
                    elseif u992 == tostring(v996) then
                        v991 = false
                    end

                    v989 = v989 + 1
                end

                if v991 == true then
                    table.insert(u982, u992)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService('TeleportService'):TeleportToPlaceInstance(_PlaceId3, u992, game.Players.LocalPlayer)
                    end)
                    wait()
                end
            end
        end
    end

    _Sea = function()
        while wait() do
            pcall(function()
                TPReturner()

                if u983 ~= '' then
                    TPReturner()
                end
            end)
        end
    end

    _Sea()
end

v3.Misc:AddSection('Team')
v3.Misc:AddButton({
    Title = 'Pirates',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Pirates')
    end,
})
v3.Misc:AddButton({
    Title = 'Marines',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Marines')
    end,
})
v3.Misc:AddSection('Code')

local u997 = {
    'KITT_RESET',
    'Sub2UncleKizaru',
    'SUB2GAMERROBOT_RESET1',
    'Sub2Fer999',
    'Enyu_is_Pro',
    'JCWK',
    'StarcodeHEO',
    'MagicBus',
    'KittGaming',
    'Sub2CaptainMaui',
    'Sub2OfficalNoobie',
    'TheGreatAce',
    'Sub2NoobMaster123',
    'Sub2Daigrock',
    'Axiore',
    'StrawHatMaine',
    'TantaiGaming',
    'Bluxxy',
    'SUB2GAMERROBOT_EXP1',
    'Chandler',
    'NOMOREHACK',
    'BANEXPLOIT',
    'WildDares',
    'BossBuild',
    'GetPranked',
    'EARN_FRUITS',
    'FIGHT4FRUIT',
    'NOEXPLOITER',
    'NOOB2ADMIN',
    'CODESLIDE',
    'ADMINHACKED',
    'ADMINDARES',
    'fruitconcepts',
    'krazydares',
    'TRIPLEABUSE',
    'SEATROLLING',
    '24NOADMIN',
    'REWARDFUN',
    'NEWTROLL',
    'fudd10_v2',
    'Fudd10',
    'Bignews',
    'SECRET_ADMIN',
}

v3.Misc:AddButton({
    Title = 'Redeem All Code',
    Description = '',
    Callback = function()
        local v998, v999, v1000 = ipairs(u997)

        while true do
            local v1001

            v1000, v1001 = v998(v999, v1000)

            if v1000 == nil then
                break
            end

            RedeemCode(v1001)
        end
    end,
})

function RedeemCode(p1002)
    game:GetService('ReplicatedStorage').Remotes.Redeem:InvokeServer(p1002)
end

v3.Misc:AddSection('Titles')
v3.Misc:AddButton({
    Title = 'Titles',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'getTitles',
        }))

        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end,
})
v3.Misc:AddSection('Awakening')
v3.Misc:AddButton({
    Title = 'Awakening',
    Description = '',
    Callback = function()
        game:GetService('Players').LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
    end,
})
v3.Misc:AddSection('Misc')
v3.Misc:AddToggle('ToggleRejoin', {
    Title = 'Rejoin',
    Description = '',
    Default = true,
}):OnChanged(function(p1003)
    _G.AutoRejoin = p1003
end)
_Options.ToggleRejoin:SetValue(true)
spawn(function()
    while wait() do
        if _G.AutoRejoin then
            getgenv().rejoin = game:GetService('CoreGui').RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(p1004)
                if p1004.Name == 'ErrorPrompt' and p1004:FindFirstChild('MessageArea') and p1004.MessageArea:FindFirstChild('ErrorFrame') then
                    game:GetService('TeleportService'):Teleport(game.PlaceId)
                end
            end)
        end
    end
end)
v3.Misc:AddSection('Fog')

local function u1006()
    local _Lighting = game:GetService('Lighting')

    if _Lighting:FindFirstChild('BaseAtmosphere') then
        _Lighting.BaseAtmosphere:Destroy()
    end
    if _Lighting:FindFirstChild('SeaTerrorCC') then
        _Lighting.SeaTerrorCC:Destroy()
    end
    if _Lighting:FindFirstChild('LightingLayers') then
        if _Lighting.LightingLayers:FindFirstChild('Atmosphere') then
            _Lighting.LightingLayers.Atmosphere:Destroy()
        end

        wait()

        if _Lighting.LightingLayers:FindFirstChild('DarkFog') then
            _Lighting.LightingLayers.DarkFog:Destroy()
        end
    end

    _Lighting.FogEnd = 100000
end

v3.Misc:AddButton({
    Title = 'Th\u{1ee9}c T\u{1ec9}nh',
    Description = '',
    Callback = function()
        u1006()
    end,
})
v3.Misc:AddToggle('ToggleAntiBand', {
    Title = 'Anti Ban',
    Description = '',
    Default = true,
}):OnChanged(function(p1007)
    _G.AntiBand = p1007
end)

local u1008 = {17884881, 120173604, 912348}

spawn(function()
    while wait() do
        if _G.AntiBand then
            local v1009, v1010, v1011 = pairs(game:GetService('Players'):GetPlayers())

            while true do
                local v1012

                v1011, v1012 = v1009(v1010, v1011)

                if v1011 == nil then
                    break
                end
                if table.find(u1008, v1012.UserId) then
                    Hop()
                end
            end
        end
    end
end)
v3.Sea:AddSection('Leviathan')
v3.Sea:AddButton({
    Title = 'Buy Leviathan Chip',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('InfoLeviathan', '2')
    end,
})

local _ToggleTPFrozenDimension = v3.Sea:AddToggle('ToggleTPFrozenDimension', {
    Title = 'Fly To Frozen Dimension',
    Description = '',
    Default = false,
})

_ToggleTPFrozenDimension:OnChanged(function(p1014)
    _G.TweenToFrozenDimension = p1014
end)
_ToggleTPFrozenDimension:SetValue(false)
spawn(function()
    local v1015 = nil

    while not v1015 do
        v1015 = game:GetService('Workspace').Map:FindFirstChild('FrozenDimension')

        wait()
    end
    while wait() do
        if _G.TweenToFrozenDimension and v1015 then
            Tween(v1015.CFrame)
        end
    end
end)

if Sea3 then
    local u1016 = v3.Sea:AddParagraph({
        Title = 'Leviathan Chip Status',
        Content = '',
    })

    spawn(function()
        pcall(function()
            while wait() do
                local _InfoLeviathan = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('InfoLeviathan', '1')

                if _InfoLeviathan == 5 then
                    u1016:SetDesc('Leviathan Is Out There')
                elseif _InfoLeviathan == 0 then
                    u1016:SetDesc("I Don't Know")
                else
                    u1016:SetDesc('Mua: ' .. tostring(_InfoLeviathan))
                end
            end
        end)
    end)
end

local _Draco = v3.Sea:AddSection('Draco')

v3.Sea:AddToggle('ToggleBlazeEmber', {
    Title = 'Auto Blaze Ember',
    Description = '',
    Default = false,
}):OnChanged(function(p1019)
    _G.AutoBlazeEmber = p1019
end)
spawn(function()
    while wait() do
        if _G.AutoBlazeEmber then
            pcall(function()
                game:GetService('ReplicatedStorage'):WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/DragonDojoEmber'):FireServer()
            end)
        end
    end
end)
v3.Sea:AddToggle('ToggleReceiveQuest', {
    Title = 'Get Blaze Ember Quest',
    Description = '',
    Default = false,
}):OnChanged(function(p1020)
    _G.AutoReceiveQuest = p1020

    if _G.AutoReceiveQuest then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
        spawn(function()
            pcall(function()
                while wait() do
                    game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/DragonHunter'):InvokeServer(unpack({
                        {
                            Context = 'RequestQuest',
                        },
                    }))
                    game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/DragonHunter'):InvokeServer(unpack({
                        {
                            Context = 'Check',
                        },
                    }))
                end
            end)
        end)
    end
end)

local u1021 = v3.Sea:AddParagraph({
    Title = 'Blaze Ember Quest Status',
    Content = '',
})

spawn(function()
    pcall(function()
        while wait() do
            local v1022 = game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/DragonHunter'):InvokeServer(unpack({
                {
                    Context = 'Check',
                },
            }))

            if typeof(v1022) ~= 'table' then
                print(v1022)
            else
                local v1023, v1024, v1025 = pairs(v1022)

                while true do
                    local v1026

                    v1025, v1026 = v1023(v1024, v1025)

                    if v1025 == nil then
                        break
                    end
                    if v1026 == 'Defeat 3 Venomous Assailants on Hydra Island.' then
                        u1021:SetDesc('Defeat 3 Venomous Assailants on Hydra Island.')
                    elseif v1026 == 'Defeat 3 Hydra Enforcers on Hydra Island.' then
                        u1021:SetDesc('Defeat 3 Hydra Enforcers on Hydra Island.')
                    elseif v1026 == 'Destroy 10 trees on Hydra Island.' then
                        u1021:SetDesc('Destroy 10 trees on Hydra Island.')
                    end
                end
            end
        end
    end)
end)
v3.Sea:AddToggle('ToggleHydraTree', {
    Title = 'Destroy trees at Hydra Island',
    Description = '',
    Default = false,
}):OnChanged(function(p1027)
    _G.AutoHydraTree = p1027
end)

local function u1030(p1028)
    local _VirtualInputManager2 = game:GetService('VirtualInputManager')

    _VirtualInputManager2:SendKeyEvent(true, p1028, false, game)
    _VirtualInputManager2:SendKeyEvent(false, p1028, false, game)
end
local function u1042(p1031)
    local _LocalPlayer6 = game.Players.LocalPlayer
    local _Backpack = _LocalPlayer6.Backpack
    local v1034, v1035, v1036 = pairs(_Backpack:GetChildren())

    while true do
        local v1037

        v1036, v1037 = v1034(v1035, v1036)

        if v1036 == nil then
            break
        end
        if v1037:IsA('Tool') and v1037.ToolTip == p1031 then
            v1037.Parent = _LocalPlayer6.Character

            local v1038, v1039, v1040 = ipairs({
                'Z',
                'X',
                'C',
                'V',
                'F',
            })

            while true do
                local u1041

                v1040, u1041 = v1038(v1039, v1040)

                if v1040 == nil then
                    break
                end

                wait()
                pcall(function()
                    u1030(u1041)
                end)
            end

            v1037.Parent = _Backpack

            break
        end
    end
end

local u1043 = {
    CFrame.new(5288.61962890625, 1005.4000244140625, 392.43011474609375),
    CFrame.new(5343.39453125, 1004.1998901367188, 361.0687561035156),
    CFrame.new(5235.78564453125, 1004.1998901367188, 431.4530944824219),
    CFrame.new(5321.30615234375, 1004.1998901367188, 440.8951416015625),
    CFrame.new(5258.96484375, 1004.1998901367188, 345.5052490234375),
}

spawn(function()
    while wait() do
        if _G.AutoHydraTree then
            AutoHaki()

            local v1044, v1045, v1046 = ipairs(u1043)

            while true do
                local v1047

                v1046, v1047 = v1044(v1045, v1046)

                if v1046 == nil or not _G.AutoHydraTree then
                    break
                end

                Tween2(v1047)
                wait()

                local _Character10 = game.Players.LocalPlayer.Character

                if _Character10 and (_Character10:FindFirstChild('HumanoidRootPart') and (_Character10.HumanoidRootPart.Position - v1047.Position).Magnitude <= 1) then
                    u1042('Melee')
                    u1042('Sword')
                    u1042('Gun')
                end
            end
        end
    end
end)
_Draco:AddButton({
    Title = 'Teleport To Dragon Dojo',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
    end,
})
_Draco:AddButton({
    Title = 'Craft Volcanic Magnet',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CraftItem',
            'Craft',
            'Volcanic Magnet',
        }))
    end,
})
v3.Sea:AddToggle('ToggleCollectFireFlowers', {
    Title = 'Collect Fire Flowers',
    Description = '',
    Default = false,
}):OnChanged(function(p1049)
    _G.AutoCollectFireFlowers = p1049
end)
spawn(function()
    while wait() do
        local v1050 = _G.AutoCollectFireFlowers and workspace:FindFirstChild('FireFlowers')

        if v1050 then
            local v1051, v1052, v1053 = pairs(v1050:GetChildren())

            while true do
                local v1054

                v1053, v1054 = v1051(v1052, v1053)

                if v1053 == nil then
                    break
                end
                if v1054:IsA('Model') and v1054.PrimaryPart then
                    local _Position9 = v1054.PrimaryPart.Position

                    if (_Position9 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1 then
                        Tween2(CFrame.new(_Position9))
                    else
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                        wait(1.5)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'E', false, game)
                    end
                end
            end
        end
    end
end)
v3.Sea:AddToggle('ToggleWhiteBelt', {
    Title = 'Ato White Belt',
    Description = '',
    Default = false,
}):OnChanged(function(p1056)
    _G.AutoLevel = p1056

    if p1056 then
        game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/InteractDragonQuest'):InvokeServer(unpack({
            {
                NPC = 'Dojo Trainer',
                Command = 'RequestQuest',
            },
        }))
        spawn(function()
            while _G.AutoLevel do
                game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/InteractDragonQuest'):InvokeServer(unpack({
                    {
                        NPC = 'Dojo Trainer',
                        Command = 'ClaimQuest',
                    },
                }))
                wait()
            end
        end)
    end
end)
v3.Sea:AddParagraph({
    Title = 'Draco Race',
    Content = '',
})
v3.Sea:AddToggle('ToggleTrialTeleport', {
    Title = 'Fly To Trial Door',
    Description = '',
    Default = false,
}):OnChanged(function(p1057)
    _G.AutoTrialTeleport = p1057
end)
spawn(function()
    while wait() do
        if _G.AutoTrialTeleport then
            local _TrialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild('TrialTeleport')

            if _TrialTeleport and _TrialTeleport:IsA('Part') then
                Tween2(CFrame.new(_TrialTeleport.Position))
            end
        end
    end
end)
v3.Sea:AddSection('Prehistoric Island')

local u1059 = v3.Sea:AddParagraph({
    Title = 'Prehistoric Island Status',
    Content = '',
})

spawn(function()
    pcall(function()
        while wait() do
            if ggame:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland') then
                u1059:SetDesc('Prehistoric Island: \u{2705}\u{fe0f}')
            else
                u1059:SetDesc('Prehistoric Island: \u{274c}\u{fe0f}')
            end
        end
    end)
end)
v3.Sea:AddToggle('ToggleTPVolcano', {
    Title = 'Fly To Prehistoric Island',
    Description = '',
    Default = false,
}):OnChanged(function(p1060)
    _G.TweenToPrehistoric = p1060
end)
_Options.ToggleTPVolcano:SetValue(false)
spawn(function()
    local v1061 = nil

    while not v1061 do
        v1061 = game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        wait()
    end
    while wait() do
        local v1062 = _G.TweenToPrehistoric and game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        if v1062 then
            local _Core = v1062:FindFirstChild('Core')

            if _Core then
                _Core = v1062.Core:FindFirstChild('PrehistoricRelic')
            end
            if _Core then
                _Core = _Core:FindFirstChild('Skull')
            end
            if _Core then
                Tween2(CFrame.new(_Core.Position))

                _G.TweenToPrehistoric = false
            end
        end
    end
end)
v3.Sea:AddToggle('ToggleDefendVolcano', {
    Title = 'Safe',
    Description = '',
    Default = false,
}):OnChanged(function(p1064)
    _G.AutoDefendVolcano = p1064
end)
v3.Sea:AddToggle('ToggleMelee', {
    Title = 'Use Melee',
    Description = '',
    Default = false,
}):OnChanged(function(p1065)
    _G.UseMelee = p1065
end)
v3.Sea:AddToggle('ToggleSword', {
    Title = 'Use Sword',
    Description = '',
    Default = false,
}):OnChanged(function(p1066)
    _G.UseSword = p1066
end)
v3.Sea:AddToggle('ToggleGun', {
    Title = 'Use Gun',
    Description = '',
    Default = false,
}):OnChanged(function(p1067)
    _G.UseGun = p1067
end)

local function u1069(p1068)
    game:GetService('VirtualInputManager'):SendKeyEvent(true, p1068, false, game)
    game:GetService('VirtualInputManager'):SendKeyEvent(false, p1068, false, game)
end
local function u1085()
    local _InteriorLava = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild('InteriorLava')

    if _InteriorLava and _InteriorLava:IsA('Model') then
        _InteriorLava:Destroy()
    end

    local _PrehistoricIsland = game.Workspace.Map:FindFirstChild('PrehistoricIsland')

    if _PrehistoricIsland then
        local v1072, v1073, v1074 = pairs(_PrehistoricIsland:GetDescendants())

        while true do
            local v1075

            v1074, v1075 = v1072(v1073, v1074)

            if v1074 == nil then
                break
            end
            if v1075:IsA('Part') and v1075.Name:lower():find('lava') then
                v1075:Destroy()
            end
        end
    end

    local _PrehistoricIsland2 = game.Workspace.Map:FindFirstChild('PrehistoricIsland')

    if _PrehistoricIsland2 then
        local v1077, v1078, v1079 = pairs(_PrehistoricIsland2:GetDescendants())

        while true do
            local v1080

            v1079, v1080 = v1077(v1078, v1079)

            if v1079 == nil then
                break
            end
            if v1080:IsA('Model') then
                local v1081, v1082, v1083 = pairs(v1080:GetDescendants())

                while true do
                    local v1084

                    v1083, v1084 = v1081(v1082, v1083)

                    if v1083 == nil then
                        break
                    end
                    if v1084:IsA('MeshPart') and v1084.Name:lower():find('lava') then
                        v1084:Destroy()
                    end
                end
            end
        end
    end
end
local function u1093()
    local _VolcanoRocks = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks
    local v1087, v1088, v1089 = pairs(_VolcanoRocks:GetChildren())

    while true do
        local v1090

        v1089, v1090 = v1087(v1088, v1089)

        if v1089 == nil then
            break
        end
        if v1090:IsA('Model') then
            local _volcanorock = v1090:FindFirstChild('volcanorock')

            if _volcanorock and _volcanorock:IsA('MeshPart') then
                local _Color = _volcanorock.Color

                if _Color == Color3.fromRGB(185, 53, 56) or _Color == Color3.fromRGB(185, 53, 57) then
                    return _volcanorock
                end
            end
        end
    end

    return nil
end
local function u1105(p1094)
    local _LocalPlayer7 = game.Players.LocalPlayer
    local _Backpack2 = _LocalPlayer7.Backpack
    local v1097, v1098, v1099 = pairs(_Backpack2:GetChildren())

    while true do
        local v1100

        v1099, v1100 = v1097(v1098, v1099)

        if v1099 == nil then
            break
        end
        if v1100:IsA('Tool') and v1100.ToolTip == p1094 then
            v1100.Parent = _LocalPlayer7.Character

            local v1101, v1102, v1103 = ipairs({
                'Z',
                'X',
                'C',
                'V',
                'F',
            })

            while true do
                local u1104

                v1103, u1104 = v1101(v1102, v1103)

                if v1103 == nil then
                    break
                end

                wait()
                pcall(function()
                    u1069(u1104)
                end)
            end

            v1100.Parent = _Backpack2

            break
        end
    end
end

spawn(function()
    while wait() do
        if _G.AutoDefendVolcano then
            AutoHaki()
            pcall(u1085)

            local v1106 = u1093()

            if v1106 then
                local v1107 = CFrame.new(v1106.Position + Vector3.new(0, 0, 0))

                Tween2(v1107)

                local _Color2 = v1106.Color

                if _Color2 == Color3.fromRGB(185, 53, 56) or _Color2 == Color3.fromRGB(185, 53, 57) then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1106.Position - Vector3.new(0, 0, 0)).Magnitude <= 1 then
                        if _G.UseMelee then
                            u1105('Melee')
                        end
                        if _G.UseSword then
                            u1105('Sword')
                        end
                        if _G.UseGun then
                            u1105('Gun')
                        end
                    end

                    _G.TweenToPrehistoric = false
                else
                    u1093()
                end
            else
                _G.TweenToPrehistoric = true
            end
        end
    end
end)
v3.Sea:AddToggle('ToggleKillAura', {
    Title = 'Attack Golems Aura',
    Description = '',
    Default = false,
}):OnChanged(function(p1109)
    KillAura = p1109
end)
_Options.ToggleKillAura:SetValue(false)
spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                local v1110, v1111, v1112 = pairs(game.Workspace.Enemies:GetDescendants())

                while true do
                    local v1113

                    v1112, v1113 = v1110(v1111, v1112)

                    if v1112 == nil then
                        break
                    end
                    if v1113:FindFirstChild('Humanoid') and (v1113:FindFirstChild('HumanoidRootPart') and v1113.Humanoid.Health > 0) then
                        repeat
                            task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)

                            v1113.Humanoid.Health = 0
                            v1113.HumanoidRootPart.CanCollide = false
                        until not KillAura or (not v1113.Parent or v1113.Humanoid.Health <= 0)
                    end
                end
            end)
        end
    end
end)
v3.Sea:AddToggle('ToggleCollectBone', {
    Title = 'Collect Bone',
    Description = '',
    Default = false,
}):OnChanged(function(p1114)
    _G.AutoCollectBone = p1114
end)
spawn(function()
    while wait() do
        if _G.AutoCollectBone then
            local v1115, v1116, v1117 = pairs(workspace:GetDescendants())

            while true do
                local v1118

                v1117, v1118 = v1115(v1116, v1117)

                if v1117 == nil then
                    break
                end
                if v1118:IsA('BasePart') and v1118.Name == 'DinoBone' then
                    Tween2(CFrame.new(v1118.Position))
                end
            end
        end
    end
end)
v3.Sea:AddToggle('ToggleCollectEgg', {
    Title = 'Collect Dragon Egg',
    Description = '',
    Default = false,
}):OnChanged(function(p1119)
    _G.AutoCollectEgg = p1119
end)
spawn(function()
    while wait() do
        if _G.AutoCollectEgg then
            local v1120 = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren()

            if #v1120 > 0 then
                local v1121 = v1120[math.random(1, #v1120)]

                if v1121:IsA('Model') and v1121.PrimaryPart then
                    Tween2(v1121.PrimaryPart.CFrame)

                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1121.PrimaryPart.Position).Magnitude <= 1 then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                        wait(1.5)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'E', false, game)
                    end
                end
            end
        end
    end
end)
