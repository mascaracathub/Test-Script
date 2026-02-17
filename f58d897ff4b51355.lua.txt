-- ts file was generated at discord.gg/25ms

local u1 = loadstring(game:HttpGet('https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua'))()
local v2 = u1:CreateWindow({
    Title = 'Monster Hub',
    SubTitle = 'By Monster Roblox',
    TabWidth = 160,
    Theme = 'Aqua',
    Acrylic = false,
    Size = UDim2.fromOffset(500, 320),
    MinimizeKey = Enum.KeyCode.End,
})
local u3 = {
    Info = v2:AddTab({
        Title = 'Tab Th\u{f4}ng Tin',
    }),
    Main = v2:AddTab({
        Title = 'Tab C\u{e0}y',
    }),
    Sea = v2:AddTab({
        Title = 'Tab S\u{1ef1} Ki\u{1ec7}n V\u{e0} Bi\u{1ec3}n',
    }),
    Item = v2:AddTab({
        Title = 'Tab V\u{1ead}t Ph\u{1ea9}m',
    }),
    Setting = v2:AddTab({
        Title = 'Tab C\u{e0}i \u{110}\u{1eb7}t',
    }),
    Status = v2:AddTab({
        Title = 'Tab M\u{e1}y Ch\u{1ee7}',
    }),
    Stats = v2:AddTab({
        Title = 'Tab Ch\u{1ec9} S\u{1ed1}',
    }),
    Player = v2:AddTab({
        Title = 'Tab Ng\u{1b0}\u{1edd}i Ch\u{1a1}i',
    }),
    Teleport = v2:AddTab({
        Title = 'Tab D\u{1ecb}ch Chuy\u{1ec3}n',
    }),
    Visual = v2:AddTab({
        Title = 'Tab Th\u{1ecb} Gi\u{e1}c',
    }),
    Fruit = v2:AddTab({
        Title = 'Tab Tr\u{e1}i V\u{e0} \u{110}\u{1ecb}nh V\u{1ecb}',
    }),
    Raid = v2:AddTab({
        Title = 'Tab T\u{1ead}p K\u{ed}ch',
    }),
    Race = v2:AddTab({
        Title = 'Tab T\u{1ed9}c V4',
    }),
    Shop = v2:AddTab({
        Title = 'Tab C\u{1eed}a H\u{e0}ng',
    }),
    Misc = v2:AddTab({
        Title = ' Tab Kh\u{e1}c',
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
            CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-8, -0.999978542, 2.04920472e-8, 1, 4.51620679e-8, 0.999978542, -2.01955679e-8, -0.00655503059)
            CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -0.000013950732, -0.208259016, -1.08073925e-6, 1, -0.0000720630269, 0.208259016, 0.0000707080399, 0.978073597)
        elseif _Value == 2000 or (_Value <= 2024 or SelectMonster == 'Living Zombie') then
            Ms = 'Living Zombie'
            NameQuest = 'HauntedQuest1'
            QuestLv = 2
            NameMon = 'Living Zombie'
            CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-8, -0.999978542, 2.04920472e-8, 1, 4.51620679e-8, 0.999978542, -2.01955679e-8, -0.00655503059)
            CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.7754714099999998e-8, 0.0324240364, -2.58006327e-8, 1, -6.06848474e-8, -0.0324240364, 5.98163865e-8, 0.999474227)
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
            CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, 0, -0.997525156, 0, 1.00000012, 0, 0.997525275, 0, -0.0703101456)
        elseif _Value == 2150 or (_Value <= 2199 or SelectMonster == 'Ice Cream Commander') then
            Ms = 'Ice Cream Commander'
            NameQuest = 'IceCreamIslandQuest'
            QuestLv = 2
            NameMon = 'Ice Cream Commander'
            CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, 0, -0.997525156, 0, 1.00000012, 0, 0.997525275, 0, -0.0703101456)
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
            CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, 0, -0.308980465, 0, 1, 0, 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -0.254443765, 0, -0.967087567, 0, 1, 0, 0.967087567, 0, -0.254443765)
        elseif _Value == 2275 or (_Value <= 2299 or SelectMonster == 'Head Baker') then
            Ms = 'Head Baker'
            NameQuest = 'CakeQuest2'
            QuestLv = 2
            NameMon = 'Head Baker'
            CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, 0, -0.308980465, 0, 1, 0, 0.308980465, 0, 0.951068401)
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
            CFrameMon = CFrame.new(-140.258301, 25.5824986, -12652.3115, 0.173624337, 0, -0.984811902, 0, 1, 0, 0.984811902, 0, 0.173624337)
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
            CFrameMon = CFrame.new(-1437.56348, 17.1481285, -14385.6934, 0.173624337, 0, -0.984811902, 0, 1, 0, 0.984811902, 0, 0.173624337)
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
                                            CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -0.0000280422337, -0.939682961, 0.00181045406, 0.342041939)
                                            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
                                        end
                                    else
                                        BossMon = 'Warden'
                                        NameBoss = 'Warden'
                                        NameQuestBoss = 'ImpelQuest'
                                        QuestLvBoss = 1
                                        RewardBoss = 'Reward:\n$6,000\n850,000 Exp.'
                                        CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.4994640100000005e-6, 0.975376427, -0.0000195412576, 1, 9.031620720000001e-6, -0.975376427, -0.0000210519756, 0.220546961)
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
                                                    if SelectMaterial == 'Mini Tusk' then
                                                        MMon = 'Mythological Pirate'
                                                        MPos = CFrame.new()
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
    local v172 = 350
    local v173 = TweenInfo.new(_Magnitude / v172, Enum.EasingStyle.Linear)
    local v174 = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, v173, {CFrame = p170})

    v174:Play()

    if _G.StopTween2 then
        v174:Cancel()
    end

    _G.Clip2 = true

    wait(_Magnitude / v172)

    _G.Clip2 = false
end
function BKP(p175)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p175

    task.wait()

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p175
end

TweenSpeed = 350

function Tween(p176)
    local _Magnitude2 = (p176.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local v178 = TweenSpeed
    local v179 = TweenInfo.new(_Magnitude2 / v178, Enum.EasingStyle.Linear)
    local v180 = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, v179, {CFrame = p176})

    v180:Play()

    if _G.StopTween then
        v180:Cancel()
    end
end
function EquipTool(p181)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(p181) then
        local v182 = game.Players.LocalPlayer.Backpack:FindFirstChild(p181)

        wait()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v182)
    end
end

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoEvoRace or (_G.CastleRaid or (_G.CollectAzure or (_G.TweenToKitsune or (_G.GhostShip or (_G.Ship or (_G.Auto_Holy_Torch or (_G.TeleportPly or (_G.Auto_Sea3 or (_G.Auto_Sea2 or (_G.Tweenfruit or (_G.AutoFishCrew or (_G.Auto_Saber or (_G.AutoShark or (_G.Auto_Warden or (_G.Auto_RainbowHaki or (AutoFarmRace or (_G.AutoQuestRace or (Auto_Law or (AutoTushita or (_G.AutoHolyTorch or (_G.AutoTerrorshark or (_G.farmpiranya or (_G.Auto_MusketeerHat or (_G.Auto_ObservationV2 or (_G.AutoNear or (_G.Auto_PoleV1 or (_G.Auto_Buddy or (_G.Ectoplasm or (AutoEvoRace or (AutoBartilo or (_G.Auto_Canvander or (_G.AutoLevel or (_G.Auto_DualKatana or (Auto_Quest_Yama_3 or (Auto_Quest_Yama_2 or (Auto_Quest_Yama_1 or (Auto_Quest_Tushita_1 or (Auto_Quest_Tushita_2 or (Auto_Quest_Tushita_3 or (_G.Clip2 or (_G.Auto_Regoku or (_G.AutoBone or (_G.AutoBoneNoQuest or (_G.AutoBoss or (AutoFarmMasDevilFruit or (AutoFarmMasGun or (AutoHallowSycthe or (AutoTushita or (_G.Cake or (_G.Auto_SkullGuitar or (_G.AutoFarmSwan or (_G.AutoEliteor or (AutoNextIsland or (Musketeer or (_G.AutoMaterial or (AutoFarmRaceQuest or (_G.Factory or (_G.Auto_Saw or (_G.AutoFrozenDimension or (_G.AutoKillTrial or (_G.AutoUpgrade or _G.TweenToFrozenDimension))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
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
            if _G.AutoEvoRace or (_G.Auto_RainbowHaki or (_G.Auto_SkullGuitar or (_G.CastleRaid or (_G.CollectAzure or (_G.TweenToKitsune or (_G.Auto_Sea3 or (_G.Auto_Sea2 or (_G.GhostShip or (_G.Ship or (_G.Auto_Holy_Torch or (_G.TeleportPly or (_G.Tweenfruit or (_G.Auto_Saber or (_G.Auto_PoleV1 or (_G.Auto_MusketeerHat or (_G.AutoFishCrew or (_G.AutoShark or (AutoFarmRace or (_G.AutoQuestRace or (_G.Auto_Warden or (Auto_Law or (_G.Auto_DualKatana or (Auto_Quest_Tushita_1 or (Auto_Quest_Tushita_2 or (Auto_Quest_Tushita_3 or (AutoTushita or (_G.AutoHolyTorch or (_G.Auto_Buddy or (_G.AutoTerrorshark or (_G.farmpiranya or (Auto_Quest_Yama_3 or (_G.Auto_ObservationV2 or (Auto_Quest_Yama_2 or (Auto_Quest_Yama_1 or (_G.AutoNear or (_G.Ectoplasm or (AutoEvoRace or (_G.AutoKillTrial or (AutoBartilo or (AutoFarmMasGun or (_G.Auto_Regoku or (_G.AutoLevel or (_G.Clip2 or (_G.AutoBone or (_G.Auto_Canvander or (_G.AutoBoneNoQuest or (_G.AutoBoss or (_G.Auto_Saw or (AutoFarmMasDevilFruit or (AutoHallowSycthe or (AutoTushita or (_G.Cake or (_G.AutoFarmSwan or (_G.AutoEliteor or (AutoNextIsland or (Musketeer or (_G.AutoMaterial or (_G.Factory or (_G.AutoFrozenDimension or (AutoFarmRaceQuest or (_G.AutoUpgrade or _G.TweenToFrozenDimension))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                local v184, v185, v186 = pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants())

                while true do
                    local v187

                    v186, v187 = v184(v185, v186)

                    if v186 == nil then
                        break
                    end
                    if v187:IsA('BasePart') then
                        v187.CanCollide = false
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

function CheckMaterial(p188)
    local v189, v190, v191 = pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))

    while true do
        local v192

        v191, v192 = v189(v190, v191)

        if v191 == nil then
            break
        end
        if type(v192) == 'table' and (v192.Type == 'Material' and v192.Name == p188) then
            return v192.Count
        end
    end

    return 0
end
function GetWeaponInventory(p193)
    local v194, v195, v196 = pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))

    while true do
        local v197

        v196, v197 = v194(v195, v196)

        if v196 == nil then
            break
        end
        if type(v197) == 'table' and (v197.Type == 'Sword' and v197.Name == p193) then
            return true
        end
    end

    return false
end

local _LocalPlayer = game.Players.LocalPlayer

function AttackNoCoolDown()
    local _Character = _LocalPlayer.Character

    if not _Character then
        return
    end

    local v200, v201, v202 = ipairs(_Character:GetChildren())
    local v203 = nil

    while true do
        local u204

        v202, u204 = v200(v201, v202)

        if v202 == nil then
            u204 = v203

            break
        end
        if u204:IsA('Tool') then
            break
        end
    end

    if u204 then
        local function u207(p205)
            local v206 = p205 and p205:FindFirstChild('Humanoid')

            if v206 then
                v206 = p205.Humanoid.Health > 0
            end

            return v206
        end
        local function v217(p208)
            local v209 = game:GetService('Workspace').Enemies:GetChildren()
            local _Position = _Character:GetPivot().Position
            local v211, v212, v213 = ipairs(v209)
            local v214 = {}

            while true do
                local v215

                v213, v215 = v211(v212, v213)

                if v213 == nil then
                    break
                end

                local _HumanoidRootPart = v215:FindFirstChild('HumanoidRootPart')

                if _HumanoidRootPart and (u207(v215) and (_HumanoidRootPart.Position - _Position).Magnitude <= p208) then
                    table.insert(v214, v215)
                end
            end

            return v214
        end

        if u204:FindFirstChild('LeftClickRemote') then
            local v218 = v217(60)
            local v219, v220, v221 = ipairs(v218)
            local u222 = 1

            while true do
                local v223

                v221, v223 = v219(v220, v221)

                if v221 == nil then
                    break
                end

                local _Unit = (v223.HumanoidRootPart.Position - _Character:GetPivot().Position).Unit

                pcall(function()
                    u204.LeftClickRemote:FireServer(_Unit, u222)
                end)

                local v225 = u222 + 1

                u222 = v225 > 1000000000 and 1 or v225
            end
        else
            local v226 = game:GetService('Workspace').Enemies:GetChildren()
            local _Position2 = _Character:GetPivot().Position
            local v228, v229, v230 = ipairs(v226)
            local v231 = u207
            local u232 = {}
            local u233 = nil

            while true do
                local v234, v235 = v228(v229, v230)

                if v234 == nil then
                    break
                end

                v230 = v234

                if not v235:GetAttribute('IsBoat') and v231(v235) then
                    local _Head = v235:FindFirstChild('Head')

                    if _Head and (_Position2 - _Head.Position).Magnitude <= 60 then
                        table.insert(u232, {v235, _Head})

                        u233 = _Head
                    end
                end
            end

            if not u233 then
                return
            end

            pcall(function()
                local _ReplicatedStorage = game:GetService('ReplicatedStorage')
                local _RERegisterAttack = _ReplicatedStorage:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/RegisterAttack')
                local _RERegisterHit = _ReplicatedStorage:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/RegisterHit')

                if #u232 <= 0 then
                    task.wait(1e-9)
                else
                    _RERegisterAttack:FireServer(1e-9)
                    _RERegisterHit:FireServer(u233, u232)
                end
            end)
        end
    end
end

Type = 1

spawn(function()
    while wait() do
        if Type == 1 then
            Pos = CFrame.new(0, 20, 0)
        end
    end
end)
spawn(function()
    while wait() do
        Type = 1
    end
end)

function AutoHaki()
    if not game:GetService('Players').LocalPlayer.Character:FindFirstChild('HasBuso') then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Buso')
    end
end
function to(p240)
    repeat
        wait(_G.Fast_Delay)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p240

        task.wait()

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p240
    until (p240.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end
function to(p241)
    pcall(function()
        if (p241.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and (not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0) then
            if NameMon ~= 'FishmanQuest' then
                if Mon ~= "God's Guard" then
                    if NameMon ~= 'SkyExp1Quest' then
                        if NameMon ~= 'ShipQuest1' then
                            if NameMon ~= 'ShipQuest2' then
                                if NameMon ~= 'FrostQuest' then
                                    repeat
                                        wait(_G.Fast_Delay)

                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p241

                                        wait(0.05)
                                        game.Players.LocalPlayer.Character.Head:Destroy()

                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p241
                                    until (p241.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0

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
_ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_ImageButton.BorderSizePixel = 0
_ImageButton.Position = UDim2.new(0.020833336999999993, 0, 0.10528908129999999, 0)
_ImageButton.Size = UDim2.new(0, 50, 0, 50)
_ImageButton.Draggable = true
_ImageButton.Image = 'http://www.roblox.com/asset/?id=98977023494737'
_UICorner.Parent = _ImageButton
_UICorner.CornerRadius = UDim.new(1, 10)
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

local v247 = _TweenService
local u248 = _TweenService.Create(v247, _ImageButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0})

_ImageButton.MouseButton1Down:Connect(function()
    _ParticleEmitter.Rate = 100

    task.delay(1, function()
        _ParticleEmitter.Rate = 0
    end)
    u248:Play()
    game:GetService('VirtualInputManager'):SendKeyEvent(true, Enum.KeyCode.End, false, game)
    u248.Completed:Connect(function()
        _ImageButton.Rotation = 0
    end)

    local v249 = _TweenService:Create(_ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 60, 0, 60),
    })

    v249:Play()
    v249.Completed:Connect(function()
        _TweenService:Create(_ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 50, 0, 50),
        }):Play()
    end)
end)
task.defer(function()
    if game:GetService('ReplicatedStorage'):FindFirstChild('Effect') and (game:GetService('ReplicatedStorage').Effect:FindFirstChild('Container') and game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Death')) then
        local v250 = require(game:GetService('ReplicatedStorage').Effect.Container.Death)
        local v251 = require(game:GetService('ReplicatedStorage').Util.CameraShaker)

        if v251 then
            v251:Stop()
        end
        if hookfunction then
            hookfunction(v250, function(...)
                return ...
            end)
        end
    end
end)
u3.Info:AddButton({
    Title = 'Monster Hub',
    Description = 'Discord',
    Callback = function()
        setclipboard(tostring('https://discord.gg/hackercommunity'))
    end,
})
u3.Info:AddButton({
    Title = 'Monster Roblox',
    Description = 'Youtube',
    Callback = function()
        setclipboard(tostring('https://youtube.com/@monster_mythic?si=V4mZqAJWeaQLg2nQ'))
    end,
})
u3.Info:AddButton({
    Title = 'Monster Roblox',
    Description = 'Tiktok',
    Callback = function()
        setclipboard(tostring('https://www.tiktok.com/@monster_roblox123?_t=ZS-8uVGjEToZmL&_r=1'))
    end,
})
u3.Info:AddParagraph({
    Title = 'Ph\u{e1}t tri\u{1ec3}n Monster',
    Content = 'K\u{129} N\u{103}ng: Del c\u{f3}',
})

local v252 = nil

if identifyexecutor then
    v252 = identifyexecutor()
elseif getexecutorname then
    v252 = getexecutorname()
end
if v252 then
    u3.Info:AddParagraph({
        Title = 'Client \u{110}ang D\u{f9}ng',
        Content = v252,
    })
end

u3.Info:AddParagraph({
    Title = 'C\u{1ead}p Nh\u{1ead}t',
    Content = 'T\u{f4}i s\u{1ebd} C\u{1ead}p nh\u{1ead}t nhi\u{1ec1}u t\u{ed}nh n\u{103}ng h\u{1a1}n trong t\u{1b0}\u{1a1}ng lai',
})
u3.Info:AddParagraph({
    Title = 'C\u{e1}c Client Android v\u{e0} Ios H\u{1ed7} Tr\u{1ee3}',
    Content = 'T\u{1ea5}t C\u{1ea3} Client Android v\u{e0} Ios ',
})
u3.Info:AddParagraph({
    Title = 'C\u{e1}c Client Pc H\u{1ed7} Tr\u{1ee3}',
    Content = 'T\u{1ea5}t C\u{1ea3} Client Pc',
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

local _DropdownSelectWeapon = u3.Main:AddDropdown('DropdownSelectWeapon', {
    Title = 'Ch\u{1ecd}n V\u{169} Kh\u{ed}',
    Description = '',
    Values = {
        'Melee',
        'Sword',
        'Blox Fruit',
    },
    Multi = false,
    Default = 1,
})

_DropdownSelectWeapon:SetValue('Melee')
_DropdownSelectWeapon:OnChanged(function(p254)
    ChooseWeapon = p254
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if ChooseWeapon ~= 'Melee' then
                if ChooseWeapon ~= 'Sword' then
                    if ChooseWeapon == 'Blox Fruit' then
                        local v255, v256, v257 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v258

                            v257, v258 = v255(v256, v257)

                            if v257 == nil then
                                break
                            end
                            if v258.ToolTip == 'Blox Fruit' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v258.Name)) then
                                SelectWeapon = v258.Name
                            end
                        end
                    end
                else
                    local v259, v260, v261 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                    while true do
                        local v262

                        v261, v262 = v259(v260, v261)

                        if v261 == nil then
                            break
                        end
                        if v262.ToolTip == 'Sword' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v262.Name)) then
                            SelectWeapon = v262.Name
                        end
                    end
                end
            else
                local v263, v264, v265 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                while true do
                    local v266

                    v265, v266 = v263(v264, v265)

                    if v265 == nil then
                        break
                    end
                    if v266.ToolTip == 'Melee' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v266.Name)) then
                        SelectWeapon = v266.Name
                    end
                end
            end
        end)
    end
end)
u3.Main:AddToggle('ToggleLevel', {
    Title = 'C\u{e0}y C\u{1ea5}p',
    Description = '',
    Default = false,
}):OnChanged(function(p267)
    _G.AutoLevel = p267

    if p267 == false then
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
                        local v268, v269, v270 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v271

                            v270, v271 = v268(v269, v270)

                            if v270 == nil then
                                break
                            end
                            if v271:FindFirstChild('Humanoid') and (v271:FindFirstChild('HumanoidRootPart') and (v271.Humanoid.Health > 0 and v271.Name == Ms)) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()

                                    bringmob = true

                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v271.HumanoidRootPart.CFrame * Pos)

                                    v271.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v271.HumanoidRootPart.Transparency = 1
                                    v271.Humanoid.JumpPower = 0
                                    v271.Humanoid.WalkSpeed = 0
                                    v271.HumanoidRootPart.CanCollide = false
                                    FarmPos = v271.HumanoidRootPart.CFrame
                                    MonFarm = v271.Name
                                until not _G.AutoLevel or (not v271.Parent or v271.Humanoid.Health <= 0) or (not game:GetService('Workspace').Enemies:FindFirstChild(v271.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false)

                                bringmob = false
                            end
                        end

                        local v272, v273, v274 = pairs(game:GetService('Workspace')._WorldOrigin.EnemySpawns:GetChildren())

                        while true do
                            local v275

                            v274, v275 = v272(v273, v274)

                            if v274 == nil then
                                break
                            end
                            if string.find(v275.Name, NameMon) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v275.Position).Magnitude >= 10 then
                                Tween(v275.HumanoidRootPart.CFrame * Pos)
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
u3.Main:AddToggle('ToggleMobAura', {
    Title = '\u{fffd}\u{e1}nh Qu\u{e1}i \u{1ede} G\u{1ea7}n',
    Description = '',
    Default = false,
}):OnChanged(function(p276)
    _G.AutoNear = p276

    if p276 == false then
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
                local v277, v278, v279 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v280

                    v279, v280 = v277(v278, v279)

                    if v279 == nil then
                        break
                    end
                    if v280:FindFirstChild('Humanoid') and (v280:FindFirstChild('HumanoidRootPart') and (v280.Humanoid.Health > 0 and (v280.Name and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v280:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 5000))) then
                        repeat
                            wait(_G.Fast_Delay)
                            AttackNoCoolDown()

                            bringmob = true

                            AutoHaki()
                            EquipTool(SelectWeapon)
                            Tween(v280.HumanoidRootPart.CFrame * Pos)

                            v280.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v280.HumanoidRootPart.Transparency = 1
                            v280.Humanoid.JumpPower = 0
                            v280.Humanoid.WalkSpeed = 0
                            v280.HumanoidRootPart.CanCollide = false
                            FarmPos = v280.HumanoidRootPart.CFrame
                            MonFarm = v280.Name
                        until not _G.AutoNear or (not v280.Parent or v280.Humanoid.Health <= 0) or not game.Workspace.Enemies:FindFirstChild(v280.Name)

                        bringmob = false
                    end
                end
            end)
        end
    end
end)
u3.Main:AddToggle('ToggleCastleRaid', {
    Title = '\u{fffd}\u{e1}nh H\u{1ea3}i T\u{1eb7}c',
    Description = '',
    Default = false,
}):OnChanged(function(p281)
    _G.CastleRaid = p281
end)
_Options.ToggleCastleRaid:SetValue(false)
spawn(function()
    while wait() do
        if _G.CastleRaid then
            pcall(function()
                local v282 = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-9, 0.380223751, 3.5881019e-8, 1, -1.06665446e-7, -0.380223751, 1.12297109e-7, 0.924894512)

                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                    Tween(v282)
                else
                    local v283, v284, v285 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v286

                        v285, v286 = v283(v284, v285)

                        if v285 == nil then
                            break
                        end
                        if _G.CastleRaid and (v286:FindFirstChild('HumanoidRootPart') and (v286:FindFirstChild('Humanoid') and (v286.Humanoid.Health > 0 and (v286.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000))) then
                            repeat
                                wait(_G.Fast_Delay)
                                AttackNoCoolDown()
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v286.HumanoidRootPart.CanCollide = false
                                v286.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                Tween(v286.HumanoidRootPart.CFrame * Pos)
                            until v286.Humanoid.Health <= 0 or not (v286.Parent and _G.CastleRaid)
                        end
                    end
                end
            end)
        end
    end
end)
u3.Main:AddToggle('ToggleHakiFortress', {
    Title = 'B\u{1ead}t Haki M\u{e0}u Ph\u{e1}o \u{110}\u{e0}i',
    Description = '',
    Default = false,
}):OnChanged(function(p287)
    _G.EnableHakiFortress = p287
end)
_Options.ToggleHakiFortress:SetValue(false)

local function u291(p288, p289)
    local v290 = {
        {
            StorageName = p288,
            Type = 'AuraSkin',
            Context = 'Equip',
        },
    }

    game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/FruitCustomizerRF'):InvokeServer(unpack(v290))
    Tween2(p289)
end
local function u295(p292, p293)
    local _Character2 = game.Players.LocalPlayer.Character

    if _Character2 and _Character2:FindFirstChild('HumanoidRootPart') then
        return (_Character2.HumanoidRootPart.Position - p292).Magnitude < p293
    else
        return false
    end
end

spawn(function()
    while true do
        if _G.EnableHakiFortress then
            u291('Snow White', Vector3.new(-4971.71826171875, 335.9582214355469, -3720.0595703125))

            while not u295(Vector3.new(-4971.71826171875, 335.9582214355469, -3720.0595703125), 1) do
                wait(0.1)
            end

            wait(0.5)
            u291('Pure Red', Vector3.new(-5414.92041015625, 314.2582092285156, -2212.20166015625))

            while not u295(Vector3.new(-5414.92041015625, 314.2582092285156, -2212.20166015625), 1) do
                wait(0.1)
            end

            wait(0.5)
            u291('Winter Sky', Vector3.new(-5420.26318359375, 1089.3582763671875, -2666.8193359375))

            while not u295(Vector3.new(-5420.26318359375, 1089.3582763671875, -2666.8193359375), 1) do
                wait(0.1)
            end

            wait(0.5)

            _G.EnableHakiFortress = false
        end

        wait(0.5)
    end
end)
u3.Main:AddToggle('ToggleCollectChest', {
    Title = 'L\u{1ee5}m R\u{1b0}\u{1a1}ng',
    Description = '',
    Default = false,
}):OnChanged(function(p296)
    _G.AutoCollectChest = p296
end)
spawn(function()
    while wait() do
        if _G.AutoCollectChest then
            local _LocalPlayer2 = game:GetService('Players').LocalPlayer
            local _Position3 = (_LocalPlayer2.Character or _LocalPlayer2.CharacterAdded:Wait()):GetPivot().Position
            local __ChestTagged = game:GetService('CollectionService'):GetTagged('_ChestTagged')
            local _huge = math.huge
            local v301 = nil

            for v302 = 1, #__ChestTagged do
                local v303 = __ChestTagged[v302]
                local _Magnitude3 = (v303:GetPivot().Position - _Position3).Magnitude

                if not v303:GetAttribute('IsDisabled') then
                    if _Magnitude3 < _huge then
                        v301 = v303
                        _huge = _Magnitude3
                    end
                end
            end

            if v301 then
                local _Position4 = v301:GetPivot().Position
                local v306 = CFrame.new(_Position4)

                Tween2(v306)
            end
        end
    end
end)
u3.Main:AddToggle('ToggleCollectBerry', {
    Title = 'Bay \u{110}\u{1ebf}n Khu V\u{1ef1}c C\u{f3} Berry + Hop',
    Description = '',
    Default = false,
}):OnChanged(function(p307)
    _G.AutoCollectBerry = p307
end)
spawn(function()
    while wait() do
        if _G.AutoCollectBerry then
            local _LocalPlayer3 = game:GetService('Players').LocalPlayer
            local _Position5 = (_LocalPlayer3.Character or _LocalPlayer3.CharacterAdded:Wait()):GetPivot().Position
            local _BerryBush = game:GetService('CollectionService'):GetTagged('BerryBush')
            local _huge2 = math.huge
            local v312 = nil
            local v313 = nil

            for v314 = 1, #_BerryBush do
                local v315 = _BerryBush[v314]
                local v316, v317, v318 = pairs(v315:GetAttributes())

                while true do
                    local v319

                    v318, v319 = v316(v317, v318)

                    if v318 == nil then
                        break
                    end

                    local _Magnitude4 = (v315.Parent:GetPivot().Position - _Position5).Magnitude

                    if _Magnitude4 < _huge2 then
                        v313 = v319
                        v312 = v315
                        _huge2 = _Magnitude4
                    end
                end
            end

            if v312 then
                local _Position6 = v312.Parent:GetPivot().Position
                local v322 = CFrame.new(_Position6)

                Tween2(v322)
                u1:Notify({
                    Title = 'Strix',
                    Content = 'T\u{ec}m Th\u{1ea5}y Berry: ' .. tostring(v313),
                    Duration = 10,
                })
            else
                Hop()
            end
        end
    end
end)
u3.Main:AddSection('Th\u{f4}ng Th\u{1ea1}o')

local _DropdownMastery = u3.Main:AddDropdown('DropdownMastery', {
    Title = 'Ch\u{1ecd}n Lo\u{1ea1}i',
    Description = '',
    Values = {
        'Level',
        'Level No Quest',
        'Near Mob',
        'Bone',
        'Cake',
        'Ecto',
    },
    Multi = false,
    Default = 1,
})

_DropdownMastery:SetValue(TypeMastery)
_DropdownMastery:OnChanged(function(p324)
    TypeMastery = p324
end)
u3.Main:AddToggle('ToggleMasteryFruit', {
    Title = 'C\u{e0}y Th\u{f4}ng Th\u{1ea1}o Tr\u{e1}i',
    Description = '',
    Default = false,
}):OnChanged(function(p325)
    AutoFarmMasDevilFruit = p325
end)
_Options.ToggleMasteryFruit:SetValue(false)
u3.Main:AddToggle('ToggleMasteryGun', {
    Title = 'C\u{e0}y Th\u{f4}ng Th\u{1ea1}o S\u{fa}ng',
    Description = '',
    Default = false,
}):OnChanged(function(p326)
    AutoFarmMasGun = p326
end)

local _SliderHealt = u3.Main:AddSlider('SliderHealt', {
    Title = 'Ch\u{1ecd}n M\u{e1}u Qu\u{e1}i',
    Description = '',
    Default = 20,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(p327)
        KillPercent = p327
    end,
})

_SliderHealt:OnChanged(function(p329)
    KillPercent = p329
end)
_SliderHealt:SetValue(20)
spawn(function()
    while task.wait() do
        if _G.UseSkill then
            pcall(function()
                if not _G.UseSkill then
                    return
                end

                local v330, v331, v332 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                local v333

                v332, v333 = v330(v331, v332)

                if v332 == nil then
                end
                if v333.Name ~= MonFarm or (not v333:FindFirstChild('Humanoid') or (not v333:FindFirstChild('HumanoidRootPart') or v333.Humanoid.Health > v333.Humanoid.MaxHealth * KillPercent / 100)) then
                end

                game:GetService('RunService').Heartbeat:wait()
                EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
                Tween(v333.HumanoidRootPart.CFrame * Pos)

                PositionSkillMasteryDevilFruit = v333.HumanoidRootPart.Position

                if game:GetService('Players').LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                    game:GetService('Players').LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit

                    local _Value2 = game:GetService('Players').LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value

                    if SkillZ and 1 <= _Value2 then
                        game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                        wait()
                        game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                    end
                    if SkillX and 1 <= _Value2 then
                        game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                        wait()
                        game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                    end
                    if SkillC and 1 <= _Value2 then
                        game:service('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                        wait()
                        game:service('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                    end
                    if SkillV and 1 <= _Value2 then
                        game:service('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                        wait()
                        game:service('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                    end
                    if SkillF and 1 <= _Value2 then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'F', false, game)
                        wait()
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'F', false, game)
                    end
                end
                if AutoFarmMasDevilFruit and (_G.UseSkill and v333.Humanoid.Health ~= 0) then
                else
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasDevilFruit and TypeMastery == 'Near Mob' then
            pcall(function()
                local v335, v336, v337 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v338

                    v337, v338 = v335(v336, v337)

                    if v337 == nil then
                        return
                    end
                    if v338.Name and (v338:FindFirstChild('Humanoid') and (v338:FindFirstChild('HumanoidRootPart') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v338:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 5000)) then
                        repeat
                            if true then
                                wait(_G.Fast_Delay)

                                if v338.Humanoid.Health > v338.Humanoid.MaxHealth * KillPercent / 100 then
                                    _G.UseSkill = false

                                    AutoHaki()

                                    bringmob = true

                                    EquipTool(SelectWeapon)
                                    Tween(v338.HumanoidRootPart.CFrame * Pos)

                                    v338.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v338.HumanoidRootPart.Transparency = 1
                                    v338.Humanoid.JumpPower = 0
                                    v338.Humanoid.WalkSpeed = 0
                                    v338.HumanoidRootPart.CanCollide = false
                                    FarmPos = v338.HumanoidRootPart.CFrame
                                    MonFarm = v338.Name

                                    AttackNoCoolDown()
                                else
                                    _G.UseSkill = true
                                end
                            end
                        until not AutoFarmMasDevilFruit or (not MasteryType == 'Near Mob' or (not v338.Parent or (v338.Humanoid.Health == 0 or not TypeMastery == 'Near Mob')))

                        bringmob = false
                        _G.UseSkill = false
                    end
                end
            end)
        end
    end
end)
spawn(function()
    repeat
        if not wait() then
            return
        end
    until AutoFarmMasDevilFruit and TypeMastery == 'Ecto'

    pcall(function()
        local v339 = CFrame.new(904.4072265625, 181.05767822266, 33341.38671875)

        Tween(v339)
    end)

    if (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
    end

    local v340, v341, v342 = pairs(game:GetService('Workspace').Enemies:GetChildren())

    if true then
        wait(_G.Fast_Delay)

        if v343.Humanoid.Health > v343.Humanoid.MaxHealth * KillPercent / 100 then
            _G.UseSkill = false

            AutoHaki()

            bringmob = true

            EquipTool(SelectWeapon)
            Tween(v343.HumanoidRootPart.CFrame * Pos)

            v343.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
            v343.HumanoidRootPart.Transparency = 1
            v343.Humanoid.JumpPower = 0
            v343.Humanoid.WalkSpeed = 0
            v343.HumanoidRootPart.CanCollide = false
            FarmPos = v343.HumanoidRootPart.CFrame
            MonFarm = v343.Name

            AttackNoCoolDown()
        else
            _G.UseSkill = true
        end
    end
    if AutoFarmMasDevilFruit and (not MasteryType ~= 'Ecto' and (v343.Parent and (v343.Humanoid.Health ~= 0 and not TypeMastery ~= 'Ecto'))) then
    else
    end

    bringmob = false
    _G.UseSkill = false

    local v343

    v342, v343 = v340(v341, v342)

    if v342 ~= nil then
    end

    local v344, v345, v346 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

    while true do
        local v347

        v346, v347 = v344(v345, v346)

        if v346 == nil then
            break
        end
        if v347.Name ~= 'Ship Steward' then
            if v347.Name ~= 'Ship Engineer' then
                if v347.Name ~= 'Ship Deckhand' then
                    if v347.Name == 'Ship Officer' then
                        Tween(v347.HumanoidRootPart.CFrame * Pos)
                    end
                else
                    Tween(v347.HumanoidRootPart.CFrame * Pos)
                end
            else
                Tween(v347.HumanoidRootPart.CFrame * Pos)
            end
        else
            Tween(v347.HumanoidRootPart.CFrame * Pos)
        end
    end

    if v343:FindFirstChild('Humanoid') and (v343:FindFirstChild('HumanoidRootPart') and (v343.Name == 'Ship Steward' or (v343.Name == 'Ship Engineer' or (v343.Name == 'Ship Deckhand' or v343.Name == 'Ship Officer')))) then
    else
    end
end)
spawn(function()
    repeat
        if not wait() then
            return
        end
    until AutoFarmMasDevilFruit and TypeMastery == 'Cake'

    pcall(function()
        local v348 = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)

        Tween(v348)
    end)

    local v349, v350, v351 = pairs(game.Workspace.Enemies:GetChildren())

    if true then
        wait(_G.Fast_Delay)

        if v352.Humanoid.Health > v352.Humanoid.MaxHealth * KillPercent / 100 then
            _G.UseSkill = false

            AutoHaki()

            bringmob = true

            EquipTool(SelectWeapon)
            Tween(v352.HumanoidRootPart.CFrame * Pos)

            v352.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
            v352.HumanoidRootPart.Transparency = 1
            v352.Humanoid.JumpPower = 0
            v352.Humanoid.WalkSpeed = 0
            v352.HumanoidRootPart.CanCollide = false
            FarmPos = v352.HumanoidRootPart.CFrame
            MonFarm = v352.Name

            AttackNoCoolDown()
        else
            _G.UseSkill = true
        end
    end
    if AutoFarmMasDevilFruit and (not MasteryType ~= 'Cake' and (v352.Parent and (v352.Humanoid.Health ~= 0 and not TypeMastery ~= 'Cake'))) then
    else
    end

    bringmob = false
    _G.UseSkill = false

    local v352

    v351, v352 = v349(v350, v351)

    if v351 ~= nil then
    end

    local v353, v354, v355 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

    while true do
        local v356

        v355, v356 = v353(v354, v355)

        if v355 == nil then
            break
        end
        if v356.Name ~= 'Cookie Crafter' then
            if v356.Name ~= 'Cake Guard' then
                if v356.Name ~= 'Baking Staff' then
                    if v356.Name == 'Head Baker' then
                        Tween(v356.HumanoidRootPart.CFrame * Pos)
                    end
                else
                    Tween(v356.HumanoidRootPart.CFrame * Pos)
                end
            else
                Tween(v356.HumanoidRootPart.CFrame * Pos)
            end
        else
            Tween(v356.HumanoidRootPart.CFrame * Pos)
        end
    end

    if v352:FindFirstChild('Humanoid') and (v352:FindFirstChild('HumanoidRootPart') and (v352.Name == 'Cookie Crafter' or (v352.Name == 'Cake Guard' or (v352.Name == 'Baking Staff' or v352.Name == 'Head Baker')))) then
    else
    end
end)
spawn(function()
    repeat
        if not wait() then
            return
        end
    until AutoFarmMasDevilFruit and TypeMastery == 'Level No Quest'

    pcall(function()
        CheckLevel()
        Tween(CFrameQ)
    end)

    local v357, v358, v359 = pairs(game.Workspace.Enemies:GetChildren())

    if true then
        wait(_G.Fast_Delay)

        if v360.Humanoid.Health > v360.Humanoid.MaxHealth * KillPercent / 100 then
            _G.UseSkill = false

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

            AttackNoCoolDown()
        else
            _G.UseSkill = true
        end
    end
    if AutoFarmMasDevilFruit and (not MasteryType ~= 'Level No Quest' and (v360.Parent and (v360.Humanoid.Health ~= 0 and not TypeMastery ~= 'Level No Quest'))) then
    else
    end

    bringmob = false
    _G.UseSkill = false

    local v360

    v359, v360 = v357(v358, v359)

    if v359 == nil then
    end
    if v360:FindFirstChild('Humanoid') and (v360:FindFirstChild('HumanoidRootPart') and v360.Name == Ms) then
    else
    end
end)
spawn(function()
    repeat
        repeat
            if not wait() then
                return
            end
        until AutoFarmMasDevilFruit and TypeMastery == 'Level'

        pcall(function()
            CheckLevel()

            if not string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                Tween(CFrameQ)
            end
            if (CFrameQ.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, QuestLv)
            end
        end)
    until (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true) and game:GetService('Workspace').Enemies:FindFirstChild(Ms)

    local v361, v362, v363 = pairs(game:GetService('Workspace').Enemies:GetChildren())

    if true then
        wait(_G.Fast_Delay)

        if v364.Humanoid.Health > v364.Humanoid.MaxHealth * KillPercent / 100 then
            _G.UseSkill = false

            AutoHaki()

            bringmob = true

            EquipTool(SelectWeapon)
            Tween(v364.HumanoidRootPart.CFrame * Pos)

            v364.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
            v364.HumanoidRootPart.Transparency = 1
            v364.Humanoid.JumpPower = 0
            v364.Humanoid.WalkSpeed = 0
            v364.HumanoidRootPart.CanCollide = false
            FarmPos = v364.HumanoidRootPart.CFrame
            MonFarm = v364.Name

            AttackNoCoolDown()
        else
            _G.UseSkill = true
        end
    end
    if AutoFarmMasDevilFruit and (not MasteryType ~= 'Level' and (v364.Parent and (v364.Humanoid.Health ~= 0 and not TypeMastery ~= 'Level'))) then
    end

    bringmob = false
    _G.UseSkill = false

    local v364

    v363, v364 = v361(v362, v363)

    if v363 == nil then
    end
    if v364:FindFirstChild('Humanoid') and (v364:FindFirstChild('HumanoidRootPart') and v364.Name == Ms) then
    else
    end
end)
spawn(function()
    repeat
        if not wait() then
            return
        end
    until AutoFarmMasDevilFruit and TypeMastery == 'Bone'

    pcall(function()
        local v365 = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)

        Tween(v365)
    end)

    local v366, v367, v368 = pairs(game.Workspace.Enemies:GetChildren())

    if true then
        wait(_G.Fast_Delay)

        if v369.Humanoid.Health > v369.Humanoid.MaxHealth * KillPercent / 100 then
            _G.UseSkill = false

            AutoHaki()

            bringmob = true

            EquipTool(SelectWeapon)
            Tween(v369.HumanoidRootPart.CFrame * Pos)

            v369.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
            v369.HumanoidRootPart.Transparency = 1
            v369.Humanoid.JumpPower = 0
            v369.Humanoid.WalkSpeed = 0
            v369.HumanoidRootPart.CanCollide = false
            FarmPos = v369.HumanoidRootPart.CFrame
            MonFarm = v369.Name

            AttackNoCoolDown()
        else
            _G.UseSkill = true
        end
    end
    if AutoFarmMasDevilFruit and (not MasteryType ~= 'Bone' and (v369.Parent and (v369.Humanoid.Health ~= 0 and not TypeMastery ~= 'Bone'))) then
    else
    end

    bringmob = false
    _G.UseSkill = false

    local v369

    v368, v369 = v366(v367, v368)

    if v368 ~= nil then
    end

    local v370, v371, v372 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

    while true do
        local v373

        v372, v373 = v370(v371, v372)

        if v372 == nil then
            break
        end
        if v373.Name ~= 'Reborn Skeleton' then
            if v373.Name ~= 'Living Zombie' then
                if v373.Name ~= 'Demonic Soul' then
                    if v373.Name == 'Posessed Mummy' then
                        Tween(v373.HumanoidRootPart.CFrame * Pos)
                    end
                else
                    Tween(v373.HumanoidRootPart.CFrame * Pos)
                end
            else
                Tween(v373.HumanoidRootPart.CFrame * Pos)
            end
        else
            Tween(v373.HumanoidRootPart.CFrame * Pos)
        end
    end

    if v369:FindFirstChild('Humanoid') and (v369:FindFirstChild('HumanoidRootPart') and (v369.Name == 'Reborn Skeleton' or (v369.Name == 'Living Zombie' or (v369.Name == 'Demonic Soul' or v369.Name == 'Posessed Mummy')))) then
    else
    end
end)
spawn(function()
    while task.wait() do
        if _G.UseSkillGun then
            pcall(function()
                if not _G.UseSkillGun then
                    return
                end

                local v374, v375, v376 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                local v377

                v376, v377 = v374(v375, v376)

                if v376 == nil then
                end
                if v377.Name ~= MonFarm or (not v377:FindFirstChild('Humanoid') or (not v377:FindFirstChild('HumanoidRootPart') or v377.Humanoid.Health > v377.Humanoid.MaxHealth * KillPercent / 100)) then
                else
                end

                game:GetService('RunService').Heartbeat:wait()
                EquipToolGun()
                Tween(v377.HumanoidRootPart.CFrame * Pos)

                PositionSkillMasteryGun = v377.HumanoidRootPart.Position

                if SkillZ then
                    game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                    wait()
                    game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                end
                if SkillX then
                    game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                    wait()
                    game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                end
                if SkillC then
                    game:service('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                    wait()
                    game:service('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                end
                if SkillV then
                    game:service('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                    wait()
                    game:service('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                end
                if SkillF then
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'F', false, game)
                    wait()
                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 'F', false, game)
                end
                if AutoFarmMasGun and (_G.UseSkillGun and v377.Humanoid.Health ~= 0) then
                else
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasGun and TypeMastery == 'Near Mob' then
            pcall(function()
                local v378, v379, v380 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v381

                    v380, v381 = v378(v379, v380)

                    if v380 == nil then
                        return
                    end
                    if v381.Name and (v381:FindFirstChild('Humanoid') and (v381:FindFirstChild('HumanoidRootPart') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v381:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 5000)) then
                        repeat
                            if true then
                                wait(_G.Fast_Delay)

                                if v381.Humanoid.Health > v381.Humanoid.MaxHealth * KillPercent / 100 then
                                    _G.UseSkillGun = false

                                    AutoHaki()

                                    bringmob = true

                                    EquipTool(SelectWeapon)
                                    Tween(v381.HumanoidRootPart.CFrame * Pos)

                                    v381.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v381.HumanoidRootPart.Transparency = 1
                                    v381.Humanoid.JumpPower = 0
                                    v381.Humanoid.WalkSpeed = 0
                                    v381.HumanoidRootPart.CanCollide = false
                                    FarmPos = v381.HumanoidRootPart.CFrame
                                    MonFarm = v381.Name

                                    AttackNoCoolDown()
                                else
                                    _G.UseSkillGun = true
                                end
                            end
                        until not AutoFarmMasGun or (not MasteryType == 'Near Mob' or (not v381.Parent or (v381.Humanoid.Health == 0 or not TypeMastery == 'Near Mob')))

                        bringmob = false
                        _G.UseSkillGun = false
                    end
                end
            end)
        end
    end
end)
spawn(function()
    repeat
        if not wait() then
            return
        end
    until AutoFarmMasGun and TypeMastery == 'Ecto'

    pcall(function()
        local v382 = CFrame.new(904.4072265625, 181.05767822266, 33341.38671875)

        Tween(v382)
    end)

    if (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
    end

    local v383, v384, v385 = pairs(game:GetService('Workspace').Enemies:GetChildren())

    if true then
        wait(_G.Fast_Delay)

        if v386.Humanoid.Health > v386.Humanoid.MaxHealth * KillPercent / 100 then
            _G.UseSkillGun = false

            AutoHaki()

            bringmob = true

            EquipTool(SelectWeapon)
            Tween(v386.HumanoidRootPart.CFrame * Pos)

            v386.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
            v386.HumanoidRootPart.Transparency = 1
            v386.Humanoid.JumpPower = 0
            v386.Humanoid.WalkSpeed = 0
            v386.HumanoidRootPart.CanCollide = false
            FarmPos = v386.HumanoidRootPart.CFrame
            MonFarm = v386.Name

            AttackNoCoolDown()
        else
            _G.UseSkillGun = true
        end
    end
    if AutoFarmMasGun and (not MasteryType ~= 'Ecto' and (v386.Parent and (v386.Humanoid.Health ~= 0 and not TypeMastery ~= 'Ecto'))) then
    else
    end

    bringmob = false
    _G.UseSkillGun = false

    local v386

    v385, v386 = v383(v384, v385)

    if v385 ~= nil then
    end

    local v387, v388, v389 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

    while true do
        local v390

        v389, v390 = v387(v388, v389)

        if v389 == nil then
            break
        end
        if v390.Name ~= 'Ship Steward' then
            if v390.Name ~= 'Ship Engineer' then
                if v390.Name ~= 'Ship Deckhand' then
                    if v390.Name == 'Ship Officer' then
                        Tween(v390.HumanoidRootPart.CFrame * Pos)
                    end
                else
                    Tween(v390.HumanoidRootPart.CFrame * Pos)
                end
            else
                Tween(v390.HumanoidRootPart.CFrame * Pos)
            end
        else
            Tween(v390.HumanoidRootPart.CFrame * Pos)
        end
    end

    if v386:FindFirstChild('Humanoid') and (v386:FindFirstChild('HumanoidRootPart') and (v386.Name == 'Ship Steward' or (v386.Name == 'Ship Engineer' or (v386.Name == 'Ship Deckhand' or v386.Name == 'Ship Officer')))) then
    else
    end
end)
spawn(function()
    repeat
        if not wait() then
            return
        end
    until AutoFarmMasGun and TypeMastery == 'Cake'

    pcall(function()
        local v391 = CFrame.new(-1579.9111328125, 329.7358703613281, -12310.365234375)

        Tween(v391)
    end)

    local v392, v393, v394 = pairs(game.Workspace.Enemies:GetChildren())

    if true then
        wait(_G.Fast_Delay)

        if v395.Humanoid.Health > v395.Humanoid.MaxHealth * KillPercent / 100 then
            _G.UseSkillGun = false

            AutoHaki()

            bringmob = true

            EquipTool(SelectWeapon)
            Tween(v395.HumanoidRootPart.CFrame * Pos)

            v395.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
            v395.HumanoidRootPart.Transparency = 1
            v395.Humanoid.JumpPower = 0
            v395.Humanoid.WalkSpeed = 0
            v395.HumanoidRootPart.CanCollide = false
            FarmPos = v395.HumanoidRootPart.CFrame
            MonFarm = v395.Name

            AttackNoCoolDown()
        else
            _G.UseSkillGun = true
        end
    end
    if AutoFarmMasGun and (not MasteryType ~= 'Cake' and (v395.Parent and (v395.Humanoid.Health ~= 0 and not TypeMastery ~= 'Cake'))) then
    else
    end

    bringmob = false
    _G.UseSkillGun = false

    local v395

    v394, v395 = v392(v393, v394)

    if v394 ~= nil then
    end

    local v396, v397, v398 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

    while true do
        local v399

        v398, v399 = v396(v397, v398)

        if v398 == nil then
            break
        end
        if v399.Name ~= 'Cookie Crafter' then
            if v399.Name ~= 'Cake Guard' then
                if v399.Name ~= 'Baking Staff' then
                    if v399.Name == 'Head Baker' then
                        Tween(v399.HumanoidRootPart.CFrame * Pos)
                    end
                else
                    Tween(v399.HumanoidRootPart.CFrame * Pos)
                end
            else
                Tween(v399.HumanoidRootPart.CFrame * Pos)
            end
        else
            Tween(v399.HumanoidRootPart.CFrame * Pos)
        end
    end

    if v395:FindFirstChild('Humanoid') and (v395:FindFirstChild('HumanoidRootPart') and (v395.Name == 'Cookie Crafter' or (v395.Name == 'Cake Guard' or (v395.Name == 'Baking Staff' or v395.Name == 'Head Baker')))) then
    else
    end
end)
spawn(function()
    repeat
        repeat
            if not wait() then
                return
            end
        until AutoFarmMasGun and TypeMastery == 'Level'

        pcall(function()
            CheckLevel()

            if not string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                Tween(CFrameQ)
            end
            if (CFrameQ.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, QuestLv)
            end
        end)
    until (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true) and game:GetService('Workspace').Enemies:FindFirstChild(Ms)

    local v400, v401, v402 = pairs(game:GetService('Workspace').Enemies:GetChildren())

    if true then
        wait(_G.Fast_Delay)

        if v403.Humanoid.Health > v403.Humanoid.MaxHealth * KillPercent / 100 then
            _G.UseSkillGun = false

            AutoHaki()

            bringmob = true

            EquipTool(SelectWeapon)
            Tween(v403.HumanoidRootPart.CFrame * Pos)

            v403.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
            v403.HumanoidRootPart.Transparency = 1
            v403.Humanoid.JumpPower = 0
            v403.Humanoid.WalkSpeed = 0
            v403.HumanoidRootPart.CanCollide = false
            FarmPos = v403.HumanoidRootPart.CFrame
            MonFarm = v403.Name

            AttackNoCoolDown()
        else
            _G.UseSkillGun = true
        end
    end
    if AutoFarmMasGun and (not MasteryType ~= 'Level' and (v403.Parent and (v403.Humanoid.Health ~= 0 and not TypeMastery ~= 'Level'))) then
    end

    bringmob = false
    _G.UseSkillGun = false

    local v403

    v402, v403 = v400(v401, v402)

    if v402 == nil then
    end
    if v403:FindFirstChild('Humanoid') and (v403:FindFirstChild('HumanoidRootPart') and v403.Name == Ms) then
    else
    end
end)
spawn(function()
    repeat
        if not wait() then
            return
        end
    until AutoFarmMasGun and TypeMastery == 'Level No Quest'

    pcall(function()
        CheckLevel()
        Tween(CFrameQ)
    end)

    local v404, v405, v406 = pairs(game.Workspace.Enemies:GetChildren())

    if true then
        wait(_G.Fast_Delay)

        if v407.Humanoid.Health > v407.Humanoid.MaxHealth * KillPercent / 100 then
            _G.UseSkillGun = false

            AutoHaki()

            bringmob = true

            EquipTool(SelectWeapon)
            Tween(v407.HumanoidRootPart.CFrame * Pos)

            v407.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
            v407.HumanoidRootPart.Transparency = 1
            v407.Humanoid.JumpPower = 0
            v407.Humanoid.WalkSpeed = 0
            v407.HumanoidRootPart.CanCollide = false
            FarmPos = v407.HumanoidRootPart.CFrame
            MonFarm = v407.Name

            AttackNoCoolDown()
        else
            _G.UseSkillGun = true
        end
    end
    if AutoFarmMasGun and (not MasteryType ~= 'Level No Quest' and (v407.Parent and (v407.Humanoid.Health ~= 0 and not TypeMastery ~= 'Level No Quest'))) then
    else
    end

    bringmob = false
    _G.UseSkillGun = false

    local v407

    v406, v407 = v404(v405, v406)

    if v406 == nil then
    end
    if v407:FindFirstChild('Humanoid') and (v407:FindFirstChild('HumanoidRootPart') and v407.Name == Ms) then
    else
    end
end)
spawn(function()
    repeat
        if not wait() then
            return
        end
    until AutoFarmMasGun and TypeMastery == 'Bone'

    pcall(function()
        local v408 = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)

        Tween(v408)
    end)

    local v409, v410, v411 = pairs(game.Workspace.Enemies:GetChildren())

    if true then
        wait(_G.Fast_Delay)

        if v412.Humanoid.Health > v412.Humanoid.MaxHealth * KillPercent / 100 then
            _G.UseSkillGun = false

            AutoHaki()

            bringmob = true

            EquipTool(SelectWeapon)
            Tween(v412.HumanoidRootPart.CFrame * Pos)

            v412.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
            v412.HumanoidRootPart.Transparency = 1
            v412.Humanoid.JumpPower = 0
            v412.Humanoid.WalkSpeed = 0
            v412.HumanoidRootPart.CanCollide = false
            FarmPos = v412.HumanoidRootPart.CFrame
            MonFarm = v412.Name

            AttackNoCoolDown()
        else
            _G.UseSkillGun = true
        end
    end
    if AutoFarmMasGun and (not MasteryType ~= 'Bone' and (v412.Parent and (v412.Humanoid.Health ~= 0 and not TypeMastery ~= 'Bone'))) then
    else
    end

    bringmob = false
    _G.UseSkillGun = false

    local v412

    v411, v412 = v409(v410, v411)

    if v411 ~= nil then
    end

    local v413, v414, v415 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

    while true do
        local v416

        v415, v416 = v413(v414, v415)

        if v415 == nil then
            break
        end
        if v416.Name ~= 'Reborn Skeleton' then
            if v416.Name ~= 'Living Zombie' then
                if v416.Name ~= 'Demonic Soul' then
                    if v416.Name == 'Posessed Mummy' then
                        Tween(v416.HumanoidRootPart.CFrame * Pos)
                    end
                else
                    Tween(v416.HumanoidRootPart.CFrame * Pos)
                end
            else
                Tween(v416.HumanoidRootPart.CFrame * Pos)
            end
        else
            Tween(v416.HumanoidRootPart.CFrame * Pos)
        end
    end

    if v412:FindFirstChild('Humanoid') and (v412:FindFirstChild('HumanoidRootPart') and (v412.Name == 'Reborn Skeleton' or (v412.Name == 'Living Zombie' or (v412.Name == 'Demonic Soul' or v412.Name == 'Posessed Mummy')))) then
    else
    end
end)

function EquipToolGun()
    pcall(function()
        local v417, v418, v419 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

        while true do
            local v420

            v419, v420 = v417(v418, v419)

            if v419 == nil then
                break
            end
            if v420.ToolTip == 'Gun' and v420:IsA('Tool') then
                local v421 = game.Players.LocalPlayer.Backpack:FindFirstChild(v420.Name)

                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v421)
            end
        end
    end)
end

spawn(function()
    local v422 = getrawmetatable(game)
    local ___namecall = v422.__namecall

    setreadonly(v422, false)

    v422.__namecall = newcclosure(function(...)
        local v424 = getnamecallmethod()
        local v425 = {...}

        if tostring(v424) == 'FireServer' and (tostring(v425[1]) == 'RemoteEvent' and (tostring(v425[2]) ~= 'true' and tostring(v425[2]) ~= 'false')) then
            if _G.UseSkillGun then
                if type(v425[2]) ~= 'vector' then
                    v425[2] = CFrame.new(PositionSkillMasteryGun)
                else
                    v425[2] = PositionSkillMasteryGun
                end

                return ___namecall(unpack(v425))
            end
            if _G.UseSkill then
                if type(v425[2]) ~= 'vector' then
                    v425[2] = CFrame.new(PositionSkillMasteryDevilFruit)
                else
                    v425[2] = PositionSkillMasteryDevilFruit
                end

                return ___namecall(unpack(v425))
            end
        end

        return ___namecall(...)
    end)
end)

if Sea3 then
    u3.Main:AddSection('X\u{1b0}\u{1a1}ng')

    local u426 = u3.Main:AddParagraph({
        Title = 'X\u{1b0}\u{1a1}ng Tr\u{1ea1}ng Th\u{e1}i',
        Content = '',
    })

    spawn(function()
        pcall(function()
            while wait() do
                local _Bones = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Check')

                u426:SetDesc('B\u{1ea1}n C\u{f3}: ' .. tostring(_Bones) .. ' X\u{1b0}\u{1a1}ng')
            end
        end)
    end)
    u3.Main:AddToggle('ToggleBone', {
        Title = 'C\u{e0}y X\u{1b0}\u{1a1}ng',
        Description = '',
        Default = false,
    }):OnChanged(function(p428)
        _G.AutoBone = p428

        if p428 == false then
            wait()
            Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    _Options.ToggleBone:SetValue(false)

    local u429 = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)

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
                            local v431, v432, v433 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v434

                                v433, v434 = v431(v432, v433)

                                if v433 == nil then
                                    break
                                end
                                if v434:FindFirstChild('HumanoidRootPart') and (v434:FindFirstChild('Humanoid') and (v434.Humanoid.Health > 0 and (v434.Name == 'Reborn Skeleton' or (v434.Name == 'Living Zombie' or (v434.Name == 'Demonic Soul' or v434.Name == 'Posessed Mummy'))))) then
                                    if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Demonic Soul') then
                                        repeat
                                            wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            AutoHaki()

                                            bringmob = true

                                            EquipTool(SelectWeapon)
                                            Tween(v434.HumanoidRootPart.CFrame * Pos)

                                            v434.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v434.HumanoidRootPart.Transparency = 1
                                            v434.Humanoid.JumpPower = 0
                                            v434.Humanoid.WalkSpeed = 0
                                            v434.HumanoidRootPart.CanCollide = false
                                            FarmPos = v434.HumanoidRootPart.CFrame
                                            MonFarm = v434.Name
                                        until not _G.AutoBone or (v434.Humanoid.Health <= 0 or not v434.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')

                                        bringmob = false
                                    end
                                end
                            end
                        end
                    else
                        Tween(u429)

                        if (u429.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'HauntedQuest2', 1)
                        end
                    end
                end)
            end
        end
    end)

    local u435 = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)

    spawn(function()
        while wait() do
            if _G.AutoBoneNoQuest then
                pcall(function()
                    Tween(u435)

                    local _ = (u435.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3

                    if game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Demonic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy'))) then
                        local v436, v437, v438 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v439

                            v438, v439 = v436(v437, v438)

                            if v438 == nil then
                                break
                            end
                            if v439:FindFirstChild('HumanoidRootPart') and (v439:FindFirstChild('Humanoid') and (v439.Humanoid.Health > 0 and (v439.Name == 'Reborn Skeleton' or (v439.Name == 'Living Zombie' or (v439.Name == 'Demonic Soul' or v439.Name == 'Posessed Mummy'))))) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()

                                    bringmob = true

                                    EquipTool(SelectWeapon)
                                    Tween(v439.HumanoidRootPart.CFrame * Pos)

                                    v439.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v439.HumanoidRootPart.Transparency = 1
                                    v439.Humanoid.JumpPower = 0
                                    v439.Humanoid.WalkSpeed = 0
                                    v439.HumanoidRootPart.CanCollide = false
                                    FarmPos = v439.HumanoidRootPart.CFrame
                                    MonFarm = v439.Name
                                until not _G.AutoBoneNoQuest or (v439.Humanoid.Health <= 0 or not v439.Parent)
                            end
                        end
                    end
                end)
            end
        end
    end)
    u3.Main:AddButton({
        Title = 'C\u{1ea7}u Nguy\u{1ec7}n',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'gravestoneEvent',
                1,
            }))
        end,
    })
    u3.Main:AddButton({
        Title = 'Th\u{1eed} V\u{1ead}n May',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'gravestoneEvent',
                2,
            }))
        end,
    })
    u3.Main:AddToggle('ToggleRandomBone', {
        Title = 'T\u{1ef1} \u{110}\u{1ed9}ng Random X\u{1b0}\u{1a1}ng',
        Description = '',
        Default = false,
    }):OnChanged(function(p440)
        _G.AutoRandomBone = p440
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
    u3.Main:AddSection('T\u{1b0} L\u{1ec7}nh B\u{e1}nh')

    local u441 = u3.Main:AddParagraph({
        Title = 'Tr\u{1ea1}ng Th\u{e1}i Boss Ra',
        Content = '',
    })

    spawn(function()
        while wait() do
            pcall(function()
                if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 88 then
                    if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 87 then
                        if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 86 then
                            u441:SetDesc('T\u{1b0} L\u{1ec7}nh B\u{e1}nh : \u{2705}\u{fe0f}')
                        else
                            u441:SetDesc('C\u{f2}n: ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 39) .. ' ')
                        end
                    else
                        u441:SetDesc('C\u{f2}n: ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 40) .. '')
                    end
                else
                    u441:SetDesc('C\u{f2}n: ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 41) .. '')
                end
            end)
        end
    end)
    u3.Main:AddToggle('ToggleCake', {
        Title = 'C\u{e0}y T\u{1b0} L\u{1ec7}nh B\u{e1}nh',
        Description = '',
        Default = false,
    }):OnChanged(function(p442)
        _G.Cake = p442

        if p442 == false then
            wait()
            Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    _Options.ToggleCake:SetValue(false)
    spawn(function()
        while wait() do
            if _G.Cake then
                pcall(function()
                    if game.ReplicatedStorage:FindFirstChild('Cake Prince') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') or (game.ReplicatedStorage:FindFirstChild('Dough King') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King'))) then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                            local v443, v444, v445 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v446

                                v445, v446 = v443(v444, v445)

                                if v445 == nil then
                                    break
                                end
                                if v446.Name == 'Cake Prince' or v446.Name == 'Dough King' then
                                    repeat
                                        wait(_G.Fast_Delay)
                                        AutoHaki()
                                        EquipTool(SelectWeapon)

                                        v446.HumanoidRootPart.CanCollide = false
                                        v446.Humanoid.WalkSpeed = 0
                                        v446.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                        Tween(v446.HumanoidRootPart.CFrame * Pos)
                                        AttackNoCoolDown()
                                    until _G.Cake == false or (not v446.Parent or v446.Humanoid.Health <= 0)
                                end
                            end
                        else
                            Tween(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875))
                        end
                    elseif game.Workspace.Enemies:FindFirstChild('Baking Staff') or (game.Workspace.Enemies:FindFirstChild('Head Baker') or (game.Workspace.Enemies:FindFirstChild('Cake Guard') or game.Workspace.Enemies:FindFirstChild('Cookie Crafter'))) then
                        local v447, v448, v449 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v450

                            v449, v450 = v447(v448, v449)

                            if v449 == nil then
                                break
                            end
                            if (v450.Name == 'Baking Staff' or (v450.Name == 'Head Baker' or (v450.Name == 'Cake Guard' or v450.Name == 'Cookie Crafter'))) and v450.Humanoid.Health > 0 then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    bringmob = true
                                    v450.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    POSCAKE = v450.HumanoidRootPart.CFrame

                                    Tween(v450.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCoolDown()
                                until _G.Cake == false or (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') or (game:GetService('ReplicatedStorage'):FindFirstChild('Dough King') or (not v450.Parent or v450.Humanoid.Health <= 0)))
                            end
                        end
                    else
                        bringmob = false

                        Tween(CFrame.new(-1579.9111328125, 329.7358703613281, -12310.365234375))
                    end
                end)
            end
        end
    end)
    spawn(function()
        game:GetService('RunService').Heartbeat:Connect(function()
            pcall(function()
                local v451, v452, v453 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v454

                    v453, v454 = v451(v452, v453)

                    if v453 == nil then
                        break
                    end
                    if _G.Cake and (bringmob and (v454.Name == 'Cookie Crafter' or (v454.Name == 'Cake Guard' or (v454.Name == 'Baking Staff' or v454.Name == 'Head Baker')))) and (v454.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
                        v454.HumanoidRootPart.CFrame = POSCAKE
                        v454.HumanoidRootPart.CanCollide = false
                        v454.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                        if v454.Humanoid:FindFirstChild('Animator') then
                            v454.Humanoid.Animator:Destroy()
                        end

                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                    end
                end
            end)
        end)
    end)
    spawn(function()
        while wait() do
            if _G.Cake then
                pcall(function()
                    if game.ReplicatedStorage:FindFirstChild('Cake Prince') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') or (game.ReplicatedStorage:FindFirstChild('Dough King') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King'))) then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                            local v455, v456, v457 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v458

                                v457, v458 = v455(v456, v457)

                                if v457 == nil then
                                    break
                                end
                                if v458.Name == 'Cake Prince' or v458.Name == 'Dough King' then
                                    repeat
                                        wait(_G.Fast_Delay)
                                        AutoHaki()
                                        EquipTool(SelectWeapon)

                                        v458.HumanoidRootPart.CanCollide = false
                                        v458.Humanoid.WalkSpeed = 0
                                        v458.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                        Tween(v458.HumanoidRootPart.CFrame * Pos)
                                        AttackNoCoolDown()
                                    until _G.Cake == false or (not v458.Parent or v458.Humanoid.Health <= 0)
                                end
                            end
                        else
                            Tween(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875))
                        end
                    elseif game.Workspace.Enemies:FindFirstChild('Baking Staff') or (game.Workspace.Enemies:FindFirstChild('Head Baker') or (game.Workspace.Enemies:FindFirstChild('Cake Guard') or game.Workspace.Enemies:FindFirstChild('Cookie Crafter'))) then
                        local v459, v460, v461 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v462

                            v461, v462 = v459(v460, v461)

                            if v461 == nil then
                                break
                            end
                            if (v462.Name == 'Baking Staff' or (v462.Name == 'Head Baker' or (v462.Name == 'Cake Guard' or v462.Name == 'Cookie Crafter'))) and v462.Humanoid.Health > 0 then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    bringmob = true
                                    v462.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    POSCAKE = v462.HumanoidRootPart.CFrame

                                    Tween(v462.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCoolDown()
                                until _G.Cake == false or (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') or (game:GetService('ReplicatedStorage'):FindFirstChild('Dough King') or (not v462.Parent or v462.Humanoid.Health <= 0)))
                            end
                        end
                    else
                        bringmob = false

                        Tween(CFrame.new(-1579.9111328125, 329.7358703613281, -12310.365234375))
                    end
                end)
            end
        end
    end)
    u3.Main:AddToggle('ToggleSpawnCake', {
        Title = 'Tri\u{1ec7}u H\u{1ed3}i T\u{1b0} L\u{1ec7}nh B\u{e1}nh',
        Description = '',
        Default = true,
    }):OnChanged(function(p463)
        _G.SpawnCakePrince = p463
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
    u3.Main:AddSection('Ectoplasm Farm')
    u3.Main:AddToggle('ToggleVatChatKiDi', {
        Title = 'Auto Farm Ectoplasm',
        Description = '',
        Default = false,
    }):OnChanged(function(p464)
        _G.Ectoplasm = p464
    end)
    _Options.ToggleVatChatKiDi:SetValue(false)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Ectoplasm then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Ship Deckhand') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Engineer') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Steward') or game:GetService('Workspace').Enemies:FindFirstChild('Ship Officer'))) then
                        local v465, v466, v467 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v468

                            v467, v468 = v465(v466, v467)

                            if v467 == nil then
                                break
                            end
                            if (v468.Name == 'Ship Steward' or (v468.Name == 'Ship Engineer' or (v468.Name == 'Ship Deckhand' or v468.Name == 'Ship Officer' and v468:FindFirstChild('Humanoid')))) and v468.Humanoid.Health > 0 then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()

                                    bringmob = true

                                    EquipTool(SelectWeapon)
                                    Tween(v468.HumanoidRootPart.CFrame * Pos)

                                    v468.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v468.HumanoidRootPart.Transparency = 1
                                    v468.Humanoid.JumpPower = 0
                                    v468.Humanoid.WalkSpeed = 0
                                    v468.HumanoidRootPart.CanCollide = false
                                    FarmPos = v468.HumanoidRootPart.CFrame
                                    MonFarm = v468.Name
                                until _G.Ectoplasm == false or (not v468.Parent or v468.Humanoid.Health == 0) or not game:GetService('Workspace').Enemies:FindFirstChild(v468.Name)

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

u3.Main:AddSection('Tr\u{f9}m')

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

local _DropdownBoss = u3.Main:AddDropdown('DropdownBoss', {
    Title = 'Ch\u{1ecd}n Tr\u{f9}m',
    Description = '',
    Values = tableBoss,
    Multi = false,
    Default = 1,
})

_DropdownBoss:SetValue(_G.SelectBoss)
_DropdownBoss:OnChanged(function(p470)
    _G.SelectBoss = p470
end)
u3.Main:AddToggle('ToggleAutoFarmBoss', {
    Title = '\u{fffd}\u{e1}nh Tr\u{f9}m',
    Description = '',
    Default = false,
}):OnChanged(function(p471)
    _G.AutoBoss = p471
end)
_Options.ToggleAutoFarmBoss:SetValue(false)
spawn(function()
    while wait() do
        if _G.AutoBoss then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild(_G.SelectBoss) then
                    local v472, v473, v474 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v475

                        v474, v475 = v472(v473, v474)

                        if v474 == nil then
                            break
                        end
                        if v475.Name == _G.SelectBoss and (v475:FindFirstChild('Humanoid') and (v475:FindFirstChild('HumanoidRootPart') and v475.Humanoid.Health > 0)) then
                            repeat
                                wait(_G.Fast_Delay)
                                AttackNoCoolDown()
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v475.HumanoidRootPart.CanCollide = false
                                v475.Humanoid.WalkSpeed = 0
                                v475.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                Tween(v475.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.AutoBoss or (not v475.Parent or v475.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss) then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * Pos)
                end
            end)
        end
    end
end)
u3.Main:AddSection('Nguy\u{ea}n Li\u{1ec7}u')

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

local _DropdownMaterial = u3.Main:AddDropdown('DropdownMaterial', {
    Title = 'Ch\u{1ecd}n Nguy\u{ea}n Li\u{1ec7}u',
    Description = '',
    Values = MaterialList,
    Multi = false,
    Default = 1,
})

_DropdownMaterial:SetValue(SelectMaterial)
_DropdownMaterial:OnChanged(function(p477)
    SelectMaterial = p477
end)
u3.Main:AddToggle('ToggleMaterial', {
    Title = 'C\u{e0}y Nguy\u{ea}n Li\u{1ec7}u',
    Description = '',
    Default = false,
}):OnChanged(function(p478)
    _G.AutoMaterial = p478

    if p478 == false then
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
                    local v479, v480, v481 = pairs(game.Workspace.Enemies:GetChildren())

                    while true do
                        local v482

                        v481, v482 = v479(v480, v481)

                        if v481 == nil then
                            break
                        end
                        if v482:FindFirstChild('Humanoid') and (v482:FindFirstChild('HumanoidRootPart') and (v482.Humanoid.Health > 0 and v482.Name == MMon)) then
                            repeat
                                wait(_G.Fast_Delay)
                                AttackNoCoolDown()
                                AutoHaki()

                                bringmob = true

                                EquipTool(SelectWeapon)
                                Tween(v482.HumanoidRootPart.CFrame * Pos)

                                v482.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v482.HumanoidRootPart.Transparency = 1
                                v482.Humanoid.JumpPower = 0
                                v482.Humanoid.WalkSpeed = 0
                                v482.HumanoidRootPart.CanCollide = false
                                FarmPos = v482.HumanoidRootPart.CFrame
                                MonFarm = v482.Name
                            until not _G.AutoMaterial or (not v482.Parent or v482.Humanoid.Health <= 0)

                            bringmob = false
                        end
                    end
                else
                    local v483, v484, v485 = pairs(game:GetService('Workspace')._WorldOrigin.EnemySpawns:GetChildren())

                    while true do
                        local v486

                        v485, v486 = v483(v484, v485)

                        if v485 == nil then
                            break
                        end
                        if string.find(v486.Name, Mon) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v486.Position).Magnitude >= 10 then
                            Tween(v486.HumanoidRootPart.CFrame * Pos)
                        end
                    end
                end
            end)
        end
    end
end)

if Sea3 then
    u3.Sea:AddSection('\u{fffd}\u{1ea3}o C\u{e1}o')

    local u487 = u3.Sea:AddParagraph({
        Title = 'Tr\u{1ea1}ng Th\u{e1}i \u{110}\u{1ea3}o C\u{e1}o',
        Content = '',
    })

    function UpdateKitsune()
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
            u487:SetDesc('\u{fffd}\u{1ea3}o C\u{e1}o : \u{2705}\u{fe0f}')
        else
            u487:SetDesc('\u{fffd}\u{1ea3}o C\u{e1}o : \u{274c}\u{fe0f}')
        end
    end

    spawn(function()
        pcall(function()
            while wait() do
                UpdateKitsune()
            end
        end)
    end)
    u3.Sea:AddToggle('ToggleTPKitsune', {
        Title = 'Bay V\u{e0}o \u{110}\u{1ea3}o C\u{e1}o',
        Description = '',
        Default = false,
    }):OnChanged(function(p488)
        _G.TweenToKitsune = p488
    end)
    _Options.ToggleTPKitsune:SetValue(false)
    spawn(function()
        local v489 = nil

        while not v489 do
            v489 = game:GetService('Workspace').Map:FindFirstChild('KitsuneIsland')

            wait(1)
        end
        while wait() do
            if _G.TweenToKitsune then
                local _ShrineActive = v489:FindFirstChild('ShrineActive')

                if _ShrineActive then
                    local v491, v492, v493 = pairs(_ShrineActive:GetDescendants())

                    while true do
                        local v494

                        v493, v494 = v491(v492, v493)

                        if v493 == nil then
                            break
                        end
                        if v494:IsA('BasePart') and v494.Name:find('NeonShrinePart') then
                            Tween2(v494.CFrame)
                        end
                    end
                end
            end
        end
    end)
    u3.Sea:AddToggle('ToggleCollectAzure', {
        Title = 'Nh\u{1eb7}t Linh H\u{1ed3}n',
        Description = '',
        Default = false,
    }):OnChanged(function(p495)
        _G.CollectAzure = p495
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
    u3.Sea:AddButton({
        Title = '\u{fffd}\u{1ed5}i Linh H\u{1ed3}n',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage'):WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RF/KitsuneStatuePray'):InvokeServer()
        end,
    })
    u3.Sea:AddSection('Bi\u{1ec3}n')

    local _Players = game:GetService('Players')
    local _RunService = game:GetService('RunService')
    local _VirtualInputManager = game:GetService('VirtualInputManager')
    local _Workspace = game:GetService('Workspace')
    local _LocalPlayer4 = _Players.LocalPlayer
    local u501 = _LocalPlayer4.Character or _LocalPlayer4.CharacterAdded:Wait()
    local u502 = 350
    local u503 = 3000
    local u504 = Vector3.new(-16665.191, 104.596, 1579.694)
    local u505 = {
        80,
        -50,
        -80,
        50,
    }
    local u506 = 1

    local function u513()
        local v507, v508, v509 = pairs(_Workspace.Boats:GetChildren())

        while true do
            local v510

            v509, v510 = v507(v508, v509)

            if v509 == nil then
                break
            end

            local _VehicleSeat = v510:FindFirstChild('VehicleSeat')

            if _VehicleSeat then
                local v512 = u501

                if _VehicleSeat.Occupant == v512:FindFirstChild('Humanoid') then
                    return v510
                end
            end
        end

        return nil
    end

    _RunService.RenderStepped:Connect(function()
        if u501 and u501.PrimaryPart then
            local _Magnitude5 = (u501.PrimaryPart.Position - u504).Magnitude

            if u503 <= math.floor(_Magnitude5 / 10) then
                local v515 = u513()

                if v515 and v515.PrimaryPart then
                    local v516 = u505[u506]

                    v515:SetPrimaryPartCFrame(v515.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(v516), 0))

                    u506 = u506 + 1

                    if u506 > #u505 then
                        u506 = 1
                    end

                    u503 = u503 + 1000
                end
            end
        end
    end)

    local u517 = {}
    local u518 = false
    local u519 = false
    local v520 = {
        Prehistoric = {
            'ShipwreckIsland',
            'SandIsland',
            'TreeIsland',
            'TinyIsland',
            'MysticIsland',
            'KitsuneIsland',
            'FrozenDimension',
        },
        Mirage = {
            'ShipwreckIsland',
            'SandIsland',
            'TreeIsland',
            'TinyIsland',
            'PrehistoricIsland',
            'KitsuneIsland',
            'FrozenDimension',
        },
        Frozen = {
            'ShipwreckIsland',
            'SandIsland',
            'TreeIsland',
            'TinyIsland',
            'MysticIsland',
            'KitsuneIsland',
            'PrehistoricIsland',
        },
    }

    local function v555(p521, p522, p523, p524, p525)
        local v526 = u3.Sea:AddToggle(p522, {
            Title = p521,
            Default = false,
        })

        _Options[p522]:SetValue(false)
        v526:OnChanged(function(p527)
            _G[p522] = p527
        end)
        _RunService.RenderStepped:Connect(function()
            if _G[p522] then
                local _Humanoid = u501:FindFirstChild('Humanoid')

                if _Humanoid then
                    local function v533()
                        if u518 then
                            return
                        end

                        u518 = true

                        local v529, v530, v531 = pairs(u517)

                        while true do
                            local v532

                            v531, v532 = v529(v530, v531)

                            if v531 == nil then
                                break
                            end
                            if v532 and (v532.Parent and (v532.Name == 'VehicleSeat' and not v532.Occupant)) then
                                Tween2(v532.CFrame)

                                break
                            end
                        end

                        u518 = false
                    end

                    local v534, v535, v536 = pairs(_Workspace.Boats:GetChildren())
                    local v537 = false
                    local v538 = nil

                    while true do
                        local v539

                        v536, v539 = v534(v535, v536)

                        if v536 == nil then
                            break
                        end

                        local _VehicleSeat2 = v539:FindFirstChild('VehicleSeat')

                        if _VehicleSeat2 then
                            if _VehicleSeat2.Occupant ~= _Humanoid then
                                if _VehicleSeat2.Occupant == nil then
                                    v533()
                                end
                            else
                                u517[v539.Name] = _VehicleSeat2
                                v538 = _VehicleSeat2
                                v537 = true
                            end
                        end
                    end

                    if v537 then
                        v538.MaxSpeed = u502
                        v538.CFrame = CFrame.new(v538.Position) * v538.CFrame.Rotation

                        _VirtualInputManager:SendKeyEvent(true, 'W', false, game)

                        local v541, v542, v543 = pairs(_Workspace.Boats:GetDescendants())

                        while true do
                            local v544

                            v543, v544 = v541(v542, v543)

                            if v543 == nil then
                                break
                            end
                            if v544:IsA('BasePart') then
                                v544.CanCollide = false
                            end
                        end

                        local v545 = u501
                        local v546, v547, v548 = pairs(v545:GetDescendants())

                        while true do
                            local v549

                            v548, v549 = v546(v547, v548)

                            if v548 == nil then
                                break
                            end
                            if v549:IsA('BasePart') then
                                v549.CanCollide = false
                            end
                        end

                        local v550, v551, v552 = ipairs(p523)

                        while true do
                            local v553

                            v552, v553 = v550(v551, v552)

                            if v552 == nil then
                                break
                            end

                            local v554 = _Workspace.Map:FindFirstChild(v553)

                            if v554 and v554:IsA('Model') then
                                v554:Destroy()
                            end
                        end

                        if _Workspace.Map:FindFirstChild(p524) then
                            _VirtualInputManager:SendKeyEvent(false, 'W', false, game)

                            _G[p522] = false

                            if not u519 then
                                u1:Notify({
                                    Title = 'Strix',
                                    Content = p525,
                                    Duration = 10,
                                })

                                u519 = true
                            end
                        end
                    end
                else
                    return
                end
            else
                u519 = false

                return
            end
        end)
    end

    v555('T\u{ec}m \u{110}\u{1ea3}o Dung Nham', 'AutoFindPrehistoric', v520.Prehistoric, 'PrehistoricIsland', '\u{fffd}\u{1ea3}o Dung Nham \u{110}\u{e3} \u{110}\u{1b0}\u{1ee3}c T\u{ec}m Th\u{1ea5}y')
    v555('T\u{ec}m \u{110}\u{1ea3}o B\u{ed} \u{1ea8}n', 'AutoFindMirage', v520.Mirage, 'MysticIsland', '\u{fffd}\u{1ea3}o B\u{ed} \u{1ea8}n \u{110}\u{e3} \u{110}\u{1b0}\u{1ee3}c T\u{ec}m Th\u{1ea5}y')
    v555('T\u{ec}m \u{110}\u{1ea3}o Leviathan', 'AutoFindFrozen', v520.Frozen, 'FrozenDimension', '\u{fffd}\u{1ea3}o Leviathan \u{110}\u{e3} \u{110}\u{1b0}\u{1ee3}c T\u{ec}m Th\u{1ea5}y')
    u3.Sea:AddToggle('AutoComeTiki', {
        Title = 'L\u{e1}i Thuy\u{1ec1}n V\u{1ec1} \u{110}\u{1ea3}o Tiki',
        Description = '',
        Default = false,
    }):OnChanged(function(p556)
        _G.AutoComeTiki = p556
    end)
    _RunService.RenderStepped:Connect(function()
        if not _G.AutoComeTiki then
            return
        end

        local _Character3 = _Players.LocalPlayer.Character

        if not (_Character3 and _Character3:FindFirstChild('Humanoid')) then
            return
        end

        local _Humanoid2 = _Character3.Humanoid
        local v559, v560, v561 = pairs(_Workspace.Boats:GetChildren())
        local v562 = nil

        while true do
            local v563

            v561, v563 = v559(v560, v561)

            if v561 == nil then
                _VehicleSeat3 = v562

                break
            end

            local _VehicleSeat3 = v563:FindFirstChild('VehicleSeat')

            if _VehicleSeat3 and _VehicleSeat3.Occupant == _Humanoid2 then
                break
            end
        end

        if _VehicleSeat3 then
            _VehicleSeat3.MaxSpeed = u502

            local v565 = CFrame.new(-16217.7568359375, 9.126761436462402, 446.06536865234375)
            local _Position7 = _VehicleSeat3.Position
            local _Position8 = v565.Position
            local v568 = (_Position8 - _Position7).unit * _VehicleSeat3.MaxSpeed * _RunService.RenderStepped:Wait()

            _VehicleSeat3.CFrame = _VehicleSeat3.CFrame + v568

            CFrame.new(_Position7, _Position8)

            _VehicleSeat3.CFrame = CFrame.new(_VehicleSeat3.Position, _Position8)

            if (_VehicleSeat3.Position - _Position8).magnitude < 120 then
                _G.AutoComeTiki = false

                _VirtualInputManager:SendKeyEvent(false, 'W', false, game)
            end
        end
    end)
    u3.Sea:AddToggle('AutoComeHydra', {
        Title = 'L\u{e1}i Thuy\u{1ec1}n V\u{1ec1} \u{110}\u{1ea3}o Hydra',
        Description = '',
        Default = false,
    }):OnChanged(function(p569)
        _G.AutoComeHydra = p569
    end)
    _RunService.RenderStepped:Connect(function()
        if not _G.AutoComeHydra then
            return
        end

        local _Character4 = _Players.LocalPlayer.Character

        if not (_Character4 and _Character4:FindFirstChild('Humanoid')) then
            return
        end

        local _Humanoid3 = _Character4.Humanoid
        local v572, v573, v574 = pairs(_Workspace.Boats:GetChildren())
        local v575 = nil

        while true do
            local v576

            v574, v576 = v572(v573, v574)

            if v574 == nil then
                _VehicleSeat4 = v575

                break
            end

            local _VehicleSeat4 = v576:FindFirstChild('VehicleSeat')

            if _VehicleSeat4 and _VehicleSeat4.Occupant == _Humanoid3 then
                break
            end
        end

        if _VehicleSeat4 then
            _VehicleSeat4.MaxSpeed = u502

            local v578 = CFrame.new(5193.9375, -0.04690289497375488, 1631.578369140625)
            local _Position9 = _VehicleSeat4.Position
            local _Position10 = v578.Position
            local v581 = (_Position10 - _Position9).unit * _VehicleSeat4.MaxSpeed * _RunService.RenderStepped:Wait()

            _VehicleSeat4.CFrame = _VehicleSeat4.CFrame + v581

            CFrame.new(_Position9, _Position10)

            _VehicleSeat4.CFrame = CFrame.new(_VehicleSeat4.Position, _Position10)

            if (_VehicleSeat4.Position - _Position10).magnitude < 120 then
                _G.AutoComeHydra = false

                _VirtualInputManager:SendKeyEvent(false, 'W', false, game)
            end
        end
    end)
    u3.Sea:AddButton({
        Title = 'Bay \u{110}\u{1ebf}n Khu V\u{1ef1}c Mua Thuy\u{1ec1}n',
        Description = '',
        Callback = function()
            Tween2(CFrame.new(-16917.154296875, 7.757596015930176, 511.8203125))
        end,
    })

    local u582 = {}
    local _DropdownBoat = u3.Sea:AddDropdown('DropdownBoat', {
        Title = 'Ch\u{1ecd}n Thuy\u{1ec1}n',
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
    _DropdownBoat:OnChanged(function(p584)
        selectedBoat = p584
    end)

    local function u591(p585)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'BuyBoat',
            p585,
        }))
        task.delay(2, function()
            local v586, v587, v588 = pairs(_Workspace.Boats:GetChildren())

            while true do
                local v589

                v588, v589 = v586(v587, v588)

                if v588 == nil then
                    break
                end
                if v589:IsA('Model') and v589.Name == p585 then
                    local _VehicleSeat5 = v589:FindFirstChild('VehicleSeat')

                    if _VehicleSeat5 and not _VehicleSeat5.Occupant then
                        u582[p585] = _VehicleSeat5
                    end
                end
            end
        end)
    end
    local function u596()
        local v592, v593, v594 = pairs(u582)

        while true do
            local v595

            v594, v595 = v592(v593, v594)

            if v594 == nil then
                break
            end
            if v595 and (v595.Parent and (v595.Name == 'VehicleSeat' and not v595.Occupant)) then
                Tween2(v595.CFrame)
            end
        end
    end

    game:GetService('RunService').RenderStepped:Connect(function()
        local v597, v598, v599 = pairs(u582)

        while true do
            local v600

            v599, v600 = v597(v598, v599)

            if v599 == nil then
                break
            end
            if v600 and (v600.Parent and (v600.Name == 'VehicleSeat' and not v600.Occupant)) then
                u582[v599] = v600
            end
        end
    end)
    u3.Sea:AddButton({
        Title = 'Mua Thuy\u{1ec1}n',
        Description = '',
        Callback = function()
            u591(selectedBoat)
        end,
    })
    u3.Sea:AddButton({
        Title = 'Bay \u{110}\u{1ebf}n Thuy\u{1ec1}n',
        Description = 'Duy Nh\u{1ea5}t Thuy\u{1ec1}n B\u{1ea1}n Mua \u{1ede} Ch\u{1ed7} Ch\u{1ecd}n',
        Callback = function()
            u596()
        end,
    })
    u3.Sea:AddToggle('ToggleTerrorshark', {
        Title = '\u{fffd}\u{e1}nh C\u{e1} M\u{1ead}p T\u{1ead}n Th\u{1ebf}',
        Description = '',
        Default = false,
    }):OnChanged(function(p601)
        _G.AutoTerrorshark = p601
    end)
    _Options.ToggleTerrorshark:SetValue(false)

    _G.IsFlying = false

    spawn(function()
        while wait() do
            if _G.AutoTerrorshark then
                pcall(function()
                    local _Character5 = game.Players.LocalPlayer.Character

                    if _Character5 and _Character5:FindFirstChild('Humanoid') then
                        if _Character5.Humanoid.Health < 6000 and not _G.IsFlying then
                            _G.IsFlying = true

                            Tween(CFrame.new(_Character5.HumanoidRootPart.Position.X, 360, _Character5.HumanoidRootPart.Position.Z))
                        end
                        if _G.IsFlying and _Character5.Humanoid.Health >= 8000 then
                            _G.IsFlying = false
                        end
                        if not _G.IsFlying and _Character5.Humanoid.Health >= 8000 then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') then
                                local v603, v604, v605 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v606

                                    v605, v606 = v603(v604, v605)

                                    if v605 == nil then
                                        break
                                    end
                                    if v606.Name == 'Terrorshark' and (v606:FindFirstChild('Humanoid') and (v606:FindFirstChild('HumanoidRootPart') and v606.Humanoid.Health > 0)) then
                                        while true do
                                            wait(_G.Fast_Delay)

                                            if _Character5.Humanoid.Health < 6000 then
                                                _G.IsFlying = true

                                                Tween(CFrame.new(_Character5.HumanoidRootPart.Position.X, 360, _Character5.HumanoidRootPart.Position.Z))

                                                break
                                            end

                                            AttackNoCoolDown()
                                            AutoHaki()
                                            EquipTool(SelectWeapon)

                                            v606.HumanoidRootPart.CanCollide = false
                                            v606.Humanoid.WalkSpeed = 0
                                            v606.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                            Tween(v606.HumanoidRootPart.CFrame * Pos)

                                            if not _G.AutoTerrorshark or (not v606.Parent or (v606.Humanoid.Health <= 0 or _G.IsFlying)) then
                                                break
                                            end
                                        end
                                    end
                                end
                            elseif game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark') then
                                Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark').HumanoidRootPart.CFrame * Pos)
                            end
                        end
                    end
                end)
            end
        end
    end)
    u3.Sea:AddToggle('TogglePiranha', {
        Title = '\u{fffd}\u{e1}nh Piranha',
        Description = '',
        Default = false,
    }):OnChanged(function(p607)
        _G.farmpiranya = p607
    end)
    _Options.TogglePiranha:SetValue(false)
    spawn(function()
        while wait() do
            if _G.farmpiranya then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Piranha') then
                        local v608, v609, v610 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v611

                            v610, v611 = v608(v609, v610)

                            if v610 == nil then
                                break
                            end
                            if v611.Name == 'Piranha' and (v611:FindFirstChild('Humanoid') and (v611:FindFirstChild('HumanoidRootPart') and v611.Humanoid.Health > 0)) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v611.HumanoidRootPart.CanCollide = false
                                    v611.Humanoid.WalkSpeed = 0
                                    v611.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v611.HumanoidRootPart.CFrame * Pos)
                                until not _G.farmpiranya or (not v611.Parent or v611.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Piranha') then
                        Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Piranha').HumanoidRootPart.CFrame * Pos)
                    end
                end)
            end
        end
    end)
    u3.Sea:AddToggle('ToggleShark', {
        Title = '\u{fffd}\u{e1}nh C\u{e1} M\u{1ead}p',
        Description = '',
        Default = false,
    }):OnChanged(function(p612)
        _G.AutoShark = p612
    end)
    _Options.ToggleShark:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoShark then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Shark') then
                        local v613, v614, v615 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v616

                            v615, v616 = v613(v614, v615)

                            if v615 == nil then
                                break
                            end
                            if v616.Name == 'Shark' and (v616:FindFirstChild('Humanoid') and (v616:FindFirstChild('HumanoidRootPart') and v616.Humanoid.Health > 0)) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v616.HumanoidRootPart.CanCollide = false
                                    v616.Humanoid.WalkSpeed = 0
                                    v616.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v616.HumanoidRootPart.CFrame * Pos)

                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                until not _G.AutoShark or (not v616.Parent or v616.Humanoid.Health <= 0)
                            end
                        end
                    else
                        Tween(game:GetService('Workspace').Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0))

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark') then
                            Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark').HumanoidRootPart.CFrame * Pos)
                        end
                    end
                end)
            end
        end
    end)
    u3.Sea:AddToggle('ToggleFishCrew', {
        Title = '\u{fffd}\u{e1}nh T\u{e0}u C\u{e1}',
        Description = '',
        Default = false,
    }):OnChanged(function(p617)
        _G.AutoFishCrew = p617
    end)
    _Options.ToggleFishCrew:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoFishCrew then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') then
                        local v618, v619, v620 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v621

                            v620, v621 = v618(v619, v620)

                            if v620 == nil then
                                break
                            end
                            if v621.Name == 'Fish Crew Member' and (v621:FindFirstChild('Humanoid') and (v621:FindFirstChild('HumanoidRootPart') and v621.Humanoid.Health > 0)) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v621.HumanoidRootPart.CanCollide = false
                                    v621.Humanoid.WalkSpeed = 0
                                    v621.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v621.HumanoidRootPart.CFrame * Pos)

                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                until not _G.AutoFishCrew or (not v621.Parent or v621.Humanoid.Health <= 0)
                            end
                        end
                    else
                        Tween(game:GetService('Workspace').Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0))

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Fish Crew Member') then
                            Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Fish Crew Member').HumanoidRootPart.CFrame * Pos)
                        end
                    end
                end)
            end
        end
    end)
    u3.Sea:AddToggle('ToggleShip', {
        Title = '\u{fffd}\u{e1}nh T\u{e0}u',
        Description = '',
        Default = false,
    }):OnChanged(function(p622)
        _G.Ship = p622
    end)
    _Options.ToggleShip:SetValue(false)

    function CheckPirateBoat()
        local v623 = next
        local v624, v625 = game:GetService('Workspace').Enemies:GetChildren()
        local v626 = {
            'PirateGrandBrigade',
            'PirateBrigade',
        }

        while true do
            local v627

            v625, v627 = v623(v624, v625)

            if v625 == nil then
                break
            end
            if table.find(v626, v627.Name) and (v627:FindFirstChild('Health') and v627.Health.Value > 0) then
                return v627
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

                        local v628 = CheckPirateBoat()

                        repeat
                            wait()
                            spawn(Tween(v628.Engine.CFrame * CFrame.new(0, -20, 0)), 1)

                            AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                            Skillaimbot = true
                            AutoSkill = false
                        until not v628 or (not v628.Parent or (v628.Health.Value <= 0 or not CheckPirateBoat()))

                        Skillaimbot = true
                        AutoSkill = false
                    end
                end)
            end
        end
    end)
    u3.Sea:AddToggle('ToggleGhostShip', {
        Title = '\u{fffd}\u{e1}nh T\u{e0}u Ma',
        Description = '',
        Default = false,
    }):OnChanged(function(p629)
        _G.GhostShip = p629
    end)
    _Options.ToggleGhostShip:SetValue(false)

    function CheckPirateBoat()
        local v630 = next
        local v631, v632 = game:GetService('Workspace').Enemies:GetChildren()
        local v633 = {
            'FishBoat',
        }

        while true do
            local v634

            v632, v634 = v630(v631, v632)

            if v632 == nil then
                break
            end
            if table.find(v633, v634.Name) and (v634:FindFirstChild('Health') and v634.Health.Value > 0) then
                return v634
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

                    local v635 = CheckPirateBoat()

                    repeat
                        wait()
                        spawn(Tween(v635.Engine.CFrame * CFrame.new(0, -20, 0), 1))

                        AutoSkill = true
                        Skillaimbot = true
                        AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                    until v635.Parent or (v635.Health.Value <= 0 or not CheckPirateBoat())

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

                        local v636, v637, v638 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v639

                            v638, v639 = v636(v637, v638)

                            if v638 == nil then
                                break
                            end
                            if v639:IsA('Tool') and v639.ToolTip == 'Melee' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v639)
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

                        local v640, v641, v642 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v643

                            v642, v643 = v640(v641, v642)

                            if v642 == nil then
                                break
                            end
                            if v643:IsA('Tool') and v643.ToolTip == 'Blox Fruit' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v643)
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

                        local v644, v645, v646 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v647

                            v646, v647 = v644(v645, v646)

                            if v646 == nil then
                                break
                            end
                            if v647:IsA('Tool') and v647.ToolTip == 'Sword' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v647)
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

                        local v648, v649, v650 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v651

                            v650, v651 = v648(v649, v650)

                            if v650 == nil then
                                break
                            end
                            if v651:IsA('Tool') and v651.ToolTip == 'Gun' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v651)
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
    u3.Main:AddSection('Elite')

    local u652 = u3.Main:AddParagraph({
        Title = 'Tr\u{1ea1}ng Th\u{e1}i Elite',
        Content = '',
    })

    spawn(function()
        while wait() do
            pcall(function()
                if game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') or (game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') or (game:GetService('ReplicatedStorage'):FindFirstChild('Urban') or (game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban'))))) then
                    u652:SetDesc('Elite Boss: \u{2705}\u{fe0f} | Killed:  ' .. game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress'))
                else
                    u652:SetDesc('Elite Boss: \u{274c}\u{fe0f} | Killed: ' .. game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress'))
                end
            end)
        end
    end)
    u3.Main:AddToggle('ToggleElite', {
        Title = '\u{fffd}\u{e1}nh Elite',
        Description = '',
        Default = false,
    }):OnChanged(function(p653)
        _G.AutoElite = p653
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
                            local v654, v655, v656 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v657

                                v656, v657 = v654(v655, v656)

                                if v656 == nil then
                                    break
                                end
                                if v657:FindFirstChild('Humanoid') and (v657:FindFirstChild('HumanoidRootPart') and (v657.Humanoid.Health > 0 and (v657.Name == 'Diablo' or (v657.Name == 'Deandre' or v657.Name == 'Urban')))) then
                                    repeat
                                        wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        EquipTool(SelectWeapon)
                                        AutoHaki()
                                        Tween2(v657.HumanoidRootPart.CFrame * Pos)

                                        v657.Humanoid.WalkSpeed = 0
                                        v657.HumanoidRootPart.CanCollide = false
                                        v657.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    until _G.AutoElite == false or (v657.Humanoid.Health <= 0 or not v657.Parent)
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
    u3.Sea:AddSection('\u{fffd}\u{1ea3}o B\u{ed} \u{1ea8}n')

    local u658 = u3.Sea:AddParagraph({
        Title = 'Tr\u{1ea1}ng Th\u{e1}i',
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
                    MirageStatus = '\u{fffd}\u{fffd}\u{fe0f}'
                else
                    MirageStatus = '\u{fffd}\u{fffd}\u{fe0f}'
                end
            end)
        end
    end)
    spawn(function()
        pcall(function()
            while wait() do
                u658:SetDesc('\u{fffd}\u{1ea3}o B\u{ed} \u{1ea8}n: ' .. MirageStatus .. ' | Tr\u{103}ng Tr\u{f2}n: ' .. FullMoonStatus)
            end
        end)
    end)
    u3.Sea:AddButton({
        Title = 'Bay \u{110}\u{1ebf}n Ch\u{1ed7} Cao',
        Description = '',
        Callback = function()
            TweenToHighestPoint()
        end,
    })

    function TweenToHighestPoint()
        local v660 = getHighestPoint()

        if v660 then
            Tween2(v660.CFrame * CFrame.new(0, 211.88, 0))
        end
    end
    function getHighestPoint()
        if not game.Workspace.Map:FindFirstChild('MysticIsland') then
            return nil
        end

        local v661, v662, v663 = pairs(game:GetService('Workspace').Map.MysticIsland:GetDescendants())

        while true do
            local v664

            v663, v664 = v661(v662, v663)

            if v663 == nil then
                break
            end
            if v664:IsA('MeshPart') and v664.MeshId == 'rbxassetid://6745037796' then
                return v664
            end
        end
    end
end

u3.Sea:AddToggle('ToggleTpAdvanced', {
    Title = 'Bay \u{110}\u{1ebf}n Advanced Fruit Dealer',
    Description = '',
    Default = false,
}):OnChanged(function(p665)
    _G.AutoTpAdvanced = p665
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
u3.Sea:AddToggle('ToggleTweenGear', {
    Title = 'Bay \u{110}\u{1ebf}n B\u{e1}nh R\u{103}ng',
    Description = '',
    Default = false,
}):OnChanged(function(p668)
    _G.TweenToGear = p668
end)
_Options.ToggleTweenGear:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenToGear and game:GetService('Workspace').Map:FindFirstChild('MysticIsland') then
                local v669, v670, v671 = pairs(game:GetService('Workspace').Map.MysticIsland:GetChildren())

                while true do
                    local v672

                    v671, v672 = v669(v670, v671)

                    if v671 == nil then
                        break
                    end
                    if v672:IsA('MeshPart') and v672.Material == Enum.Material.Neon then
                        Tween2(v672.CFrame)
                    end
                end
            end
        end
    end)
end)
u3.Sea:AddToggle('Togglelockmoon', {
    Title = 'Nh\u{ec}n Tr\u{103}ng V\u{e0} D\u{f9}ng T\u{1ed9}c',
    Description = '',
    Default = false,
}):OnChanged(function(p673)
    _G.AutoLockMoon = p673
end)
_Options.Togglelockmoon:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon then
                local v674 = game.Lighting:GetMoonDirection()
                local v675 = game.Workspace.CurrentCamera.CFrame.p + v674 * 100

                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, v675)
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
u3.Item:AddToggle('ToggleAutoSaber', {
    Title = 'Saber',
    Description = '',
    Default = false,
}):OnChanged(function(p676)
    _G.Auto_Saber = p676
end)
_Options.ToggleAutoSaber:SetValue(false)
spawn(function()
    while task.wait() do
        if _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
            pcall(function()
                if game:GetService('Workspace').Map.Jungle.Final.Part.Transparency ~= 0 then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Saber Expert') or game:GetService('ReplicatedStorage'):FindFirstChild('Saber Expert') then
                        local v677, v678, v679 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v680

                            v679, v680 = v677(v678, v679)

                            if v679 == nil then
                                break
                            end
                            if v680:FindFirstChild('Humanoid') and (v680:FindFirstChild('HumanoidRootPart') and (v680.Humanoid.Health > 0 and v680.Name == 'Saber Expert')) then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    EquipTool(SelectWeapon)
                                    Tween(v680.HumanoidRootPart.CFrame * Pos)

                                    v680.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v680.HumanoidRootPart.Transparency = 1
                                    v680.Humanoid.JumpPower = 0
                                    v680.Humanoid.WalkSpeed = 0
                                    v680.HumanoidRootPart.CanCollide = false
                                    bringmob = true
                                    FarmPos = v680.HumanoidRootPart.CFrame
                                    MonFarm = v680.Name

                                    AttackNoCoolDown()
                                until v680.Humanoid.Health <= 0 or not _G.Auto_Saber

                                bringmob = true

                                if v680.Humanoid.Health <= 0 then
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
                                        Tween(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-9, 0.481375456, 2.53851997e-8, 1, -5.79995607e-8, -0.481375456, 6.30572643e-8, 0.876514494))
                                    end
                                elseif game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader') or game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader') then
                                    Tween(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))

                                    local v681, v682, v683 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                    while true do
                                        local v684

                                        v683, v684 = v681(v682, v683)

                                        if v683 == nil then
                                            break
                                        end
                                        if v684.Name == 'Mob Leader' then
                                            if game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader [Lv. 120] [Boss]') and (v684:FindFirstChild('Humanoid') and (v684:FindFirstChild('HumanoidRootPart') and v684.Humanoid.Health > 0)) then
                                                repeat
                                                    task.wait(_G.Fast_Delay)
                                                    AutoHaki()
                                                    EquipTool(SelectWeapon)

                                                    v684.HumanoidRootPart.CanCollide = false
                                                    v684.Humanoid.WalkSpeed = 0
                                                    v684.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                                    Tween(v684.HumanoidRootPart.CFrame * Pos)
                                                    AttackNoCoolDown()
                                                until v684.Humanoid.Health <= 0 or not _G.Auto_Saber
                                            end
                                            if game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader') then
                                                Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader').HumanoidRootPart.CFrame * Pos)
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
                        Tween(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-9, 0.761243105, -5.70652914e-10, 1, 1.20584542e-9, -0.761243105, 3.4754488199999996e-10, -0.648466587))
                    else
                        Tween(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.0000342372805, -0.258850515, 0.965917408))
                    end
                elseif (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-9, -0.928667724, 3.97099491e-8, 1, 1.91679348e-8, 0.928667724, -4.39869794e-8, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 100 then
                    Tween(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-9, -0.928667724, 3.97099491e-8, 1, 1.91679348e-8, 0.928667724, -4.39869794e-8, 0.37091279))
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
u3.Item:AddToggle('ToggleAutoPoleV1', {
    Title = 'Pole V1',
    Description = '',
    Default = false,
}):OnChanged(function(p685)
    _G.Auto_PoleV1 = p685
end)
_Options.ToggleAutoPoleV1:SetValue(false)

local u686 = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)

spawn(function()
    while wait() do
        if _G.Auto_PoleV1 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Thunder God') then
                    local v687, v688, v689 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v690

                        v689, v690 = v687(v688, v689)

                        if v689 == nil then
                            break
                        end
                        if v690.Name == 'Thunder God' and (v690:FindFirstChild('Humanoid') and (v690:FindFirstChild('HumanoidRootPart') and v690.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v690.HumanoidRootPart.CanCollide = false
                                v690.Humanoid.WalkSpeed = 0
                                v690.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v690.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_PoleV1 or (not v690.Parent or v690.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u686.Position).Magnitude < 1500 then
                    Tween(u686)
                end

                Tween(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625))

                if game:GetService('ReplicatedStorage'):FindFirstChild('Thunder God') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Thunder God').HumanoidRootPart.CFrame * Pos)
                end
            end)
        end
    end
end)
u3.Item:AddToggle('ToggleAutoSaw', {
    Title = 'C\u{1b0}a C\u{e1} M\u{1ead}p',
    Description = '',
    Default = false,
}):OnChanged(function(p691)
    _G.Auto_Saw = p691
end)
_Options.ToggleAutoSaw:SetValue(false)

local u692 = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)

spawn(function()
    while wait() do
        if _G.Auto_Saw then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('The Saw') then
                    local v693, v694, v695 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v696

                        v695, v696 = v693(v694, v695)

                        if v695 == nil then
                            break
                        end
                        if v696.Name == 'The Saw' and (v696:FindFirstChild('Humanoid') and (v696:FindFirstChild('HumanoidRootPart') and v696.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v696.HumanoidRootPart.CanCollide = false
                                v696.Humanoid.WalkSpeed = 0
                                v696.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v696.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_Saw or (not v696.Parent or v696.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u692.Position).Magnitude < 1500 then
                    Tween(u692)
                end

                Tween(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))

                if game:GetService('ReplicatedStorage'):FindFirstChild('The Saw') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('The Saw').HumanoidRootPart.CFrame * Pos)
                end
            end)
        end
    end
end)
u3.Item:AddToggle('ToggleAutoWarden', {
    Title = 'Ki\u{1ebf}m Qu\u{1ea3}n Ng\u{1ee5}c',
    Description = '',
    Default = false,
}):OnChanged(function(p697)
    _G.Auto_Warden = p697
end)
_Options.ToggleAutoWarden:SetValue(false)

local u698 = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976563)

spawn(function()
    while wait() do
        if _G.Auto_Warden then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Chief Warden') then
                    local v699, v700, v701 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v702

                        v701, v702 = v699(v700, v701)

                        if v701 == nil then
                            break
                        end
                        if v702.Name == 'Chief Warden' and (v702:FindFirstChild('Humanoid') and (v702:FindFirstChild('HumanoidRootPart') and v702.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v702.HumanoidRootPart.CanCollide = false
                                v702.Humanoid.WalkSpeed = 0
                                v702.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v702.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_Warden or (not v702.Parent or v702.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u698.Position).Magnitude < 1500 then
                    Tween(u698)
                end

                Tween(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976563))

                if game:GetService('ReplicatedStorage'):FindFirstChild('Chief Warden') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Chief Warden').HumanoidRootPart.CFrame * Pos)
                end
            end)
        end
    end
end)

if Sea3 then
    u3.Item:AddToggle('ToggleHallow', {
        Title = 'L\u{1b0}\u{1ee1}i H\u{e1}i',
        Description = '',
        Default = false,
    }):OnChanged(function(p703)
        AutoHallowSycthe = p703
    end)
    _Options.ToggleHallow:SetValue(false)
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') then
                        local v704, v705, v706 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v707

                            v706, v707 = v704(v705, v706)

                            if v706 == nil then
                                break
                            end
                            if string.find(v707.Name, 'Soul Reaper') then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v707.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v707.HumanoidRootPart.CFrame * Pos)

                                    v707.HumanoidRootPart.Transparency = 1

                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until v707.Humanoid.Health <= 0 or AutoHallowSycthe == false
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
                        Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper').HumanoidRootPart.CFrame * Pos)
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
    u3.Item:AddToggle('ToggleYama', {
        Title = 'Yama',
        Description = '',
        Default = false,
    }):OnChanged(function(p708)
        _G.AutoYama = p708
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
    u3.Item:AddToggle('ToggleTushita', {
        Title = 'Tushita',
        Description = '',
        Default = false,
    }):OnChanged(function(p709)
        AutoTushita = p709
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

        local v710, v711, v712 = pairs(game:GetService('Workspace').Enemies:GetChildren())
        local v713

        v712, v713 = v710(v711, v712)

        if v712 ~= nil then
        end
        if v713.Name == ('Longma' or v713.Name == 'Longma') and (v713.Humanoid.Health > 0 and (v713:IsA('Model') and (v713:FindFirstChild('Humanoid') and v713:FindFirstChild('HumanoidRootPart')))) then
        else
        end

        wait(_G.Fast_Delay)
        AttackNoCoolDown()
        AutoHaki()

        if not game.Players.LocalPlayer.Character:FindFirstChild(SelectWeapon) then
            wait()
            EquipTool(SelectWeapon)
        end

        FarmPos = v713.HumanoidRootPart.CFrame
        v713.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
        v713.Humanoid.JumpPower = 0
        v713.Humanoid.WalkSpeed = 0
        v713.HumanoidRootPart.CanCollide = false

        v713.Humanoid:ChangeState(11)
        Tween(v713.HumanoidRootPart.CFrame * Pos)

        if AutoTushita and (v713.Parent and v713.Humanoid.Health > 0) then
        else
        end
    end)
    u3.Item:AddToggle('ToggleHoly', {
        Title = '\u{fffd}\u{1ed1}t \u{110}u\u{1ed1}c',
        Description = '',
        Default = false,
    }):OnChanged(function(p714)
        _G.Auto_Holy_Torch = p714
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

u3.Item:AddToggle('ToggleAutoCanvander', {
    Title = 'Canvander',
    Description = '',
    Default = false,
}):OnChanged(function(p715)
    _G.Auto_Canvander = p715
end)
_Options.ToggleAutoCanvander:SetValue(false)

local u716 = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875)

spawn(function()
    while wait() do
        if _G.Auto_Canvander then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Beautiful Pirate') then
                    local v717, v718, v719 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v720

                        v719, v720 = v717(v718, v719)

                        if v719 == nil then
                            break
                        end
                        if v720.Name == 'Beautiful Pirate' and (v720:FindFirstChild('Humanoid') and (v720:FindFirstChild('HumanoidRootPart') and v720.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v720.HumanoidRootPart.CanCollide = false
                                v720.Humanoid.WalkSpeed = 0
                                v720.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v720.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_Canvander or (not v720.Parent or v720.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u716.Position).Magnitude < 1500 then
                    Tween(u716)
                end

                Tween(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))

                if game:GetService('ReplicatedStorage'):FindFirstChild('Beautiful Pirate') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Beautiful Pirate').HumanoidRootPart.CFrame * Pos)
                end
            end)
        end
    end
end)
u3.Item:AddToggle('ToggleAutoMusketeerHat', {
    Title = 'M\u{169} L\u{ed}nh Ng\u{1ef1} L\u{e2}m',
    Description = '',
    Default = false,
}):OnChanged(function(p721)
    _G.Auto_MusketeerHat = p721
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
                            local v722, v723, v724 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local u725

                                v724, u725 = v722(v723, v724)

                                if v724 == nil then
                                    break
                                end
                                if u725.Name == 'Captain Elephant' then
                                    OldCFrameElephant = u725.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        pcall(function()
                                            EquipTool(SelectWeapon)
                                            AutoHaki()

                                            u725.HumanoidRootPart.CanCollide = false
                                            u725.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                            Tween(u725.HumanoidRootPart.CFrame * Pos)

                                            u725.HumanoidRootPart.CanCollide = false
                                            u725.HumanoidRootPart.CFrame = OldCFrameElephant

                                            AttackNoCoolDown()
                                        end)
                                    until _G.Auto_MusketeerHat == false or (u725.Humanoid.Health <= 0 or not u725.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
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
                        local v726, v727, v728 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local u729

                            v728, u729 = v726(v727, v728)

                            if v728 == nil then
                                break
                            end
                            if u729.Name == 'Forest Pirate' then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    pcall(function()
                                        EquipTool(SelectWeapon)
                                        AutoHaki()

                                        u729.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        Tween(u729.HumanoidRootPart.CFrame * Pos)

                                        u729.HumanoidRootPart.CanCollide = false

                                        AttackNoCoolDown()

                                        PosMon = u729.HumanoidRootPart.CFrame
                                        MonFarm = u729.Name
                                        bringmob = true
                                    end)
                                until _G.Auto_MusketeerHat == false or (not u729.Parent or u729.Humanoid.Health <= 0) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false

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
u3.Item:AddToggle('ToggleAutoObservationV2', {
    Title = 'Haki Quan S\u{e1}t V2',
    Description = '',
    Default = false,
}):OnChanged(function(p730)
    _G.Auto_ObservationV2 = p730
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
                        local v731, v732, v733 = pairs(game:GetService('Workspace'):GetDescendants())

                        while true do
                            local v734

                            v733, v734 = v731(v732, v733)

                            if v733 == nil then
                                break
                            end
                            if v734.Name == 'Apple' or (v734.Name == 'Banana' or v734.Name == 'Pineapple') then
                                v734.Handle.CFrame = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)

                                wait()
                                firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v734.Handle, 0)
                                wait()
                            end
                        end
                    end
                end
            end
        end)
    end
end)
u3.Item:AddToggle('ToggleAutoRainbowHaki', {
    Title = 'Haki 7 M\u{e0}u',
    Description = '',
    Default = false,
}):OnChanged(function(p735)
    _G.Auto_RainbowHaki = p735
end)
_Options.ToggleAutoRainbowHaki:SetValue(false)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_RainbowHaki then
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible then
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Stone') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Stone') then
                            local v736, v737, v738 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v739

                                v738, v739 = v736(v737, v738)

                                if v738 == nil then
                                    break
                                end
                                if v739.Name == 'Stone' then
                                    OldCFrameRainbow = v739.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v739.HumanoidRootPart.CFrame * Pos)

                                        v739.HumanoidRootPart.CanCollide = false
                                        v739.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v739.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v739.Humanoid.Health <= 0 or not v739.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(-1086.11621, 38.8425903, 6768.71436))
                        end
                    elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Hydra Leader') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Hydra Leader') then
                            local v740, v741, v742 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v743

                                v742, v743 = v740(v741, v742)

                                if v742 == nil then
                                    break
                                end
                                if v743.Name == 'Hydra Leader' then
                                    OldCFrameRainbow = v743.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v743.HumanoidRootPart.CFrame * Pos)

                                        v743.HumanoidRootPart.CanCollide = false
                                        v743.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v743.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v743.Humanoid.Health <= 0 or not v743.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(5713.98877, 601.922974, 202.751251))
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Kilo Admiral') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Kilo Admiral') then
                            local v744, v745, v746 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v747

                                v746, v747 = v744(v745, v746)

                                if v746 == nil then
                                    break
                                end
                                if v747.Name == 'Kilo Admiral' then
                                    OldCFrameRainbow = v747.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v747.HumanoidRootPart.CFrame * Pos)

                                        v747.HumanoidRootPart.CanCollide = false
                                        v747.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v747.HumanoidRootPart.CFrame = OldCFrameRainbow

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v747.Humanoid.Health <= 0 or not v747.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(2877.61743, 423.558685, -7207.31006))
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Captain Elephant') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                            local v748, v749, v750 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v751

                                v750, v751 = v748(v749, v750)

                                if v750 == nil then
                                    break
                                end
                                if v751.Name == 'Captain Elephant' then
                                    OldCFrameRainbow = v751.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v751.HumanoidRootPart.CFrame * Pos)

                                        v751.HumanoidRootPart.CanCollide = false
                                        v751.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v751.HumanoidRootPart.CFrame = OldCFrameRainbow

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v751.Humanoid.Health <= 0 or not v751.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(-13485.0283, 331.709259, -8012.4873))
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Beautiful Pirate') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Beautiful Pirate') then
                            local v752, v753, v754 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v755

                                v754, v755 = v752(v753, v754)

                                if v754 == nil then
                                    break
                                end
                                if v755.Name == 'Beautiful Pirate' then
                                    OldCFrameRainbow = v755.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v755.HumanoidRootPart.CFrame * Pos)

                                        v755.HumanoidRootPart.CanCollide = false
                                        v755.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v755.HumanoidRootPart.CFrame = OldCFrameRainbow

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v755.Humanoid.Health <= 0 or not v755.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
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
u3.Item:AddToggle('ToggleAutoSkullGuitar', {
    Title = 'Skull Guitar',
    Description = '',
    Default = false,
}):OnChanged(function(p756)
    _G.Auto_SkullGuitar = p756
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
                            local v757, v758, v759 = pairs(game.Workspace.Enemies:GetChildren())

                            while true do
                                local v760

                                v759, v760 = v757(v758, v759)

                                if v759 == nil then
                                    break
                                end
                                if v760:FindFirstChild('HumanoidRootPart') and (v760:FindFirstChild('Humanoid') and (v760.Humanoid.Health > 0 and v760.Name == 'Living Zombie')) then
                                    EquipTool(SelectWeapon)

                                    v760.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v760.HumanoidRootPart.Transparency = 1
                                    v760.Humanoid.JumpPower = 0
                                    v760.Humanoid.WalkSpeed = 0
                                    v760.HumanoidRootPart.CanCollide = false
                                    v760.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)

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
u3.Item:AddToggle('ToggleAutoBuddy', {
    Title = 'Ki\u{1ebf}m Buddy',
    Description = '',
    Default = false,
}):OnChanged(function(p761)
    _G.Auto_Buddy = p761
end)
_Options.ToggleAutoBuddy:SetValue(false)

local u762 = CFrame.new(-731.2034301757813, 381.5658874511719, -11198.4951171875)

spawn(function()
    while wait() do
        if _G.Auto_Buddy then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Cake Queen') then
                    local v763, v764, v765 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v766

                        v765, v766 = v763(v764, v765)

                        if v765 == nil then
                            break
                        end
                        if v766.Name == 'Cake Queen' and (v766:FindFirstChild('Humanoid') and (v766:FindFirstChild('HumanoidRootPart') and v766.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v766.HumanoidRootPart.CanCollide = false
                                v766.Humanoid.WalkSpeed = 0
                                v766.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v766.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_Buddy or (not v766.Parent or v766.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u762.Position).Magnitude < 1500 then
                    Tween(u762)
                end

                Tween(CFrame.new(-731.2034301757813, 381.5658874511719, -11198.4951171875))

                if game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen').HumanoidRootPart.CFrame * Pos)
                end
            end)
        end
    end
end)
u3.Item:AddToggle('ToggleAutoDualKatana', {
    Title = 'Song Ki\u{1ebf}m Nguy\u{1ec1}n R\u{1ee7}a',
    Description = '',
    Default = false,
}):OnChanged(function(p767)
    _G.Auto_DualKatana = p767
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
                                                    local v768, v769, v770 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                                    while true do
                                                        local v771

                                                        v770, v771 = v768(v769, v770)

                                                        if v770 == nil then
                                                            break
                                                        end
                                                        if (v771.Name == 'Cursed Skeleton Boss' or v771.Name == 'Cursed Skeleton') and v771.Humanoid.Health > 0 then
                                                            EquipTool(Sword)
                                                            Tween(v771.HumanoidRootPart.CFrame * pos)

                                                            v771.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                            v771.HumanoidRootPart.Transparency = 1
                                                            v771.Humanoid.JumpPower = 0
                                                            v771.Humanoid.WalkSpeed = 0
                                                            v771.HumanoidRootPart.CanCollide = false
                                                            bringmob = true
                                                            FarmPos = v771.HumanoidRootPart.CFrame
                                                            MonFarm = v771.Name

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
                    local v772, v773, v774 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v775

                        v774, v775 = v772(v773, v774)

                        if v774 == nil then
                            break
                        end
                        if v775.Name == 'Mythological Pirate' then
                            repeat
                                wait()
                                Tween(v775.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2))
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
                local v776, v777, v778 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v779

                    v778, v779 = v776(v777, v778)

                    if v778 == nil then
                        break
                    end
                    if v779:FindFirstChild('HazeESP') then
                        v779.HazeESP.Size = UDim2.new(50, 50, 50, 50)
                        v779.HazeESP.MaxDistance = 'inf'
                    end
                end

                local v780, v781, v782 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                while true do
                    local v783

                    v782, v783 = v780(v781, v782)

                    if v782 == nil then
                        break
                    end
                    if v783:FindFirstChild('HazeESP') then
                        v783.HazeESP.Size = UDim2.new(50, 50, 50, 50)
                        v783.HazeESP.MaxDistance = 'inf'
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            local v784, v785, v786 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            while true do
                local v787

                v786, v787 = v784(v785, v786)

                if v786 == nil then
                    break
                end
                if Auto_Quest_Yama_2 and (v787:FindFirstChild('HazeESP') and (v787.HumanoidRootPart.Position - FarmPossEsp.Position).magnitude <= 300) then
                    v787.HumanoidRootPart.CFrame = FarmPossEsp
                    v787.HumanoidRootPart.CanCollide = false
                    v787.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                    if not v787.HumanoidRootPart:FindFirstChild('BodyVelocity') then
                        local _BodyVelocity2 = Instance.new('BodyVelocity', v787.HumanoidRootPart)

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
                local v789, v790, v791 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    while true do
                        local v792

                        v791, v792 = v789(v790, v791)

                        if v791 == nil then
                            return
                        end
                        if v792:FindFirstChild('HazeESP') then
                            break
                        end

                        local v793, v794, v795 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                        while true do
                            local v796

                            v795, v796 = v793(v794, v795)

                            if v795 == nil then
                                break
                            end
                            if v796:FindFirstChild('HazeESP') then
                                if (v796.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                                    Tween(v796.HumanoidRootPart.CFrame * Pos)
                                else
                                    Tween(v796.HumanoidRootPart.CFrameMon * Pos)
                                end
                            end
                        end
                    end

                    wait()

                    if (v792.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                        EquipTool(Sword)
                        Tween(v792.HumanoidRootPart.CFrame * Pos)

                        v792.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        v792.HumanoidRootPart.Transparency = 1
                        v792.Humanoid.JumpPower = 0
                        v792.Humanoid.WalkSpeed = 0
                        v792.HumanoidRootPart.CanCollide = false
                        FarmPos = v792.HumanoidRootPart.CFrame
                        MonFarm = v792.Name

                        AttackNoCoolDown()

                        if v792.Humanoid.Health <= 0 and v792.Humanoid:FindFirstChild('Animator') then
                            v792.Humanoid.Animator:Destroy()
                        end
                    else
                        Tween(v792.HumanoidRootPart.CFrame * Pos)
                    end
                    if _G.Auto_DualKatana ~= false and (Auto_Quest_Yama_2 ~= false and (v792.Parent and (v792.Humanoid.Health > 0 and v792:FindFirstChild('HazeESP')))) then
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
                            local v797, v798, v799 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v800

                                v799, v800 = v797(v798, v799)

                                if v799 == nil then
                                    break
                                end
                                if v800.Name == 'Soul Reaper' and v800.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        Tween(v800.HumanoidRootPart.CFrame * Pos)
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

                    if _G.Auto_DualKatana ~= false and (Auto_Quest_Yama_3 ~= false and GetMaterial('Alucard Fragment') ~= 3) then
                    end
                end

                local v801, v802, v803 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                local v804

                v803, v804 = v801(v802, v803)

                if v803 == nil then
                end
                if v804.Name ~= 'Cursed Skeleton' and (v804.Name ~= 'Cursed Skeleton' and v804.Name ~= "Hell's Messenger") or v804.Humanoid.Health <= 0 then
                end

                wait()
                EquipTool(Sword)
                Tween(v804.HumanoidRootPart.CFrame * Pos)

                v804.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                v804.HumanoidRootPart.Transparency = 1
                v804.Humanoid.JumpPower = 0
                v804.Humanoid.WalkSpeed = 0
                v804.HumanoidRootPart.CanCollide = false
                FarmPos = v804.HumanoidRootPart.CFrame
                MonFarm = v804.Name

                AttackNoCoolDown()

                if v804.Humanoid.Health <= 0 and v804.Humanoid:FindFirstChild('Animator') then
                    v804.Humanoid.Animator:Destroy()
                end
                if v804.Humanoid.Health <= 0 or (not v804.Parent or Auto_Quest_Yama_3 == false) then
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

                local v805, v806, v807 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                wait()
                EquipTool(Sword)
                Tween(v808.HumanoidRootPart.CFrame * Pos)

                v808.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                v808.HumanoidRootPart.Transparency = 1
                v808.Humanoid.JumpPower = 0
                v808.Humanoid.WalkSpeed = 0
                v808.HumanoidRootPart.CanCollide = false
                FarmPos = v808.HumanoidRootPart.CFrame
                MonFarm = v808.Name

                AttackNoCoolDown()

                if v808.Humanoid.Health <= 0 and v808.Humanoid:FindFirstChild('Animator') then
                    v808.Humanoid.Animator:Destroy()
                end
                if v808.Humanoid.Health > 0 and (v808.Parent and Auto_Quest_Tushita_2 ~= false) then
                end

                local v808

                v807, v808 = v805(v806, v807)

                if v807 == nil then
                end
                if Auto_Quest_Tushita_2 and (v808:FindFirstChild('HumanoidRootPart') and (v808:FindFirstChild('Humanoid') and (v808.Humanoid.Health > 0 and (v808.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000))) then
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

                local v809, v810, v811 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                local v812

                v811, v812 = v809(v810, v811)

                if v811 == nil then
                end
                if v812.Name ~= 'Cake Queen' or v812.Humanoid.Health <= 0 then
                end

                while true do
                    wait()
                    EquipTool(Sword)
                    Tween(v812.HumanoidRootPart.CFrame * Pos)

                    v812.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                    v812.HumanoidRootPart.Transparency = 1
                    v812.Humanoid.JumpPower = 0
                    v812.Humanoid.WalkSpeed = 0
                    v812.HumanoidRootPart.CanCollide = false
                    FarmPos = v812.HumanoidRootPart.CFrame
                    MonFarm = v812.Name

                    AttackNoCoolDown()

                    if v812.Humanoid.Health <= 0 and v812.Humanoid:FindFirstChild('Animator') then
                        v812.Humanoid.Animator:Destroy()
                    end
                    if _G.Auto_DualKatana == false or Auto_Quest_Tushita_3 == false or game:GetService('Workspace').Map:FindFirstChild('HeavenlyDimension') then
                    end
                end

                local v813, v814 = v815(v816, v813)

                if v813 == nil then
                end
                if v814.Name ~= 'Cursed Skeleton' and (v814.Name ~= 'Cursed Skeleton' and v814.Name ~= "Heaven's Guardian") or v814.Humanoid.Health <= 0 then
                end

                wait()
                EquipTool(Sword)
                Tween(v814.HumanoidRootPart.CFrame * Pos)

                v814.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                v814.HumanoidRootPart.Transparency = 1
                v814.Humanoid.JumpPower = 0
                v814.Humanoid.WalkSpeed = 0
                v814.HumanoidRootPart.CanCollide = false
                FarmPos = v814.HumanoidRootPart.CFrame
                MonFarm = v814.Name

                AttackNoCoolDown()

                if v814.Humanoid.Health <= 0 and v814.Humanoid:FindFirstChild('Animator') then
                    v814.Humanoid.Animator:Destroy()
                end
                if v814.Humanoid.Health <= 0 or (not v814.Parent or Auto_Quest_Tushita_3 == false) then
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

                local v815, v816

                v815, v816, v813 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                if not game:GetService('Workspace').Map:FindFirstChild('HeavenlyDimension') then
                    return
                end
            end)
        end
    end
end)

if Sea2 then
    u3.Item:AddToggle('ToggleFactory', {
        Title = '\u{fffd}\u{e1}nh Nh\u{e0} M\u{e1}y',
        Description = '',
        Default = false,
    }):OnChanged(function(p817)
        _G.Factory = p817
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
                repeat
                    Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                    wait()
                until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
            end
        end

        local v818, v819, v820 = pairs(game.Workspace.Enemies:GetChildren())

        if v821.Name == 'Core' and v821.Humanoid.Health > 0 then
        end

        local v821

        v820, v821 = v818(v819, v820)

        if v820 ~= nil then
        end

        wait(_G.Fast_Delay)
        AttackNoCoolDown()

        repeat
            Tween(CFrame.new(448.46756, 199.356781, -441.389252))
            wait()
        until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10

        EquipTool(SelectWeapon)
        AutoHaki()
        Tween(v821.HumanoidRootPart.CFrame * Pos)

        v821.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
        v821.HumanoidRootPart.Transparency = 1
        v821.Humanoid.JumpPower = 0
        v821.Humanoid.WalkSpeed = 0
        v821.HumanoidRootPart.CanCollide = false
        FarmPos = v821.HumanoidRootPart.CFrame
        MonFarm = v821.Name

        if v821.Parent and (v821.Humanoid.Health > 0 and _G.Factory ~= false) then
        end
    end)
end

u3.Item:AddToggle('ToggleAutoFarmSwan', {
    Title = '\u{fffd}\u{e1}nh Swan',
    Description = '',
    Default = false,
}):OnChanged(function(p822)
    _G.Auto_FarmSwan = p822
end)
_Options.ToggleAutoFarmSwan:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarmSwan then
                if game:GetService('Workspace').Enemies:FindFirstChild('Don Swan') then
                    local v823, v824, v825 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local u826

                        v825, u826 = v823(v824, v825)

                        if v825 == nil then
                            break
                        end
                        if u826.Name == 'Don Swan' and (u826.Humanoid.Health > 0 and (u826:IsA('Model') and (u826:FindFirstChild('Humanoid') and u826:FindFirstChild('HumanoidRootPart')))) then
                            repeat
                                task.wait()
                                pcall(function()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    u826.HumanoidRootPart.CanCollide = false
                                    u826.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                    Tween(u826.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCoolDown()
                                end)
                            until _G.AutoFarmSwan == false or u826.Humanoid.Health <= 0
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
u3.Item:AddToggle('ToggleAutoRengoku', {
    Title = 'Rengoku',
    Description = '',
    Default = false,
}):OnChanged(function(p827)
    _G.Auto_Regoku = p827
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
                    local v828, v829, v830 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v831

                        v830, v831 = v828(v829, v830)

                        if v830 == nil then
                            break
                        end
                        if (v831.Name == 'Snow Lurker' or v831.Name == 'Arctic Warrior') and v831.Humanoid.Health > 0 then
                            repeat
                                task.wait(_G.Fast_Delay)
                                EquipTool(SelectWeapon)
                                AutoHaki()

                                v831.HumanoidRootPart.CanCollide = false
                                v831.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                FarmPos = v831.HumanoidRootPart.CFrame
                                MonFarm = v831.Name

                                Tween(v831.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()

                                bringmob = true
                            until game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hidden Key') or (_G.Auto_Regoku == false or (not v831.Parent or v831.Humanoid.Health <= 0))

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
    u3.Item:AddToggle('ToggleHakiColor', {
        Title = 'Mua M\u{e0}u Haki',
        Description = '',
        Default = false,
    }):OnChanged(function(p832)
        _G.Auto_Buy_Enchancement = p832
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
    u3.Main:AddToggle('ToggleSwordLengend', {
        Title = 'Mua Ki\u{1ebf}m Huy\u{1ec1}n Tho\u{1ea1}i',
        Description = '',
        Default = false,
    }):OnChanged(function(p833)
        _G.BuyLengendSword = p833
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
    u3.Main:AddToggle('ToggleEvoRace', {
        Title = 'N\u{e2}ng T\u{1ed9}c V2',
        Description = '',
        Default = false,
    }):OnChanged(function(p834)
        _G.AutoEvoRace = p834
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
                                                local v835, v836, v837 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                                while true do
                                                    local v838

                                                    v837, v838 = v835(v836, v837)

                                                    if v837 == nil then
                                                        break
                                                    end
                                                    if v838.Name == 'Zombie' then
                                                        repeat
                                                            task.wait(_G.Fast_Delay)
                                                            AutoHaki()
                                                            EquipTool(SelectWeapon)
                                                            Tween(v838.HumanoidRootPart.CFrame * Pos)

                                                            v838.HumanoidRootPart.CanCollide = false
                                                            v838.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                                            AttackNoCoolDown()

                                                            FarmPos = v838.HumanoidRootPart.CFrame
                                                            MonFarm = v838.Name
                                                            bringmob = true
                                                        until game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 3') or (not v838.Parent or (v838.Humanoid.Health <= 0 or _G.AutoEvoRace == false))

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
                        Tween(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-8, -0.68292886, 3.5996322399999996e-8, 1, 5.50667032e-8, 0.68292886, 1.56424669e-8, -0.730484903))

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

u3.Setting:AddToggle('ToggleAutoT', {
    Title = 'B\u{1ead}t T\u{1ed9}c V3',
    Description = '',
    Default = false,
}):OnChanged(function(p839)
    _G.AutoT = p839
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
u3.Setting:AddToggle('ToggleAutoY', {
    Title = 'B\u{1ead}t T\u{1ed9}c V4',
    Description = '',
    Default = false,
}):OnChanged(function(p840)
    _G.AutoY = p840
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
u3.Setting:AddToggle('ToggleAutoKen', {
    Title = 'B\u{1ead}t Haki Quan S\u{e1}t',
    Description = '',
    Default = false,
}):OnChanged(function(p841)
    _G.AutoKen = p841

    if p841 then
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
u3.Setting:AddToggle('ToggleSaveSpawn', {
    Title = 'L\u{1b0}u \u{110}i\u{1ec3}m H\u{1ed3}i Sinh',
    Description = '',
    Default = false,
}):OnChanged(function(p842)
    _G.SaveSpawn = p842

    if p842 then
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
u3.Setting:AddButton({
    Title = 'Fps Boost',
    Description = '',
    Callback = function()
        local v843 = game
        local _Workspace2 = v843.Workspace
        local _Lighting = v843.Lighting
        local _Terrain = _Workspace2.Terrain

        _Terrain.WaterWaveSize = 0
        _Terrain.WaterWaveSpeed = 0
        _Terrain.WaterReflectance = 0
        _Terrain.WaterTransparency = 0
        _Lighting.GlobalShadows = false
        _Lighting.FogEnd = 9000000000
        _Lighting.Brightness = 0
        settings().Rendering.QualityLevel = 'Level01'

        local v847, v848, v849 = pairs(v843:GetDescendants())
        local v850 = false

        while true do
            local v851

            v849, v851 = v847(v848, v849)

            if v849 == nil then
                break
            end
            if v851:IsA('Part') or (v851:IsA('Union') or (v851:IsA('CornerWedgePart') or v851:IsA('TrussPart'))) then
                v851.Material = 'Plastic'
                v851.Reflectance = 0
            elseif v851:IsA('Decal') or v851:IsA('Texture') and v850 then
                v851.Transparency = 1
            elseif v851:IsA('ParticleEmitter') or v851:IsA('Trail') then
                v851.Lifetime = NumberRange.new(0)
            elseif v851:IsA('Explosion') then
                v851.BlastPressure = 1
                v851.BlastRadius = 1
            elseif v851:IsA('Fire') or (v851:IsA('SpotLight') or (v851:IsA('Smoke') or v851:IsA('Sparkles'))) then
                v851.Enabled = false
            elseif v851:IsA('MeshPart') then
                v851.Material = 'Plastic'
                v851.Reflectance = 0
                v851.TextureID = 1.0385902758728955e16
            end
        end

        local v852, v853, v854 = pairs(_Lighting:GetChildren())

        while true do
            local v855

            v854, v855 = v852(v853, v854)

            if v854 == nil then
                break
            end
            if v855:IsA('BlurEffect') or (v855:IsA('SunRaysEffect') or (v855:IsA('ColorCorrectionEffect') or (v855:IsA('BloomEffect') or v855:IsA('DepthOfFieldEffect')))) then
                v855.Enabled = false
            end
        end
    end,
})
u3.Setting:AddToggle('ToggleBringMob', {
    Title = 'Gom Qu\u{e1}i',
    Description = '',
    Default = true,
}):OnChanged(function(p856)
    _G.BringMob = p856
end)
_Options.ToggleBringMob:SetValue(true)
spawn(function()
    while wait() do
        pcall(function()
            local v857, v858, v859 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            while true do
                local v860

                v859, v860 = v857(v858, v859)

                if v859 == nil then
                    break
                end
                if _G.BringMob and (bringmob and (v860.Name == MonFarm and (v860:FindFirstChild('Humanoid') and v860.Humanoid.Health > 0))) then
                    if v860.Name ~= 'Factory Staff' then
                        if v860.Name == MonFarm and (v860.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000 then
                            v860.HumanoidRootPart.CFrame = FarmPos
                            v860.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v860.HumanoidRootPart.Transparency = 1
                            v860.Humanoid.JumpPower = 0
                            v860.Humanoid.WalkSpeed = 0

                            if v860.Humanoid:FindFirstChild('Animator') then
                                v860.Humanoid.Animator:Destroy()
                            end

                            v860.HumanoidRootPart.CanCollide = false
                            v860.Head.CanCollide = false

                            v860.Humanoid:ChangeState(11)
                            v860.Humanoid:ChangeState(14)
                            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                        end
                    elseif (v860.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000 then
                        v860.Head.CanCollide = false
                        v860.HumanoidRootPart.CanCollide = false
                        v860.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        v860.HumanoidRootPart.CFrame = FarmPos

                        if v860.Humanoid:FindFirstChild('Animator') then
                            v860.Humanoid.Animator:Destroy()
                        end

                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                    end
                end
            end
        end)
    end
end)
u3.Setting:AddToggle('ToggleRemoveNotify', {
    Title = 'T\u{1eaf}t Th\u{f4}ng B\u{e1}o',
    Description = '',
    Default = false,
}):OnChanged(function(p861)
    RemoveNotify = p861
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
u3.Setting:AddToggle('ToggleWhite', {
    Title = 'M\u{e0}n H\u{ec}nh Tr\u{1eaf}ng',
    Description = '',
    Default = false,
}):OnChanged(function(p862)
    _G.WhiteScreen = p862

    if _G.WhiteScreen ~= true then
        if _G.WhiteScreen == false then
            game:GetService('RunService'):Set3dRenderingEnabled(true)
        end
    else
        game:GetService('RunService'):Set3dRenderingEnabled(false)
    end
end)
_Options.ToggleWhite:SetValue(false)
u3.Setting:AddSection('K\u{129} N\u{103}ng Th\u{f4}ng Th\u{1ea1}o')
u3.Setting:AddToggle('ToggleZ', {
    Title = 'K\u{129} N\u{103}ng Z',
    Description = '',
    Default = true,
}):OnChanged(function(p863)
    SkillZ = p863
end)
_Options.ToggleZ:SetValue(true)
u3.Setting:AddToggle('ToggleX', {
    Title = 'K\u{129} N\u{103}ng X',
    Description = '',
    Default = true,
}):OnChanged(function(p864)
    SkillX = p864
end)
_Options.ToggleX:SetValue(true)
u3.Setting:AddToggle('ToggleC', {
    Title = 'K\u{129} N\u{103}ng C',
    Description = '',
    Default = true,
}):OnChanged(function(p865)
    SkillC = p865
end)
_Options.ToggleC:SetValue(true)
u3.Setting:AddToggle('ToggleV', {
    Title = 'K\u{129} N\u{103}ng V',
    Description = '',
    Default = true,
}):OnChanged(function(p866)
    SkillV = p866
end)
_Options.ToggleV:SetValue(true)
u3.Setting:AddToggle('ToggleF', {
    Title = 'K\u{129} N\u{103}ng F',
    Description = '',
    Default = false,
}):OnChanged(function(p867)
    SkillF = p867
end)
_Options.ToggleF:SetValue(true)
u3.Status:AddParagraph({
    Title = 'Th\u{f4}ng Tin',
    Content = '\u{fffd}\u{fffd}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\n' .. 'T\u{ea}n : ' .. game.Players.LocalPlayer.DisplayName .. ' (@' .. game.Players.LocalPlayer.Name .. ')\n' .. 'C\u{1ea5}p : ' .. game:GetService('Players').LocalPlayer.Data.Level.Value .. '\n' .. 'Ti\u{1ec1}n : ' .. game:GetService('Players').LocalPlayer.Data.Beli.Value .. '\n' .. '\u{fffd}i\u{1ec3}m F : ' .. game:GetService('Players').LocalPlayer.Data.Fragments.Value .. '\n' .. 'Ti\u{1ec1}n Truy N\u{e3} : ' .. game:GetService('Players').LocalPlayer.leaderstats['Bounty/Honor'].Value .. '\n' .. 'M\u{e1}u: ' .. game.Players.LocalPlayer.Character.Humanoid.Health .. '/' .. game.Players.LocalPlayer.Character.Humanoid.MaxHealth .. '\n' .. 'N\u{103}ng L\u{1b0}\u{1ee3}ng : ' .. game.Players.LocalPlayer.Character.Energy.Value .. '/' .. game.Players.LocalPlayer.Character.Energy.MaxValue .. '\n' .. 'T\u{1ed9}c : ' .. game:GetService('Players').LocalPlayer.Data.Race.Value .. '\n' .. 'Tr\u{e1}i : ' .. game:GetService('Players').LocalPlayer.Data.DevilFruit.Value .. '\n\u{fffd}\u{fffd}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}',
})

local u868 = u3.Status:AddParagraph({
    Title = 'Th\u{1edd}i Gian',
    Content = '',
})

local function u878()
    local _t = os.date('*t')
    local v870 = _t.hour % 24
    local v871 = v870 < 12 and 'AM' or 'PM'
    local __02i02i02is = string.format('%02i:%02i:%02i %s', (v870 - 1) % 12 + 1, _t.min, _t.sec, v871)
    local __02d02d04d = string.format('%02d/%02d/%04d', _t.day, _t.month, _t.year)
    local _LocalizationService = game:GetService('LocalizationService')
    local _LocalPlayer5 = game:GetService('Players').LocalPlayer
    local _ = _LocalPlayer5.Name
    local v876, v877 = pcall(function()
        return _LocalizationService:GetCountryRegionForPlayerAsync(_LocalPlayer5)
    end)

    u868:SetDesc(__02d02d04d .. '-' .. __02i02i02is .. ' [ ' .. (not v876 and 'Unknown' or v877) .. ' ]')
end

spawn(function()
    while true do
        u878()
        game:GetService('RunService').RenderStepped:Wait()
    end
end)

local u879 = u3.Status:AddParagraph({
    Title = 'Th\u{1edd}i Gian D\u{f9}ng Script',
    Content = '',
})

local function u884()
    local v880 = math.floor(workspace.DistributedGameTime + 0.5)
    local v881 = math.floor(v880 / 3600) % 24
    local v882 = math.floor(v880 / 60) % 60
    local v883 = v880 % 60

    u879:SetDesc(string.format('%02d Ti\u{1ebf}ng-%02d Ph\u{fa}t-%02d Gi\u{e2}y', v881, v882, v883))
end

spawn(function()
    while task.wait() do
        pcall(u884)
    end
end)

local u885 = u3.Status:AddParagraph({
    Title = '\u{fffd}\u{1ea3}o Leviathan',
    Content = '',
})

spawn(function()
    pcall(function()
        while wait() do
            if game:GetService('Workspace').Map:FindFirstChild('FrozenDimension') then
                u885:SetDesc('\u{fffd}\u{fffd}')
            else
                u885:SetDesc('\u{fffd}\u{fffd}')
            end
        end
    end)
end)
u3.Status:AddInput('Input', {
    Title = 'Job ID',
    Default = '',
    Placeholder = 'D\u{e1}n Job ID V\u{e0}o \u{110}\u{e2}y',
    Numeric = false,
    Finished = false,
    Callback = function(p886)
        _G.Job = p886
    end,
})
u3.Status:AddButton({
    Title = 'Tham Gia Job ID',
    Description = '',
    Callback = function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer)
    end,
})
u3.Status:AddButton({
    Title = 'Sao Ch\u{e9}p Job ID',
    Description = '',
    Callback = function()
        setclipboard(tostring(game.JobId))
    end,
})
u3.Status:AddToggle('MyToggle', {
    Title = 'Spam Tham Gia Job ID',
    Default = false,
}):OnChanged(function(p887)
    _G.Join = p887
end)
spawn(function()
    while wait() do
        if _G.Join then
            game:GetService('TeleportService'):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer)
        end
    end
end)
u3.Stats:AddToggle('ToggleMelee', {
    Title = 'N\u{e2}ng \u{110}\u{1ea5}m',
    Description = '',
    Default = false,
}):OnChanged(function(p888)
    _G.Auto_Stats_Melee = p888
end)
_Options.ToggleMelee:SetValue(false)
u3.Stats:AddToggle('ToggleDe', {
    Title = 'N\u{e2}ng M\u{e1}u',
    Description = '',
    Default = false,
}):OnChanged(function(p889)
    _G.Auto_Stats_Defense = p889
end)
_Options.ToggleDe:SetValue(false)
u3.Stats:AddToggle('ToggleSword', {
    Title = 'N\u{e2}ng Ki\u{1ebf}m',
    Description = '',
    Default = false,
}):OnChanged(function(p890)
    _G.Auto_Stats_Sword = p890
end)
_Options.ToggleSword:SetValue(false)
u3.Stats:AddToggle('ToggleGun', {
    Title = 'N\u{e2}ng S\u{fa}ng',
    Description = '',
    Default = false,
}):OnChanged(function(p891)
    _G.Auto_Stats_Gun = p891
end)
_Options.ToggleGun:SetValue(false)
u3.Stats:AddToggle('ToggleFruit', {
    Title = 'N\u{e2}ng Tr\u{e1}i',
    Description = '',
    Default = false,
}):OnChanged(function(p892)
    _G.Auto_Stats_Devil_Fruit = p892
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

local v893, v894, v895 = pairs(game:GetService('Players'):GetChildren())
local u896 = u145
local u897 = {}

while true do
    local v898

    v895, v898 = v893(v894, v895)

    if v895 == nil then
        break
    end

    table.insert(u897, v898.Name)
end

local _SelectedPly = u3.Player:AddDropdown('SelectedPly', {
    Title = 'Ch\u{1ecd}n Ng\u{1b0}\u{1edd}i Ch\u{1a1}i',
    Description = '',
    Values = u897,
    Multi = false,
    Default = 1,
})

_SelectedPly:SetValue(_G.SelectPly)
_SelectedPly:OnChanged(function(p900)
    _G.SelectPly = p900
end)
u3.Player:AddButton({
    Title = 'T\u{1ea3}i L\u{1ea1}i Ng\u{1b0}\u{1edd}i Ch\u{1a1}i',
    Description = '',
    Callback = function()
        table.clear(u897)

        local v901, v902, v903 = pairs(game:GetService('Players'):GetChildren())

        while true do
            local v904

            v903, v904 = v901(v902, v903)

            if v903 == nil then
                break
            end

            table.insert(u897, v904.Name)
        end
    end,
})
u3.Player:AddToggle('ToggleTeleport', {
    Title = 'Bay \u{110}\u{1ebf}n Ng\u{1b0}\u{1edd}i Ch\u{1a1}i',
    Description = '',
    Default = false,
}):OnChanged(function(p905)
    _G.TeleportPly = p905

    if p905 == false then
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
u3.Player:AddToggle('ToggleWalkonWater', {
    Title = '\u{fffd}i Tr\u{ea}n N\u{1b0}\u{1edb}c',
    Description = '',
    Default = true,
}):OnChanged(function(p906)
    _G.WalkonWater = p906
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
u3.Player:AddToggle('ToggleSpeedRun', {
    Title = 'Ch\u{1ea1}y Nhanh',
    Description = '',
    Default = true,
}):OnChanged(function(p907)
    InfAbility = p907

    if p907 == false then
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility'):Destroy()
    end
end)
_Options.ToggleSpeedRun:SetValue(true)
spawn(function()
    while wait() do
        if InfAbility then
            InfAb()
        end
    end
end)

function InfAb()
    if InfAbility then
        if not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility') then
            local _ParticleEmitter2 = Instance.new('ParticleEmitter')

            _ParticleEmitter2.Acceleration = Vector3.new(0, 0, 0)
            _ParticleEmitter2.Archivable = true
            _ParticleEmitter2.Drag = 20
            _ParticleEmitter2.EmissionDirection = Enum.NormalId.Top
            _ParticleEmitter2.Enabled = true
            _ParticleEmitter2.Lifetime = NumberRange.new(0, 0)
            _ParticleEmitter2.LightInfluence = 0
            _ParticleEmitter2.LockedToPart = true
            _ParticleEmitter2.Name = 'Agility'
            _ParticleEmitter2.Rate = 500

            local v909 = {
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(1, 4),
            }

            _ParticleEmitter2.Size = NumberSequence.new(v909)
            _ParticleEmitter2.RotSpeed = NumberRange.new(9999, 99999)
            _ParticleEmitter2.Rotation = NumberRange.new(0, 0)
            _ParticleEmitter2.Speed = NumberRange.new(30, 30)
            _ParticleEmitter2.SpreadAngle = Vector2.new(0, 0, 0, 0)
            _ParticleEmitter2.Texture = ''
            _ParticleEmitter2.VelocityInheritance = 0
            _ParticleEmitter2.ZOffset = 2
            _ParticleEmitter2.Transparency = NumberSequence.new(0)
            _ParticleEmitter2.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0))
            _ParticleEmitter2.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
        end
    elseif game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility') then
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility'):Destroy()
    end
end

u3.Player:AddToggle('ToggleNoClip', {
    Title = '\u{fffd}i Xuy\u{ea}n T\u{1b0}\u{1edd}ng',
    Description = '',
    Default = true,
}):OnChanged(function(p910)
    _G.LOf = p910
end)
_Options.ToggleNoClip:SetValue(true)
spawn(function()
    pcall(function()
        game:GetService('RunService').Stepped:Connect(function()
            if _G.LOf then
                local v911, v912, v913 = pairs(game.Players.LocalPlayer.Character:GetDescendants())

                while true do
                    local v914

                    v913, v914 = v911(v912, v913)

                    if v913 == nil then
                        break
                    end
                    if v914:IsA('BasePart') then
                        v914.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
u3.Player:AddToggle('ToggleEnablePvp', {
    Title = 'B\u{1ead}t PVP',
    Description = '',
    Default = false,
}):OnChanged(function(p915)
    _G.EnabledPvP = p915
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

local _ThGii = u3.Teleport:AddSection('Th\u{1ebf} Gi\u{1edb}i')

u3.Teleport:AddToggle('ToggleAutoSea2', {
    Title = 'Nhi\u{1ec7}m V\u{1ee5} Qua Bi\u{1ec3}n 2',
    Description = '',
    Default = false,
}):OnChanged(function(p917)
    _G.Auto_Sea2 = p917
end)
_Options.ToggleAutoSea2:SetValue(false)
spawn(function()
    while wait() do
        if _G.Auto_Sea2 then
            pcall(function()
                if game:GetService('Players').LocalPlayer.Data.Level.Value >= 700 and World1 then
                    if game:GetService('Workspace').Map.Ice.Door.CanCollide == false and game:GetService('Workspace').Map.Ice.Door.Transparency == 1 then
                        local v918 = CFrame.new(4849.29883, 5.65138149, 719.611877)

                        repeat
                            Tween(v918)
                            wait()
                        until (v918.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.Auto_Sea2 == false

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
                    if game:GetService('Workspace').Map.Ice.Door.CanCollide ~= false or game:GetService('Workspace').Map.Ice.Door.Transparency ~= 1 then
                    end
                    if game:GetService('Workspace').Enemies:FindFirstChild('Ice Admiral') then
                        local v919, v920, v921 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v922

                            v921, v922 = v919(v920, v921)

                            if v921 == nil then
                                break
                            end
                            if v922.Name == 'Ice Admiral' then
                                if not v922.Humanoid.Health > 0 then
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
                                elseif v922:FindFirstChild('Humanoid') and (v922:FindFirstChild('HumanoidRootPart') and v922.Humanoid.Health > 0) then
                                    OldCFrameSecond = v922.HumanoidRootPart.CFrame

                                    task.wait(_G.Fast_Delay)
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v922.HumanoidRootPart.CanCollide = false
                                    v922.Humanoid.WalkSpeed = 0
                                    v922.Head.CanCollide = false
                                    v922.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v922.HumanoidRootPart.CFrame = OldCFrameSecond

                                    Tween(v922.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCoolDown()
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)

                                    if _G.Auto_Sea2 and (v922.Parent and v922.Humanoid.Health > 0) then
                                    end
                                end
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Ice Admiral') then
                        Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Ice Admiral').HumanoidRootPart.CFrame * Pos)
                    end
                end
            end)
        end
    end
end)
u3.Teleport:AddToggle('ToggleAutoSea3', {
    Title = 'Nhi\u{1ec7}m V\u{1ee5} Qua Bi\u{1ec3}n 3',
    Description = '',
    Default = false,
}):OnChanged(function(p923)
    _G.Auto_Sea3 = p923
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
                            local v924, v925, v926 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v927

                                v926, v927 = v924(v925, v926)

                                if v926 == nil then
                                    break
                                end
                                if v927.Name == 'rip_indra' then
                                    OldCFrameThird = v927.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v927.HumanoidRootPart.CFrame * Pos)

                                        v927.HumanoidRootPart.CFrame = OldCFrameThird
                                        v927.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v927.HumanoidRootPart.CanCollide = false
                                        v927.Humanoid.WalkSpeed = 0

                                        AttackNoCoolDown()
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
                                    until _G.AutoSea3 == false or (v927.Humanoid.Health <= 0 or not v927.Parent)
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
u3.Teleport:AddButton({
    Title = 'Bi\u{1ec3}n 1',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelMain')
    end,
})
u3.Teleport:AddButton({
    Title = 'Bi\u{1ec3}n 2',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
    end,
})
u3.Teleport:AddButton({
    Title = 'Bi\u{1ec3}n 3',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
    end,
})
u3.Teleport:AddSection('\u{fffd}\u{1ea3}o')

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

local _DropdownIsland = u3.Teleport:AddDropdown('DropdownIsland', {
    Title = 'Ch\u{1ecd}n \u{110}\u{1ea3}o',
    Description = '',
    Values = IslandList,
    Multi = false,
    Default = 1,
})

_DropdownIsland:SetValue(_G.SelectIsland)
_DropdownIsland:OnChanged(function(p929)
    _G.SelectIsland = p929
end)
u3.Teleport:AddButton({
    Title = 'Bay \u{110}\u{1ebf}n \u{110}\u{1ea3}o',
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
u3.Visual:AddButton({
    Title = 'Gi\u{1ea3}',
    Description = '',
    Callback = function()
        local _LocalPlayer6 = game:GetService('Players').LocalPlayer
        local v931 = require(game:GetService('ReplicatedStorage').Notification)
        local _Data = _LocalPlayer6:WaitForChild('Data')
        local v933 = require(game.ReplicatedStorage:WaitForChild('EXPFunction'))
        local v934 = require(game:GetService('ReplicatedStorage').Effect.Container.LevelUp)
        local v935 = require(game:GetService('ReplicatedStorage').Util.Sound)
        local v936 = game:GetService('ReplicatedStorage').Util.Sound.Storage.Other:FindFirstChild('LevelUp_Proxy') or game:GetService('ReplicatedStorage').Util.Sound.Storage.Other:FindFirstChild('LevelUp')

        function v129(p937)
            repeat
                local v938

                p937, v938 = string.gsub(p937, '^(-?%d+)(%d%d%d)', '%1,%2')
            until v938 == 0

            return p937
        end

        v931.new('<Color=Yellow>QUEST COMPLETED!<Color=/>'):Display()
        v931.new('Earned<Color=Yellow>9,999,999,999,999 Exp.<Color=/>(+None)'):Display()
        v931.new('Earned<Color=Green>$9,999,999,999,999<Color=/>'):Display()

        _LocalPlayer6.Data.Exp.Value = 999999999999
        _LocalPlayer6.Data.Beli.Value = _LocalPlayer6.Data.Beli.Value + 999999999999
        delay = 0
        count = 0

        while _LocalPlayer6.Data.Exp.Value - v933(_Data.Level.Value) > 0 do
            _LocalPlayer6.Data.Exp.Value = _LocalPlayer6.Data.Exp.Value - v933(_Data.Level.Value)
            _LocalPlayer6.Data.Level.Value = _LocalPlayer6.Data.Level.Value + 1
            _LocalPlayer6.Data.Points.Value = _LocalPlayer6.Data.Points.Value + 3

            v934({_LocalPlayer6})
            v935:Play(v936.Value)
            v931.new('<Color=Green>LEVEL UP!<Color=/>(' .. _LocalPlayer6.Data.Level.Value .. ')'):Display()

            count = count + 1

            if count >= 5 then
                delay = tick()
                count = 0

                wait()
            end
        end
    end,
})
u3.Visual:AddInput('Input_Level', {
    Title = 'C\u{1ea5}p',
    Default = '',
    Placeholder = 'Nh\u{1ead}p',
    Numeric = false,
    Finished = false,
    Callback = function(p939)
        game:GetService('Players').LocalPlayer.Data.Level.Value = tonumber(p939)
    end,
})
u3.Visual:AddInput('Input_EXP', {
    Title = 'Kinh Nghi\u{1ec7}m',
    Default = '',
    Placeholder = 'Nh\u{1ead}p',
    Numeric = false,
    Finished = false,
    Callback = function(p940)
        game:GetService('Players').LocalPlayer.Data.Exp.Value = tonumber(p940)
    end,
})
u3.Visual:AddInput('Input_Beli', {
    Title = 'Ti\u{1ec1}n',
    Default = '',
    Placeholder = 'Nh\u{1ead}p',
    Numeric = false,
    Finished = false,
    Callback = function(p941)
        game:GetService('Players').LocalPlayer.Data.Beli.Value = tonumber(p941)
    end,
})
u3.Visual:AddInput('Input_Fragments', {
    Title = '\u{fffd}i\u{1ec3}m F',
    Default = '',
    Placeholder = 'Nh\u{1ead}p',
    Numeric = false,
    Finished = false,
    Callback = function(p942)
        game:GetService('Players').LocalPlayer.Data.Fragments.Value = tonumber(p942)
    end,
})

local _GetFruits = game.ReplicatedStorage:FindFirstChild('Remotes').CommF_:InvokeServer('GetFruits')

Table_DevilFruitSniper = {}
ShopDevilSell = {}

local v944 = next
local v945 = nil

while true do
    local v946

    v945, v946 = v944(_GetFruits, v945)

    if v945 == nil then
        break
    end

    table.insert(Table_DevilFruitSniper, v946.Name)

    if v946.OnSale then
        table.insert(ShopDevilSell, v946.Name)
    end
end

_G.SelectFruit = nil
_G.PermanentFruit = nil
_G.AutoBuyFruitSniper = false
_G.AutoSwitchPermanentFruit = false

local _DropdownFruit = u3.Fruit:AddDropdown('DropdownFruit', {
    Title = 'Ch\u{1ecd}n Tr\u{e1}i',
    Description = '',
    Values = Table_DevilFruitSniper,
    Multi = false,
    Default = 1,
})

_DropdownFruit:SetValue(_G.SelectFruit)
_DropdownFruit:OnChanged(function(p948)
    _G.SelectFruit = p948
end)
u3.Fruit:AddToggle('ToggleFruit', {
    Title = 'Mua Tr\u{e1}i Ch\u{1ecd}n',
    Description = '',
    Default = false,
}):OnChanged(function(p949)
    if p949 then
        _G.AutoBuyFruitSniper = true

        pcall(function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GetFruits')
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PurchaseRawFruit', _G.SelectFruit, false)
        end)

        _G.AutoBuyFruitSniper = false
    end
end)
_Options.ToggleFruit:SetValue(false)

local _DropdownPermanentFruit = u3.Fruit:AddDropdown('DropdownPermanentFruit', {
    Title = 'Ch\u{1ecd}n Tr\u{e1}i V\u{129}nh Vi\u{1ec5}n',
    Description = '',
    Values = Table_DevilFruitSniper,
    Multi = false,
    Default = 1,
})

_DropdownPermanentFruit:SetValue(_G.PermanentFruit)
_DropdownPermanentFruit:OnChanged(function(p951)
    _G.PermanentFruit = p951
end)
u3.Fruit:AddToggle('TogglePermanentFruit', {
    Title = '\u{fffd}\u{1ed5}i Tr\u{e1}i V\u{129}nh Vi\u{1ec5}n',
    Description = '',
    Default = false,
}):OnChanged(function(p952)
    if p952 then
        _G.AutoSwitchPermanentFruit = true

        pcall(function()
            local v953 = {
                'SwitchFruit',
                _G.PermanentFruit,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v953))
        end)

        _G.AutoSwitchPermanentFruit = false
    end
end)
_Options.TogglePermanentFruit:SetValue(false)
u3.Fruit:AddToggle('ToggleStore', {
    Title = 'L\u{1b0}u Tr\u{e1}i',
    Description = '',
    Default = false,
}):OnChanged(function(p954)
    _G.AutoStoreFruit = p954
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
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Chop-Chop', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Chop Fruit'))
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
u3.Fruit:AddToggle('ToggleRandomFruit', {
    Title = 'Random Tr\u{e1}i',
    Description = '',
    Default = false,
}):OnChanged(function(p955)
    _G.Random_Auto = p955
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
u3.Fruit:AddToggle('ToggleCollectTP', {
    Title = 'Bay \u{110}\u{1ebf}n Tr\u{e1}i',
    Description = '',
    Default = false,
}):OnChanged(function(p956)
    _G.CollectFruitTP = p956
end)
_Options.ToggleCollectTP:SetValue(false)
spawn(function()
    while wait() do
        if _G.CollectFruitTP then
            local v957, v958, v959 = pairs(game.Workspace:GetChildren())

            while true do
                local v960

                v959, v960 = v957(v958, v959)

                if v959 == nil then
                    break
                end
                if string.find(v960.Name, 'Fruit') then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v960.Handle.CFrame
                end
            end
        end
    end
end)
u3.Fruit:AddToggle('ToggleCollect', {
    Title = 'D\u{1ecb}ch Chuy\u{1ec3}n \u{110}\u{1ebf}n Tr\u{e1}i',
    Description = '',
    Default = false,
}):OnChanged(function(p961)
    _G.Tweenfruit = p961
end)
_Options.ToggleCollect:SetValue(false)
spawn(function()
    while wait() do
        if _G.Tweenfruit then
            local v962, v963, v964 = pairs(game.Workspace:GetChildren())

            while true do
                local v965

                v964, v965 = v962(v963, v964)

                if v964 == nil then
                    break
                end
                if string.find(v965.Name, 'Fruit') then
                    Tween(v965.Handle.CFrame)
                end
            end
        end
    end
end)
u3.Fruit:AddSection('\u{fffd}\u{1ecb}nh V\u{1ecb}')
u3.Fruit:AddToggle('ToggleEspPlayer', {
    Title = 'Ng\u{1b0}\u{1edd}i Ch\u{1a1}i',
    Description = '',
    Default = false,
}):OnChanged(function(p966)
    ESPPlayer = p966

    UpdatePlayerChams()
end)
_Options.ToggleEspPlayer:SetValue(false)
u3.Fruit:AddToggle('ToggleEspFruit', {
    Title = 'Tr\u{e1}i',
    Description = '',
    Default = false,
}):OnChanged(function(p967)
    DevilFruitESP = p967

    while DevilFruitESP do
        wait()
        UpdateDevilChams()
    end
end)
_Options.ToggleEspFruit:SetValue(false)
u3.Fruit:AddToggle('ToggleEspIsland', {
    Title = '\u{fffd}\u{1ea3}o',
    Description = '',
    Default = false,
}):OnChanged(function(p968)
    IslandESP = p968

    while IslandESP do
        wait()
        UpdateIslandESP()
    end
end)
_Options.ToggleEspIsland:SetValue(false)
u3.Fruit:AddToggle('ToggleEspFlower', {
    Title = 'Hoa',
    Description = '',
    Default = false,
}):OnChanged(function(p969)
    FlowerESP = p969

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
u3.Fruit:AddToggle('ToggleEspRealFruit', {
    Title = 'Tr\u{e1}i D\u{1ee9}a Kh\u{1edb}m T\u{e1}o',
    Description = '',
    Default = false,
}):OnChanged(function(p970)
    RealFruitEsp = p970

    while RealFruitEsp do
        wait()
        UpdateRealFruitEsp()
    end
end)
_Options.ToggleEspRealFruit:SetValue(false)

function UpdateRealFruitEsp()
    local v971, v972, v973 = pairs(game.Workspace.AppleSpawner:GetChildren())

    while true do
        local v974

        v973, v974 = v971(v972, v973)

        if v973 == nil then
            break
        end
        if v974:IsA('Tool') then
            if RealFruitEsp then
                if v974.Handle:FindFirstChild('NameEsp' .. Number) then
                    v974.Handle['NameEsp' .. Number].TextLabel.Text = v974.Name .. ' ' .. u896((game:GetService('Players').LocalPlayer.Character.Head.Position - v974.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui24 = Instance.new('BillboardGui', v974.Handle)

                    _BillboardGui24.Name = 'NameEsp' .. Number
                    _BillboardGui24.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui24.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui24.Adornee = v974.Handle
                    _BillboardGui24.AlwaysOnTop = true

                    local _TextLabel24 = Instance.new('TextLabel', _BillboardGui24)

                    _TextLabel24.Font = Enum.Font.GothamSemibold
                    _TextLabel24.FontSize = 'Size14'
                    _TextLabel24.TextWrapped = true
                    _TextLabel24.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel24.TextYAlignment = 'Top'
                    _TextLabel24.BackgroundTransparency = 1
                    _TextLabel24.TextStrokeTransparency = 0.5
                    _TextLabel24.TextColor3 = Color3.fromRGB(255, 0, 0)
                    _TextLabel24.Text = v974.Name .. ' \n' .. u896((game:GetService('Players').LocalPlayer.Character.Head.Position - v974.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v974.Handle:FindFirstChild('NameEsp' .. Number) then
                v974.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v977, v978, v979 = pairs(game.Workspace.PineappleSpawner:GetChildren())

    while true do
        local v980

        v979, v980 = v977(v978, v979)

        if v979 == nil then
            break
        end
        if v980:IsA('Tool') then
            if RealFruitEsp then
                if v980.Handle:FindFirstChild('NameEsp' .. Number) then
                    v980.Handle['NameEsp' .. Number].TextLabel.Text = v980.Name .. ' ' .. u896((game:GetService('Players').LocalPlayer.Character.Head.Position - v980.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui25 = Instance.new('BillboardGui', v980.Handle)

                    _BillboardGui25.Name = 'NameEsp' .. Number
                    _BillboardGui25.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui25.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui25.Adornee = v980.Handle
                    _BillboardGui25.AlwaysOnTop = true

                    local _TextLabel25 = Instance.new('TextLabel', _BillboardGui25)

                    _TextLabel25.Font = Enum.Font.GothamSemibold
                    _TextLabel25.FontSize = 'Size14'
                    _TextLabel25.TextWrapped = true
                    _TextLabel25.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel25.TextYAlignment = 'Top'
                    _TextLabel25.BackgroundTransparency = 1
                    _TextLabel25.TextStrokeTransparency = 0.5
                    _TextLabel25.TextColor3 = Color3.fromRGB(255, 174, 0)
                    _TextLabel25.Text = v980.Name .. ' \n' .. u896((game:GetService('Players').LocalPlayer.Character.Head.Position - v980.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v980.Handle:FindFirstChild('NameEsp' .. Number) then
                v980.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v983, v984, v985 = pairs(game.Workspace.BananaSpawner:GetChildren())

    while true do
        local v986

        v985, v986 = v983(v984, v985)

        if v985 == nil then
            break
        end
        if v986:IsA('Tool') then
            if RealFruitEsp then
                if v986.Handle:FindFirstChild('NameEsp' .. Number) then
                    v986.Handle['NameEsp' .. Number].TextLabel.Text = v986.Name .. ' ' .. u896((game:GetService('Players').LocalPlayer.Character.Head.Position - v986.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui26 = Instance.new('BillboardGui', v986.Handle)

                    _BillboardGui26.Name = 'NameEsp' .. Number
                    _BillboardGui26.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui26.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui26.Adornee = v986.Handle
                    _BillboardGui26.AlwaysOnTop = true

                    local _TextLabel26 = Instance.new('TextLabel', _BillboardGui26)

                    _TextLabel26.Font = Enum.Font.GothamSemibold
                    _TextLabel26.FontSize = 'Size14'
                    _TextLabel26.TextWrapped = true
                    _TextLabel26.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel26.TextYAlignment = 'Top'
                    _TextLabel26.BackgroundTransparency = 1
                    _TextLabel26.TextStrokeTransparency = 0.5
                    _TextLabel26.TextColor3 = Color3.fromRGB(251, 255, 0)
                    _TextLabel26.Text = v986.Name .. ' \n' .. u896((game:GetService('Players').LocalPlayer.Character.Head.Position - v986.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v986.Handle:FindFirstChild('NameEsp' .. Number) then
                v986.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end
end

u3.Fruit:AddToggle('ToggleIslandMirageEsp', {
    Title = '\u{fffd}\u{1ea3}o B\u{ed} \u{1ea8}n',
    Description = '',
    Default = false,
}):OnChanged(function(p989)
    IslandMirageEsp = p989

    while IslandMirageEsp do
        wait()
        UpdateIslandMirageEsp()
    end
end)
_Options.ToggleIslandMirageEsp:SetValue(false)

function isnil(p990)
    return p990 == nil
end

local function u992(p991)
    return math.floor(tonumber(p991) + 0.5)
end

Number = math.random(1, 1000000)

function UpdateIslandMirageEsp()
    local v993, v994, v995 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local u996

        v995, u996 = v993(v994, v995)

        if v995 == nil then
            break
        end

        pcall(function()
            if MirageIslandESP then
                if u996.Name == 'Mirage Island' then
                    if u996:FindFirstChild('NameEsp') then
                        u996.NameEsp.TextLabel.Text = u996.Name .. '   \n' .. u992((game:GetService('Players').LocalPlayer.Character.Head.Position - u996.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui27 = Instance.new('BillboardGui', u996)

                        _BillboardGui27.Name = 'NameEsp'
                        _BillboardGui27.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui27.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui27.Adornee = u996
                        _BillboardGui27.AlwaysOnTop = true

                        local _TextLabel27 = Instance.new('TextLabel', _BillboardGui27)

                        _TextLabel27.Font = Enum.Font.Code
                        _TextLabel27.FontSize = Enum.FontSize.Size14
                        _TextLabel27.TextWrapped = true
                        _TextLabel27.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel27.TextYAlignment = Enum.TextYAlignment.Top
                        _TextLabel27.BackgroundTransparency = 1
                        _TextLabel27.TextStrokeTransparency = 0.5
                        _TextLabel27.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u996:FindFirstChild('NameEsp') then
                u996:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end

local _DropdownRaid = u3.Raid:AddDropdown('DropdownRaid', {
    Title = 'Ch\u{1ecd}n Chip',
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
_DropdownRaid:OnChanged(function(p1000)
    SelectChip = p1000
end)
u3.Raid:AddToggle('ToggleBuy', {
    Title = 'Mua Chip',
    Description = '',
    Default = false,
}):OnChanged(function(p1001)
    _G.Auto_Buy_Chips_Dungeon = p1001
end)
_Options.ToggleBuy:SetValue(false)
spawn(function()
    while wait() do
        if _G.Auto_Buy_Chips_Dungeon then
            pcall(function()
                local v1002 = {
                    'RaidsNpc',
                    'Select',
                    SelectChip,
                }

                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1002))
            end)
        end
    end
end)
u3.Raid:AddToggle('ToggleStart', {
    Title = 'B\u{1eaf}t \u{110}\u{1ea7}u Raid',
    Description = '',
    Default = false,
}):OnChanged(function(p1003)
    _G.Auto_StartRaid = p1003
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
                    Tween2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-8, -0.378151238, 4.55503146e-9, 1, 1.07377559e-7, 0.378151238, 9.7681621e-8, -0.925743818))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'SetSpawnPoint',
                    }))
                    fireclickdetector(game:GetService('Workspace').Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
                end
            end
        end)
    end
end)
u3.Raid:AddToggle('ToggleNextIsland', {
    Title = '\u{fffd}\u{e1}nh Qu\u{e1}i Raid + Bay \u{110}\u{1ebf}n \u{110}\u{1ea3}o',
    Description = '',
    Default = false,
}):OnChanged(function(p1004)
    AutoNextIsland = p1004

    if not p1004 then
        _G.AutoNear = false
    end
end)
_Options.ToggleNextIsland:SetValue(false)
spawn(function()
    local u1005 = {}

    while task.wait() do
        if AutoNextIsland then
            pcall(function()
                local _Character6 = game.Players.LocalPlayer.Character

                if _Character6 and _Character6:FindFirstChild('HumanoidRootPart') then
                    local _Locations = game:GetService('Workspace')._WorldOrigin.Locations
                    local _Position11 = _Character6.HumanoidRootPart.Position

                    if (_Position11 - Vector3.new(-6438.73535, 250.645355, -4501.50684)).Magnitude < 1 or (_Position11 - Vector3.new(-5017.40869, 314.844055, -2823.0127)).Magnitude < 1 then
                        u1005 = {}
                    end
                    if _Locations:FindFirstChild('Island 1') then
                        _G.AutoNear = true
                    end
                    if _Locations:FindFirstChild('Island 2') and not u1005['Island 2'] then
                        Tween(_Locations:FindFirstChild('Island 2').CFrame)

                        u1005['Island 2'] = true
                        AutoNextIsland = false

                        wait()

                        AutoNextIsland = true
                    elseif _Locations:FindFirstChild('Island 3') and not u1005['Island 3'] then
                        Tween(_Locations:FindFirstChild('Island 3').CFrame)

                        u1005['Island 3'] = true
                        AutoNextIsland = false

                        wait()

                        AutoNextIsland = true
                    elseif _Locations:FindFirstChild('Island 4') and not u1005['Island 4'] then
                        Tween(_Locations:FindFirstChild('Island 4').CFrame)

                        u1005['Island 4'] = true
                        AutoNextIsland = false

                        wait()

                        AutoNextIsland = true
                    elseif _Locations:FindFirstChild('Island 5') and not u1005['Island 5'] then
                        Tween(_Locations:FindFirstChild('Island 5').CFrame)

                        u1005['Island 5'] = true
                        AutoNextIsland = false

                        wait()

                        AutoNextIsland = true
                    end
                end
            end)
        end
    end
end)
u3.Raid:AddToggle('ToggleAwake', {
    Title = 'Th\u{1ee9}c T\u{1ec9}nh',
    Description = '',
    Default = false,
}):OnChanged(function(p1009)
    AutoAwakenAbilities = p1009
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
u3.Raid:AddToggle('ToggleGetFruit', {
    Title = 'L\u{1ea5}y Tr\u{e1}i D\u{1b0}\u{1edb}i 1 Tri\u{1ec7}u',
    Description = '',
    Default = false,
}):OnChanged(function(p1010)
    _G.Autofruit = p1010
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
    u3.Raid:AddButton({
        Title = 'Bay \u{110}\u{1ebf}n Ch\u{1ed7} T\u{1ead}p K\u{ed}ch',
        Description = '',
        Callback = function()
            Tween2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
        end,
    })
elseif Sea3 then
    u3.Raid:AddButton({
        Title = 'Bay \u{110}\u{1ebf}n Ch\u{1ed7} T\u{1ead}p K\u{ed}ch',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
            Tween2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-8, -0.378151238, 4.55503146e-9, 1, 1.07377559e-7, 0.378151238, 9.7681621e-8, -0.925743818))
        end,
    })
end

u3.Raid:AddSection('T\u{1ead}p K\u{ed}ch Law')
u3.Raid:AddToggle('ToggleLaw', {
    Title = 'Mua Chip V\u{e0} \u{110}\u{e1}nh Law',
    Description = '',
    Default = false,
}):OnChanged(function(p1011)
    Auto_Law = p1011
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
                        local v1012, v1013, v1014 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1015

                            v1014, v1015 = v1012(v1013, v1014)

                            if v1014 == nil then
                                break
                            end
                            if v1015.Name == 'Order' then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v1015.HumanoidRootPart.CFrame * Pos)

                                    v1015.HumanoidRootPart.CanCollide = false
                                    v1015.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                until not v1015.Parent or (v1015.Humanoid.Health <= 0 or Auto_Law == false)
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
u3.Race:AddButton({
    Title = '\u{fffd}\u{1ec1}n Th\u{1edd}i Gian',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
    end,
})
u3.Race:AddButton({
    Title = 'C\u{1ea7}n G\u{1ea1}t',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        Tween2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end,
})
u3.Race:AddButton({
    Title = 'Ch\u{1ed7} Mua Gear',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        Tween2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end,
})
u3.Race:AddSection('T\u{1ed9}c')
u3.Race:AddButton({
    Title = 'C\u{1eed}a T\u{1ed9}c',
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
u3.Race:AddToggle('ToggleHumanandghoul', {
    Title = 'Ho\u{e0}n Th\u{e0}nh \u{1ea2}i [Human/Ghoul]',
    Description = '',
    Default = false,
}):OnChanged(function(p1016)
    KillAura = p1016
end)
_Options.ToggleHumanandghoul:SetValue(false)
u3.Race:AddToggle('ToggleAutotrial', {
    Title = 'Ho\u{e0}n Th\u{e0}nh \u{1ea2}i',
    Description = '',
    Default = false,
}):OnChanged(function(p1017)
    _G.AutoQuestRace = p1017
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
                                        local v1018, v1019, v1020 = pairs(game:GetService('Workspace'):GetDescendants())

                                        while true do
                                            local v1021

                                            v1020, v1021 = v1018(v1019, v1020)

                                            if v1020 == nil then
                                                break
                                            end
                                            if v1021.Name == 'StartPoint' then
                                                Tween(v1021.CFrame * CFrame.new(0, 10, 0))
                                            end
                                        end
                                    end
                                else
                                    local v1022, v1023, v1024 = pairs(game.Workspace.Enemies:GetDescendants())

                                    while true do
                                        local u1025

                                        v1024, u1025 = v1022(v1023, v1024)

                                        if v1024 == nil then
                                            break
                                        end
                                        if u1025:FindFirstChild('Humanoid') and (u1025:FindFirstChild('HumanoidRootPart') and u1025.Humanoid.Health > 0) then
                                            pcall(function()
                                                repeat
                                                    wait()

                                                    u1025.Humanoid.Health = 0
                                                    u1025.HumanoidRootPart.CanCollide = false

                                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                                until not _G.AutoQuestRace or (not u1025.Parent or u1025.Humanoid.Health <= 0)
                                            end)
                                        end
                                    end
                                end
                            else
                                Tween(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                            end
                        else
                            local v1026, v1027, v1028 = pairs(game:GetService('Workspace').SeaBeasts.SeaBeast1:GetDescendants())

                            while true do
                                local v1029

                                v1028, v1029 = v1026(v1027, v1028)

                                if v1028 == nil then
                                    break
                                end
                                if v1029.Name == 'HumanoidRootPart' then
                                    Tween(v1029.CFrame * Pos)

                                    local v1030, v1031, v1032 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v1033

                                        v1032, v1033 = v1030(v1031, v1032)

                                        if v1032 == nil then
                                            break
                                        end
                                        if v1033:IsA('Tool') and v1033.ToolTip == 'Melee' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1033)
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

                                    local v1034, v1035, v1036 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v1037

                                        v1036, v1037 = v1034(v1035, v1036)

                                        if v1036 == nil then
                                            break
                                        end
                                        if v1037:IsA('Tool') and v1037.ToolTip == 'Blox Fruit' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1037)
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

                                    local v1038, v1039, v1040 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v1041

                                        v1040, v1041 = v1038(v1039, v1040)

                                        if v1040 == nil then
                                            break
                                        end
                                        if v1041:IsA('Tool') and v1041.ToolTip == 'Sword' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1041)
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

                                    local v1042, v1043, v1044 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v1045

                                        v1044, v1045 = v1042(v1043, v1044)

                                        if v1044 == nil then
                                            break
                                        end
                                        if v1045:IsA('Tool') and v1045.ToolTip == 'Gun' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1045)
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
                        local v1046, v1047, v1048 = pairs(game:GetService('Workspace').Map.SkyTrial.Model:GetDescendants())

                        while true do
                            local v1049

                            v1048, v1049 = v1046(v1047, v1048)

                            if v1048 == nil then
                                break
                            end
                            if v1049.Name == 'snowisland_Cylinder.081' then
                                BKP(v1049.CFrame * CFrame.new(0, 0, 0))
                            end
                        end
                    end
                else
                    local v1050, v1051, v1052 = pairs(game.Workspace.Enemies:GetDescendants())

                    while true do
                        local u1053

                        v1052, u1053 = v1050(v1051, v1052)

                        if v1052 == nil then
                            break
                        end
                        if u1053:FindFirstChild('Humanoid') and (u1053:FindFirstChild('HumanoidRootPart') and u1053.Humanoid.Health > 0) then
                            pcall(function()
                                repeat
                                    wait()

                                    u1053.Humanoid.Health = 0
                                    u1053.HumanoidRootPart.CanCollide = false

                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.AutoQuestRace or (not u1053.Parent or u1053.Humanoid.Health <= 0)
                            end)
                        end
                    end
                end
            end
        end
    end)
end)
u3.Race:AddToggle('ToggleKillTrial', {
    Title = '\u{fffd}\u{e1}nh Ng\u{1b0}\u{1edd}i Ch\u{1a1}i Trong Trial',
    Description = '',
    Default = false,
}):OnChanged(function(p1054)
    _G.AutoKillTrial = p1054
end)
_Options.ToggleKillTrial:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoKillTrial then
                local v1055, v1056, v1057 = pairs(game:GetService('Players'):GetChildren())

                while true do
                    local v1058

                    v1057, v1058 = v1055(v1056, v1057)

                    if v1057 == nil then
                        break
                    end
                    if v1058.Name and (v1058.Name ~= game.Players.LocalPlayer.Name and ((v1058.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 and v1058.Character.Humanoid.Health > 0)) then
                        repeat
                            wait(_G.Fast_Delay)
                            EquipTool(SelectWeapon)
                            AutoHaki()
                            Tween(v1058.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5))

                            v1058.Character.HumanoidRootPart.CanCollide = false
                            v1058.Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                            AttackNoCoolDown()
                        until not _G.AutoKillTrial or (not v1058.Parent or v1058.Character.Humanoid.Health <= 0)
                    end
                end
            end
        end)
    end
end)
u3.Race:AddSection('Hu\u{1ea5}n Luy\u{1ec7}n')

local _ToggleFarmRace = u3.Race:AddToggle('ToggleFarmRace', {
    Title = 'C\u{e0}y Luy\u{1ec7}n T\u{1ed9}c',
    Description = '',
    Default = false,
})
local u1060 = false

_ToggleFarmRace:OnChanged(function(p1061)
    u1060 = p1061
end)
_Options.ToggleFarmRace:SetValue(false)
spawn(function()
    while wait() do
        if u1060 then
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
u3.Race:AddToggle('ToggleUpgrade', {
    Title = 'Mua Gear',
    Description = '',
    Default = false,
}):OnChanged(function(p1062)
    _G.AutoUpgrade = p1062

    if _G.AutoUpgrade then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('UpgradeRace', 'Buy')
    end
end)
_Options.ToggleUpgrade:SetValue(false)
u3.Shop:AddSection('Kh\u{1ea3} N\u{103}ng')
u3.Shop:AddButton({
    Title = 'Geppo',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Geppo')
    end,
})
u3.Shop:AddButton({
    Title = 'Buso',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Buso')
    end,
})
u3.Shop:AddButton({
    Title = 'Soru',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Soru')
    end,
})
u3.Shop:AddButton({
    Title = 'Ken',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk', 'Buy')
    end,
})
u3.Shop:AddSection('Ki\u{1ebf}m')
u3.Shop:AddButton({
    Title = 'Cutlass',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cutlass')
    end,
})
u3.Shop:AddButton({
    Title = 'Katana',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Katana')
    end,
})
u3.Shop:AddButton({
    Title = 'Iron Mace',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Iron Mace')
    end,
})
u3.Shop:AddButton({
    Title = 'Duel Katana',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Duel Katana')
    end,
})
u3.Shop:AddButton({
    Title = 'Triple Katana',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Triple Katana')
    end,
})
u3.Shop:AddButton({
    Title = 'Pipe',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Pipe')
    end,
})
u3.Shop:AddButton({
    Title = 'Dual-Headed Blade',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Dual-Headed Blade')
    end,
})
u3.Shop:AddButton({
    Title = 'Bisento',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Bisento')
    end,
})
u3.Shop:AddButton({
    Title = 'Soul Cane',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Soul Cane')
    end,
})
u3.Shop:AddButton({
    Title = 'Pole V2',
    Description = '',
    Callback = function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer('ThunderGodTalk')
    end,
})
u3.Shop:AddSection('S\u{fa}ng')
u3.Shop:AddButton({
    Title = 'Musket',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Musket')
    end,
})
u3.Shop:AddButton({
    Title = 'Slingshot',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Slingshot')
    end,
})
u3.Shop:AddButton({
    Title = 'Flintlock',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Flintlock')
    end,
})
u3.Shop:AddButton({
    Title = 'Refined Slingshot',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Refined Slingshot')
    end,
})
u3.Shop:AddButton({
    Title = 'Dual Flintlock',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Dual Flintlock')
    end,
})
u3.Shop:AddButton({
    Title = 'Cannon',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cannon')
    end,
})
u3.Shop:AddButton({
    Title = 'Kabucha',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Slingshot', '2')
    end,
})
u3.Shop:AddSection('Ph\u{1ee5} Ki\u{1ec7}n')
u3.Shop:AddButton({
    Title = 'Black Cape',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Black Cape')
    end,
})
u3.Shop:AddButton({
    Title = 'Swordsman Hat',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Swordsman Hat')
    end,
})
u3.Shop:AddButton({
    Title = 'Tomoe Ring',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Tomoe Ring')
    end,
})
u3.Shop:AddSection('V\u{f5}')
u3.Shop:AddButton({
    Title = 'Black Leg',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
    end,
})
u3.Shop:AddButton({
    Title = 'Electro',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
    end,
})
u3.Shop:AddButton({
    Title = 'Fishman Karate',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')
    end,
})
u3.Shop:AddButton({
    Title = 'Dragon Claw',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
    end,
})
u3.Shop:AddButton({
    Title = 'Superhuman',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
    end,
})
u3.Shop:AddButton({
    Title = 'Death Step',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
    end,
})
u3.Shop:AddButton({
    Title = 'Sharkman Karate',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate', true)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
    end,
})
u3.Shop:AddButton({
    Title = 'Electric Claw',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
    end,
})
u3.Shop:AddButton({
    Title = 'Dragon Talon',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')
    end,
})
u3.Shop:AddButton({
    Title = 'Godhuman',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman')
    end,
})
u3.Shop:AddButton({
    Title = 'Sanguine Art',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySanguineArt')
    end,
})
u3.Shop:AddSection('Kh\u{e1}c')
u3.Shop:AddButton({
    Title = '\u{fffd}\u{1ed5}i Ch\u{1ec9} S\u{1ed1}',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '2')
    end,
})
u3.Shop:AddButton({
    Title = '\u{fffd}\u{1ed5}i T\u{1ed9}c',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '2')
    end,
})
u3.Shop:AddButton({
    Title = '\u{fffd}\u{1ed5}i T\u{1ed9}c Ghoul',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'Ectoplasm',
            'Change',
            4,
        }))
    end,
})
u3.Shop:AddButton({
    Title = '\u{fffd}\u{1ed5}i T\u{1ed9}c Cyborg',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CyborgTrainer',
            'Buy',
        }))
    end,
})
u3.Shop:AddButton({
    Title = '\u{fffd}\u{1ed5}i T\u{1ed9}c Draco',
    Description = 'Ch\u{1ec9} \u{1ede} Bi\u{1ec3}n 3',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))

        local v1063 = Vector3.new(5814.42724609375, 1208.3267822265625, 884.5785522460938)
        local _LocalPlayer7 = game.Players.LocalPlayer
        local _Character7 = _LocalPlayer7.Character

        if not _Character7 then
            _Character7 = _LocalPlayer7.CharacterAdded:Wait()
        end

        repeat
            wait()
        until (_Character7.HumanoidRootPart.Position - v1063).Magnitude < 1

        local v1066 = {
            {
                NPC = 'Dragon Wizard',
                Command = 'DragonRace',
            },
        }

        game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/InteractDragonQuest'):InvokeServer(unpack(v1066))
    end,
})
u3.Misc:AddButton({
    Title = 'Tham Gia M\u{e1}y Ch\u{1ee7} L\u{1ea1}i',
    Description = '',
    Callback = function()
        game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
    end,
})
u3.Misc:AddButton({
    Title = '\u{fffd}\u{1ed5}i M\u{e1}y Ch\u{1ee7}',
    Description = '',
    Callback = function()
        Hop()
    end,
})

function Hop()
    local _PlaceId3 = game.PlaceId
    local u1068 = {}
    local u1069 = ''
    local _hour = os.date('!*t').hour

    function TPReturner()
        local v1071

        if u1069 ~= '' then
            v1071 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId3 .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. u1069))
        else
            v1071 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId3 .. '/servers/Public?sortOrder=Asc&limit=100'))
        end
        if v1071.nextPageCursor and (v1071.nextPageCursor ~= 'null' and v1071.nextPageCursor ~= nil) then
            u1069 = v1071.nextPageCursor
        end

        local v1072, v1073, v1074 = pairs(v1071.data)
        local v1075 = 0

        while true do
            local v1076

            v1074, v1076 = v1072(v1073, v1074)

            if v1074 == nil then
                break
            end

            local v1077 = true
            local u1078 = tostring(v1076.id)

            if tonumber(v1076.maxPlayers) > tonumber(v1076.playing) then
                local v1079, v1080, v1081 = pairs(u1068)

                while true do
                    local v1082

                    v1081, v1082 = v1079(v1080, v1081)

                    if v1081 == nil then
                        break
                    end
                    if v1075 == 0 then
                        if tonumber(_hour) ~= tonumber(v1082) then
                            pcall(function()
                                u1068 = {}

                                table.insert(u1068, _hour)
                            end)
                        end
                    elseif u1078 == tostring(v1082) then
                        v1077 = false
                    end

                    v1075 = v1075 + 1
                end

                if v1077 == true then
                    table.insert(u1068, u1078)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService('TeleportService'):TeleportToPlaceInstance(_PlaceId3, u1078, game.Players.LocalPlayer)
                    end)
                    wait()
                end
            end
        end
    end

    _ThGii = function()
        while wait() do
            pcall(function()
                TPReturner()

                if u1069 ~= '' then
                    TPReturner()
                end
            end)
        end
    end

    _ThGii()
end

u3.Misc:AddSection('\u{fffd}\u{1ed9}i')
u3.Misc:AddButton({
    Title = 'H\u{1ea3}i T\u{1eb7}c',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Pirates')
    end,
})
u3.Misc:AddButton({
    Title = 'H\u{1ea3}i Qu\u{e2}n',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Marines')
    end,
})
u3.Misc:AddSection('Kinh Nghi\u{1ec7}m')

local u1083 = {
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

u3.Misc:AddButton({
    Title = 'Nh\u{1ead}p H\u{1ebf}t Code',
    Description = '',
    Callback = function()
        local v1084, v1085, v1086 = ipairs(u1083)

        while true do
            local v1087

            v1086, v1087 = v1084(v1085, v1086)

            if v1086 == nil then
                break
            end

            RedeemCode(v1087)
        end
    end,
})

function RedeemCode(p1088)
    game:GetService('ReplicatedStorage').Remotes.Redeem:InvokeServer(p1088)
end

u3.Misc:AddSection('Danh Hi\u{1ec7}u')
u3.Misc:AddButton({
    Title = 'Danh Hi\u{1ec7}u',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'getTitles',
        }))

        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end,
})
u3.Misc:AddSection('Th\u{1ee9}c T\u{1ec9}nh')
u3.Misc:AddButton({
    Title = 'Th\u{1ee9}c T\u{1ec9}nh',
    Description = '',
    Callback = function()
        game:GetService('Players').LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
    end,
})
u3.Misc:AddSection('Kh\u{e1}c')
u3.Misc:AddToggle('ToggleRejoin', {
    Title = 'Tham Gia M\u{e1}y Ch\u{1ee7} L\u{1ea1}i',
    Description = '',
    Default = true,
}):OnChanged(function(p1089)
    _G.AutoRejoin = p1089
end)
_Options.ToggleRejoin:SetValue(true)
spawn(function()
    while wait() do
        if _G.AutoRejoin then
            getgenv().rejoin = game:GetService('CoreGui').RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(p1090)
                if p1090.Name == 'ErrorPrompt' and p1090:FindFirstChild('MessageArea') and p1090.MessageArea:FindFirstChild('ErrorFrame') then
                    game:GetService('TeleportService'):Teleport(game.PlaceId)
                end
            end)
        end
    end
end)
u3.Misc:AddSection('S\u{1b0}\u{1a1}ng')

local function u1092()
    local _Lighting2 = game:GetService('Lighting')

    if _Lighting2:FindFirstChild('BaseAtmosphere') then
        _Lighting2.BaseAtmosphere:Destroy()
    end
    if _Lighting2:FindFirstChild('SeaTerrorCC') then
        _Lighting2.SeaTerrorCC:Destroy()
    end
    if _Lighting2:FindFirstChild('LightingLayers') then
        if _Lighting2.LightingLayers:FindFirstChild('Atmosphere') then
            _Lighting2.LightingLayers.Atmosphere:Destroy()
        end

        wait()

        if _Lighting2.LightingLayers:FindFirstChild('DarkFog') then
            _Lighting2.LightingLayers.DarkFog:Destroy()
        end
    end

    _Lighting2.FogEnd = 100000
end

u3.Misc:AddButton({
    Title = 'X\u{f3}a S\u{1b0}\u{1a1}ng M\u{f9}',
    Description = '',
    Callback = function()
        u1092()
    end,
})
u3.Misc:AddToggle('ToggleAntiBand', {
    Title = 'Ch\u{1ed1}ng Ban',
    Description = '',
    Default = true,
}):OnChanged(function(p1093)
    _G.AntiBand = p1093
end)

local u1094 = {17884881, 120173604, 912348}

spawn(function()
    while wait() do
        if _G.AntiBand then
            local v1095, v1096, v1097 = pairs(game:GetService('Players'):GetPlayers())

            while true do
                local v1098

                v1097, v1098 = v1095(v1096, v1097)

                if v1097 == nil then
                    break
                end
                if table.find(u1094, v1098.UserId) then
                    Hop()
                end
            end
        end
    end
end)
u3.Sea:AddSection('Leviathan')
u3.Sea:AddButton({
    Title = 'Mua Chip Leviathan',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('InfoLeviathan', '2')
    end,
})

local _ToggleTPFrozenDimension = u3.Sea:AddToggle('ToggleTPFrozenDimension', {
    Title = 'Bay \u{110}\u{1ebf}n \u{110}\u{1ea3}o Leviathan',
    Description = '',
    Default = false,
})

_ToggleTPFrozenDimension:OnChanged(function(p1100)
    _G.TweenToFrozenDimension = p1100
end)
_ToggleTPFrozenDimension:SetValue(false)
spawn(function()
    local v1101 = nil

    while not v1101 do
        v1101 = game:GetService('Workspace').Map:FindFirstChild('FrozenDimension')

        wait()
    end
    while wait() do
        if _G.TweenToFrozenDimension and v1101 then
            Tween(v1101.CFrame)
        end
    end
end)

if Sea3 then
    local u1102 = u3.Sea:AddParagraph({
        Title = 'Tr\u{1ea1}ng Th\u{e1}i Chip Leviathan',
        Content = '',
    })

    spawn(function()
        pcall(function()
            while wait() do
                local _InfoLeviathan = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('InfoLeviathan', '1')

                if _InfoLeviathan == 5 then
                    u1102:SetDesc('Leviathan Is Out There')
                elseif _InfoLeviathan == 0 then
                    u1102:SetDesc("I Don't Know")
                else
                    u1102:SetDesc('Mua: ' .. tostring(_InfoLeviathan))
                end
            end
        end)
    end)
end

u3.Sea:AddSection('Draco')
u3.Sea:AddToggle('ToggleBlazeEmber', {
    Title = 'L\u{1ee5}m L\u{1eed}a \u{110}\u{1ecf}',
    Description = '',
    Default = false,
}):OnChanged(function(p1104)
    _G.AutoBlazeEmber = p1104
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
u3.Sea:AddToggle('ToggleBlazeEmberFarm', {
    Title = '\u{fffd}\u{e1}nh Hydra Enforcer + Venomous Assailant',
    Description = '',
    Default = false,
}):OnChanged(function(p1105)
    _G.AutoBlazeEmberFarm = p1105
end)
spawn(function()
    while task.wait() do
        if _G.AutoBlazeEmberFarm then
            pcall(function()
                local _Enemies = game:GetService('Workspace').Enemies

                if _Enemies:FindFirstChild('Hydra Enforcer') or _Enemies:FindFirstChild('Venomous Assailant') then
                    local v1107, v1108, v1109 = pairs(_Enemies:GetChildren())

                    while true do
                        local v1110

                        v1109, v1110 = v1107(v1108, v1109)

                        if v1109 == nil then
                            break
                        end
                        if (v1110.Name == 'Hydra Enforcer' or v1110.Name == 'Venomous Assailant') and (v1110:FindFirstChild('Humanoid') and (v1110:FindFirstChild('HumanoidRootPart') and v1110.Humanoid.Health > 0)) then
                            repeat
                                wait(_G.Fast_Delay)
                                AttackNoCoolDown()
                                AutoHaki()

                                bringmob = true

                                EquipTool(SelectWeapon)
                                Tween2(v1110.HumanoidRootPart.CFrame * Pos)

                                v1110.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v1110.HumanoidRootPart.Transparency = 1
                                v1110.Humanoid.JumpPower = 0
                                v1110.Humanoid.WalkSpeed = 0
                                v1110.HumanoidRootPart.CanCollide = false
                                FarmPos = v1110.HumanoidRootPart.CFrame
                                MonFarm = v1110.Name
                            until not _G.AutoBlazeEmberFarm or v1110.Humanoid.Health <= 0
                        end
                    end
                else
                    Tween2(CFrame.new(4612.078125, 1002.283447265625, 498.2188720703125))
                end
            end)
        end
    end
end)
u3.Sea:AddToggle('ToggleReceiveQuest', {
    Title = 'Nh\u{1ead}n Nhi\u{1ec7}m V\u{1ee5} L\u{1eed}a \u{110}\u{1ecf}',
    Description = 'B\u{1ead}t L\u{ea}n 1 L\u{1ea7}n L\u{e0} Nh\u{1ead}n 1 Nh\u{1ead}n N\u{1eef}a Th\u{ec} T\u{1eaf}t B\u{1ead}t L\u{1ea1}i',
    Default = false,
}):OnChanged(function(p1111)
    _G.AutoReceiveQuest = p1111

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

local u1112 = u3.Sea:AddParagraph({
    Title = 'Tr\u{1ea1}ng Th\u{e1}i Nhi\u{1ec7}m V\u{1ee5} L\u{1eed}a \u{110}\u{1ecf}',
    Content = '',
})

spawn(function()
    pcall(function()
        while wait() do
            local v1113 = game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/DragonHunter'):InvokeServer(unpack({
                {
                    Context = 'Check',
                },
            }))

            if typeof(v1113) == 'table' then
                local v1114, v1115, v1116 = pairs(v1113)

                while true do
                    local v1117

                    v1116, v1117 = v1114(v1115, v1116)

                    if v1116 == nil then
                        break
                    end
                    if v1117 == 'Defeat 3 Venomous Assailants on Hydra Island.' then
                        u1112:SetDesc('Defeat 3 Venomous Assailants on Hydra Island.')
                    elseif v1117 == 'Defeat 3 Hydra Enforcers on Hydra Island.' then
                        u1112:SetDesc('Defeat 3 Hydra Enforcers on Hydra Island.')
                    elseif v1117 == 'Destroy 10 trees on Hydra Island.' then
                        u1112:SetDesc('Destroy 10 trees on Hydra Island.')
                    end
                end
            end
        end
    end)
end)
u3.Sea:AddToggle('ToggleHydraTree', {
    Title = 'Ph\u{e1} C\u{e2}y \u{1ede} \u{110}\u{1ea3}o Hydra',
    Description = '',
    Default = false,
}):OnChanged(function(p1118)
    _G.AutoHydraTree = p1118
end)

local function u1121(p1119)
    local _VirtualInputManager2 = game:GetService('VirtualInputManager')

    _VirtualInputManager2:SendKeyEvent(true, p1119, false, game)
    _VirtualInputManager2:SendKeyEvent(false, p1119, false, game)
end
local function u1133(p1122)
    local _LocalPlayer8 = game.Players.LocalPlayer
    local _Backpack = _LocalPlayer8.Backpack
    local v1125, v1126, v1127 = pairs(_Backpack:GetChildren())

    while true do
        local v1128

        v1127, v1128 = v1125(v1126, v1127)

        if v1127 == nil then
            break
        end
        if v1128:IsA('Tool') and v1128.ToolTip == p1122 then
            v1128.Parent = _LocalPlayer8.Character

            local v1129, v1130, v1131 = ipairs({
                'Z',
                'X',
                'C',
                'V',
                'F',
            })

            while true do
                local u1132

                v1131, u1132 = v1129(v1130, v1131)

                if v1131 == nil then
                    break
                end

                wait()
                pcall(function()
                    u1121(u1132)
                end)
            end

            v1128.Parent = _Backpack

            break
        end
    end
end

local u1134 = {
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

            local v1135, v1136, v1137 = ipairs(u1134)

            while true do
                local v1138

                v1137, v1138 = v1135(v1136, v1137)

                if v1137 == nil or not _G.AutoHydraTree then
                    break
                end

                Tween2(v1138)
                wait()

                local _Character8 = game.Players.LocalPlayer.Character

                if _Character8 and (_Character8:FindFirstChild('HumanoidRootPart') and (_Character8.HumanoidRootPart.Position - v1138.Position).Magnitude <= 1) then
                    u1133('Melee')
                    u1133('Sword')
                    u1133('Gun')
                end
            end
        end
    end
end)
u3.Sea:AddButton({
    Title = 'Bay \u{110}\u{1ebf}n Khu V\u{1ef1}c Dragon Dojo',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
    end,
})
u3.Sea:AddButton({
    Title = 'Ch\u{1ebf} T\u{1ea1}o Volcanic Magnet',
    Description = 'C\u{1ea7}n 15 L\u{1eed}a \u{110}\u{1ecf}+10 S\u{1eaf}t',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CraftItem',
            'Craft',
            'Volcanic Magnet',
        }))
    end,
})
u3.Sea:AddButton({
    Title = 'Ch\u{1ebf} T\u{1ea1}o Dino Hood',
    Description = 'C\u{1ea7}n 25 X\u{1b0}\u{1a1}ng Kh\u{1ee7}ng Long + 10 S\u{1eeb}ng T\u{ea} Gi\u{e1}c',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CraftItem',
            'Craft',
            'DinoHood',
        }))
    end,
})
u3.Sea:AddButton({
    Title = 'Ch\u{1ebf} T\u{1ea1}o T-Rex Skull',
    Description = 'C\u{1ea7}n 8 X\u{1b0}\u{1a1}ng Kh\u{1ee7}ng Long + 5 V\u{1ea3}y R\u{1ed3}ng',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CraftItem',
            'Craft',
            'TRexSkull',
        }))
    end,
})
u3.Sea:AddToggle('ToggleCollectFireFlowers', {
    Title = 'L\u{1ee5}m Hoa \u{110}\u{1ecf}',
    Description = '',
    Default = false,
}):OnChanged(function(p1140)
    _G.AutoCollectFireFlowers = p1140
end)
spawn(function()
    while wait() do
        local v1141 = _G.AutoCollectFireFlowers and workspace:FindFirstChild('FireFlowers')

        if v1141 then
            local v1142, v1143, v1144 = pairs(v1141:GetChildren())

            while true do
                local v1145

                v1144, v1145 = v1142(v1143, v1144)

                if v1144 == nil then
                    break
                end
                if v1145:IsA('Model') and v1145.PrimaryPart then
                    local _Position12 = v1145.PrimaryPart.Position

                    if (_Position12 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1 then
                        Tween2(CFrame.new(_Position12))
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
u3.Sea:AddToggle('ToggleWhiteBelt', {
    Title = 'C\u{e0}y \u{110}ai Tr\u{1eaf}ng',
    Description = '',
    Default = false,
}):OnChanged(function(p1147)
    _G.AutoLevel = p1147

    if p1147 then
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
u3.Sea:AddParagraph({
    Title = 'Ho\u{e0}n Th\u{e0}nh \u{1ea2}i Draco V4 (S\u{1edb}m Ra)',
    Content = '',
})
u3.Sea:AddToggle('ToggleTrialTeleport', {
    Title = 'Bay \u{110}\u{1ebf}n C\u{1eed}a Trial T\u{1ed9}c Draco',
    Description = '',
    Default = false,
}):OnChanged(function(p1148)
    _G.AutoTrialTeleport = p1148
end)
spawn(function()
    while wait() do
        if _G.AutoTrialTeleport then
            local _TrialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild('TrialTeleport')

            if _TrialTeleport and _TrialTeleport:IsA('Part') then
                Tween2(CFrame.new(_TrialTeleport.Position))

                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - _TrialTeleport.Position).Magnitude <= 1 then
                    _G.AutoTrialTeleport = false
                end
            end
        end
    end
end)
u3.Sea:AddSection('\u{fffd}\u{1ea3}o Dung Nham')

local u1150 = u3.Sea:AddParagraph({
    Title = 'Tr\u{1ea1}ng Th\u{e1}i \u{110}\u{1ea3}o Dung Nham',
    Content = '',
})

spawn(function()
    pcall(function()
        while wait() do
            if game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland') then
                u1150:SetDesc('\u{fffd}\u{1ea3}o Dung Nham: \u{2705}\u{fe0f}')
            else
                u1150:SetDesc('\u{fffd}\u{1ea3}o Dung Nham: \u{274c}\u{fe0f}')
            end
        end
    end)
end)
u3.Sea:AddToggle('ToggleTPVolcano', {
    Title = 'Bay \u{110}\u{1ebf}n \u{110}\u{1ea3}o Dung Nham',
    Description = '',
    Default = false,
}):OnChanged(function(p1151)
    _G.TweenToPrehistoric = p1151
end)
_Options.ToggleTPVolcano:SetValue(false)
spawn(function()
    local v1152 = nil

    while not v1152 do
        v1152 = game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        wait()
    end
    while wait() do
        local v1153 = _G.TweenToPrehistoric and game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        if v1153 then
            local _Core = v1153:FindFirstChild('Core')

            if _Core then
                _Core = v1153.Core:FindFirstChild('PrehistoricRelic')
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
u3.Sea:AddToggle('ToggleDefendVolcano', {
    Title = 'T\u{1ef1} \u{110}\u{1ed9}ng Ph\u{f2}ng Th\u{1ee7}',
    Description = '',
    Default = false,
}):OnChanged(function(p1155)
    _G.AutoDefendVolcano = p1155
end)
u3.Sea:AddToggle('ToggleMelee', {
    Title = 'D\u{f9}ng Melee',
    Description = '',
    Default = false,
}):OnChanged(function(p1156)
    _G.UseMelee = p1156
end)
u3.Sea:AddToggle('ToggleSword', {
    Title = 'D\u{f9}ng Sword',
    Description = '',
    Default = false,
}):OnChanged(function(p1157)
    _G.UseSword = p1157
end)
u3.Sea:AddToggle('ToggleGun', {
    Title = 'D\u{f9}ng Gun',
    Description = '',
    Default = false,
}):OnChanged(function(p1158)
    _G.UseGun = p1158
end)

local function u1160(p1159)
    game:GetService('VirtualInputManager'):SendKeyEvent(true, p1159, false, game)
    game:GetService('VirtualInputManager'):SendKeyEvent(false, p1159, false, game)
end
local function u1176()
    local _InteriorLava = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild('InteriorLava')

    if _InteriorLava and _InteriorLava:IsA('Model') then
        _InteriorLava:Destroy()
    end

    local _PrehistoricIsland = game.Workspace.Map:FindFirstChild('PrehistoricIsland')

    if _PrehistoricIsland then
        local v1163, v1164, v1165 = pairs(_PrehistoricIsland:GetDescendants())

        while true do
            local v1166

            v1165, v1166 = v1163(v1164, v1165)

            if v1165 == nil then
                break
            end
            if v1166:IsA('Part') and v1166.Name:lower():find('lava') then
                v1166:Destroy()
            end
        end
    end

    local _PrehistoricIsland2 = game.Workspace.Map:FindFirstChild('PrehistoricIsland')

    if _PrehistoricIsland2 then
        local v1168, v1169, v1170 = pairs(_PrehistoricIsland2:GetDescendants())

        while true do
            local v1171

            v1170, v1171 = v1168(v1169, v1170)

            if v1170 == nil then
                break
            end
            if v1171:IsA('Model') then
                local v1172, v1173, v1174 = pairs(v1171:GetDescendants())

                while true do
                    local v1175

                    v1174, v1175 = v1172(v1173, v1174)

                    if v1174 == nil then
                        break
                    end
                    if v1175:IsA('MeshPart') and v1175.Name:lower():find('lava') then
                        v1175:Destroy()
                    end
                end
            end
        end
    end
end
local function u1184()
    local _VolcanoRocks = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks
    local v1178, v1179, v1180 = pairs(_VolcanoRocks:GetChildren())

    while true do
        local v1181

        v1180, v1181 = v1178(v1179, v1180)

        if v1180 == nil then
            break
        end
        if v1181:IsA('Model') then
            local _volcanorock = v1181:FindFirstChild('volcanorock')

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
local function u1196(p1185)
    local _LocalPlayer9 = game.Players.LocalPlayer
    local _Backpack2 = _LocalPlayer9.Backpack
    local v1188, v1189, v1190 = pairs(_Backpack2:GetChildren())

    while true do
        local v1191

        v1190, v1191 = v1188(v1189, v1190)

        if v1190 == nil then
            break
        end
        if v1191:IsA('Tool') and v1191.ToolTip == p1185 then
            v1191.Parent = _LocalPlayer9.Character

            local v1192, v1193, v1194 = ipairs({
                'Z',
                'X',
                'C',
                'V',
                'F',
            })

            while true do
                local u1195

                v1194, u1195 = v1192(v1193, v1194)

                if v1194 == nil then
                    break
                end

                wait()
                pcall(function()
                    u1160(u1195)
                end)
            end

            v1191.Parent = _Backpack2

            break
        end
    end
end

spawn(function()
    while wait() do
        if _G.AutoDefendVolcano then
            AutoHaki()
            pcall(u1176)

            local v1197 = u1184()

            if v1197 then
                local v1198 = CFrame.new(v1197.Position + Vector3.new(0, 0, 0))

                Tween2(v1198)

                local _Color2 = v1197.Color

                if _Color2 == Color3.fromRGB(185, 53, 56) or _Color2 == Color3.fromRGB(185, 53, 57) then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1197.Position - Vector3.new(0, 0, 0)).Magnitude <= 1 then
                        if _G.UseMelee then
                            u1196('Melee')
                        end
                        if _G.UseSword then
                            u1196('Sword')
                        end
                        if _G.UseGun then
                            u1196('Gun')
                        end
                    end

                    _G.TweenToPrehistoric = false
                else
                    u1184()
                end
            else
                _G.TweenToPrehistoric = true
            end
        end
    end
end)
u3.Sea:AddToggle('ToggleKillAura', {
    Title = '\u{fffd}\u{e1}nh Golems Aura',
    Description = '',
    Default = false,
}):OnChanged(function(p1200)
    KillAura = p1200
end)
_Options.ToggleKillAura:SetValue(false)
spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                local v1201, v1202, v1203 = pairs(game.Workspace.Enemies:GetDescendants())

                while true do
                    local v1204

                    v1203, v1204 = v1201(v1202, v1203)

                    if v1203 == nil then
                        break
                    end
                    if v1204:FindFirstChild('Humanoid') and (v1204:FindFirstChild('HumanoidRootPart') and v1204.Humanoid.Health > 0) then
                        repeat
                            task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)

                            v1204.Humanoid.Health = 0
                            v1204.HumanoidRootPart.CanCollide = false
                        until not KillAura or (not v1204.Parent or v1204.Humanoid.Health <= 0)
                    end
                end
            end)
        end
    end
end)
u3.Sea:AddToggle('ToggleCollectBone', {
    Title = 'L\u{1ee5}m X\u{1b0}\u{1a1}ng',
    Description = '',
    Default = false,
}):OnChanged(function(p1205)
    _G.AutoCollectBone = p1205
end)
spawn(function()
    while wait() do
        if _G.AutoCollectBone then
            local v1206, v1207, v1208 = pairs(workspace:GetDescendants())

            while true do
                local v1209

                v1208, v1209 = v1206(v1207, v1208)

                if v1208 == nil then
                    break
                end
                if v1209:IsA('BasePart') and v1209.Name == 'DinoBone' then
                    Tween2(CFrame.new(v1209.Position))
                end
            end
        end
    end
end)
u3.Sea:AddToggle('ToggleCollectEgg', {
    Title = 'L\u{1ee5}m Tr\u{1ee9}ng',
    Description = '',
    Default = false,
}):OnChanged(function(p1210)
    _G.AutoCollectEgg = p1210
end)
spawn(function()
    while wait() do
        if _G.AutoCollectEgg then
            local v1211 = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren()

            if #v1211 > 0 then
                local v1212 = v1211[math.random(1, #v1211)]

                if v1212:IsA('Model') and v1212.PrimaryPart then
                    Tween2(v1212.PrimaryPart.CFrame)

                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1212.PrimaryPart.Position).Magnitude <= 1 then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                        wait(1.5)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'E', false, game)
                    end
                end
            end
        end
    end
end)
