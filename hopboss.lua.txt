-- ts file was generated at discord.gg/25ms

repeat
    task.wait(0.1)
until game:IsLoaded()

game.Players.LocalPlayer.PlayerGui.ScreenGui.ServerMessage.Visible = true
game.Players.LocalPlayer.PlayerGui.ScreenGui.ServerMessage.TextBox.Text = 'Thank For Using Beecon Hub \n Top #1 Bee Swarm Simulator Script'

local _MarketplaceService = game:GetService('MarketplaceService')
local v2, v3 = pcall(_MarketplaceService.GetProductInfo, _MarketplaceService, game.PlaceId)
local v4 = not (v2 and v3) and 'Unknown Game' or v3.Name
local v5 = loadstring(game:HttpGet('https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/ui/xrer_mstudio45.lua'))()

v5.New({
    ApplicationName = 'BaconBossScript',
    Name = 'BaconBossScript',
    Info = v4,
    DiscordInvite = 'https://discord.gg/baconbossscript',
    AuthType = 'ip',
})

repeat
    task.wait()
until v5.Finished() or v5.Closed

if v5.Finished() and v5.Closed == false then
    if game.PlaceId ~= 15579077077 then
        if game.PlaceId == 1537690962 then
            pcall(function()
                getgenv().key = 162

                loadstring(game:HttpGet('https://pastefy.app/1lve7ZVH/raw', true))()
                wait(0.2)
            end)

            local u6 = loadstring(game:HttpGet('https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua'))()
            local v7 = loadstring(game:HttpGet('https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua'))()
            local v8 = loadstring(game:HttpGet('https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua'))()
            local v9 = u6:CreateWindow({
                Title = 'Bee Swarm Simulator | Beecon Hub',
                SubTitle = 'by @BaconBossScripts On Youtube',
                TabWidth = 160,
                Size = UDim2.fromOffset(520, 320),
                Acrylic = false,
                Theme = 'Dark',
                MinimizeKey = Enum.KeyCode.LeftControl,
            })
            local u10 = {
                Setting = v9:AddTab({
                    Title = 'Settings',
                    Icon = 'file-cog',
                }),
                Sticker = v9:AddTab({
                    Title = 'Sticker',
                    Icon = 'sticker',
                }),
                Beemas = v9:AddTab({
                    Title = 'Beemas',
                    Icon = 'snowflake',
                }),
                Main = v9:AddTab({
                    Title = 'Main',
                    Icon = 'home',
                }),
                Combat = v9:AddTab({
                    Title = 'Combat',
                    Icon = 'swords',
                }),
                Puff = v9:AddTab({
                    Title = 'Puffshroom',
                    Icon = 'shrub',
                }),
                Planter = v9:AddTab({
                    Title = 'Planter',
                    Icon = 'clover',
                }),
                Boost = v9:AddTab({
                    Title = 'Dispenser',
                    Icon = 'rocket',
                }),
                Misc = v9:AddTab({
                    Title = 'Misc',
                    Icon = 'file-text',
                }),
                Webhook = v9:AddTab({
                    Title = 'Webhook',
                    Icon = 'bar-chart-3',
                }),
                Credit = v9:AddTab({
                    Title = 'Credit',
                    Icon = 'scroll',
                }),
                Settings = v9:AddTab({
                    Title = 'Gui Settings',
                    Icon = 'settings',
                }),
                Retro = v9:AddTab({
                    Title = 'Retro Event',
                    Icon = 'bug',
                }),
            }
            local _Options = u6.Options

            u6:Notify({
                Title = 'Hello',
                Content = 'Enjoy My Script',
                SubContent = "Don't Forget To Subscribe :D",
                Duration = 10,
            })
            pcall(function()
                for v12 = 1, 6 do
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ClaimHive'):FireServer(unpack({v12}))
                end

                local _Part = Instance.new('Part')

                _Part.Name = 'MV3 IS SUCKS'
                _Part.Parent = workspace
                _Part.CFrame = CFrame.new(-289.445007, 17.5332966, 417.507324, 0.0125558861, -2.7940392199999997e-9, 0.999921143, 2.2637072199999997e-9, 1, 2.76583445e-9, -0.999921143, 2.22880137e-9, 0.0125558861)
                _Part.Size = Vector3.new(22, 22, 22)
                _Part.Transparency = 0
                _Part.Anchored = true

                local v14 = workspace.Collectibles:GetDescendants()
                local v15, v16, v17 = pairs(v14)

                while true do
                    local v18

                    v17, v18 = v15(v16, v17)

                    if v17 == nil then
                        break
                    end
                    if v18.Name == 'C' then
                        v18:Destroy()
                    end
                end

                local v19, v20, v21 = pairs(workspace.Decorations:GetDescendants())

                while true do
                    local v22

                    v21, v22 = v19(v20, v21)

                    if v21 == nil then
                        break
                    end
                    if v22.Name == 'CoconutTree' then
                        v22:Destroy()
                    end
                end

                workspace.Gates:Destroy()
                workspace.Toys['Field Booster']['Boost Pod'].Union:Destroy()
                workspace.Map.Fences:Destroy()
                workspace.Toys['Instant Converter'].Machine:Destroy()
                workspace.Map.Ground.RedClubhouse:Destroy()
                workspace['Invisible Walls']:Destroy()
                workspace.Map.Ground.StickerPrinterGround:Destroy()
                workspace.Decorations.JumpGames.RockClimbBamboo:Destroy()
                workspace.Toys['Moon Amulet Generator']:Destroy()
                workspace.Decorations.TreatBooth:Destroy()
                workspace.RetroEvent:Destroy()
                workspace.Decorations.Misc['Blue Flower 4']:Destroy()
                workspace.Honey:Destroy()
                workspace.FieldDecos:Destroy()
                workspace.HiveDeco.BackPillars:Destroy()
                workspace.Map.Part:Destroy()
                workspace.Toys['Treat Dispenser'].Watercooler.Honeyjar:Destroy()
                workspace.Toys['Treat Dispenser'].Watercooler:Destroy()

                local v23, v24, v25 = pairs(workspace.Decorations.Misc:GetDescendants())

                while true do
                    local v26

                    v25, v26 = v23(v24, v25)

                    if v25 == nil then
                        break
                    end
                    if v26.Name == 'Part' then
                        v26:Destroy()
                    end
                end

                local v27, v28, v29 = pairs(workspace.Decorations['30BeeZone']:GetDescendants())

                while true do
                    local v30

                    v29, v30 = v27(v28, v29)

                    if v29 == nil then
                        break
                    end
                    if v30.Name == 'Part' then
                        v30:Destroy()
                    end
                end

                local v31, v32, v33 = ipairs(workspace.Map.Ground:GetDescendants())

                while true do
                    local v34

                    v33, v34 = v31(v32, v33)

                    if v33 == nil then
                        break
                    end
                    if v34.Name == 'Part' and (v34.Size.X == 76.24794006347656 and (v34.Size.Y == 16.825281143188477 and v34.Size.Z == 51.86602783203125) or (v34.Size.X == 4.629992485046387 and (v34.Size.Y == 5.920070648193359 and v34.Size.Z == 54.68992233276367) or (v34.Size.X == 40.54999923706055 and (v34.Size.Y == 38.730072021484375 and v34.Size.Z == 36.07997512817383) or (v34.Size.X == 35.159976959228516 and (v34.Size.Y == 27.630077362060547 and v34.Size.Z == 19.469926834106445) or v34.Size.X == 4.629992485046387 and (v34.Size.Y == 5.890071868896484 and v34.Size.Z == 41.449928283691406))))) then
                        v34:Destroy()
                    end
                end

                local v35, v36, v37 = ipairs(workspace:GetDescendants())

                while true do
                    local v38

                    v37, v38 = v35(v36, v37)

                    if v37 == nil then
                        break
                    end
                    if v38.Name == 'Part' and (v38.Size.X == 4.3400068283081055 and (v38.Size.Y == 4.889999866485596 and v38.Size.Z == 57.01999282836914) or v38.Size.X == 85.12001037597656 and (v38.Size.Y == 11.829998970031738 and v38.Size.Z == 3.3299808502197266)) then
                        v38:Destroy()
                    end
                end

                local v39, v40, v41 = pairs(workspace.Map.Ground.RedClubhouse:GetDescendants())

                while true do
                    local v42

                    v41, v42 = v39(v40, v41)

                    if v41 == nil then
                        break
                    end
                    if v42.Name == 'SurfaceLight' then
                        v42.Parent:Destroy()
                    end
                end
            end)

            local u43 = false
            local u44 = ''
            local u45 = false
            local u46 = false
            local u47 = false
            local u48 = false
            local u49 = false
            local u50 = false
            local u51 = false
            local u52 = false
            local u53 = false
            local u54 = false
            local u55 = false
            local u56 = false
            local u57 = 5
            local u58 = false
            local u59 = false
            local u60 = false
            local u61 = false
            local u62 = false
            local u63 = false
            local u64 = true
            local u65 = true
            local u66 = true
            local u67 = true
            local u68 = true
            local u69 = true
            local u70 = 40
            local u71 = {}
            local u72 = nil
            local u73 = 100
            local u74 = 'Walk'
            local u75 = 'Walk'
            local u76 = false
            local u77 = 40
            local u78 = nil
            local u79 = 1000000000
            local u80 = 69
            local _LocalPlayer = game.Players.LocalPlayer
            local _VirtualInputManager = game:GetService('VirtualInputManager')

            local function v84(p83)
                p83:WaitForChild('Humanoid').Died:Connect(function()
                    u63 = true
                    u64 = false
                    u65 = false
                    u66 = false
                    u67 = false
                    u68 = false
                    u69 = false
                    u76 = true
                    u58 = true
                    u59 = true
                    u60 = true

                    wait(5)

                    u63 = false
                    u64 = true
                    u65 = true
                    u66 = true
                    u67 = true
                    u68 = true
                    u69 = true
                    u76 = false
                    u58 = false
                    u59 = false
                    u60 = false
                end)
            end

            _LocalPlayer.CharacterAdded:Connect(v84)

            if _LocalPlayer.Character then
                v84(_LocalPlayer.Character)
            end

            local v85, v86, v87 = ipairs(workspace.FlowerZones:GetDescendants())
            local u88 = u76
            local u89 = u69
            local u90 = u58
            local u91 = u66
            local u92 = u60
            local u93 = u59
            local u94 = u68
            local u95 = u65
            local u96 = u64
            local u97 = u63
            local u98 = u67

            while true do
                local v99, v100 = v85(v86, v87)

                if v99 == nil then
                    break
                end

                v87 = v99

                if v100:IsA('Part') then
                    table.insert(u71, v100.Name)
                end
            end

            local function u102()
                local _Character = game.Players.LocalPlayer.Character

                if _Character then
                    return _Character:FindFirstChild('HumanoidRootPart'), _Character:FindFirstChild('Humanoid')
                else
                    return nil, nil
                end
            end
            local function u110(p103)
                local v104, v105 = u102()

                if v104 and v105 then
                    local v106, v107, v108 = pairs(p103)

                    while true do
                        local v109

                        v108, v109 = v106(v107, v108)

                        if v108 == nil then
                            break
                        end

                        v105:MoveTo(v109)
                        v105.MoveToFinished:Wait()

                        v105.Jump = true

                        wait(0.2)
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('PlayerActivesCommand'):FireServer(unpack({
                            {
                                Name = 'Sprinkler Builder',
                            },
                        }))
                        wait(2)
                    end
                end
            end

            function data()
                return game.ReplicatedStorage.Events.RetrievePlayerStats:InvokeServer()
            end

            local function u114()
                local v111, v112 = u102()

                if v111 and v112 then
                    local _EquippedSprinkler = data().EquippedSprinkler

                    if _EquippedSprinkler == 'Basic Sprinkler' or _EquippedSprinkler == 'The Supreme Saturator' then
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('PlayerActivesCommand'):FireServer(unpack({
                            {
                                Name = 'Sprinkler Builder',
                            },
                        }))
                    elseif _EquippedSprinkler == 'Silver Soakers' then
                        u110({
                            v111.Position + v111.CFrame.LookVector * 1,
                            v111.Position - v111.CFrame.LookVector * 10,
                        })
                    elseif _EquippedSprinkler == 'Golden Gushers' then
                        u110({
                            v111.Position + v111.CFrame.LookVector * 1,
                            v111.Position - v111.CFrame.LookVector * 10,
                            v111.Position - v111.CFrame.RightVector * 10,
                        })
                    elseif _EquippedSprinkler == 'Diamond Drenchers' then
                        u110({
                            v111.Position + v111.CFrame.LookVector * 1,
                            v111.Position - v111.CFrame.LookVector * 10,
                            v111.Position - v111.CFrame.RightVector * 10,
                            v111.Position + v111.CFrame.RightVector * 10,
                        })
                    end
                end
            end
            local function u122(p115)
                local _Character2 = game.Players.LocalPlayer.Character

                if not _Character2 then
                    return false
                end

                local v117 = workspace.Monsters:GetDescendants()
                local v118, v119, v120 = ipairs(v117)

                while true do
                    local v121

                    v120, v121 = v118(v119, v120)

                    if v120 == nil then
                        break
                    end
                    if v121.Name == 'HumanoidRootPart' and v121.Parent.Parent.Name == 'Monsters' and (not v121.Parent.Name:match('Mondo') and (not v121.Parent.Name:match('Commando') and (not v121.Parent.Name:match('Vicious') and (not v121.Parent.Name:match('Crab') and (not v121.Parent.Name:match('Snail') and (not v121.Parent.Name:match('Windy') and (v121.Position - _Character2.HumanoidRootPart.Position).magnitude < p115)))))) then
                        return true
                    end
                end

                return false
            end

            local _TweenService = game:GetService('TweenService')
            local _Players = game:GetService('Players')
            local _LocalPlayer2 = _Players.LocalPlayer
            local _ = _LocalPlayer2.Character
            local _LocalPlayer3 = _Players.LocalPlayer

            local function u134(p127, p128, p129)
                local _Character3 = _LocalPlayer2.Character

                if _Character3 and _Character3:FindFirstChild('HumanoidRootPart') then
                    local _HumanoidRootPart = _Character3:FindFirstChild('HumanoidRootPart')

                    if _HumanoidRootPart then
                        local v132 = p127.Position + Vector3.new(p129, p128, 0)
                        local v133 = _TweenService:Create(_HumanoidRootPart, TweenInfo.new((v132 - _HumanoidRootPart.Position).Magnitude / u77, Enum.EasingStyle.Linear), {
                            CFrame = CFrame.new(v132),
                        })

                        v133:Play()
                        v133.Completed:Wait()

                        return v133
                    end
                end
            end
            local function u145(p135)
                if p135 and p135.Parent then
                    local _Position = p135.Position
                    local u137 = _TweenService:Create(char.HumanoidRootPart, TweenInfo.new((_Position - char.HumanoidRootPart.Position).magnitude / u77, Enum.EasingStyle.Linear), {
                        CFrame = CFrame.new(_Position),
                    })
                    local _BodyVelocity = Instance.new('BodyVelocity', char.HumanoidRootPart)
                    local v139 = Vector3.new(0, 0, 0)

                    _BodyVelocity.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                    _BodyVelocity.velocity = v139
                    _BodyVelocity.Name = 'Main'

                    local v140 = u137

                    u137.Play(v140)

                    local u141 = nil

                    u141 = p135.AncestryChanged:Connect(function(_, p142)
                        if not p142 then
                            u137:Cancel()
                            _BodyVelocity:Destroy()
                            u141:Disconnect()
                        end
                    end)

                    u137.Completed:Wait()

                    if u141.Connected then
                        local v143 = u141

                        u141.Disconnect(v143)
                    end

                    local v144 = _BodyVelocity

                    _BodyVelocity.Destroy(v144)
                end
            end

            u10.Puff:AddParagraph({
                Title = 'Coming Soon (:)',
                Content = '',
            })
            u10.Sticker:AddParagraph({
                Title = 'go to hive hub to unlock this feature',
                Content = 'auto collect sticker or steal sticker very op you will be always get 10+',
            })
            u10.Beemas:AddToggle('BEEMASGIF', {
                Title = 'Auto Claim Honey Wreath',
                Default = false,
            }):OnChanged(function()
                _G.BEEMASGIF = _Options.BEEMASGIF.Value

                if _G.BEEMASGIF then
                    while _G.BEEMASGIF do
                        game:GetService('ReplicatedStorage').Events.ToyEvent:FireServer(unpack({
                            'Honey Wreath',
                        }))
                        wait(3)
                    end
                end
            end)
            _Options.BEEMASGIF:SetValue(false)
            u10.Beemas:AddToggle('BEEMASGIF1', {
                Title = 'Auto Claim Gingerbread House',
                Default = false,
            }):OnChanged(function()
                _G.BEEMASGIF1 = _Options.BEEMASGIF1.Value

                if _G.BEEMASGIF1 then
                    while _G.BEEMASGIF1 do
                        game:GetService('ReplicatedStorage').Events.ToyEvent:FireServer(unpack({
                            'Gingerbread House',
                        }))
                        wait(3)
                    end
                end
            end)
            _Options.BEEMASGIF1:SetValue(false)
            u10.Beemas:AddToggle('BEEMASGIF12', {
                Title = 'Auto Use Snow Machine',
                Default = false,
            }):OnChanged(function()
                _G.BEEMASGIF12 = _Options.BEEMASGIF12.Value

                if _G.BEEMASGIF12 then
                    while _G.BEEMASGIF12 do
                        game:GetService('ReplicatedStorage').Events.ToyEvent:FireServer(unpack({
                            'Snow Machine',
                        }))
                        wait(3)
                    end
                end
            end)
            _Options.BEEMASGIF12:SetValue(false)
            u10.Beemas:AddParagraph({
                Title = 'Auto Claim These Things',
                Content = "Beesmas Feast & Stockings & Honeyday Candles & Samovar & Onett's Lid Art",
            })
            u10.Beemas:AddToggle('BEEMASGIF2', {
                Title = 'Auto Claim Beesmas Toys',
                Default = false,
            }):OnChanged(function()
                _G.BEEMASGIF2 = _Options.BEEMASGIF2.Value

                if _G.BEEMASGIF2 then
                    getgenv().char = game.Players.LocalPlayer.Character
                    getgenv().humanoid = char.Humanoid

                    local function v151()
                        local v146 = next
                        local v147, v148 = game:GetService('Workspace').Collectibles:GetChildren()
                        local v149 = {}

                        while true do
                            local v150

                            v148, v150 = v146(v147, v148)

                            if v148 == nil then
                                break
                            end
                            if v150.Name == 'C' and (v150.Orientation.Z == 0 and v150:IsA('Part')) then
                                table.insert(v149, v150)
                            end
                        end

                        return v149
                    end
                    local function v160(p152, p153, p154)
                        local _Position2 = p153.Position
                        local _Size = p153.Size

                        if not (_Position2 and _Size) then
                            return false
                        end

                        local v157 = Vector3.new(_Size.X + p154, _Size.Y, _Size.Z + p154)
                        local v158 = _Position2 - v157 / 2
                        local v159 = _Position2 + v157 / 2

                        return p152.X >= v158.X and (p152.X <= v159.X and (p152.Z >= v158.Z and p152.Z <= v159.Z))
                    end

                    local v161 = 30

                    while _G.BEEMASGIF2 do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                            'Stockings',
                        }))
                        wait(2)

                        local v162 = v151()
                        local v163, v164, v165 = ipairs(v162)

                        while true do
                            local v166

                            v165, v166 = v163(v164, v165)

                            if v165 == nil then
                                break
                            end
                            if v166 and v160(v166.Position, game.workspace.Toys.Stockings.Platform, v161) then
                                u97 = true

                                repeat
                                    u145(v166)

                                    v166 = v151()[1]

                                    wait(0.1)
                                until not v160(v166.Position, game.workspace.Toys.Stockings.Platform, v161)

                                u97 = false
                            end
                        end

                        local v167 = v151()
                        local v168, v169, v170 = ipairs(v167)

                        while true do
                            local v171

                            v170, v171 = v168(v169, v170)

                            if v170 == nil then
                                break
                            end
                            if not v160(v171.Position, game.workspace.Toys.Stockings.Platform, v161) then
                                game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                                    'Beesmas Feast',
                                }))
                                wait(1)

                                local v172 = v151()
                                local v173, v174, v175 = ipairs(v172)

                                while true do
                                    local v176

                                    v175, v176 = v173(v174, v175)

                                    if v175 == nil then
                                        break
                                    end
                                    if v176 and v160(v176.Position, game.workspace.Toys['Beesmas Feast'].Platform, v161) then
                                        u97 = true

                                        repeat
                                            u145(v176)

                                            v176 = v151()[1]

                                            wait(0.1)
                                        until not v160(v176.Position, game.workspace.Toys['Beesmas Feast'].Platform, v161)

                                        u97 = false
                                    end
                                end
                            end
                        end

                        local v177 = v151()
                        local v178, v179, v180 = ipairs(v177)

                        while true do
                            local v181

                            v180, v181 = v178(v179, v180)

                            if v180 == nil then
                                break
                            end
                            if not (v160(v181.Position, game.workspace.Toys.Stockings.Platform, v161) or v160(v181.Position, game.workspace.Toys['Beesmas Feast'].Platform, v161)) then
                                game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                                    'Honeyday Candles',
                                }))
                                wait(1)

                                local v182 = v151()
                                local v183, v184, v185 = ipairs(v182)

                                while true do
                                    local v186

                                    v185, v186 = v183(v184, v185)

                                    if v185 == nil then
                                        break
                                    end
                                    if v186 and v160(v186.Position, game.workspace.Toys['Honeyday Candles'].Platform, v161) then
                                        u97 = true

                                        repeat
                                            u145(v186)

                                            v186 = v151()[1]

                                            wait(0.1)
                                        until not v160(v186.Position, game.workspace.Toys['Honeyday Candles'].Platform, v161)

                                        u97 = false
                                    end
                                end
                            end
                        end

                        local v187 = v151()
                        local v188, v189, v190 = ipairs(v187)

                        while true do
                            local v191

                            v190, v191 = v188(v189, v190)

                            if v190 == nil then
                                break
                            end
                            if not (v160(v191.Position, game.workspace.Toys.Stockings.Platform, v161) or (v160(v191.Position, game.workspace.Toys['Beesmas Feast'].Platform, v161) or v160(v191.Position, game.workspace.Toys['Honeyday Candles'].Platform, v161))) then
                                game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                                    'Samovar',
                                }))
                                wait(1)

                                local v192 = v151()
                                local v193, v194, v195 = ipairs(v192)

                                while true do
                                    local v196

                                    v195, v196 = v193(v194, v195)

                                    if v195 == nil then
                                        break
                                    end
                                    if v196 and v160(v196.Position, game.workspace.Toys.Samovar.Platform, v161) then
                                        u97 = true

                                        repeat
                                            u145(v196)

                                            v196 = v151()[1]

                                            wait(0.1)
                                        until not v160(v196.Position, game.workspace.Toys.Samovar.Platform, v161)

                                        u97 = false
                                    end
                                end
                            end
                        end

                        local v197 = v151()
                        local v198, v199, v200 = ipairs(v197)

                        while true do
                            local v201

                            v200, v201 = v198(v199, v200)

                            if v200 == nil then
                                break
                            end
                            if not (v160(v201.Position, game.workspace.Toys.Stockings.Platform, v161) or (v160(v201.Position, game.workspace.Toys['Beesmas Feast'].Platform, v161) or (v160(v201.Position, game.workspace.Toys['Honeyday Candles'].Platform, v161) or v160(v201.Position, game.workspace.Toys.Samovar.Platform, v161)))) then
                                game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                                    "Onett's Lid Art",
                                }))
                                wait(1)

                                local v202 = v151()
                                local v203, v204, v205 = ipairs(v202)

                                while true do
                                    local v206

                                    v205, v206 = v203(v204, v205)

                                    if v205 == nil then
                                        break
                                    end
                                    if v206 and v160(v206.Position, game.workspace.Toys["Onett's Lid Art"].Platform, v161) then
                                        u97 = true

                                        repeat
                                            u145(v206)

                                            v206 = v151()[1]

                                            wait(0.1)
                                        until not v160(v206.Position, game.workspace.Toys["Onett's Lid Art"].Platform, v161)

                                        u97 = false
                                    end
                                end
                            end
                        end

                        local v207 = v151()
                        local v208, v209, v210 = ipairs(v207)

                        while true do
                            local v211

                            v210, v211 = v208(v209, v210)

                            if v210 == nil then
                                break
                            end
                            if not (v160(v211.Position, game.workspace.Toys['Beesmas Feast'].Platform, v161) or (v160(v211.Position, game.workspace.Toys.Stockings.Platform, v161) or (v160(v211.Position, game.workspace.Toys['Honeyday Candles'].Platform, v161) or (v160(v211.Position, game.workspace.Toys.Samovar.Platform, v161) or v160(v211.Position, game.workspace.Toys["Onett's Lid Art"].Platform, v161))))) then
                                u97 = false
                            end
                        end

                        wait(0.1)
                    end
                else
                    u97 = false
                end
            end)
            _Options.BEEMASGIF2:SetValue(false)
            u10.Beemas:AddToggle('BEEMASGIF3', {
                Title = 'Farm Snowflake Around The Map',
                Default = false,
            }):OnChanged(function()
                _G.BEEMASGIF3 = _Options.BEEMASGIF3.Value

                if _G.BEEMASGIF3 then
                    while _G.BEEMASGIF3 do
                        pcall(function()
                            local _Character4 = game.Players.LocalPlayer.Character

                            if _Character4 then
                                local v213 = workspace.Collectibles:GetChildren()
                                local _huge = math.huge
                                local v215, v216, v217 = ipairs(v213)
                                local v218 = nil

                                while true do
                                    local v219

                                    v217, v219 = v215(v216, v217)

                                    if v217 == nil then
                                        break
                                    end
                                    if v219.Orientation.Z == 0 and (v219:FindFirstChild('BackDecal') and (v219.BackDecal.Texture == 'rbxassetid://6087969886' and v219.Transparency ~= 1)) then
                                        local _magnitude = (v219.Position - _Character4.HumanoidRootPart.Position).magnitude

                                        if _magnitude < _huge then
                                            v218 = v219
                                            _huge = _magnitude
                                        end
                                    end
                                end

                                if v218 and not (u90 or (u61 or (u62 or (u93 or (u92 or u97))))) then
                                    u145(v218)
                                end
                            end
                        end)
                        wait(0.1)
                    end
                end
            end)
            _Options.BEEMASGIF3:SetValue(false)

            local u221 = nil
            local u222 = nil
            local u223 = nil
            local u224 = nil
            local u225 = nil
            local u226 = nil
            local u227 = nil
            local u228 = nil
            local u229 = nil
            local u230 = 100
            local v231 = {
                'Plastic Planter',
                'Candy Planter',
                'Red Clay Planter',
                'Blue Clay Planter',
                'Tacky Planter',
                'Pesticide Planter',
                'Heat-Treated Planter',
                'Hydroponic Planter',
                'Petal Planter',
                'The Planter Of Plenty',
                'Paper Planter',
                'Ticket Planter',
                'Festive Planter',
                'Sticker Planter',
            }

            u10.Planter:AddInput('WHENHAR', {
                Title = 'When Harvest',
                Default = '100',
                Placeholder = 'input number (%)',
                Numeric = true,
                Finished = false,
                Callback = function(p232)
                    u230 = tonumber(p232)
                end,
            })
            u10.Planter:AddToggle('HARPLANT', {
                Title = 'Auto Harvest Planters',
                Default = false,
            }):OnChanged(function()
                _G.HARPLANT = _Options.HARPLANT.Value

                if _G.HARPLANT then
                    while _G.HARPLANT do
                        pcall(function()
                            getgenv().maxDistance = farm_range
                            getgenv().char = game.Players.LocalPlayer.Character
                            getgenv().humanoid = char.Humanoid

                            function IsItem(p233)
                                if (p233.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                    if p233 then
                                        if p233.Parent then
                                            if p233.Orientation.Z == 0 then
                                                if p233:FindFirstChild('FrontDecal') then
                                                    if p233:FindFirstChild('Sparkles') then
                                                        return false
                                                    elseif p233.Name == 'C' then
                                                        return p233:IsA('Part') and true or false
                                                    else
                                                        return false
                                                    end
                                                else
                                                    return false
                                                end
                                            else
                                                return false
                                            end
                                        else
                                            return false
                                        end
                                    else
                                        return false
                                    end
                                else
                                    return false
                                end
                            end
                            function IsItemEx()
                                local v234 = next
                                local v235, v236 = game:GetService('Workspace').Collectibles:GetChildren()

                                while true do
                                    local v237

                                    v236, v237 = v234(v235, v236)

                                    if v236 == nil then
                                        break
                                    end
                                    if IsItem(v237) and (v237.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                        return true
                                    end
                                end

                                return false
                            end
                            function farmItem(p238)
                                humanoid:MoveTo(p238.Position)

                                repeat
                                    task.wait()
                                until not IsItem(p238) or ((p238.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (not _G.HARPLANT or u93))
                            end
                            function collectItem()
                                local v239 = next
                                local v240, v241 = game:GetService('Workspace').Collectibles:GetChildren()

                                while true do
                                    local v242

                                    v241, v242 = v239(v240, v241)

                                    if v241 == nil then
                                        break
                                    end
                                    if IsItem(v242) and (v242.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                        farmItem(v242)
                                    end
                                end
                            end
                            function checkFull()
                                local v243, v244, v245 = pairs(workspace.Planters:GetDescendants())

                                while true do
                                    local v246

                                    v245, v246 = v243(v244, v245)

                                    if v245 == nil then
                                        break
                                    end
                                    if v246.Name == 'TextLabel' and u230 <= tonumber(v246.Text:match('%((%d+%.%d+)%%%)')) then
                                        return true
                                    end
                                end

                                return false
                            end

                            local v247 = 0

                            local function v256(p248, p249, p250)
                                local _Position3 = p249.Position
                                local _Size2 = p249.Size

                                if not (_Position3 and _Size2) then
                                    return false
                                end

                                local v253 = Vector3.new(_Size2.X + p250, _Size2.Y, _Size2.Z + p250)
                                local v254 = _Position3 - v253 / 2
                                local v255 = _Position3 + v253 / 2

                                return p248.X >= v254.X and (p248.X <= v255.X and (p248.Z >= v254.Z and p248.Z <= v255.Z))
                            end

                            local _Character5 = game:GetService('Players').LocalPlayer.Character

                            if not checkFull() or (u93 or u97) then
                                u62 = false

                                return
                            end

                            u62 = true

                            local v258, v259, v260 = pairs(workspace.Planters:GetDescendants())
                            local _Humanoid = _Character5:FindFirstChildOfClass('Humanoid')

                            if _Humanoid then
                            end
                            if true then
                                wait(0.2)

                                if u75 ~= 'Walk' then
                                    local v262 = game:GetService('TweenService'):Create(_Character5.HumanoidRootPart, TweenInfo.new((v269.Parent.Parent.Parent.Parent.Position - _Character5.HumanoidRootPart.Position).magnitude / u77, Enum.EasingStyle.Linear), {
                                        CFrame = v269.Parent.Parent.Parent.Parent.CFrame,
                                    })
                                    local _BodyVelocity2 = Instance.new('BodyVelocity', _Character5.HumanoidRootPart)
                                    local v264 = Vector3.new(0, 0, 0)

                                    _BodyVelocity2.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                    _BodyVelocity2.velocity = v264
                                    _BodyVelocity2.Name = 'Main'

                                    v262:Play()
                                    v262.Completed:Wait()
                                    _BodyVelocity2:Destroy()
                                else
                                    _Humanoid:MoveTo(v269.Parent.Parent.Parent.Parent.Position)
                                end
                            end

                            local _Position4 = _Character5.HumanoidRootPart.Position
                            local v266 = _Character5.HumanoidRootPart.CFrame.LookVector * 15
                            local v267 = Ray.new(_Position4, v266)

                            if workspace:FindPartOnRay(v267, _Character5) and _Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then
                                _Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                            end
                            if not v256(_Character5.PrimaryPart.Position, v269.Parent.Parent.Parent.Parent, v247) and (_G.HARPLANT and not (u93 or u97)) then
                            end

                            wait(2)
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                            wait(1)

                            local _YesButton = game.Players.LocalPlayer.PlayerGui.ScreenGui.QuestionBox.Box.YesButton

                            getgenv().Pos1 = {
                                X = _YesButton.AbsolutePosition.X,
                                Y = _YesButton.AbsolutePosition.Y,
                            }

                            for _ = 1, 5 do
                                _VirtualInputManager:SendMouseButtonEvent(Pos1.X + 55, Pos1.Y + 55, 0, true, game, 1)
                                wait(0.1)
                                _VirtualInputManager:SendMouseButtonEvent(Pos1.X + 55, Pos1.Y + 55, 0, false, game, 1)
                            end

                            wait(2)

                            for _ = 1, 5 do
                                repeat
                                    wait(0.2)
                                    collectItem()
                                until not IsItemEx()

                                wait(0.2)
                            end

                            local v269

                            v260, v269 = v258(v259, v260)

                            if v260 == nil then
                            end
                            if v269.Name ~= 'TextLabel' or (u230 > tonumber(v269.Text:match('%((%d+%.%d+)%%%)')) or v256(_Character5.PrimaryPart.Position, v269.Parent.Parent.Parent.Parent, v247)) then
                            else
                            end
                        end)
                        wait(0.2)
                    end
                else
                    u62 = false
                end
            end)
            _Options.HARPLANT:SetValue(false)
            u10.Planter:AddToggle('PLP', {
                Title = 'Auto Plant Planters',
                Default = false,
            }):OnChanged(function()
                _G.PLP = _Options.PLP.Value

                if _G.PLP then
                    spawn(function()
                        while _G.PLP do
                            pcall(function()
                                local _Character6 = game:GetService('Players').LocalPlayer.Character
                                local v271 = _Character6
                                local u272 = _Character6.FindFirstChildOfClass(v271, 'Humanoid')

                                function countPlanter()
                                    local v273, v274, v275 = pairs(workspace.Planters:GetDescendants())
                                    local v276 = 0

                                    while true do
                                        local v277

                                        v275, v277 = v273(v274, v275)

                                        if v275 == nil then
                                            break
                                        end
                                        if v277.Name == 'Planter Gui' then
                                            v276 = v276 + 1
                                        end
                                    end

                                    return v276
                                end
                                function checkFull()
                                    local v278, v279, v280 = pairs(workspace.Planters:GetDescendants())

                                    while true do
                                        local v281

                                        v280, v281 = v278(v279, v280)

                                        if v280 == nil then
                                            break
                                        end
                                        if v281.Name == 'TextLabel' and u230 <= tonumber(v281.Text:match('%((%d+%.%d+)%%%)')) then
                                            return true
                                        end
                                    end

                                    return false
                                end

                                local function u290(p282, p283, p284)
                                    local _Position5 = p283.Position
                                    local _Size3 = p283.Size

                                    if not (_Position5 and _Size3) then
                                        return false
                                    end

                                    local v287 = Vector3.new(_Size3.X + p284, _Size3.Y, _Size3.Z + p284)
                                    local v288 = _Position5 - v287 / 2
                                    local v289 = _Position5 + v287 / 2

                                    return p282.X >= v288.X and (p282.X <= v289.X and (p282.Z >= v288.Z and p282.Z <= v289.Z))
                                end
                                local function v300(p291, p292)
                                    if not (p291 and p292) then
                                        return
                                    end

                                    local v293 = workspace.FlowerZones:FindFirstChild(p291)

                                    if not v293 then
                                        return
                                    end
                                    if u290(_Character6.PrimaryPart.Position, v293, 10) or not u272 then
                                        return
                                    else
                                        while true do
                                            if true then
                                                wait(0.2)

                                                if u75 ~= 'Walk' then
                                                    local v294 = game:GetService('TweenService'):Create(_Character6.HumanoidRootPart, TweenInfo.new((v293.Position - _Character6.HumanoidRootPart.Position).magnitude / u77, Enum.EasingStyle.Linear), {
                                                        CFrame = v293.CFrame,
                                                    })
                                                    local _BodyVelocity3 = Instance.new('BodyVelocity', _Character6.HumanoidRootPart)
                                                    local v296 = Vector3.new(0, 0, 0)

                                                    _BodyVelocity3.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                                    _BodyVelocity3.velocity = v296
                                                    _BodyVelocity3.Name = 'Main'

                                                    v294:Play()
                                                    v294.Completed:Wait()
                                                    _BodyVelocity3:Destroy()
                                                else
                                                    u272:MoveTo(v293.Position)
                                                end
                                            end

                                            local _Position6 = _Character6.HumanoidRootPart.Position
                                            local v298 = _Character6.HumanoidRootPart.CFrame.LookVector * u70
                                            local v299 = Ray.new(_Position6, v298)

                                            if workspace:FindPartOnRay(v299, _Character6) and u272:GetState() ~= Enum.HumanoidStateType.Jumping then
                                                u272:ChangeState(Enum.HumanoidStateType.Jumping)
                                            end
                                            if u290(_Character6.PrimaryPart.Position, v293, 10) or (not _G.PLP or (u62 or (u93 or u97))) then
                                                wait(1.5)
                                                game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('PlayerActivesCommand'):FireServer(unpack({
                                                    {Name = p292},
                                                }))
                                            end
                                        end
                                    end
                                end

                                if checkFull() or (countPlanter() >= 3 or (u62 or (u93 or (not _G.PLP or u97)))) then
                                    u61 = false
                                else
                                    u61 = true

                                    v300(u221, u227)
                                    wait(1)

                                    if not checkFull() and (countPlanter() < 3 and (not u62 and (not u93 and (_G.PLP and not u97)))) then
                                        v300(u224, u227)
                                        wait(1)
                                    end
                                    if not checkFull() and (countPlanter() < 3 and (not u62 and (not u93 and (_G.PLP and not u97)))) then
                                        v300(u222, u228)
                                        wait(1)
                                    end
                                    if not checkFull() and (countPlanter() < 3 and (not u62 and (not u93 and (_G.PLP and not u97)))) then
                                        v300(u225, u228)
                                        wait(1)
                                    end
                                    if not checkFull() and (countPlanter() < 3 and (not u62 and (not u93 and (_G.PLP and not u97)))) then
                                        v300(u223, u229)
                                        wait(1)
                                    end
                                    if not checkFull() and (countPlanter() < 3 and (not u62 and (not u93 and (_G.PLP and not u97)))) then
                                        v300(u226, u229)
                                        wait(1)
                                    end
                                end
                            end)
                            wait(0.2)
                        end
                    end)
                else
                    u61 = false
                end
            end)
            _Options.PLP:SetValue(false)
            u10.Planter:AddParagraph({
                Title = 'Planter 1',
                Content = '',
            })
            u10.Planter:AddDropdown('PLF', {
                Title = 'Select Field 1',
                Values = u71,
                Multi = false,
                Default = 1,
            }):OnChanged(function(p301)
                u221 = p301
            end)
            u10.Planter:AddDropdown('PLF_1', {
                Title = 'Select Field 2',
                Values = u71,
                Multi = false,
                Default = 1,
            }):OnChanged(function(p302)
                u224 = p302
            end)
            u10.Planter:AddDropdown('PL', {
                Title = 'Select Planter',
                Values = v231,
                Multi = false,
                Default = 1,
            }):OnChanged(function(p303)
                u227 = p303
            end)
            u10.Planter:AddParagraph({
                Title = 'Planter 2',
                Content = '',
            })
            u10.Planter:AddDropdown('PLF2', {
                Title = 'Select Field 1',
                Values = u71,
                Multi = false,
                Default = 1,
            }):OnChanged(function(p304)
                u222 = p304
            end)
            u10.Planter:AddDropdown('PLF2_1', {
                Title = 'Select Field 2',
                Values = u71,
                Multi = false,
                Default = 1,
            }):OnChanged(function(p305)
                u225 = p305
            end)
            u10.Planter:AddDropdown('PL2', {
                Title = 'Select Planter',
                Values = v231,
                Multi = false,
                Default = 1,
            }):OnChanged(function(p306)
                u228 = p306
            end)
            u10.Planter:AddParagraph({
                Title = 'Planter 3',
                Content = '',
            })
            u10.Planter:AddDropdown('PLF3', {
                Title = 'Select Field 1',
                Values = u71,
                Multi = false,
                Default = 1,
            }):OnChanged(function(p307)
                u223 = p307
            end)
            u10.Planter:AddDropdown('PLF3_1', {
                Title = 'Select Field 2',
                Values = u71,
                Multi = false,
                Default = 1,
            }):OnChanged(function(p308)
                u226 = p308
            end)
            u10.Planter:AddDropdown('PL3', {
                Title = 'Select Planter',
                Values = v231,
                Multi = false,
                Default = 1,
            }):OnChanged(function(p309)
                u229 = p309
            end)
            u10.Retro:AddParagraph({
                Title = 'PATCHED',
                Content = '',
            })
            u10.Retro:AddInput('inputkc', {
                Title = 'High Distance',
                Default = '12',
                Placeholder = 'input number',
                Numeric = true,
                Finished = false,
                Callback = function(p310)
                    u57 = tonumber(p310)
                end,
            })

            local u311 = nil
            local u312 = false

            local function u338()
                local _Players2 = game:GetService('Players')
                local _TweenService2 = game:GetService('TweenService')

                local function u317(p315, p316)
                    return (p315 - p316).magnitude
                end

                (function()
                    while u312 do
                        _Players2:GetPlayers()

                        local _LocalPlayer4 = _Players2.LocalPlayer
                        local _Position7 = _LocalPlayer4.Character.HumanoidRootPart.Position
                        local _huge2 = math.huge
                        local v321, v322, v323 = ipairs(game:GetService('Workspace').Monsters:GetDescendants())
                        local v324 = nil

                        while true do
                            local v325

                            v323, v325 = v321(v322, v323)

                            if v323 == nil then
                                break
                            end
                            if v325.Name == 'ZombieDeclumperScript' or v325.Name == 'TouchInterest' then
                                local v326 = u317(v325.Parent.Position, _Position7)

                                if v326 < _huge2 then
                                    v324 = v325.Parent
                                    _huge2 = v326
                                end
                            end
                        end

                        local v327 = v324 and v324.CFrame

                        if v327 then
                            local function v335(p328)
                                local _Character7 = _Players2.LocalPlayer.Character

                                if _Character7 and _Character7:FindFirstChild('HumanoidRootPart') then
                                    local _HumanoidRootPart2 = _Character7:FindFirstChild('HumanoidRootPart')

                                    if _HumanoidRootPart2 then
                                        local v331 = p328.Position + Vector3.new(0, u57, 0)
                                        local v332 = CFrame.new(v331, p328.Position)
                                        local _Magnitude = (v332.Position - _HumanoidRootPart2.Position).Magnitude
                                        local v334 = _TweenService2:Create(_HumanoidRootPart2, TweenInfo.new(_Magnitude / u77, Enum.EasingStyle.Linear), {CFrame = v332})

                                        v334:Play()
                                        v334.Completed:Wait()

                                        return v334
                                    end
                                end
                            end

                            local _HumanoidRootPart3 = _LocalPlayer4.Character:FindFirstChild('HumanoidRootPart')

                            if _HumanoidRootPart3 then
                                u311 = _HumanoidRootPart3:FindFirstChild('Main')

                                if not u311 then
                                    local _BodyVelocity4 = Instance.new('BodyVelocity', _HumanoidRootPart3)

                                    _BodyVelocity4.Name = 'Main'
                                    _BodyVelocity4.Velocity = Vector3.new(0, 0, 0)
                                    _BodyVelocity4.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                    u311 = _BodyVelocity4
                                end

                                v335(v327)
                                wait(0.5)

                                game.Workspace.CurrentCamera.CameraSubject = _HumanoidRootPart3
                            end
                        end

                        wait(0)
                    end
                end)()
            end

            u10.Retro:AddToggle('RETRO', {
                Title = 'Auto Tween Mob',
                Default = false,
            }):OnChanged(function()
                u312 = _Options.RETRO.Value

                if u312 then
                    u338()
                else
                    if u311 then
                        u311:Destroy()

                        u311 = nil
                    end

                    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                end
            end)
            _Options.RETRO:SetValue(false)
            u10.Retro:AddToggle('RETRO2', {
                Title = 'Auto Use Sword',
                Default = false,
            }):OnChanged(function()
                _G.RETRO2 = _Options.RETRO2.Value

                if _G.RETRO2 then
                    while _G.RETRO2 do
                        pcall(function()
                            task.spawn(function()
                                game:GetService('VirtualUser'):ClickButton1(Vector2.new(9000000000, 9000000000))
                            end)
                        end)
                        wait(0.1)
                    end
                end
            end)
            _Options.RETRO2:SetValue(false)
            u10.Retro:AddButton({
                Title = 'Full Bright',
                Description = '',
                Callback = function()
                    pcall(function()
                        local _Lighting = game:GetService('Lighting')

                        _Lighting.Ambient = Color3.fromRGB(255, 255, 255)
                        _Lighting.Brightness = 1
                        _Lighting.FogEnd = 10000000000

                        local v340, v341, v342 = pairs(_Lighting:GetDescendants())

                        while true do
                            local v343

                            v342, v343 = v340(v341, v342)

                            if v342 == nil then
                                break
                            end
                            if v343:IsA('BloomEffect') or (v343:IsA('BlurEffect') or (v343:IsA('ColorCorrectionEffect') or v343:IsA('SunRaysEffect'))) then
                                v343.Enabled = false
                            end
                        end

                        _Lighting.Changed:Connect(function()
                            _Lighting.Ambient = Color3.fromRGB(255, 255, 255)
                            _Lighting.Brightness = 1
                            _Lighting.FogEnd = 10000000000
                        end)
                        spawn(function()
                            local _Character8 = game:GetService('Players').LocalPlayer.Character

                            while wait(0.1) do
                                repeat
                                    wait(0.1)
                                until _Character8 ~= nil

                                if not _Character8.HumanoidRootPart:FindFirstChildWhichIsA('PointLight') then
                                    local _PointLight = Instance.new('PointLight', _Character8.HumanoidRootPart)

                                    _PointLight.Brightness = 1
                                    _PointLight.Range = 60
                                end
                            end
                        end)
                    end)
                end,
            })
            u10.Retro:AddButton({
                Title = 'Buy 10 Bricks',
                Description = '',
                Callback = function()
                    local _Character9 = game.Players.LocalPlayer.Character

                    firetouchinterest(_Character9.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy 10 Bricks Button'].Button, 0)
                    wait(0.1)
                    firetouchinterest(_Character9.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy 10 Bricks Button'].Button, 1)
                end,
            })
            u10.Retro:AddButton({
                Title = 'Buy Unlock Bees',
                Description = '',
                Callback = function()
                    local _Character10 = game.Players.LocalPlayer.Character

                    firetouchinterest(_Character10.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Unlock Bees Button'].Button, 0)
                    wait(0.1)
                    firetouchinterest(_Character10.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Unlock Bees Button'].Button, 1)
                end,
            })
            u10.Retro:AddButton({
                Title = 'Buy Classic Sword',
                Description = '',
                Callback = function()
                    local _Character11 = game.Players.LocalPlayer.Character

                    firetouchinterest(_Character11.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy Classic Sword'].Button, 0)
                    wait(0.1)
                    firetouchinterest(_Character11.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy Classic Sword'].Button, 1)
                end,
            })
            u10.Retro:AddButton({
                Title = 'Buy Illumina',
                Description = '',
                Callback = function()
                    local _Character12 = game.Players.LocalPlayer.Character

                    firetouchinterest(_Character12.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy Illumina'].Button, 0)
                    wait(0.1)
                    firetouchinterest(_Character12.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy Illumina'].Button, 1)
                end,
            })
            u10.Retro:AddButton({
                Title = 'Buy Bloxiade',
                Description = '',
                Callback = function()
                    local _Character13 = game.Players.LocalPlayer.Character

                    firetouchinterest(_Character13.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy Bloxiade'].Button, 0)
                    wait(0.1)
                    firetouchinterest(_Character13.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy Bloxiade'].Button, 1)
                end,
            })
            u10.Retro:AddButton({
                Title = 'Buy Bloxy Cola',
                Description = '',
                Callback = function()
                    local _Character14 = game.Players.LocalPlayer.Character

                    firetouchinterest(_Character14.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy Bloxy Cola'].Button, 0)
                    wait(0.1)
                    firetouchinterest(_Character14.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy Bloxy Cola'].Button, 1)
                end,
            })
            u10.Retro:AddButton({
                Title = 'Buy Chez Burger',
                Description = '',
                Callback = function()
                    local _Character15 = game.Players.LocalPlayer.Character

                    firetouchinterest(_Character15.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy Chez Burger'].Button, 0)
                    wait(0.1)
                    firetouchinterest(_Character15.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy Chez Burger'].Button, 1)
                end,
            })
            u10.Retro:AddButton({
                Title = 'Buy Pizza',
                Description = '',
                Callback = function()
                    local _Character16 = game.Players.LocalPlayer.Character

                    firetouchinterest(_Character16.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy Pizza'].Button, 0)
                    wait(0.1)
                    firetouchinterest(_Character16.HumanoidRootPart, workspace.ClassicMinigame.TycoonButtons['Buy Pizza'].Button, 1)
                end,
            })
            u10.Webhook:AddParagraph({
                Title = 'Webhook To Check How Much Honey Is Made',
                Content = '',
            })

            local u354 = 60
            local u355 = ''

            u10.Webhook:AddInput('WEBHOOK', {
                Title = 'Webhook',
                Default = '',
                Placeholder = 'input webhook address',
                Numeric = false,
                Finished = false,
                Callback = function(p356)
                    u355 = p356
                end,
            })
            u10.Webhook:AddInput('COOLDOWN', {
                Title = 'When Send Webhook',
                Default = '',
                Placeholder = 'input second',
                Numeric = true,
                Finished = false,
                Callback = function(p357)
                    u354 = tonumber(p357)
                end,
            })

            local _web1 = u10.Webhook:AddToggle('web1', {
                Title = 'Auto Send Webhook',
                Default = false,
            })
            local v359 = _web1

            _web1.OnChanged(v359, function()
                _G.web1 = _web1.Value

                if _G.web1 then
                    while _G.web1 do
                        local _Honey = game:GetService('Players').LocalPlayer.CoreStats.Honey
                        local u361 = not http_request and (not (request or syn and syn.request) and (not (fluxus and fluxus.request) and http))

                        if u361 then
                            u361 = http.request
                        end

                        local _HttpService = game:GetService('HttpService')

                        local function v366(p363)
                            local v364 = tostring(p363)

                            repeat
                                local v365

                                v364, v365 = string.gsub(v364, '^(-?%d+)(%d%d%d)', '%1,%2')
                                k = v365
                            until k == 0

                            return v364
                        end
                        local function v377(p367, p368)
                            local v369 = _HttpService
                            local _JSONEncode = v369.JSONEncode
                            local v371 = {}
                            local v372 = {}
                            local v373 = {
                                title = p367,
                                description = p368,
                                footer = {
                                    text = 'BaconBossScript',
                                    icon_url = 'https://cdn.discordapp.com/attachments/1165237292147945573/1250344088885137438/dep.png',
                                },
                                thumbnail = {
                                    url = 'https://media.discordapp.net/attachments/1237398892094554162/1252497144179458058/beecon_hub.png?ex=66726e5d&is=66711cdd&hm=0c2776c572657868fdbddd0e87dfe3c41f369589379f096eb1a9fe3b4dd1e9cb&=&format=webp&quality=lossless&width=563&height=563',
                                },
                                author = {
                                    name = 'Bee Swarm Simulator | Beecon Hub',
                                    icon_url = 'https://cdn.discordapp.com/attachments/1165237292147945573/1250345136999895050/images_23.jpg',
                                },
                            }

                            __set_list(v372, 1, {v373})

                            v371.embeds = v372

                            local v374 = _JSONEncode(v369, v371)
                            local v375 = u361
                            local v376 = {
                                Url = u355,
                                Method = 'POST',
                                Body = tostring(v374),
                                Headers = {
                                    ['Content-Type'] = 'application/json',
                                },
                            }

                            v375(v376)
                        end

                        local _Value = _Honey.Value

                        task.wait(u354)

                        local _Value2 = _Honey.Value

                        v377('Honey Stats', ' | Old Honey: ' .. v366(_Value) .. '\n' .. ' | New Honey: ' .. v366(_Value2) .. '\n' .. ' | Calculating Honey Got From Past ' .. u354 .. ' Seconds\n' .. 'Total: ' .. v366(_Value2 - _Value))
                    end
                end
            end)

            local v380 = _web1

            _web1.SetValue(v380, false)
            u10.Webhook:AddParagraph({
                Title = 'Send Feedback Report Bugs & Rate The Script & Suggest',
                Content = '',
            })

            local u381 = 'Hello'

            u10.Webhook:AddInput('FEEDBACK', {
                Title = 'Write Your Feedback',
                Default = '',
                Placeholder = 'tell somthing...',
                Numeric = false,
                Finished = false,
                Callback = function(p382)
                    u381 = p382
                end,
            })
            u10.Webhook:AddButton({
                Title = 'Send Feedback',
                Description = '',
                Callback = function()
                    local u383 = not (http_request or (request or syn and syn.request)) and (not (fluxus and fluxus.request) and http)

                    if u383 then
                        u383 = http.request
                    end

                    local _HttpService2 = game:GetService('HttpService')
                    local v385 = u381;

                    (function(p386, p387)
                        local v388 = _HttpService2
                        local _JSONEncode2 = v388.JSONEncode
                        local v390 = {}
                        local v391 = {}
                        local v392 = {
                            title = p386,
                            description = p387,
                            footer = {
                                text = 'BaconBossScript',
                                icon_url = 'https://cdn.discordapp.com/attachments/1165237292147945573/1250344088885137438/dep.png',
                            },
                            thumbnail = {
                                url = 'https://media.discordapp.net/attachments/1237398892094554162/1252497144179458058/beecon_hub.png?ex=66726e5d&is=66711cdd&hm=0c2776c572657868fdbddd0e87dfe3c41f369589379f096eb1a9fe3b4dd1e9cb&=&format=webp&quality=lossless&width=563&height=563',
                            },
                            author = {
                                name = 'Bee Swarm Simulator | Beecon Hub',
                                icon_url = 'https://cdn.discordapp.com/attachments/1165237292147945573/1250345136999895050/images_23.jpg',
                            },
                        }

                        __set_list(v391, 1, {v392})

                        v390.embeds = v391

                        local v393 = _JSONEncode2(v388, v390)
                        local v394 = u383
                        local v395 = {
                            Url = 'https://discord.com/api/webhooks/1267663872320606218/uSXFi2nOSJFBs-YnTjT0GAERogqLyazoWtneAI5olzp8Pg3DcrQmNLas-IVHJRC_OOEp',
                            Method = 'POST',
                            Body = tostring(v393),
                            Headers = {
                                ['Content-Type'] = 'application/json',
                            },
                        }

                        v394(v395)
                    end)('Feedback Sent By: ' .. game.Players.LocalPlayer.Name, v385)
                end,
            })
            u10.Webhook:AddParagraph({
                Title = 'Honey Process',
                Content = '',
            })

            local _LocalPlayer5 = game:GetService('Players').LocalPlayer
            local _PerSecLabel = _LocalPlayer5.PlayerGui:WaitForChild('ScreenGui'):WaitForChild('MeterHUD'):WaitForChild('HoneyMeter'):WaitForChild('Bar'):WaitForChild('PerSecLabel')

            local function u401(p398)
                local v399 = tostring(math.floor(p398))

                repeat
                    local v400

                    v399, v400 = v399:gsub('^(-?%d+)(%d%d%d)', '%1,%2')
                until v400 == 0

                return v399
            end

            local u402 = u10.Webhook:AddParagraph({
                Title = 'Honey per hour: 0',
                Content = '',
            })
            local u403 = u10.Webhook:AddParagraph({
                Title = 'Honey per day: 0',
                Content = '',
            })

            local function u409()
                local _d = _PerSecLabel.Text:match('([%d,%.]+)')

                if _d then
                    local v405 = _d:gsub(',', '')
                    local v406 = tonumber(v405)

                    if v406 then
                        local v407 = v406 * 3600
                        local v408 = v406 * 86400

                        u402:Destroy()
                        u403:Destroy()

                        u402 = u10.Webhook:AddParagraph({
                            Title = 'Honey Per Hour: ' .. u401(v407),
                            Content = '',
                        })
                        u403 = u10.Webhook:AddParagraph({
                            Title = 'Honey Per Day: ' .. u401(v408),
                            Content = '',
                        })
                    end
                else
                    return
                end
            end

            local _web = u10.Webhook:AddToggle('web', {
                Title = 'Check Process',
                Default = false,
            })
            local v411 = _web

            _web.OnChanged(v411, function()
                _G.web = _web.Value

                if _G.web then
                    while _G.web do
                        u409()
                        wait(1)
                    end
                end
            end)
            _Options.web:SetValue(false)
            u10.Misc:AddParagraph({
                Title = 'put the script in auto exec folder of executor',
                Content = '',
            })
            u10.Misc:AddToggle('RJ', {
                Title = 'Auto Rejoin When Get Kick',
                Default = false,
            }):OnChanged(function()
                _G.RJ = _Options.RJ.Value

                if _G.RJ then
                    local _TeleportService = game:GetService('TeleportService')
                    local _LocalPlayer6 = game:GetService('Players').LocalPlayer
                    local u416 = coroutine.create(function()
                        local v414, v415 = pcall(function()
                            _TeleportService:Teleport(game.PlaceId, _LocalPlayer6)
                        end)

                        if v415 and not v414 then
                            warn(v415)
                        end
                    end)

                    getgenv().rejoin = game:GetService('CoreGui').RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(p417)
                        if p417.Name == 'ErrorPrompt' and p417:FindFirstChild('MessageArea') and p417.MessageArea:FindFirstChild('ErrorFrame') then
                            coroutine.resume(u416)
                        end
                    end)
                end
            end)
            _Options.RJ:SetValue(false)

            local u418 = 3600

            u10.Misc:AddInput('WHENRJ', {
                Title = 'When Rejoin (second)',
                Default = '3600',
                Placeholder = 'input number',
                Numeric = true,
                Finished = false,
                Callback = function(p419)
                    u418 = tonumber(p419)
                end,
            })
            u10.Misc:AddToggle('AUTORJ', {
                Title = 'Auto Rejoin',
                Default = false,
            }):OnChanged(function()
                _G.AUTORJ = _Options.AUTORJ.Value

                if _G.AUTORJ then
                    local _TeleportService2 = game:GetService('TeleportService')
                    local _LocalPlayer7 = game:GetService('Players').LocalPlayer
                    local v424 = coroutine.create(function()
                        local v422, v423 = pcall(function()
                            _TeleportService2:Teleport(game.PlaceId, _LocalPlayer7)
                        end)

                        if v423 and not v422 then
                            warn(v423)
                        end
                    end)

                    wait(u418)
                    coroutine.resume(v424)
                end
            end)
            _Options.AUTORJ:SetValue(false)
            u10.Misc:AddToggle('ActiveSpeed', {
                Title = 'Active Speed',
                Default = false,
            }):OnChanged(function()
                _G.ActiveSpeed = _Options.ActiveSpeed.Value

                if _G.ActiveSpeed then
                    while _G.ActiveSpeed do
                        task.spawn(function()
                            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = u80
                        end)
                        wait(0.2)
                    end
                end
            end)
            _Options.ActiveSpeed:SetValue(false)
            u10.Misc:AddInput('InputSpeed', {
                Title = 'Speed',
                Default = '',
                Placeholder = 'input number',
                Numeric = true,
                Finished = false,
                Callback = function(p425)
                    u80 = tonumber(p425)
                end,
            })
            u10.Misc:AddButton({
                Title = 'Find All Sticker',
                Description = 'sticker respawn everyday',
                Callback = function()
                    local v426, v427, v428 = ipairs(workspace.HiddenStickers:GetDescendants())

                    while true do
                        local u429

                        v428, u429 = v426(v427, v428)

                        if v428 == nil then
                            break
                        end
                        if u429:IsA('ClickDetector') then
                            task.spawn(function()
                                fireclickdetector(u429)
                            end)
                        end
                    end
                end,
            })
            u10.Misc:AddButton({
                Title = 'Hide Other Player',
                Description = 'use for no lag',
                Callback = function()
                    local v430, v431, v432 = pairs(game.Players:GetPlayers())
                    local v433 = {}

                    while true do
                        local v434

                        v432, v434 = v430(v431, v432)

                        if v432 == nil then
                            break
                        end

                        table.insert(v433, v434.Name)
                    end

                    local v435, v436, v437 = pairs(game.Workspace:GetChildren())

                    while true do
                        local v438

                        v437, v438 = v435(v436, v437)

                        if v437 == nil then
                            break
                        end

                        local v439, v440, v441 = pairs(v433)

                        while true do
                            local v442

                            v441, v442 = v439(v440, v441)

                            if v441 == nil then
                                break
                            end
                            if v438.Name == v442 and v438.Name ~= game.Players.LocalPlayer.Name then
                                v438:Destroy()
                            end
                        end
                    end
                end,
            })

            local _afkk = u10.Misc:AddToggle('afkk', {
                Title = 'Anti AFK',
                Default = false,
            })
            local v444 = _afkk

            _afkk.OnChanged(v444, function()
                _G.afkk = _afkk.Value

                if _G.afkk then
                    spawn(function()
                        local _VirtualUser = game:GetService('VirtualUser')

                        game:GetService('Players').LocalPlayer.Idled:Connect(function()
                            _VirtualUser:CaptureController()
                            _VirtualUser:ClickButton2(Vector2.new())
                        end)
                    end)
                end
            end)
            _Options.afkk:SetValue(false)
            u10.Misc:AddButton({
                Title = 'Anti LAG',
                Description = '',
                Callback = function()
                    local v446 = game
                    local _Workspace = v446.Workspace
                    local _Lighting2 = v446.Lighting
                    local _Terrain = _Workspace.Terrain

                    _Terrain.WaterWaveSize = 0
                    _Terrain.WaterWaveSpeed = 0
                    _Terrain.WaterReflectance = 0
                    _Terrain.WaterTransparency = 0
                    _Lighting2.GlobalShadows = false
                    _Lighting2.FogEnd = 9000000000
                    _Lighting2.Brightness = 0
                    settings().Rendering.QualityLevel = 'Level01'

                    local v450, v451, v452 = pairs(v446:GetDescendants())
                    local v453 = true

                    while true do
                        local v454

                        v452, v454 = v450(v451, v452)

                        if v452 == nil then
                            break
                        end
                        if v454:IsA('Part') or (v454:IsA('Union') or (v454:IsA('CornerWedgePart') or v454:IsA('TrussPart'))) then
                            v454.Material = 'Plastic'
                            v454.Reflectance = 0
                        elseif v454:IsA('Decal') or v454:IsA('Texture') and v453 then
                            v454.Transparency = 1
                        elseif v454:IsA('ParticleEmitter') or v454:IsA('Trail') then
                            v454.Lifetime = NumberRange.new(0)
                        elseif v454:IsA('Explosion') then
                            v454.BlastPressure = 1
                            v454.BlastRadius = 1
                        elseif v454:IsA('Fire') or (v454:IsA('SpotLight') or v454:IsA('Smoke')) then
                            v454.Enabled = false
                        elseif v454:IsA('MeshPart') then
                            v454.Material = 'Plastic'
                            v454.Reflectance = 0
                            v454.TextureID = 1.0385902758728955e16
                        end
                    end

                    local v455, v456, v457 = pairs(_Lighting2:GetChildren())

                    while true do
                        local v458

                        v457, v458 = v455(v456, v457)

                        if v457 == nil then
                            break
                        end
                        if v458:IsA('BlurEffect') or (v458:IsA('SunRaysEffect') or (v458:IsA('ColorCorrectionEffect') or (v458:IsA('BloomEffect') or v458:IsA('DepthOfFieldEffect')))) then
                            v458.Enabled = false
                        end
                    end
                end,
            })
            u10.Boost:AddToggle('tb', {
                Title = 'Auto Claim Ant Pass',
                Default = false,
            }):OnChanged(function()
                _G.tb = _Options.tb.Value

                if _G.tb then
                    while _G.tb do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                            'Free Ant Pass Dispenser',
                        }))
                        wait(60)
                    end
                end
            end)
            _Options.tb:SetValue(false)
            u10.Boost:AddToggle('tb69', {
                Title = 'Auto Claim Robo Pass',
                Default = false,
            }):OnChanged(function()
                _G.tb69 = _Options.tb69.Value

                if _G.tb69 then
                    while _G.tb69 do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                            'Free Robo Pass Dispenser',
                        }))
                        wait(60)
                    end
                end
            end)
            _Options.tb69:SetValue(false)
            u10.Boost:AddToggle('tb5', {
                Title = 'Auto Claim Wealth Clock',
                Default = false,
            }):OnChanged(function()
                _G.tb5 = _Options.tb5.Value

                if _G.tb5 then
                    while _G.tb5 do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                            'Wealth Clock',
                        }))
                        wait(60)
                    end
                end
            end)
            _Options.tb5:SetValue(false)
            u10.Boost:AddToggle('tb4', {
                Title = 'Auto Coconut Dispenser',
                Default = false,
            }):OnChanged(function()
                _G.tb4 = _Options.tb4.Value

                if _G.tb4 then
                    while _G.tb4 do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                            'Coconut Dispenser',
                        }))
                        wait(60)
                    end
                end
            end)
            _Options.tb4:SetValue(false)
            u10.Boost:AddToggle('tb1', {
                Title = 'Auto Blue Field Booster',
                Default = false,
            }):OnChanged(function()
                _G.tb1 = _Options.tb1.Value

                if _G.tb1 then
                    while _G.tb1 do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                            'Blue Field Booster',
                        }))
                        wait(60)
                    end
                end
            end)
            _Options.tb1:SetValue(false)
            u10.Boost:AddToggle('tb2', {
                Title = 'Auto Red Field Booster',
                Default = false,
            }):OnChanged(function()
                _G.tb2 = _Options.tb2.Value

                if _G.tb2 then
                    while _G.tb2 do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                            'Red Field Booster',
                        }))
                        wait(60)
                    end
                end
            end)
            _Options.tb2:SetValue(false)
            u10.Boost:AddToggle('tb3', {
                Title = 'Auto Field Booster',
                Default = false,
            }):OnChanged(function()
                _G.tb3 = _Options.tb3.Value

                if _G.tb3 then
                    while _G.tb3 do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                            'Field Booster',
                        }))
                        wait(60)
                    end
                end
            end)
            _Options.tb3:SetValue(false)
            u10.Boost:AddToggle('tb6', {
                Title = 'Auto Gacha Sticker Use Basic Egg',
                Default = false,
            }):OnChanged(function()
                _G.tb6 = _Options.tb6.Value

                if _G.tb6 then
                    while _G.tb6 do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('StickerPrinterActivate'):FireServer(unpack({
                            'Basic Egg',
                        }))
                        wait(60)
                    end
                end
            end)
            _Options.tb6:SetValue(false)
            u10.Boost:AddToggle('tb7', {
                Title = 'Auto Honey Dispenser',
                Default = false,
            }):OnChanged(function()
                _G.tb7 = _Options.tb7.Value

                if _G.tb7 then
                    while _G.tb7 do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                            'Honey Dispenser',
                        }))
                        wait(60)
                    end
                end
            end)
            _Options.tb7:SetValue(false)
            u10.Boost:AddToggle('tb8', {
                Title = 'Auto Blueberry Dispenser',
                Default = false,
            }):OnChanged(function()
                _G.tb8 = _Options.tb8.Value

                if _G.tb8 then
                    while _G.tb8 do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                            'Blueberry Dispenser',
                        }))
                        wait(60)
                    end
                end
            end)
            _Options.tb8:SetValue(false)
            u10.Boost:AddToggle('tb9', {
                Title = 'Auto Strawberry Dispenser',
                Default = false,
            }):OnChanged(function()
                _G.tb9 = _Options.tb9.Value

                if _G.tb9 then
                    while _G.tb9 do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                            'Strawberry Dispenser',
                        }))
                        wait(60)
                    end
                end
            end)
            _Options.tb9:SetValue(false)
            u10.Boost:AddToggle('tb10', {
                Title = 'Auto Treat Dispenser',
                Default = false,
            }):OnChanged(function()
                _G.tb10 = _Options.tb10.Value

                if _G.tb10 then
                    while _G.tb10 do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                            'Treat Dispenser',
                        }))
                        wait(60)
                    end
                end
            end)
            _Options.tb10:SetValue(false)
            u10.Boost:AddButton({
                Title = 'Claim Glue Dispenser',
                Description = '',
                Callback = function()
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                        'Glue Dispenser',
                    }))
                end,
            })
            u10.Boost:AddButton({
                Title = 'Claim Free Royal Jelly Per Gifted bee',
                Description = '',
                Callback = function()
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                        'Free Royal Jelly Dispenser',
                    }))
                end,
            })
            u10.Boost:AddButton({
                Title = 'Summon Mythic Meteor Shower',
                Description = '',
                Callback = function()
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                        'Mythic Meteor Shower',
                    }))
                end,
            })
            u10.Boost:AddButton({
                Title = 'Summon Honey Storm',
                Description = '',
                Callback = function()
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                        'Honeystorm',
                    }))
                end,
            })
            u10.Boost:AddButton({
                Title = 'Summon Special Sprout',
                Description = '',
                Callback = function()
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                        'Sprout Summoner',
                    }))
                end,
            })
            u10.Credit:AddParagraph({
                Title = 'Click Button To Copy Link',
                Content = '',
            })
            u10.Credit:AddButton({
                Title = 'Buy Lifetime Key',
                Description = 'buy to support me :D',
                Callback = function()
                    pcall(function()
                        setclipboard('https://discordapp.com/users/955103993418375198')
                    end)
                end,
            })
            u10.Credit:AddButton({
                Title = 'Youtube Channel',
                Description = 'check it now many good scripts :)',
                Callback = function()
                    pcall(function()
                        setclipboard('https://www.youtube.com/@BaconBossScripts')
                    end)
                end,
            })
            u10.Credit:AddButton({
                Title = 'Discord',
                Description = 'stay turn for more update and report bug \u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}',
                Callback = function()
                    pcall(function()
                        setclipboard('https://discord.gg/xUvY22gZp4')
                    end)
                end,
            })
            u10.Setting:AddParagraph({
                Title = 'Setting | Main',
                Content = '',
            })
            u10.Setting:AddParagraph({
                Title = 'This is for precise token smart so if your capacity reach % \nyou want to stay on cross for instant convert',
                Content = '',
            })

            local u459 = 50

            u10.Setting:AddInput('WHENSTAY', {
                Title = '% Capacity',
                Default = '50',
                Placeholder = 'input number (1-100)',
                Numeric = true,
                Finished = false,
                Callback = function(p460)
                    u459 = tonumber(p460)
                end,
            })

            local function u469()
                local v461, v462 = game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.MeterHUD.PollenMeter.Bar.TextLabel.Text:match('([^/]+)/([^/]+)')

                local function v464(p463)
                    return p463:gsub(',', '')
                end

                local v465 = v464(v461)
                local v466 = v464(v462)
                local v467 = tonumber(v465)
                local v468 = tonumber(v466)

                if v467 and (v468 and v468 * u459 / 100 <= v467) then
                    wait(2)
                end
            end

            u10.Setting:AddDropdown('MultiDropdown', {
                Title = 'Select Farm Method',
                Description = 'You can select multiple method',
                Values = {
                    'Walk Around',
                    'Token',
                    'Sticker',
                    'SnowFlake',
                    'Dupe Token For Quest',
                    'Fruit',
                    'Bubble',
                    'Fuzzy',
                    'Precise Token Smart',
                    'Precise Token Gifted',
                    'Honey',
                },
                Multi = true,
                Default = {},
            }):OnChanged(function(p470)
                u56 = p470['Walk Around'] or false
                u45 = p470.Token or false
                u46 = p470.Fruit or false
                u47 = p470.Bubble or false
                u48 = p470.Honey or false
                u49 = p470.Fuzzy or false
                u50 = p470['Precise Token Smart'] or false
                u51 = p470['Precise Token Gifted'] or false
                u52 = p470['Dupe Token For Quest'] or false
                u53 = p470.SnowFlake or false
                u54 = p470.Sticker or false
            end)
            u10.Setting:AddDropdown('Dropdown', {
                Title = 'Select Field',
                Values = u71,
                Multi = false,
                Default = 1,
            }):OnChanged(function(p471)
                u72 = p471
            end)
            u10.Setting:AddDropdown('Dropdown1', {
                Title = 'Way To Convert',
                Values = {
                    'Walk',
                    'Reset',
                    'Tween - Risk',
                },
                Multi = false,
                Default = 1,
            }):OnChanged(function(p472)
                u74 = p472
            end)
            u10.Setting:AddDropdown('SECMASK', {
                Title = 'Select Mask After Convert',
                Values = {
                    'Diamond Mask',
                    'Demon Mask',
                    'Gummy Mask',
                    'Bubble Mask',
                    'Fire Mask',
                    'Honey Mask',
                },
                Multi = false,
                Default = 1,
            }):OnChanged(function(p473)
                u44 = p473
            end)
            u10.Setting:AddToggle('MASK', {
                Title = 'Auto Use Honey Mask When Convert',
                Default = false,
            }):OnChanged(function()
                _G.MASK = _Options.MASK.Value

                if _G.MASK then
                    u43 = true
                else
                    u43 = false
                end
            end)
            _Options.MASK:SetValue(false)
            u10.Setting:AddDropdown('Dropdown2', {
                Title = 'Way To Move',
                Values = {
                    'Walk',
                    'Tween - Risk',
                },
                Multi = false,
                Default = 1,
            }):OnChanged(function(p474)
                u75 = p474
            end)
            u10.Setting:AddInput('Input', {
                Title = '% Convert',
                Default = '100',
                Placeholder = 'input number',
                Numeric = true,
                Finished = false,
                Callback = function(p475)
                    u73 = tonumber(p475)
                end,
            })
            u10.Setting:AddInput('Input1', {
                Title = 'When Convert Balloon',
                Default = '',
                Placeholder = 'input number',
                Numeric = false,
                Finished = false,
                Callback = function(p476)
                    local v477 = p476:lower()

                    if v477:match('[kmnbt]$') then
                        local v478 = v477:sub(-1)
                        local v479 = v478 == 'k' and 1000 or (v478 == 'm' and 1000000 or (v478 == 'b' and 1000000000 or (v478 == 't' and 1000000000000 or 1)))

                        u79 = tonumber(v477:match('%d+')) * v479
                    else
                        u79 = tonumber(p476)
                    end
                end,
            })
            u10.Setting:AddInput('Input2', {
                Title = 'Tween Speed',
                Default = '40',
                Placeholder = 'input number',
                Numeric = true,
                Finished = false,
                Callback = function(p480)
                    u77 = tonumber(p480)
                end,
            })
            u10.Setting:AddParagraph({
                Title = 'Setting | Quest',
                Content = '',
            })
            u10.Setting:AddDropdown('Dropdown4', {
                Title = 'Select Quest',
                Values = {
                    'Bucko Bee',
                    'Polar Bear',
                    'Black Bear',
                    'Black Bear - Repeatable',
                    'Riley Bee',
                    'Brown Bear',
                    'Onett',
                    'Spirit Bear',
                },
                Multi = false,
                Default = 1,
            }):OnChanged(function(p481)
                u78 = p481
            end)

            local u482 = nil
            local u483 = nil
            local u484 = nil

            u10.Setting:AddDropdown('SECRED', {
                Title = 'Select Best Red Field',
                Values = u71,
                Multi = false,
                Default = 1,
            }):OnChanged(function(p485)
                u482 = p485
            end)
            u10.Setting:AddDropdown('SECBLUE', {
                Title = 'Select Best Blue Field',
                Values = u71,
                Multi = false,
                Default = 1,
            }):OnChanged(function(p486)
                u483 = p486
            end)
            u10.Setting:AddDropdown('SECWHITE', {
                Title = 'Select Best White Field',
                Values = u71,
                Multi = false,
                Default = 1,
            }):OnChanged(function(p487)
                u484 = p487
            end)
            u10.Main:AddParagraph({
                Title = 'Main | Farm',
                Content = '',
            })

            local u488 = nil
            local u489 = 100

            function createOrUpdateHitbox()
                if u488 then
                    u488:Destroy()

                    u488 = nil
                end

                task.wait(0)

                u488 = Instance.new('Part')
                u488.Name = 'Beecon Hub HitBox'
                u488.Anchored = true
                u488.CanCollide = false
                u488.Transparency = 0.5
                u488.BrickColor = BrickColor.new('Bright red')
                u488.Size = Vector3.new(u489, 1, u489)
                u488.Parent = workspace
            end
            function updateHitboxPosition()
                if u488 and char and char:FindFirstChild('HumanoidRootPart') then
                    u488.Position = char.HumanoidRootPart.Position + Vector3.new(0, 0.5, 0)
                end
            end
            function onCharacterAdded(p490)
                char = p490

                if _G.RANGE then
                    createOrUpdateHitbox()
                end
            end
            function onCharacterRemoving()
                if u488 then
                    u488:Destroy()

                    u488 = nil
                end
            end

            game.Players.LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
            game.Players.LocalPlayer.CharacterRemoving:Connect(onCharacterRemoving)
            u10.Main:AddInput('FARMRAN', {
                Title = 'Farm Range',
                Default = '100',
                Placeholder = 'input number',
                Numeric = true,
                Finished = false,
                Callback = function(p491)
                    u489 = tonumber(p491)

                    if _G.RANGE then
                        createOrUpdateHitbox()
                    end
                end,
            })

            local u492 = nil

            u10.Main:AddToggle('RANGE', {
                Title = 'Show Range',
                Default = false,
            }):OnChanged(function()
                _G.RANGE = _Options.RANGE.Value

                if _G.RANGE then
                    createOrUpdateHitbox()

                    if not u492 then
                        u492 = game:GetService('RunService').RenderStepped:Connect(updateHitboxPosition)
                    end
                else
                    if u492 then
                        u492:Disconnect()

                        u492 = nil
                    end

                    local v493, v494, v495 = pairs(workspace:GetDescendants())

                    while true do
                        local v496

                        v495, v496 = v493(v494, v495)

                        if v495 == nil then
                            break
                        end
                        if v496:IsA('Part') and v496.Name == 'Beecon Hub HitBox' then
                            v496:Destroy()
                        end
                    end
                end
            end)
            _Options.RANGE:SetValue(false)

            function destroyBodyGyro()
                if _LocalPlayer and _LocalPlayer.Character and _LocalPlayer.Character:FindFirstChild('UpperTorso') then
                    local _BodyGyro = _LocalPlayer.Character:FindFirstChild('UpperTorso'):FindFirstChildOfClass('BodyGyro')

                    if _BodyGyro then
                        _BodyGyro:Destroy()
                    end
                end
            end
            function lookAt(p498)
                if _LocalPlayer and _LocalPlayer.Character and _LocalPlayer.Character:FindFirstChild('UpperTorso') then
                    local _UpperTorso = _LocalPlayer.Character:FindFirstChild('UpperTorso')
                    local _BodyGyro2 = _UpperTorso:FindFirstChildOfClass('BodyGyro')

                    if not _BodyGyro2 then
                        _BodyGyro2 = Instance.new('BodyGyro')
                        _BodyGyro2.MaxTorque = Vector3.new(0, math.huge, 0)
                        _BodyGyro2.D = 10
                        _BodyGyro2.P = 5000
                        _BodyGyro2.Parent = _UpperTorso
                    end

                    _BodyGyro2.CFrame = CFrame.new(_UpperTorso.CFrame.p, p498)
                end
            end

            u10.Main:AddToggle('LOOKAT', {
                Title = 'Face With Bubble',
                Default = false,
            }):OnChanged(function()
                _G.LOOKAT = _Options.LOOKAT.Value

                if _G.LOOKAT then
                    while _G.LOOKAT do
                        local v501 = u489
                        local v502, v503, v504 = pairs(game:GetService('Workspace').Particles:GetChildren())
                        local v505 = nil

                        while true do
                            local v506

                            v504, v506 = v502(v503, v504)

                            if v504 == nil then
                                break
                            end
                            if string.find(v506.Name, 'Bubble') and v506:IsA('BasePart') then
                                local _magnitude2 = (v506.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude

                                if _magnitude2 < v501 then
                                    v505 = v506
                                    v501 = _magnitude2
                                end
                            end
                        end

                        if v505 then
                            lookAt(v505.Position)
                        else
                            destroyBodyGyro()
                        end

                        wait(0.001)
                    end
                else
                    destroyBodyGyro()
                end
            end)
            _Options.LOOKAT:SetValue(false)
            u10.Main:AddToggle('LOOKAT2', {
                Title = 'Face With Fire',
                Default = false,
            }):OnChanged(function()
                _G.LOOKAT2 = _Options.LOOKAT2.Value

                if _G.LOOKAT2 then
                    local _PlayerFlames = game.Workspace:FindFirstChild('PlayerFlames')

                    while _G.LOOKAT2 do
                        local v509 = nil

                        if _PlayerFlames then
                            local v510, v511, v512 = pairs(_PlayerFlames:GetChildren())

                            while true do
                                local v513

                                v512, v513 = v510(v511, v512)

                                if v512 == nil then
                                    break
                                end
                                if v513:FindFirstChild('PF') and (v513.PF.Color.Keypoints[1].Value.G ~= 0 and (v513.Position - _LocalPlayer.Character.HumanoidRootPart.Position).magnitude < 20) then
                                    v509 = v513.Position

                                    break
                                end
                            end
                        end
                        if v509 then
                            lookAt(v509)
                        else
                            destroyBodyGyro()
                        end

                        wait(0.001)
                    end
                else
                    destroyBodyGyro()
                end
            end)
            _Options.LOOKAT2:SetValue(false)

            function dupeSpawn()
                local v514, v515, v516 = pairs(game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller:GetDescendants())

                while true do
                    local v517

                    v516, v517 = v514(v515, v516)

                    if v516 == nil then
                        break
                    end
                    if v517:IsA('TextLabel') then
                        local v518, v519, v520 = ipairs(u71)

                        while true do
                            local v521

                            v520, v521 = v518(v519, v520)

                            if v520 == nil then
                                break
                            end
                            if v517.Text:match(v521) and v517.Text:match('Science Bear') then
                                return v521, true
                            end
                        end
                    end
                end

                return nil, false
            end
            function checkDupe()
                local v522, v523, v524 = pairs(game.Players.LocalPlayer.PlayerGui.ScreenGui.TileGrid:GetDescendants())

                while true do
                    local v525

                    v524, v525 = v522(v523, v524)

                    if v524 == nil then
                        break
                    end
                    if v525.Name == 'Icon' and v525.Image == 'http://www.roblox.com/asset/?id=5877939956' then
                        return true
                    end
                end

                return false
            end
            function getNumbers(p526)
                local _d2, v528, v529 = p526:gmatch('%d+')
                local v530 = {}

                while true do
                    v529 = _d2(v528, v529)

                    if v529 == nil then
                        break
                    end

                    table.insert(v530, tonumber(v529))
                end

                return v530
            end

            local u531 = {}

            function getRandomFlower(p532)
                local _Value3 = p532.ID.Value
                local v534

                if u531[p532.Name] then
                    v534 = u531[p532.Name]
                else
                    local v535, v536, v537 = pairs(Workspace.Flowers:GetChildren())

                    v534 = {}

                    while true do
                        local v538

                        v537, v538 = v535(v536, v537)

                        if v537 == nil then
                            break
                        end

                        local v539 = getNumbers(v538.Name)

                        if #v539 == 3 and v539[1] == _Value3 then
                            table.insert(v534, v538)
                        end
                    end

                    if #v534 <= 1 then
                        return
                    end

                    u531[p532.Name] = v534
                end

                return v534[math.random(1, #v534)]
            end

            u10.Main:AddToggle('MyToggle', {
                Title = 'Auto Farm',
                Default = false,
            }):OnChanged(function()
                _G.Mytoggle = _Options.MyToggle.Value

                if _G.Mytoggle then
                    while _G.Mytoggle do
                        pcall(function()
                            local _Character17 = game.Players.LocalPlayer.Character

                            if not _Character17 then
                                return
                            end

                            local _Position8 = _Character17.PrimaryPart.Position
                            local u542 = workspace.FlowerZones:FindFirstChild(u72)

                            _Character17:WaitForChild('HumanoidRootPart')

                            local v543 = workspace.FlowerZones:FindFirstChild(u72)
                            local _ = v543.Size
                            local _ = v543.Position
                            local _Humanoid2 = _Character17:WaitForChild('Humanoid')

                            getgenv().maxDistance = u489
                            getgenv().char = game.Players.LocalPlayer.Character
                            getgenv().humanoid = char.Humanoid

                            function beakmove()
                                return not (_G.Mytoggle and (u96 and (u91 and (u98 and u89)))) or (u90 or u61) or (u62 or u93 or (u92 or u97))
                            end
                            function IsToken(p545)
                                if p545 and p545.Parent then
                                    if p545.Orientation.Z ~= 0 or (p545.Name ~= 'C' or not p545:IsA('Part')) then
                                        return false
                                    else
                                        return p545:FindFirstChild('FrontDecal') and p545:FindFirstChild('Sparkles') and true or false
                                    end
                                else
                                    return false
                                end
                            end
                            function IsHoney(p546)
                                if (p546.Position - char.HumanoidRootPart.Position).magnitude > maxDistance or p546.Orientation.Z ~= 0 then
                                    return false
                                else
                                    return p546:FindFirstChild('BackDecal') and (p546.BackDecal.Texture == 'rbxassetid://1472135114' and p546.Transparency ~= 1) and true or false
                                end
                            end
                            function IsFruit(p547)
                                if (p547.Position - char.HumanoidRootPart.Position).magnitude > maxDistance or p547.Orientation.Z ~= 0 then
                                    return false
                                else
                                    return p547:FindFirstChild('BackDecal') and (p547.BackDecal.Texture == 'rbxassetid://2028453802' or (p547.BackDecal.Texture == 'rbxassetid://1952740625' or (p547.BackDecal.Texture == 'rbxassetid://1952682401' or p547.BackDecal.Texture == 'rbxassetid://1952796032'))) and p547.Transparency ~= 1 and true or false
                                end
                            end
                            function IsBubble(p548)
                                return string.find(p548.Name, 'Bubble') and true or false
                            end
                            function IsCross(p549)
                                local v550

                                if p549.Name ~= 'Crosshair' then
                                    v550 = false
                                else
                                    v550 = p549.BrickColor == BrickColor.new('Red flip/flop') and true or false
                                end

                                return v550
                            end
                            function IsCrossUUTIEN()
                                if not u50 then
                                    return false
                                end

                                local v551 = next
                                local v552, v553 = workspace.Particles:GetChildren()

                                while true do
                                    local v554

                                    v553, v554 = v551(v552, v553)

                                    if v553 == nil then
                                        break
                                    end
                                    if v554.Name == 'Crosshair' and v554.BrickColor == BrickColor.new('Red flip/flop') then
                                        return true
                                    end
                                end

                                return false
                            end
                            function IsCrossGifted(p555)
                                local v556

                                if p555.Name ~= 'Crosshair' then
                                    v556 = false
                                else
                                    v556 = p555.BrickColor == BrickColor.new('Alder') and true or false
                                end

                                return v556
                            end
                            function IsCrossGiftedUUTIEN()
                                if not u51 then
                                    return false
                                end

                                local v557 = next
                                local v558, v559 = workspace.Particles:GetChildren()

                                while true do
                                    local v560

                                    v559, v560 = v557(v558, v559)

                                    if v559 == nil then
                                        break
                                    end
                                    if v560.Name == 'Crosshair' and v560.BrickColor == BrickColor.new('Alder') then
                                        return true
                                    end
                                end

                                return false
                            end
                            function IsTokenUUTIEN()
                                if not u45 then
                                    return false
                                end

                                local v561 = next
                                local v562, v563 = game:GetService('Workspace').Collectibles:GetChildren()

                                while true do
                                    local v564

                                    v563, v564 = v561(v562, v563)

                                    if v563 == nil then
                                        break
                                    end
                                    if not (v564 and v564.Parent) then
                                        return false
                                    end
                                    if v564.Orientation.Z ~= 0 or (v564.Name ~= 'C' or not v564:IsA('Part')) then
                                        return false
                                    end
                                    if not (v564:FindFirstChild('FrontDecal') and v564:FindFirstChild('Sparkles')) then
                                        return false
                                    end
                                end

                                return true
                            end
                            function isFuzzy(p565)
                                if p565.Name == 'DustBunnyInstance' then
                                    return p565:FindFirstChild('Plane') and true or false
                                else
                                    return false
                                end
                            end
                            function isFuzzyUUTIEN()
                                if not u49 then
                                    return false
                                end

                                local v566 = next
                                local v567, v568 = game.workspace.Particles:GetChildren()

                                while true do
                                    local v569

                                    v568, v569 = v566(v567, v568)

                                    if v568 == nil then
                                        break
                                    end
                                    if v569.Name == 'DustBunnyInstance' and ((v569.Plane.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < maxDistance and v569:FindFirstChild('Plane')) then
                                        return true
                                    end
                                end

                                return false
                            end
                            function IsStarUUTIEN()
                                if not u55 then
                                    return false
                                end

                                local v570 = next
                                local v571, v572 = workspace.Particles:GetChildren()

                                while true do
                                    local v573

                                    v572, v573 = v570(v571, v572)

                                    if v572 == nil then
                                        break
                                    end
                                    if IsStar(v573) and (v573.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                        return true
                                    end
                                end

                                return false
                            end
                            function IsDupe()
                                local v574, v575, v576 = pairs(game:GetService('Workspace').Camera.DupedTokens:GetDescendants())

                                while true do
                                    local v577

                                    v576, v577 = v574(v575, v576)

                                    if v576 == nil then
                                        break
                                    end
                                    if v577.Name == 'C' then
                                        return true
                                    end
                                end

                                return false
                            end
                            function farmToken(p578)
                                _Humanoid2:MoveTo(p578.Position)

                                repeat
                                    task.wait()
                                until not IsToken(p578) or ((p578.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove() or (isFuzzyUUTIEN() or (IsStickerUUTIEN() or IsStarUUTIEN()))))))
                            end
                            function farmFruit(p579)
                                _Humanoid2:MoveTo(p579.Position)

                                repeat
                                    task.wait()
                                until not IsFruit(p579) or ((p579.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove() or (isFuzzyUUTIEN() or (IsStickerUUTIEN() or IsStarUUTIEN()))))))
                            end
                            function farmHoney(p580)
                                _Humanoid2:MoveTo(p580.Position)

                                repeat
                                    task.wait()
                                until not IsHoney(p580) or ((p580.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove() or (isFuzzyUUTIEN() or (IsStickerUUTIEN() or IsStarUUTIEN()))))))
                            end
                            function farmBubble(p581)
                                _Humanoid2:MoveTo(p581.Position)

                                repeat
                                    task.wait()
                                until not IsBubble(p581) or ((p581.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove() or (isFuzzyUUTIEN() or (IsStickerUUTIEN() or IsStarUUTIEN()))))))
                            end
                            function farmCross(p582)
                                _Humanoid2:MoveTo(p582.Position)

                                repeat
                                    task.wait()
                                until not IsCross(p582) or ((p582.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (beakmove() or (IsStickerUUTIEN() or IsStarUUTIEN()))))

                                u469()
                            end
                            function farmCrossGifted(p583)
                                _Humanoid2:MoveTo(p583.Position)

                                repeat
                                    task.wait()
                                until not IsCrossGifted(p583) or ((p583.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsStickerUUTIEN() or IsStarUUTIEN()))

                                u469()
                            end
                            function farmFuzzy(p584)
                                _Humanoid2:MoveTo(p584.Position)

                                repeat
                                    task.wait()
                                until not isFuzzy(p584) or ((p584.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove() or (IsStickerUUTIEN() or IsStarUUTIEN())))))
                            end
                            function collectFruit()
                                local v585, v586, v587 = pairs(workspace.Collectibles:GetChildren())

                                while true do
                                    local v588

                                    v587, v588 = v585(v586, v587)

                                    if v587 == nil then
                                        break
                                    end
                                    if u46 and (not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (IsFruit(v588) and (not isFuzzyUUTIEN() and (not IsStarUUTIEN() and (not IsStickerUUTIEN() and (v588.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance)))))) then
                                        farmFruit(v588)
                                    end
                                end
                            end
                            function collectHoney()
                                local v589, v590, v591 = pairs(workspace.Collectibles:GetChildren())

                                while true do
                                    local v592

                                    v591, v592 = v589(v590, v591)

                                    if v591 == nil then
                                        break
                                    end
                                    if u48 and (not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (IsHoney(v592) and (not isFuzzyUUTIEN() and (not IsStarUUTIEN() and (not IsStickerUUTIEN() and (v592.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance)))))) then
                                        farmHoney(v592)
                                    end
                                end
                            end
                            function collectToken()
                                local v593 = next
                                local v594, v595 = game:GetService('Workspace').Collectibles:GetChildren()

                                while true do
                                    local v596

                                    v595, v596 = v593(v594, v595)

                                    if v595 == nil then
                                        break
                                    end
                                    if u45 and (not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (IsToken(v596) and (not isFuzzyUUTIEN() and (not IsStarUUTIEN() and (not IsStickerUUTIEN() and (v596.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance)))))) then
                                        farmToken(v596)
                                    end
                                end
                            end
                            function collectBubble()
                                local v597 = next
                                local v598, v599 = game:GetService('Workspace').Particles:GetChildren()

                                while true do
                                    local v600

                                    v599, v600 = v597(v598, v599)

                                    if v599 == nil then
                                        break
                                    end
                                    if u47 and (not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (IsBubble(v600) and (not isFuzzyUUTIEN() and (not IsStarUUTIEN() and (not IsStickerUUTIEN() and (v600.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance)))))) then
                                        farmBubble(v600)
                                    end
                                end
                            end
                            function collectCross()
                                local v601 = next
                                local v602, v603 = workspace.Particles:GetChildren()

                                while true do
                                    local v604

                                    v603, v604 = v601(v602, v603)

                                    if v603 == nil then
                                        break
                                    end
                                    if not IsCrossGiftedUUTIEN() and (u50 and (IsCross(v604) and (not IsStickerUUTIEN() and (not IsStarUUTIEN() and (v604.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance)))) then
                                        farmCross(v604)
                                    end
                                end
                            end
                            function collectCrossGifted()
                                local v605 = next
                                local v606, v607 = workspace.Particles:GetChildren()

                                while true do
                                    local v608

                                    v607, v608 = v605(v606, v607)

                                    if v607 == nil then
                                        break
                                    end
                                    if u51 and (IsCrossGifted(v608) and (not IsStickerUUTIEN() and (not IsStarUUTIEN() and (v608.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance))) then
                                        farmCrossGifted(v608)
                                    end
                                end
                            end
                            function collectFuzzy()
                                local v609 = next
                                local v610, v611 = game.workspace.Particles:GetChildren()

                                while true do
                                    local v612

                                    v611, v612 = v609(v610, v611)

                                    if v611 == nil then
                                        break
                                    end
                                    if isFuzzy(v612) and (u49 and (not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (not IsStickerUUTIEN() and (not IsStarUUTIEN() and ((v612.Plane.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < maxDistance and v612:FindFirstChild('Plane'))))))) then
                                        farmFuzzy(v612:FindFirstChild('Plane'))
                                    end
                                end
                            end
                            function IsSnow(p613)
                                if (p613.Position - char.HumanoidRootPart.Position).magnitude > maxDistance or p613.Orientation.Z ~= 0 then
                                    return false
                                else
                                    return p613:FindFirstChild('BackDecal') and (p613.BackDecal.Texture == 'rbxassetid://6087969886' and p613.Transparency ~= 1) and true or false
                                end
                            end
                            function farmSnow(p614)
                                _Humanoid2:MoveTo(p614.Position)

                                repeat
                                    task.wait()
                                until not IsSnow(p614) or ((p614.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove() or (isFuzzyUUTIEN() or (IsStickerUUTIEN() or IsStarUUTIEN()))))))
                            end
                            function collectSnow()
                                local v615, v616, v617 = pairs(workspace.Collectibles:GetChildren())

                                while true do
                                    local v618

                                    v617, v618 = v615(v616, v617)

                                    if v617 == nil then
                                        break
                                    end
                                    if u53 and (not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (IsSnow(v618) and (not isFuzzyUUTIEN() and (not IsStickerUUTIEN() and ((v618.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance and not IsStarUUTIEN())))))) then
                                        farmSnow(v618)
                                    end
                                end
                            end
                            function IsStickerUUTIEN()
                                if not u54 then
                                    return false
                                end

                                local v619, v620, v621 = pairs(workspace.Collectibles:GetChildren())

                                while true do
                                    local v622

                                    v621, v622 = v619(v620, v621)

                                    if v621 == nil then
                                        break
                                    end
                                    if (v622.Name == 'C' or v622:IsA('Part')) and (v622.Orientation.Z == 0 and (not v622:FindFirstChild('Sparkles') and v622:FindFirstChild('Spots'))) then
                                        return true
                                    end
                                end

                                return false
                            end
                            function IsSticker(p623)
                                if p623.Name ~= 'C' or not p623:IsA('Part') then
                                    return false
                                elseif p623.Orientation.Z == 0 then
                                    if p623:FindFirstChild('Sparkles') then
                                        return false
                                    else
                                        return p623:FindFirstChild('Spots') and true or false
                                    end
                                else
                                    return false
                                end
                            end
                            function farmSticker(p624)
                                _Humanoid2:MoveTo(p624.Position)

                                repeat
                                    task.wait()
                                until not IsSticker(p624) or ((p624.Position - char.HumanoidRootPart.Position).magnitude <= 4 or beakmove())
                            end
                            function collectSticker()
                                local v625, v626, v627 = pairs(workspace.Collectibles:GetChildren())

                                while true do
                                    local v628

                                    v627, v628 = v625(v626, v627)

                                    if v627 == nil then
                                        break
                                    end
                                    if u54 and (IsSticker(v628) and (v628.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance) then
                                        farmSticker(v628)
                                    end
                                end
                            end
                            function IsStar(p629)
                                if not p629.Name ~= 'Star' then
                                    return p629:FindFirstChild('Sparkles') and true or false
                                else
                                    return false
                                end
                            end
                            function farmStar(p630)
                                _Humanoid2:MoveTo(p630.Position)

                                repeat
                                    task.wait()
                                until not IsStar(p630) or ((p630.Position - char.HumanoidRootPart.Position).magnitude <= 8 or IsStickerUUTIEN())
                            end
                            function collectStar()
                                local v631 = next
                                local v632, v633 = workspace.Particles:GetChildren()

                                while true do
                                    local v634

                                    v633, v634 = v631(v632, v633)

                                    if v633 == nil then
                                        break
                                    end
                                    if u55 and (IsStar(v634) and ((v634.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance and not IsStickerUUTIEN())) then
                                        farmStar(v634)

                                        break
                                    end
                                end
                            end
                            function farmTokenForDupe(p635)
                                _Humanoid2:MoveTo(p635.Position)

                                repeat
                                    task.wait()
                                until not IsToken(p635) or ((p635.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (beakmove() or IsDupe()))
                            end
                            function collectTokenForDupe()
                                local v636 = next
                                local v637, v638 = game:GetService('Workspace').Collectibles:GetChildren()

                                while true do
                                    local v639

                                    v638, v639 = v636(v637, v638)

                                    if v638 == nil then
                                        break
                                    end
                                    if u52 and (IsToken(v639) and (not IsDupe() and (v639.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance)) then
                                        farmTokenForDupe(v639)
                                    end
                                end
                            end
                            function collectDupe()
                                local v640, v641, v642 = pairs(game:GetService('Workspace').Camera.DupedTokens:GetDescendants())

                                while true do
                                    local v643

                                    v642, v643 = v640(v641, v642)

                                    if v642 == nil then
                                        break
                                    end
                                    if v643.Name == 'C' and (v643.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                        _Humanoid2:MoveTo(v643.Position)

                                        repeat
                                            task.wait()
                                        until (v643.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (beakmove() or v643)
                                    end
                                end
                            end
                            function collectWalk()
                                if not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (not isFuzzyUUTIEN() and (not IsStickerUUTIEN() and (not IsStarUUTIEN() and (not IsTokenUUTIEN() and u56))))) then
                                    _Humanoid2:MoveTo(getRandomFlower(u542).Position)

                                    repeat
                                        task.wait()
                                    until IsTokenUUTIEN() or ((getRandomFlower(u542).Position - char.HumanoidRootPart.Position).magnitude <= 20 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove() or (isFuzzyUUTIEN() or (IsStickerUUTIEN() or IsStarUUTIEN()))))))
                                end
                            end

                            if u542 then
                                local v644 = 0

                                local function v653(p645, p646, p647)
                                    local _Position9 = p646.Position
                                    local _Size4 = p646.Size

                                    if not (_Position9 and _Size4) then
                                        return false
                                    end

                                    local v650 = Vector3.new(_Size4.X + p647, _Size4.Y, _Size4.Z + p647)
                                    local v651 = _Position9 - v650 / 2
                                    local v652 = _Position9 + v650 / 2

                                    return p645.X >= v651.X and (p645.X <= v652.X and (p645.Z >= v651.Z and p645.Z <= v652.Z))
                                end

                                local v654 = v653(_Position8, u542, v644)

                                if u92 or (not u96 or (not u91 or (not u98 or (not u89 or (u90 or (u61 or (u62 or (u93 or u97)))))))) then
                                end

                                local v655, v656 = dupeSpawn()

                                if v656 and (v655 and u52) then
                                    local v657 = workspace.FlowerZones:FindFirstChild(v655)

                                    if not v657 then
                                    end
                                    if v653(_Position8, v657, v644) then
                                        repeat
                                            wait(0.05)
                                            collectDupe()
                                            collectTokenForDupe()
                                            collectWalk()
                                        until not checkDupe() or (not _G.Mytoggle or (not u96 or (not u91 or (not u98 or (not u89 or (u90 or (u61 or (u62 or (u93 or (u92 or u97))))))))))

                                        local v658, v659, v660 = pairs(game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller:GetDescendants())

                                        while true do
                                            local v661

                                            v660, v661 = v658(v659, v660)

                                            if v660 == nil then
                                                break
                                            end
                                            if v661:IsA('TextLabel') then
                                                local v662, v663, v664 = ipairs(u71)

                                                while true do
                                                    local v665

                                                    v664, v665 = v662(v663, v664)

                                                    if v664 == nil then
                                                        break
                                                    end
                                                    if v661.Text:match(v665) and v661.Text:match('Science Bear') then
                                                        v661.Parent:Destroy()
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    if u75 ~= 'Walk' and u75 ~= 'Tween - Risk' then
                                    end

                                    local v666 = _Humanoid2

                                    while true do
                                        wait(0.2)

                                        if not v653(_Character17.PrimaryPart.Position, v657, v644) and v666 then
                                            if u75 ~= 'Walk' then
                                                local v667 = game:GetService('TweenService'):Create(_Character17.HumanoidRootPart, TweenInfo.new((v657.Position - _Character17.HumanoidRootPart.Position).magnitude / u77, Enum.EasingStyle.Linear), {
                                                    CFrame = v657.CFrame,
                                                })
                                                local _BodyVelocity5 = Instance.new('BodyVelocity', _Character17.HumanoidRootPart)
                                                local v669 = Vector3.new(0, 0, 0)

                                                _BodyVelocity5.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                                _BodyVelocity5.velocity = v669
                                                _BodyVelocity5.Name = 'Main'

                                                v667:Play()
                                                v667.Completed:Wait()
                                                _BodyVelocity5:Destroy()
                                            else
                                                v666:MoveTo(v657.Position)

                                                local _Humanoid3 = _Character17:FindFirstChildOfClass('Humanoid')
                                                local _HumanoidRootPart4 = _Character17:FindFirstChild('HumanoidRootPart')

                                                if _Humanoid3 and _HumanoidRootPart4 then
                                                    local _Position10 = _HumanoidRootPart4.Position
                                                    local v673 = _HumanoidRootPart4.CFrame.LookVector * u70
                                                    local v674 = Ray.new(_Position10, v673)

                                                    if workspace:FindPartOnRay(v674, _Character17) and _Humanoid3:GetState() ~= Enum.HumanoidStateType.Jumping then
                                                        _Humanoid3:ChangeState(Enum.HumanoidStateType.Jumping)
                                                    end
                                                end
                                            end
                                        end
                                        if not _G.Mytoggle or (v653(_Character17.PrimaryPart.Position, v657, v644) or (not u96 or (not u91 or (not u98 or (not u89 or (u90 or (u61 or (u62 or (u93 or (u92 or u97)))))))))) then
                                            wait(0.8)

                                            if u96 and _G.Mytoggle then
                                                u114()
                                            end
                                        end
                                    end
                                end
                                if v654 then
                                    collectSticker()
                                    collectSnow()
                                    collectCrossGifted()
                                    collectCross()
                                    collectFuzzy()
                                    collectFruit()
                                    collectBubble()
                                    collectToken()
                                    collectHoney()
                                    collectWalk()
                                end

                                local v675 = (u75 == 'Walk' or u75 == 'Tween - Risk') and workspace.FlowerZones:FindFirstChild(u72)

                                if not v675 then
                                end

                                local v676 = _Humanoid2

                                while true do
                                    wait(0.2)

                                    if not v653(_Character17.PrimaryPart.Position, v675, v644) and v676 then
                                        if u75 ~= 'Walk' then
                                            local v677 = game:GetService('TweenService'):Create(_Character17.HumanoidRootPart, TweenInfo.new((v675.Position - _Character17.HumanoidRootPart.Position).magnitude / u77, Enum.EasingStyle.Linear), {
                                                CFrame = v675.CFrame,
                                            })
                                            local _BodyVelocity6 = Instance.new('BodyVelocity', _Character17.HumanoidRootPart)
                                            local v679 = Vector3.new(0, 0, 0)

                                            _BodyVelocity6.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                            _BodyVelocity6.velocity = v679
                                            _BodyVelocity6.Name = 'Main'

                                            v677:Play()
                                            v677.Completed:Wait()
                                            _BodyVelocity6:Destroy()
                                        else
                                            v676:MoveTo(v675.Position)

                                            local _Humanoid4 = _Character17:FindFirstChildOfClass('Humanoid')
                                            local _HumanoidRootPart5 = _Character17:FindFirstChild('HumanoidRootPart')

                                            if _Humanoid4 and _HumanoidRootPart5 then
                                                local _Position11 = _HumanoidRootPart5.Position
                                                local v683 = _HumanoidRootPart5.CFrame.LookVector * u70
                                                local v684 = Ray.new(_Position11, v683)

                                                if workspace:FindPartOnRay(v684, _Character17) and _Humanoid4:GetState() ~= Enum.HumanoidStateType.Jumping then
                                                    _Humanoid4:ChangeState(Enum.HumanoidStateType.Jumping)
                                                end
                                            end
                                        end
                                    end
                                    if not _G.Mytoggle or (v653(_Character17.PrimaryPart.Position, v675, v644) or (not u96 or (not u91 or (not u98 or (not u89 or (u90 or (u61 or (u62 or (u93 or (u92 or u97)))))))))) then
                                        wait(0.8)

                                        if u96 and _G.Mytoggle then
                                            u114()
                                        end
                                    end
                                end
                            else
                                return
                            end
                        end)
                        wait(0.001)
                    end
                end
            end)
            _Options.MyToggle:SetValue(false)
            loadstring(game:HttpGet('https://pastefy.app/kZJClAVr/raw', true))()
            u10.Main:AddToggle('ANTIMOB', {
                Title = 'Anti Mob',
                Default = false,
            }):OnChanged(function()
                _G.ANTIMOB = _Options.ANTIMOB.Value

                if _G.ANTIMOB then
                    while _G.ANTIMOB do
                        if u122(10) then
                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'S', false, game)
                        elseif u122(50) then
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'S', false, game)

                            game.Players.LocalPlayer.Character.Humanoid.Jump = true

                            wait(1)
                        end

                        wait(0.00005)
                    end
                end
            end)
            _Options.ANTIMOB:SetValue(false)
            u10.Main:AddToggle('MyToggle1', {
                Title = 'Auto Convert',
                Default = false,
            }):OnChanged(function()
                _G.Mytoggle1 = _Options.MyToggle1.Value

                if not _G.Mytoggle1 then
                    u96 = true
                    u95 = true
                    u91 = true
                    u98 = true
                    u94 = true
                    DoVic = true

                    return
                end

                while true do
                    if not _G.Mytoggle1 then
                    end

                    local _Character18 = game.Players.LocalPlayer.Character

                    if not _Character18 then
                        return
                    end

                    local _LocalPlayer8 = game.Players.LocalPlayer
                    local _Honeycombs = workspace.Honeycombs
                    local _ = game.Players.LocalPlayer.CoreStats.Pollen.Value
                    local v688, v689, v690 = pairs(_Honeycombs:GetDescendants())
                    local v691 = nil

                    while true do
                        local v692

                        v690, v692 = v688(v689, v690)

                        if v690 == nil then
                            break
                        end
                        if v692:IsA('ObjectValue') and (v692.Name == 'Owner' and v692.Value == _LocalPlayer8) then
                            local _Parent = v692.Parent
                            local v694, v695, v696 = pairs(_Parent:GetDescendants())

                            while true do
                                local v697

                                v696, v697 = v694(v695, v696)

                                if v696 == nil then
                                    break
                                end
                                if v697.Name == 'StickerCanvas' then
                                    v691 = v697.Value
                                end
                            end
                        end
                    end

                    local v698 = 10

                    local function v707(p699, p700, p701)
                        local _Position12 = p700.Position
                        local _Size5 = p700.Size

                        if not (_Position12 and _Size5) then
                            return false
                        end

                        local v704 = Vector3.new(_Size5.X + p701, _Size5.Y, _Size5.Z + p701)
                        local v705 = _Position12 - v704 / 2
                        local v706 = _Position12 + v704 / 2

                        return p699.X >= v705.X and (p699.X <= v706.X and (p699.Z >= v705.Z and p699.Z <= v706.Z))
                    end

                    local v708, v709 = game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui.MeterHUD.PollenMeter.Bar.TextLabel.Text:match('([^/]+)/([^/]+)')

                    local function v711(p710)
                        return p710:gsub(',', '')
                    end

                    local v712 = v711(v708)
                    local v713 = v711(v709)
                    local v714 = tonumber(v712)
                    local v715 = tonumber(v713)

                    if (v714 and (v715 and v715 * u73 / 100 <= v714) or u88) and not (u90 or (u61 or (u62 or (u93 or (u92 or u97))))) then
                        break
                    end

                    u96 = true
                    u95 = true
                    u94 = true
                    DoVic = true

                    wait(0.2)
                end

                if u43 then
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ItemPackageEvent'):InvokeServer(unpack({
                        'Equip',
                        {
                            Category = 'Accessory',
                            Type = 'Honey Mask',
                        },
                    }))
                end

                u96 = false
                u95 = false
                u91 = false
                u98 = false
                u94 = false

                if u74 == 'Reset' then
                    game.Players.LocalPlayer.Character.Humanoid.Health = 0

                    repeat
                        wait(0.2)
                    until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Humanoid.Health > 0 or (not _G.Mytoggle1 or (u90 or (u61 or (u62 or (u93 or u92)))))

                    wait(2)

                    while true do
                        make_honey = game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.TextBox.Text

                        if make_honey == 'Make Honey' then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                        end

                        local _Value4 = game.Players.LocalPlayer.CoreStats.Pollen.Value

                        wait(1)

                        if not v707(_Character18.PrimaryPart.Position, zone, v698) or _Value4 == 0 and not u88 or (not _G.Mytoggle1 or (u90 or (u61 or (u62 or (u93 or (u92 or u97)))))) then
                            wait(6.5)

                            local v717 = {
                                'Equip',
                                {
                                    Category = 'Accessory',
                                    Type = u44,
                                },
                            }

                            game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ItemPackageEvent'):InvokeServer(unpack(v717))

                            u96 = true
                            u95 = true
                            u91 = true
                            u98 = true
                            u94 = true
                        end
                    end
                end
                if u74 ~= 'Walk' and u74 ~= 'Tween - Risk' then
                end

                u96 = false
                u95 = false
                u91 = false
                u98 = false
                u94 = false

                local _NegateCircle = workspace.HiveDeco.StickerCanvases[v691.Name].PlaceableSurfaces.NegateCircle

                while true do
                    wait(0.2)

                    local v719 = not v707(_Character18.PrimaryPart.Position, _NegateCircle, v698) and _Character18:FindFirstChildOfClass('Humanoid')

                    if v719 then
                        if u74 ~= 'Walk' then
                            local v720 = game:GetService('TweenService'):Create(_Character18.HumanoidRootPart, TweenInfo.new((_NegateCircle.Position - _Character18.HumanoidRootPart.Position).magnitude / u77, Enum.EasingStyle.Linear), {
                                CFrame = _NegateCircle.CFrame,
                            })
                            local _BodyVelocity7 = Instance.new('BodyVelocity', _Character18.HumanoidRootPart)
                            local v722 = Vector3.new(0, 0, 0)

                            _BodyVelocity7.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                            _BodyVelocity7.velocity = v722
                            _BodyVelocity7.Name = 'Main'

                            v720:Play()
                            v720.Completed:Wait()
                            _BodyVelocity7:Destroy()
                        else
                            v719:MoveTo(_NegateCircle.Position)

                            local _Humanoid5 = _Character18:FindFirstChildOfClass('Humanoid')
                            local _HumanoidRootPart6 = _Character18:FindFirstChild('HumanoidRootPart')

                            if _Humanoid5 and _HumanoidRootPart6 then
                                local _Position13 = _HumanoidRootPart6.Position
                                local v726 = _HumanoidRootPart6.CFrame.LookVector * 8
                                local v727 = Ray.new(_Position13, v726)

                                if workspace:FindPartOnRay(v727, _Character18) and _Humanoid5:GetState() ~= Enum.HumanoidStateType.Jumping then
                                    _Humanoid5:ChangeState(Enum.HumanoidStateType.Jumping)
                                end
                            end
                        end
                    end
                    if v707(_Character18.PrimaryPart.Position, _NegateCircle, v698) or (not _G.Mytoggle1 or (u90 or (u61 or (u62 or (u93 or (u92 or u97)))))) then
                        wait(2)

                        while true do
                            make_honey = game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.TextBox.Text

                            if make_honey == 'Make Honey' then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                            end

                            local _Value5 = game.Players.LocalPlayer.CoreStats.Pollen.Value

                            wait(1)

                            if not v707(_Character18.PrimaryPart.Position, _NegateCircle, v698) or _Value5 == 0 and not u88 or (not _G.Mytoggle1 or (u90 or (u61 or (u62 or (u93 or (u92 or u97)))))) then
                                wait(6.5)

                                local v729 = {
                                    'Equip',
                                    {
                                        Category = 'Accessory',
                                        Type = u44,
                                    },
                                }

                                game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ItemPackageEvent'):InvokeServer(unpack(v729))

                                u96 = true
                                u95 = true
                                u91 = true
                                u98 = true
                                u94 = true
                            end
                        end
                    end
                end
            end)
            _Options.MyToggle1:SetValue(false)
            u10.Main:AddToggle('MyToggle2', {
                Title = 'Auto Convert Balloon',
                Default = false,
            }):OnChanged(function()
                _G.MyToggle2 = _Options.MyToggle2.Value

                if _G.MyToggle2 then
                    spawn(function()
                        while _G.MyToggle2 do
                            wait()
                            pcall(function()
                                local _LocalPlayer9 = game.Players.LocalPlayer
                                local _Honeycombs2 = workspace.Honeycombs
                                local v732, v733, v734 = pairs(_Honeycombs2:GetDescendants())
                                local u735 = nil
                                local u736 = nil
                                local u737 = nil
                                local u738 = 10

                                while true do
                                    local v739

                                    v734, v739 = v732(v733, v734)

                                    if v734 == nil then
                                        local function u748(p740, p741, p742)
                                            local _Position14 = p741.Position
                                            local _Size6 = p741.Size

                                            if not (_Position14 and _Size6) then
                                                return false
                                            end

                                            local v745 = Vector3.new(_Size6.X + p742, _Size6.Y, _Size6.Z + p742)
                                            local v746 = _Position14 - v745 / 2
                                            local v747 = _Position14 + v745 / 2

                                            return p740.X >= v746.X and (p740.X <= v747.X and (p740.Z >= v746.Z and p740.Z <= v747.Z))
                                        end
                                        local function u752(p749, p750, p751)
                                            if p749 and p750 then
                                                return u748(p749.Position, p750, p751)
                                            else
                                                return false
                                            end
                                        end
                                        local function v759()
                                            u735 = nil

                                            if u736 then
                                                local v753 = u736
                                                local v754, v755, v756 = pairs(v753:GetDescendants())

                                                while true do
                                                    local v757

                                                    v756, v757 = v754(v755, v756)

                                                    if v756 == nil then
                                                        break
                                                    end
                                                    if v757.Name == 'TextLabel' and (v757.Parent and v757.Parent.Name == 'Bar') then
                                                        local v758 = v757.Text:gsub(',', '')

                                                        u735 = tonumber(v758)
                                                    end
                                                end
                                            end
                                        end
                                        local function v764()
                                            u736 = nil

                                            local v760, v761, v762 = pairs(workspace.Balloons.HiveBalloons:GetDescendants())

                                            while true do
                                                local v763

                                                v762, v763 = v760(v761, v762)

                                                if v762 == nil then
                                                    break
                                                end
                                                if v763.Name == 'BalloonBody' and u752(v763, u737, u738) then
                                                    u736 = v763

                                                    break
                                                end
                                            end
                                        end

                                        v764()
                                        v759()

                                        if u736 and u752(u736, u737, u738) then
                                            v759()

                                            if u735 == nil then
                                                u88 = false

                                                wait(0.2)
                                            elseif u79 > u735 then
                                                u88 = false

                                                wait(0.2)
                                            else
                                                local v765 = u752

                                                repeat
                                                    wait(0.3)

                                                    u88 = true

                                                    v759()
                                                    v764()
                                                until not u736 or (not v765(u736, u737, u738) or (u735 == 0 or (u735 == nil or not _G.MyToggle2)))

                                                wait(0.2)

                                                u88 = false

                                                wait(0.2)
                                            end
                                        else
                                            u88 = false

                                            wait(0.2)
                                        end

                                        return
                                    end
                                    if v739:IsA('ObjectValue') and (v739.Name == 'Owner' and v739.Value == _LocalPlayer9) then
                                        local _Parent2 = v739.Parent
                                        local v767, v768, v769 = pairs(_Parent2:GetDescendants())

                                        while true do
                                            local v770

                                            v769, v770 = v767(v768, v769)

                                            if v769 == nil then
                                                break
                                            end
                                            if v770.Name == 'LightHolder' then
                                                u737 = v770

                                                break
                                            end
                                        end
                                    end
                                end
                            end)
                        end
                    end)
                else
                    u88 = false
                end
            end)
            _Options.MyToggle2:SetValue(false)
            u10.Main:AddToggle('MyToggle3', {
                Title = 'Auto Dig',
                Default = false,
            }):OnChanged(function()
                _G.Mytoggle3 = _Options.MyToggle3.Value

                if _G.Mytoggle3 then
                    while _G.Mytoggle3 do
                        game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToolCollect'):FireServer()
                        wait(0.1)
                    end
                end
            end)
            _Options.MyToggle3:SetValue(false)
            u10.Main:AddParagraph({
                Title = 'Main | Quest',
                Content = '',
            })
            u10.Main:AddButton({
                Title = 'Remove Black Bear Quest',
                Description = 'this only for who have 2 black bear quests',
                Callback = function()
                    pcall(function()
                        local _LocalPlayer10 = game:GetService('Players').LocalPlayer
                        local _ = _LocalPlayer10.Character
                        local _ScreenGui = _LocalPlayer10:FindFirstChild('PlayerGui'):FindFirstChild('ScreenGui')
                        local v773 = _ScreenGui and _ScreenGui:FindFirstChild('Menus') or nil
                        local v774 = v773 and v773:FindFirstChild('Children') or nil
                        local v775 = v774 and v774:FindFirstChild('Quests') or nil
                        local v776 = v775 and v775:FindFirstChild('Content') or nil
                        local v777 = v776 and v776:FindFirstChild('Frame') or nil

                        if v777 then
                            local v778, v779, v780 = pairs(v777:GetDescendants())

                            while true do
                                local v781

                                v780, v781 = v778(v779, v780)

                                if v780 == nil then
                                    break
                                end
                                if v781.Name == 'TitleBar' and v781.Text:match('Black Bear') then
                                    v781.Parent:Destroy()
                                end
                            end
                        else
                            u6:Notify({
                                Title = 'Open Menu Quest First',
                                Content = '',
                                Duration = 3,
                            })
                            task.wait(1)
                        end
                    end)
                end,
            })
            u10.Main:AddToggle('quest9', {
                Title = 'Auto Claim Quest',
                Default = false,
            }):OnChanged(function()
                _G.quest9 = _Options.quest9.Value

                if not _G.quest9 then
                    return
                end
                if u78 == 'Brown Bear' then
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('UpdatePlayerNPCState'):FireServer(unpack({
                        'Brown Bear',
                        2,
                        'Finish',
                    }))
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('CompleteQuestFromPool'):FireServer(unpack({
                        'Brown Bear 2',
                    }))
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('UpdatePlayerNPCState'):FireServer(unpack({
                        'Brown Bear',
                        2,
                        'Start',
                    }))
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('GiveQuestFromPool'):FireServer(unpack({
                        'Brown Bear 2',
                    }))
                    wait(5)
                end
                if u78 == 'Black Bear - Repeatable' then
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('UpdatePlayerNPCState'):FireServer(unpack({
                        'Black Bear',
                        76,
                        'Start',
                    }))
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('GiveQuestFromPool'):FireServer(unpack({
                        'Black Bear 2',
                    }))
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('UpdatePlayerNPCState'):FireServer(unpack({
                        'Black Bear',
                        76,
                        'Finish',
                    }))
                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('CompleteQuestFromPool'):FireServer(unpack({
                        'Black Bear 2',
                    }))
                    wait(5)
                end
                if u78 == 'Bucko Bee' or (u78 == 'Riley Bee' or u78 == 'Polar Bear') then
                    local v782 = {
                        u78,
                        2,
                        'Finish',
                    }

                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('UpdatePlayerNPCState'):FireServer(unpack(v782))

                    local v783 = {u78}

                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('CompleteQuestFromPool'):FireServer(unpack(v783))

                    local v784 = {
                        u78,
                        2,
                        'Start',
                    }

                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('UpdatePlayerNPCState'):FireServer(unpack(v784))

                    local v785 = {u78}

                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('GiveQuestFromPool'):FireServer(unpack(v785))
                    wait(5)
                end
                if not u796 then
                    u6:Notify({
                        Title = 'Open Menu Quest First',
                        Content = '',
                        Duration = 3,
                    })
                    task.wait(1)
                end
                if containsTitleBarWithText() and (v824() or (u61 or (u90 or (u62 or (u93 or (u92 or u97)))))) then
                    u89 = true
                end

                u89 = false

                local v786, v787, v788 = pairs(workspace.NPCs[u78]:GetDescendants())

                wait(0.2)

                if not _G.quest9 then
                end

                local _LocalPlayer11 = game:GetService('Players').LocalPlayer
                local _Character19 = _LocalPlayer11.Character

                if not (_Character19 and _Character19.PrimaryPart) then
                    return
                end

                local _ScreenGui2 = _LocalPlayer11:FindFirstChild('PlayerGui'):FindFirstChild('ScreenGui')
                local v792 = _ScreenGui2 and _ScreenGui2:FindFirstChild('Menus') or nil
                local v793 = v792 and v792:FindFirstChild('Children') or nil
                local v794 = v793 and v793:FindFirstChild('Quests') or nil
                local v795 = v794 and v794:FindFirstChild('Content') or nil
                local u796 = v795 and v795:FindFirstChild('Frame') or nil
                local v797 = 2.5

                local function v806(p798, p799, p800)
                    local _Position15 = p799.Position
                    local _Size7 = p799.Size

                    if not (_Position15 and _Size7) then
                        return false
                    end

                    local v803 = Vector3.new(_Size7.X + p800, _Size7.Y, _Size7.Z + p800)
                    local v804 = _Position15 - v803 / 2
                    local v805 = _Position15 + v803 / 2

                    return p798.X >= v804.X and (p798.X <= v805.X and (p798.Z >= v804.Z and p798.Z <= v805.Z))
                end

                local u807 = nil

                function containsTitleBarWithText()
                    local v808 = u796
                    local v809, v810, v811 = pairs(v808:GetDescendants())

                    while true do
                        local v812

                        v811, v812 = v809(v810, v811)

                        if v811 == nil then
                            break
                        end
                        if u78 ~= 'Black Bear' then
                            if u78 ~= 'Spirit Bear' then
                                if u78 ~= 'Onett' then
                                    if u78 ~= 'Black Bear - Repeatable' then
                                        if v812.Name == 'TitleBar' and v812.Text:match(u78 .. ':') then
                                            u807 = v812.Parent

                                            return true
                                        end
                                    elseif v812.Name == 'TitleBar' and v812.Text:match('Black Bear') then
                                        u807 = v812.Parent

                                        return true
                                    end
                                elseif v812.Name == 'TitleBar' and v812.Text:match('Star Journey') then
                                    u807 = v812.Parent

                                    return true
                                end
                            elseif v812.Name == 'TitleBar' and (v812.Text:match("Spirit's Starter") or (v812.Text:match('The First Offering') or (v812.Text:match('Rules') or (v812.Text:match('QR Quest') or (v812.Text:match('Pleasant Pastimes') or (v812.Text:match("Nature's Lessons") or (v812.Text:match('The Gifts Of Life') or (v812.Text:match('Questions') or (v812.Text:match('Forcefully Friendly') or (v812.Text:match('Sway Away') or (v812.Text:match('Memories of Memories') or (v812.Text:match('Beans Becoming') or (v812.Text:match('Do') or (v812.Text:match('Wind') or (v812.Text:match('Beauty Duty') or (v812.Text:match('Witness Grandeur') or (v812.Text:match('Beeternity') or (v812.Text:match('A Breath Of Blue') or (v812.Text:match('Glory Of Goo') or (v812.Text:match('Tickle The Wind') or (v812.Text:match('Rhubarb That Could Have Been') or (v812.Text:match('Dreams Of Being A Bee') or (v812.Text:match('The Sky Over The Stump') or (v812.Text:match('Space Oblivion') or (v812.Text:match('Pollenpalooza') or (v812.Text:match('Dancing With Stick Bug') or (v812.Text:match('Bear Without Despair') or (v812.Text:match('Spirit Spree') or (v812.Text:match('Echoing Call') or v812.Text:match('Spring Out Of The Mountain')))))))))))))))))))))))))))))) then
                                u807 = v812.Parent

                                return true
                            end
                        elseif v812.Name == 'TitleBar' and (v812.Text:match('Sunflower Start') or (v812.Text:match('Dandelion Deed') or (v812.Text:match('Pollen Fetcher') or (v812.Text:match('Red Request') or (v812.Text:match('Into The Blue') or (v812.Text:match('Variety Fetcher') or (v812.Text:match('Bamboo Boogie') or (v812.Text:match('Red Request 2') or (v812.Text:match('Cobweb Sweeper') or (v812.Text:match('Leisure Loot') or (v812.Text:match('White Pollen Wrangler') or (v812.Text:match('Pineapple Picking') or (v812.Text:match('Pollen Fetcher 2') or (v812.Text:match('Weed Wacker') or (v812.Text:match('Gold') or (v812.Text:match('Colorless Collection') or (v812.Text:match('Springtime') or (v812.Text:match('Weed Wacker 2') or (v812.Text:match('Pollen Fetcher 3') or (v812.Text:match('Lucky Landscaping') or (v812.Text:match('Azure Adventure') or (v812.Text:match('Pink Pineapples') or (v812.Text:match('Blue Mushrooms') or (v812.Text:match('Cobweb Sweeper 2') or (v812.Text:match('Rojo') or (v812.Text:match('Pumpkin Plower') or (v812.Text:match('Pollen Fetcher 4') or (v812.Text:match('Bouncing Around Biomes') or (v812.Text:match('Blue Pineapples') or (v812.Text:match('Rose Request') or (v812.Text:match('Search For The White Clover') or (v812.Text:match('Stomping Grounds') or (v812.Text:match('Collecting Cliffside') or (v812.Text:match('Mountain Meandering') or (v812.Text:match('Quest Of Legends') or (v812.Text:match('High Altitude') or (v812.Text:match('Blissfully Blue') or (v812.Text:match('Rouge') or (v812.Text:match('White As Snow') or (v812.Text:match('Solo On The Stump') or (v812.Text:match('Colorful Craving') or (v812.Text:match('Pumpkins, Please!') or (v812.Text:match('Smorgasbord') or (v812.Text:match('Pollen Fetcher 5') or (v812.Text:match('White Clover Redux') or (v812.Text:match('Strawberry Field Forever') or (v812.Text:match('Tasting The Sky') or (v812.Text:match('Whispy') or (v812.Text:match('Walk Through The Woods') or (v812.Text:match('Red') or (v812.Text:match('One Stop On The Tip Top') or (v812.Text:match('Blue Mushrooms 2') or (v812.Text:match('Pretty Pumpkins') or (v812.Text:match('Black Bear, Why?') or (v812.Text:match('Bee A Star') or (v812.Text:match('Bamboo Boogie 2: Bamboo Boogaloo') or (v812.Text:match('Rocky Red Mountain') or (v812.Text:match("Can't Without Ants") or (v812.Text:match('The 15 Bee Zone') or (v812.Text:match('Bubble Trouble') or (v812.Text:match('Sweet And Sour') or (v812.Text:match('Rare Red Clover') or (v812.Text:match('Low Tier Treck') or (v812.Text:match('Okey') or (v812.Text:match('Pollen Fetcher 6') or (v812.Text:match('Capsaicin Collector') or (v812.Text:match('Mountain Mix') or (v812.Text:match('You Blue It') or (v812.Text:match('Variety Fetcher 2') or (v812.Text:match('Getting Stumped') or (v812.Text:match('Weed Wacker 3') or (v812.Text:match('All') or (v812.Text:match('Red Delicacy') or (v812.Text:match('Boss Battles') or v812.Text:match('Myth In The Making'))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                            u807 = v812.Parent

                            return true
                        end
                    end

                    return false
                end

                local function v824()
                    local v813 = u807
                    local v814, v815, v816 = pairs(v813:GetDescendants())

                    while true do
                        local v817

                        v816, v817 = v814(v815, v816)

                        if v816 == nil then
                            break
                        end
                        if v817.Name == 'TaskBar' then
                            local v818, v819, v820 = pairs(v817:GetDescendants())
                            local v821 = false
                            local v822 = nil

                            while true do
                                local v823

                                v820, v823 = v818(v819, v820)

                                if v820 == nil then
                                    break
                                end

                                v821 = v823.Name == 'BarColorChange' and true or v821

                                if v823.Name == 'Description' then
                                    v822 = v823.Text
                                end
                            end

                            if not v821 and v822 then
                                return true
                            end
                        end
                    end

                    return false
                end

                if u94 then
                else
                end
                if true then
                    wait(0.1)

                    if u75 ~= 'Walk' then
                        local v825 = game:GetService('TweenService'):Create(_Character19.HumanoidRootPart, TweenInfo.new((v834.Position - _Character19.HumanoidRootPart.Position).magnitude / u77, Enum.EasingStyle.Linear), {
                            CFrame = v834.CFrame,
                        })
                        local _BodyVelocity8 = Instance.new('BodyVelocity', _Character19.HumanoidRootPart)
                        local v827 = Vector3.new(0, 0, 0)

                        _BodyVelocity8.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                        _BodyVelocity8.velocity = v827
                        _BodyVelocity8.Name = 'Main'

                        v825:Play()
                        v825.Completed:Wait()
                        _BodyVelocity8:Destroy()
                    else
                        _Humanoid7:MoveTo(v834.Position)

                        local _Humanoid6 = _Character19:FindFirstChildOfClass('Humanoid')
                        local _HumanoidRootPart7 = _Character19:FindFirstChild('HumanoidRootPart')

                        if _Humanoid6 and _HumanoidRootPart7 then
                            local _Position16 = _HumanoidRootPart7.Position
                            local v831 = _HumanoidRootPart7.CFrame.LookVector * u70
                            local v832 = Ray.new(_Position16, v831)

                            if workspace:FindPartOnRay(v832, _Character19) and _Humanoid6:GetState() ~= Enum.HumanoidStateType.Jumping then
                                _Humanoid6:ChangeState(Enum.HumanoidStateType.Jumping)
                            end
                        end
                    end
                end

                v806(_Character19.PrimaryPart.Position, v834, v797)

                if v806(_Character19.PrimaryPart.Position, v834, v797) or containsTitleBarWithText() and v824() or (not _G.quest9 or (not u94 or (u61 or (u90 or (u92 or (u93 or u97)))))) then
                else
                end

                wait(0.2)
                game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                game:GetService('VirtualInputManager'):SendKeyEvent(false, 'E', false, game)
                wait(0.2)

                local _CommandTag = game.Players.LocalPlayer.PlayerGui.ScreenGui.NPC.CommandTag

                getgenv().Pos = {
                    X = _CommandTag.AbsolutePosition.X,
                    Y = _CommandTag.AbsolutePosition.Y,
                }

                for _ = 1, 10 do
                    _VirtualInputManager:SendMouseButtonEvent(Pos.X, Pos.Y, 0, true, game, 1)
                    wait(0.1)
                    _VirtualInputManager:SendMouseButtonEvent(Pos.X, Pos.Y, 0, false, game, 1)
                end

                if not (containsTitleBarWithText() and v824()) and (_G.quest9 and (u94 and not (u61 or (u90 or (u62 or (u92 or (u93 or u97))))))) then
                end

                u89 = true

                local v834

                v788, v834 = v786(v787, v788)

                if v788 == nil then
                end
                if v834.Name ~= 'Circle' then
                end

                v806(_Character19.PrimaryPart.Position, v834, v797)

                if v806(_Character19.PrimaryPart.Position, v834, v797) then
                end

                local _Humanoid7 = _Character19:FindFirstChildOfClass('Humanoid')

                if _Humanoid7 then
                else
                end
            end)
            _Options.quest9:SetValue(false)
            u10.Main:AddToggle('quest1', {
                Title = 'Auto Quest | Farm',
                Default = false,
            }):OnChanged(function()
                _G.quest1 = _Options.quest1.Value

                if _G.quest1 then
                    while _G.quest1 do
                        pcall(function()
                            getgenv().maxDistance = u489
                            getgenv().char = game.Players.LocalPlayer.Character
                            getgenv().humanoid = char.Humanoid

                            function beakmove2()
                                return not (_G.quest1 and (u95 and u98)) or (u90 or u61) or (u62 or u93 or (u92 or u97))
                            end
                            function IsToken(p836)
                                if p836 and p836.Parent then
                                    if p836.Orientation.Z ~= 0 or (p836.Name ~= 'C' or not p836:IsA('Part')) then
                                        return false
                                    else
                                        return p836:FindFirstChild('FrontDecal') and p836:FindFirstChild('Sparkles') and true or false
                                    end
                                else
                                    return false
                                end
                            end
                            function IsHoney(p837)
                                if (p837.Position - char.HumanoidRootPart.Position).magnitude > maxDistance or p837.Orientation.Z ~= 0 then
                                    return false
                                else
                                    return p837:FindFirstChild('BackDecal') and (p837.BackDecal.Texture == 'rbxassetid://1472135114' and p837.Transparency ~= 1) and true or false
                                end
                            end
                            function IsFruit(p838)
                                if (p838.Position - char.HumanoidRootPart.Position).magnitude > maxDistance or p838.Orientation.Z ~= 0 then
                                    return false
                                else
                                    return p838:FindFirstChild('BackDecal') and (p838.BackDecal.Texture == 'rbxassetid://2028453802' or (p838.BackDecal.Texture == 'rbxassetid://1952740625' or (p838.BackDecal.Texture == 'rbxassetid://1952682401' or p838.BackDecal.Texture == 'rbxassetid://1952796032'))) and p838.Transparency ~= 1 and true or false
                                end
                            end
                            function IsBubble(p839)
                                return string.find(p839.Name, 'Bubble') and true or false
                            end
                            function IsCross(p840)
                                local v841

                                if p840.Name ~= 'Crosshair' then
                                    v841 = false
                                else
                                    v841 = p840.BrickColor == BrickColor.new('Red flip/flop') and true or false
                                end

                                return v841
                            end
                            function IsCrossUUTIEN()
                                if not u50 then
                                    return false
                                end

                                local v842 = next
                                local v843, v844 = workspace.Particles:GetChildren()

                                while true do
                                    local v845

                                    v844, v845 = v842(v843, v844)

                                    if v844 == nil then
                                        break
                                    end
                                    if v845.Name == 'Crosshair' and v845.BrickColor == BrickColor.new('Red flip/flop') then
                                        return true
                                    end
                                end

                                return false
                            end
                            function IsCrossGifted(p846)
                                local v847

                                if p846.Name ~= 'Crosshair' then
                                    v847 = false
                                else
                                    v847 = p846.BrickColor == BrickColor.new('Alder') and true or false
                                end

                                return v847
                            end
                            function IsCrossGiftedUUTIEN()
                                if not u51 then
                                    return false
                                end

                                local v848 = next
                                local v849, v850 = workspace.Particles:GetChildren()

                                while true do
                                    local v851

                                    v850, v851 = v848(v849, v850)

                                    if v850 == nil then
                                        break
                                    end
                                    if v851.Name == 'Crosshair' and v851.BrickColor == BrickColor.new('Alder') then
                                        return true
                                    end
                                end

                                return false
                            end
                            function IsTokenUUTIEN()
                                if not u45 then
                                    return false
                                end

                                local v852 = next
                                local v853, v854 = game:GetService('Workspace').Collectibles:GetChildren()

                                while true do
                                    local v855

                                    v854, v855 = v852(v853, v854)

                                    if v854 == nil then
                                        break
                                    end
                                    if not (v855 and v855.Parent) then
                                        return false
                                    end
                                    if v855.Orientation.Z ~= 0 or (v855.Name ~= 'C' or not v855:IsA('Part')) then
                                        return false
                                    end
                                    if not (v855:FindFirstChild('FrontDecal') and v855:FindFirstChild('Sparkles')) then
                                        return false
                                    end
                                end

                                return true
                            end
                            function isFuzzy(p856)
                                if p856.Name == 'DustBunnyInstance' then
                                    return p856:FindFirstChild('Plane') and true or false
                                else
                                    return false
                                end
                            end
                            function isFuzzyUUTIEN()
                                if not u49 then
                                    return false
                                end

                                local v857 = next
                                local v858, v859 = game.workspace.Particles:GetChildren()

                                while true do
                                    local v860

                                    v859, v860 = v857(v858, v859)

                                    if v859 == nil then
                                        break
                                    end
                                    if v860.Name == 'DustBunnyInstance' and ((v860.Plane.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < maxDistance and v860:FindFirstChild('Plane')) then
                                        return true
                                    end
                                end

                                return false
                            end
                            function IsDupe()
                                local v861, v862, v863 = pairs(game:GetService('Workspace').Camera.DupedTokens:GetDescendants())

                                while true do
                                    local v864

                                    v863, v864 = v861(v862, v863)

                                    if v863 == nil then
                                        break
                                    end
                                    if v864.Name == 'C' then
                                        return true
                                    end
                                end

                                return false
                            end
                            function IsStarUUTIEN()
                                if not u55 then
                                    return false
                                end

                                local v865 = next
                                local v866, v867 = workspace.Particles:GetChildren()

                                while true do
                                    local v868

                                    v867, v868 = v865(v866, v867)

                                    if v867 == nil then
                                        break
                                    end
                                    if IsStar(v868) and (v868.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                        return true
                                    end
                                end

                                return false
                            end
                            function farmToken(p869)
                                humanoid:MoveTo(p869.Position)

                                repeat
                                    task.wait()
                                until not IsToken(p869) or ((p869.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove2() or (isFuzzyUUTIEN() or (IsStickerUUTIEN() or IsStarUUTIEN()))))))
                            end
                            function farmFruit(p870)
                                humanoid:MoveTo(p870.Position)

                                repeat
                                    task.wait()
                                until not IsFruit(p870) or ((p870.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove2() or (isFuzzyUUTIEN() or (IsStickerUUTIEN() or IsStarUUTIEN()))))))
                            end
                            function farmHoney(p871)
                                humanoid:MoveTo(p871.Position)

                                repeat
                                    task.wait()
                                until not IsHoney(p871) or ((p871.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove2() or (isFuzzyUUTIEN() or (IsStickerUUTIEN() or IsStarUUTIEN()))))))
                            end
                            function farmBubble(p872)
                                humanoid:MoveTo(p872.Position)

                                repeat
                                    task.wait()
                                until not IsBubble(p872) or ((p872.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove2() or (isFuzzyUUTIEN() or (IsStickerUUTIEN() or IsStarUUTIEN()))))))
                            end
                            function farmCross(p873)
                                humanoid:MoveTo(p873.Position)

                                repeat
                                    task.wait()
                                until not IsCross(p873) or ((p873.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (beakmove2() or (IsStickerUUTIEN() or IsStarUUTIEN()))))

                                u469()
                            end
                            function farmCrossGifted(p874)
                                humanoid:MoveTo(p874.Position)

                                repeat
                                    task.wait()
                                until not IsCrossGifted(p874) or ((p874.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsStickerUUTIEN() or IsStarUUTIEN()))

                                u469()
                            end
                            function farmFuzzy(p875)
                                humanoid:MoveTo(p875.Position)

                                repeat
                                    task.wait()
                                until not isFuzzy(p875) or ((p875.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove2() or (IsStickerUUTIEN() or IsStarUUTIEN())))))
                            end
                            function collectFruit()
                                local v876, v877, v878 = pairs(workspace.Collectibles:GetChildren())

                                while true do
                                    local v879

                                    v878, v879 = v876(v877, v878)

                                    if v878 == nil then
                                        break
                                    end
                                    if u46 and (not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (IsFruit(v879) and (not isFuzzyUUTIEN() and (not IsStarUUTIEN() and (not IsStickerUUTIEN() and (v879.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance)))))) then
                                        farmFruit(v879)
                                    end
                                end
                            end
                            function collectHoney()
                                local v880, v881, v882 = pairs(workspace.Collectibles:GetChildren())

                                while true do
                                    local v883

                                    v882, v883 = v880(v881, v882)

                                    if v882 == nil then
                                        break
                                    end
                                    if u48 and (not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (IsHoney(v883) and (not isFuzzyUUTIEN() and (not IsStarUUTIEN() and (not IsStickerUUTIEN() and (v883.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance)))))) then
                                        farmHoney(v883)
                                    end
                                end
                            end
                            function collectToken()
                                local v884 = next
                                local v885, v886 = game:GetService('Workspace').Collectibles:GetChildren()

                                while true do
                                    local v887

                                    v886, v887 = v884(v885, v886)

                                    if v886 == nil then
                                        break
                                    end
                                    if u45 and (not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (IsToken(v887) and (not isFuzzyUUTIEN() and (not IsStarUUTIEN() and (not IsStickerUUTIEN() and (v887.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance)))))) then
                                        farmToken(v887)
                                    end
                                end
                            end
                            function collectBubble()
                                local v888 = next
                                local v889, v890 = game:GetService('Workspace').Particles:GetChildren()

                                while true do
                                    local v891

                                    v890, v891 = v888(v889, v890)

                                    if v890 == nil then
                                        break
                                    end
                                    if u47 and (not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (IsBubble(v891) and (not isFuzzyUUTIEN() and (not IsStarUUTIEN() and (not IsStickerUUTIEN() and (v891.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance)))))) then
                                        farmBubble(v891)
                                    end
                                end
                            end
                            function collectCross()
                                local v892 = next
                                local v893, v894 = workspace.Particles:GetChildren()

                                while true do
                                    local v895

                                    v894, v895 = v892(v893, v894)

                                    if v894 == nil then
                                        break
                                    end
                                    if not IsCrossGiftedUUTIEN() and (u50 and (IsCross(v895) and (not IsStickerUUTIEN() and (not IsStarUUTIEN() and (v895.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance)))) then
                                        farmCross(v895)
                                    end
                                end
                            end
                            function collectCrossGifted()
                                local v896 = next
                                local v897, v898 = workspace.Particles:GetChildren()

                                while true do
                                    local v899

                                    v898, v899 = v896(v897, v898)

                                    if v898 == nil then
                                        break
                                    end
                                    if u51 and (IsCrossGifted(v899) and (not IsStickerUUTIEN() and (not IsStarUUTIEN() and (v899.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance))) then
                                        farmCrossGifted(v899)
                                    end
                                end
                            end
                            function collectFuzzy()
                                local v900 = next
                                local v901, v902 = game.workspace.Particles:GetChildren()

                                while true do
                                    local v903

                                    v902, v903 = v900(v901, v902)

                                    if v902 == nil then
                                        break
                                    end
                                    if isFuzzy(v903) and (u49 and (not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (not IsStickerUUTIEN() and (not IsStarUUTIEN() and ((v903.Plane.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < maxDistance and v903:FindFirstChild('Plane'))))))) then
                                        farmFuzzy(v903:FindFirstChild('Plane'))
                                    end
                                end
                            end
                            function IsSnow(p904)
                                if (p904.Position - char.HumanoidRootPart.Position).magnitude > maxDistance or p904.Orientation.Z ~= 0 then
                                    return false
                                else
                                    return p904:FindFirstChild('BackDecal') and (p904.BackDecal.Texture == 'rbxassetid://6087969886' and p904.Transparency ~= 1) and true or false
                                end
                            end
                            function farmSnow(p905)
                                humanoid:MoveTo(p905.Position)

                                repeat
                                    task.wait()
                                until not IsSnow(p905) or ((p905.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove2() or (isFuzzyUUTIEN() or (IsStickerUUTIEN() or IsStarUUTIEN()))))))
                            end
                            function collectSnow()
                                local v906, v907, v908 = pairs(workspace.Collectibles:GetChildren())

                                while true do
                                    local v909

                                    v908, v909 = v906(v907, v908)

                                    if v908 == nil then
                                        break
                                    end
                                    if u53 and (not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (IsSnow(v909) and (not isFuzzyUUTIEN() and (not IsStickerUUTIEN() and ((v909.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance and not IsStarUUTIEN())))))) then
                                        farmSnow(v909)
                                    end
                                end
                            end
                            function IsStickerUUTIEN()
                                if not u54 then
                                    return false
                                end

                                local v910, v911, v912 = pairs(workspace.Collectibles:GetChildren())

                                while true do
                                    local v913

                                    v912, v913 = v910(v911, v912)

                                    if v912 == nil then
                                        break
                                    end
                                    if (v913.Name == 'C' or v913:IsA('Part')) and (v913.Orientation.Z == 0 and (not v913:FindFirstChild('Sparkles') and v913:FindFirstChild('Spots'))) then
                                        return true
                                    end
                                end

                                return false
                            end
                            function IsSticker(p914)
                                if p914.Name ~= 'C' or not p914:IsA('Part') then
                                    return false
                                elseif p914.Orientation.Z == 0 then
                                    if p914:FindFirstChild('Sparkles') then
                                        return false
                                    else
                                        return p914:FindFirstChild('Spots') and true or false
                                    end
                                else
                                    return false
                                end
                            end
                            function farmSticker(p915)
                                humanoid:MoveTo(p915.Position)

                                repeat
                                    task.wait()
                                until not IsSticker(p915) or ((p915.Position - char.HumanoidRootPart.Position).magnitude <= 4 or beakmove2())
                            end
                            function collectSticker()
                                local v916, v917, v918 = pairs(workspace.Collectibles:GetChildren())

                                while true do
                                    local v919

                                    v918, v919 = v916(v917, v918)

                                    if v918 == nil then
                                        break
                                    end
                                    if u54 and (IsSticker(v919) and (v919.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance) then
                                        farmSticker(v919)
                                    end
                                end
                            end
                            function IsStar(p920)
                                return p920.Name == 'Star' and true or false
                            end
                            function farmStar(p921)
                                humanoid:MoveTo(p921.Position)

                                repeat
                                    task.wait()
                                until not IsStar(p921) or ((p921.Position - char.HumanoidRootPart.Position).magnitude <= 4 or IsStickerUUTIEN())
                            end
                            function collectStar()
                                local v922 = next
                                local v923, v924 = workspace.Particles:GetChildren()

                                while true do
                                    local v925

                                    v924, v925 = v922(v923, v924)

                                    if v924 == nil then
                                        break
                                    end
                                    if u55 and (IsStar(v925) and ((v925.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance and not IsStickerUUTIEN())) then
                                        farmStar(v925)

                                        break
                                    end
                                end
                            end

                            local _Character20 = game:GetService('Players').LocalPlayer.Character

                            if not (_Character20 and _Character20.PrimaryPart) then
                                return
                            end

                            local _Position17 = _Character20.PrimaryPart.Position
                            local _LocalPlayer12 = game.Players.LocalPlayer

                            _Character20:WaitForChild('HumanoidRootPart')

                            local _Humanoid8 = _Character20:WaitForChild('Humanoid')
                            local v930 = workspace.FlowerZones:FindFirstChild(u72)
                            local _ = v930.Size
                            local _ = v930.Position

                            local function v937(p931, p932)
                                if type(p931) ~= 'string' then
                                    return nil
                                end

                                local v933, v934, v935 = pairs(p932)

                                while true do
                                    local v936

                                    v935, v936 = v933(v934, v935)

                                    if v935 == nil then
                                        break
                                    end
                                    if string.find(p931, v936) then
                                        return v936
                                    end
                                end

                                return nil
                            end

                            local _ScreenGui3 = _LocalPlayer12:FindFirstChild('PlayerGui'):FindFirstChild('ScreenGui')
                            local v939 = _ScreenGui3 and _ScreenGui3:FindFirstChild('Menus') or nil
                            local v940 = v939 and v939:FindFirstChild('Children') or nil
                            local v941 = v940 and v940:FindFirstChild('Quests') or nil
                            local v942 = v941 and v941:FindFirstChild('Content') or nil
                            local v943 = v942 and v942:FindFirstChild('Frame') or nil
                            local v944 = nil

                            if v943 then
                                local v945, v946, v947 = pairs(v943:GetDescendants())

                                while true do
                                    local v948

                                    v947, v948 = v945(v946, v947)

                                    if v947 == nil then
                                        break
                                    end
                                    if u78 ~= 'Black Bear' then
                                        if u78 ~= 'Spirit Bear' then
                                            if u78 ~= 'Onett' then
                                                if u78 ~= 'Black Bear - Repeatable' then
                                                    if v948.Name == 'TitleBar' and v948.Text:match(u78 .. ':') then
                                                        v944 = v948.Parent

                                                        break
                                                    end
                                                elseif v948.Name == 'TitleBar' and v948.Text:match('Black Bear') then
                                                    v944 = v948.Parent

                                                    break
                                                end
                                            elseif v948.Name == 'TitleBar' and v948.Text:match('Star Journey') then
                                                v944 = v948.Parent

                                                break
                                            end
                                        elseif v948.Name == 'TitleBar' and (v948.Text:match("Spirit's Starter") or (v948.Text:match('The First Offering') or (v948.Text:match('Rules') or (v948.Text:match('QR Quest') or (v948.Text:match('Pleasant Pastimes') or (v948.Text:match("Nature's Lessons") or (v948.Text:match('The Gifts Of Life') or (v948.Text:match('Questions') or (v948.Text:match('Forcefully Friendly') or (v948.Text:match('Sway Away') or (v948.Text:match('Memories of Memories') or (v948.Text:match('Beans Becoming') or (v948.Text:match('Do') or (v948.Text:match('Wind') or (v948.Text:match('Beauty Duty') or (v948.Text:match('Witness Grandeur') or (v948.Text:match('Beeternity') or (v948.Text:match('A Breath Of Blue') or (v948.Text:match('Glory Of Goo') or (v948.Text:match('Tickle The Wind') or (v948.Text:match('Rhubarb That Could Have Been') or (v948.Text:match('Dreams Of Being A Bee') or (v948.Text:match('The Sky Over The Stump') or (v948.Text:match('Space Oblivion') or (v948.Text:match('Pollenpalooza') or (v948.Text:match('Dancing With Stick Bug') or (v948.Text:match('Bear Without Despair') or (v948.Text:match('Spirit Spree') or (v948.Text:match('Echoing Call') or v948.Text:match('Spring Out Of The Mountain')))))))))))))))))))))))))))))) then
                                            v944 = v948.Parent

                                            break
                                        end
                                    elseif v948.Name == 'TitleBar' and (v948.Text:match('Sunflower Start') or (v948.Text:match('Dandelion Deed') or (v948.Text:match('Pollen Fetcher') or (v948.Text:match('Red Request') or (v948.Text:match('Into The Blue') or (v948.Text:match('Variety Fetcher') or (v948.Text:match('Bamboo Boogie') or (v948.Text:match('Red Request 2') or (v948.Text:match('Cobweb Sweeper') or (v948.Text:match('Leisure Loot') or (v948.Text:match('White Pollen Wrangler') or (v948.Text:match('Pineapple Picking') or (v948.Text:match('Pollen Fetcher 2') or (v948.Text:match('Weed Wacker') or (v948.Text:match('Gold') or (v948.Text:match('Colorless Collection') or (v948.Text:match('Springtime') or (v948.Text:match('Weed Wacker 2') or (v948.Text:match('Pollen Fetcher 3') or (v948.Text:match('Lucky Landscaping') or (v948.Text:match('Azure Adventure') or (v948.Text:match('Pink Pineapples') or (v948.Text:match('Blue Mushrooms') or (v948.Text:match('Cobweb Sweeper 2') or (v948.Text:match('Rojo') or (v948.Text:match('Pumpkin Plower') or (v948.Text:match('Pollen Fetcher 4') or (v948.Text:match('Bouncing Around Biomes') or (v948.Text:match('Blue Pineapples') or (v948.Text:match('Rose Request') or (v948.Text:match('Search For The White Clover') or (v948.Text:match('Stomping Grounds') or (v948.Text:match('Collecting Cliffside') or (v948.Text:match('Mountain Meandering') or (v948.Text:match('Quest Of Legends') or (v948.Text:match('High Altitude') or (v948.Text:match('Blissfully Blue') or (v948.Text:match('Rouge') or (v948.Text:match('White As Snow') or (v948.Text:match('Solo On The Stump') or (v948.Text:match('Colorful Craving') or (v948.Text:match('Pumpkins, Please!') or (v948.Text:match('Smorgasbord') or (v948.Text:match('Pollen Fetcher 5') or (v948.Text:match('White Clover Redux') or (v948.Text:match('Strawberry Field Forever') or (v948.Text:match('Tasting The Sky') or (v948.Text:match('Whispy') or (v948.Text:match('Walk Through The Woods') or (v948.Text:match('Red') or (v948.Text:match('One Stop On The Tip Top') or (v948.Text:match('Blue Mushrooms 2') or (v948.Text:match('Pretty Pumpkins') or (v948.Text:match('Black Bear, Why?') or (v948.Text:match('Bee A Star') or (v948.Text:match('Bamboo Boogie 2: Bamboo Boogaloo') or (v948.Text:match('Rocky Red Mountain') or (v948.Text:match("Can't Without Ants") or (v948.Text:match('The 15 Bee Zone') or (v948.Text:match('Bubble Trouble') or (v948.Text:match('Sweet And Sour') or (v948.Text:match('Rare Red Clover') or (v948.Text:match('Low Tier Treck') or (v948.Text:match('Okey') or (v948.Text:match('Pollen Fetcher 6') or (v948.Text:match('Capsaicin Collector') or (v948.Text:match('Mountain Mix') or (v948.Text:match('You Blue It') or (v948.Text:match('Variety Fetcher 2') or (v948.Text:match('Getting Stumped') or (v948.Text:match('Weed Wacker 3') or (v948.Text:match('All') or (v948.Text:match('Red Delicacy') or (v948.Text:match('Boss Battles') or v948.Text:match('Myth In The Making'))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                                        v944 = v948.Parent

                                        break
                                    end
                                end
                            else
                                u6:Notify({
                                    Title = 'Open Menu Quest First',
                                    Content = '',
                                    Duration = 3,
                                })
                                task.wait(1)
                            end

                            local v949 = nil
                            local v950

                            if v944 then
                                local v951, v952, v953 = pairs(v944:GetDescendants())

                                while true do
                                    local v954

                                    v953, v954 = v951(v952, v953)

                                    if v953 == nil then
                                        v950 = v949

                                        break
                                    end
                                    if v954.Name == 'TaskBar' then
                                        local v955, v956, v957 = pairs(v954:GetDescendants())
                                        local v958 = false

                                        v950 = nil

                                        while true do
                                            local v959

                                            v957, v959 = v955(v956, v957)

                                            if v957 == nil then
                                                break
                                            end

                                            v958 = v959.Name == 'BarColorChange' and true or v958

                                            if v959.Name == 'Description' then
                                                v950 = v959.Text
                                            end
                                        end

                                        if not v958 and v950 then
                                            break
                                        end
                                    end
                                end
                            else
                                v950 = v949
                            end

                            local v960, v961, v962 = pairs(workspace.FlowerZones:GetDescendants())
                            local v963 = {}

                            while true do
                                local v964, v965 = v960(v961, v962)

                                if v964 == nil then
                                    break
                                end

                                v962 = v964

                                if v965:IsA('Part') then
                                    table.insert(v963, v965.Name)
                                end
                            end

                            local v966 = false
                            local v967 = v937(v950, v963)
                            local v968 = nil

                            if u95 and (u98 and not (u90 or (u61 or (u62 or (u93 or (u92 or u97)))))) then
                                if v967 then
                                    v968 = v967
                                elseif (v967 or v950:match('Blue Flowers')) and v950:match('Goo') then
                                    v966 = true

                                    if v967 == nil then
                                        v968 = u483
                                    else
                                        v968 = v967
                                    end
                                elseif (v967 or v950:match('Red Flowers')) and v950:match('Goo') then
                                    v966 = true

                                    if v967 == nil then
                                        v968 = u482
                                    else
                                        v968 = v967
                                    end
                                elseif (v967 or v950:match('White Flowers')) and v950:match('Goo') then
                                    v966 = true

                                    if v967 == nil then
                                        v968 = u484
                                    else
                                        v968 = v967
                                    end
                                elseif v950 then
                                    if v950:match('Blue Ability Tokens') or (v950:match('Bomb Tokens') or (v950:match('Blue Boost Tokens') or (v950:match('Blueberry Tokens') or v950:match('Blue Pollen')))) then
                                        v968 = u483
                                    elseif v950:match('Red Ability Tokens') or (v950:match('Rage Tokens') or (v950:match('Red Boost Tokens') or (v950:match('Strawberry Tokens') or v950:match('Red Pollen')))) then
                                        v968 = u482
                                    elseif v950:match('White Pollen') then
                                        v968 = u484
                                    end
                                end
                                if v968 == nil then
                                    u91 = true
                                    u96 = true
                                else
                                    u91 = false
                                    u96 = false
                                end
                            end

                            local u969 = workspace.FlowerZones:FindFirstChild(v968)
                            local v970 = 0

                            function collectWalk()
                                if not IsCrossGiftedUUTIEN() and (not IsCrossUUTIEN() and (not isFuzzyUUTIEN() and (not IsStickerUUTIEN() and (not IsStarUUTIEN() and (not IsTokenUUTIEN() and u56))))) then
                                    _Humanoid8:MoveTo(getRandomFlower(u969).Position)

                                    repeat
                                        task.wait()
                                    until IsTokenUUTIEN() or ((getRandomFlower(u969).Position - char.HumanoidRootPart.Position).magnitude <= 20 or (IsCrossGiftedUUTIEN() or (IsCrossUUTIEN() or (beakmove2() or (isFuzzyUUTIEN() or (IsStickerUUTIEN() or IsStarUUTIEN()))))))
                                end
                            end

                            local function v979(p971, p972, p973)
                                local _Position18 = p972.Position
                                local _Size8 = p972.Size

                                if not (_Position18 and _Size8) then
                                    return false
                                end

                                local v976 = Vector3.new(_Size8.X + p973, _Size8.Y, _Size8.Z + p973)
                                local v977 = _Position18 - v976 / 2
                                local v978 = _Position18 + v976 / 2

                                return p971.X >= v977.X and (p971.X <= v978.X and (p971.Z >= v977.Z and p971.Z <= v978.Z))
                            end

                            if v979(_Position17, u969, v970) then
                                collectSticker()
                                collectSnow()
                                collectCrossGifted()
                                collectCross()
                                collectFruit()
                                collectBubble()
                                collectToken()
                                collectHoney()
                                collectWalk()

                                if v966 then
                                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('PlayerActivesCommand'):FireServer(unpack({
                                        {
                                            Name = 'Gumdrops',
                                        },
                                    }))
                                end
                            end

                            local v980 = (u75 == 'Walk' or u75 == 'Tween - Risk') and workspace.FlowerZones:FindFirstChild(v968)

                            if v980 then
                                while true do
                                    task.wait(0.2)

                                    local v981 = not v979(_Character20.PrimaryPart.Position, v980, v970) and _Character20:FindFirstChildOfClass('Humanoid')

                                    if v981 then
                                        if u75 ~= 'Walk' then
                                            local v982 = game:GetService('TweenService'):Create(_Character20.HumanoidRootPart, TweenInfo.new((v980.Position - _Character20.HumanoidRootPart.Position).magnitude / u77, Enum.EasingStyle.Linear), {
                                                CFrame = v980.CFrame,
                                            })
                                            local _BodyVelocity9 = Instance.new('BodyVelocity', _Character20.HumanoidRootPart)
                                            local v984 = Vector3.new(0, 0, 0)

                                            _BodyVelocity9.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                            _BodyVelocity9.velocity = v984
                                            _BodyVelocity9.Name = 'Main'

                                            v982:Play()
                                            v982.Completed:Wait()
                                            _BodyVelocity9:Destroy()
                                        else
                                            v981:MoveTo(v980.Position)
                                        end

                                        local _Position19 = _Character20.HumanoidRootPart.Position
                                        local v986 = _Character20.HumanoidRootPart.CFrame.LookVector * u70
                                        local v987 = Ray.new(_Position19, v986)

                                        if workspace:FindPartOnRay(v987, _Character20) and v981:GetState() ~= Enum.HumanoidStateType.Jumping then
                                            v981:ChangeState(Enum.HumanoidStateType.Jumping)
                                        end
                                    end
                                    if not _G.quest1 or (v979(_Character20.PrimaryPart.Position, v980, v970) or (not u95 or (not u98 or (u90 or (u61 or (u62 or (u93 or (u92 or u97)))))))) then
                                        wait(0.8)

                                        if u95 and _G.quest1 then
                                            u114()
                                        end
                                    end
                                end
                            else
                                return
                            end
                        end)
                        wait(0.001)
                    end
                else
                    wait(0.2)

                    u91 = true
                    u96 = true
                end
            end)
            _Options.quest1:SetValue(false)
            u10.Main:AddToggle('quest2', {
                Title = 'Auto Quest | Mob',
                Default = false,
            }):OnChanged(function()
                _G.quest2 = _Options.quest2.Value

                if _G.quest2 then
                    while _G.quest2 do
                        pcall(function()
                            getgenv().maxDistance = u489
                            getgenv().char = game.Players.LocalPlayer.Character
                            getgenv().humanoid = char.Humanoid

                            local _Character21 = game.Players.LocalPlayer.Character

                            if not _Character21 then
                                return
                            end

                            local _ = _Character21.PrimaryPart.Position

                            function IsItem(p989)
                                if (p989.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                    if p989 then
                                        if p989.Parent then
                                            if p989.Orientation.Z == 0 then
                                                if p989:FindFirstChild('FrontDecal') then
                                                    if p989:FindFirstChild('Sparkles') then
                                                        return false
                                                    elseif p989.Name == 'C' then
                                                        return p989:IsA('Part') and true or false
                                                    else
                                                        return false
                                                    end
                                                else
                                                    return false
                                                end
                                            else
                                                return false
                                            end
                                        else
                                            return false
                                        end
                                    else
                                        return false
                                    end
                                else
                                    return false
                                end
                            end
                            function IsItemEx()
                                local _Collectibles = game:GetService('Workspace'):FindFirstChild('Collectibles')

                                if not _Collectibles then
                                    return false
                                end

                                local v991 = next
                                local v992, v993 = _Collectibles:GetChildren()

                                while true do
                                    local v994

                                    v993, v994 = v991(v992, v993)

                                    if v993 == nil then
                                        break
                                    end
                                    if IsItem(v994) and (v994.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                        return true
                                    end
                                end

                                return false
                            end
                            function farmItem(p995)
                                if humanoid and (char:FindFirstChild('HumanoidRootPart') and p995) then
                                    humanoid:MoveTo(p995.Position)

                                    repeat
                                        task.wait()
                                    until not IsItem(p995) or ((p995.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (u61 or (not _G.quest2 or (not u95 or (u90 or (u62 or (u93 or u92)))))))
                                end
                            end
                            function collectItem()
                                local _Collectibles2 = game:GetService('Workspace'):FindFirstChild('Collectibles')

                                if _Collectibles2 then
                                    local v997 = next
                                    local v998, v999 = _Collectibles2:GetChildren()

                                    while true do
                                        local v1000

                                        v999, v1000 = v997(v998, v999)

                                        if v999 == nil then
                                            break
                                        end
                                        if IsItem(v1000) and (v1000.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                            farmItem(v1000)
                                        end
                                    end
                                end
                            end
                            function IsToken(p1001)
                                if p1001 then
                                    if p1001.Parent then
                                        if p1001.Orientation.Z == 0 then
                                            if p1001:FindFirstChild('FrontDecal') then
                                                if p1001:FindFirstChild('Sparkles') then
                                                    if p1001.Name == 'C' then
                                                        return p1001:IsA('Part') and true or false
                                                    else
                                                        return false
                                                    end
                                                else
                                                    return false
                                                end
                                            else
                                                return false
                                            end
                                        else
                                            return false
                                        end
                                    else
                                        return false
                                    end
                                else
                                    return false
                                end
                            end
                            function farm(p1002)
                                humanoid:MoveTo(p1002.Position)

                                repeat
                                    task.wait()
                                until not IsToken(p1002) or ((p1002.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (u61 or (not _G.quest2 or (not u95 or (u90 or (u62 or (u93 or u92)))))))
                            end
                            function collectToken()
                                local v1003 = next
                                local v1004, v1005 = game:GetService('Workspace').Collectibles:GetChildren()

                                while true do
                                    local v1006

                                    v1005, v1006 = v1003(v1004, v1005)

                                    if v1005 == nil then
                                        break
                                    end
                                    if IsToken(v1006) and (v1006.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                        farm(v1006)
                                    end
                                end
                            end

                            local u1007 = 0

                            local function u1016(p1008, p1009, p1010)
                                local _Position20 = p1009.Position
                                local _Size9 = p1009.Size

                                if not (_Position20 and _Size9) then
                                    return false
                                end

                                local v1013 = Vector3.new(_Size9.X + p1010, _Size9.Y, _Size9.Z + p1010)
                                local v1014 = _Position20 - v1013 / 2
                                local v1015 = _Position20 + v1013 / 2

                                return p1008.X >= v1014.X and (p1008.X <= v1015.X and (p1008.Z >= v1014.Z and p1008.Z <= v1015.Z))
                            end

                            local _ScreenGui4 = game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('ScreenGui')

                            if _ScreenGui4 then
                                _ScreenGui4 = _ScreenGui4:FindFirstChild('Menus')
                            end
                            if _ScreenGui4 then
                                _ScreenGui4 = _ScreenGui4:FindFirstChild('Children')
                            end
                            if _ScreenGui4 then
                                _ScreenGui4 = _ScreenGui4:FindFirstChild('Quests')
                            end
                            if _ScreenGui4 then
                                _ScreenGui4 = _ScreenGui4:FindFirstChild('Content')
                            end
                            if _ScreenGui4 then
                                _ScreenGui4 = _ScreenGui4:FindFirstChild('Frame')
                            end

                            local v1018 = nil

                            if _ScreenGui4 then
                                local v1019, v1020, v1021 = pairs(_ScreenGui4:GetDescendants())

                                while true do
                                    local v1022

                                    v1021, v1022 = v1019(v1020, v1021)

                                    if v1021 == nil then
                                        break
                                    end
                                    if u78 ~= 'Black Bear' then
                                        if u78 ~= 'Spirit Bear' then
                                            if u78 ~= 'Onett' then
                                                if u78 ~= 'Black Bear - Repeatable' then
                                                    if v1022.Name == 'TitleBar' and v1022.Text:match(u78 .. ':') then
                                                        v1018 = v1022.Parent

                                                        break
                                                    end
                                                elseif v1022.Name == 'TitleBar' and v1022.Text:match('Black Bear') then
                                                    v1018 = v1022.Parent

                                                    break
                                                end
                                            elseif v1022.Name == 'TitleBar' and v1022.Text:match('Star Journey') then
                                                v1018 = v1022.Parent

                                                break
                                            end
                                        elseif v1022.Name == 'TitleBar' and (v1022.Text:match("Spirit's Starter") or (v1022.Text:match('The First Offering') or (v1022.Text:match('Rules') or (v1022.Text:match('QR Quest') or (v1022.Text:match('Pleasant Pastimes') or (v1022.Text:match("Nature's Lessons") or (v1022.Text:match('The Gifts Of Life') or (v1022.Text:match('Questions') or (v1022.Text:match('Forcefully Friendly') or (v1022.Text:match('Sway Away') or (v1022.Text:match('Memories of Memories') or (v1022.Text:match('Beans Becoming') or (v1022.Text:match('Do') or (v1022.Text:match('Wind') or (v1022.Text:match('Beauty Duty') or (v1022.Text:match('Witness Grandeur') or (v1022.Text:match('Beeternity') or (v1022.Text:match('A Breath Of Blue') or (v1022.Text:match('Glory Of Goo') or (v1022.Text:match('Tickle The Wind') or (v1022.Text:match('Rhubarb That Could Have Been') or (v1022.Text:match('Dreams Of Being A Bee') or (v1022.Text:match('The Sky Over The Stump') or (v1022.Text:match('Space Oblivion') or (v1022.Text:match('Pollenpalooza') or (v1022.Text:match('Dancing With Stick Bug') or (v1022.Text:match('Bear Without Despair') or (v1022.Text:match('Spirit Spree') or (v1022.Text:match('Echoing Call') or v1022.Text:match('Spring Out Of The Mountain')))))))))))))))))))))))))))))) then
                                            v1018 = v1022.Parent

                                            break
                                        end
                                    elseif v1022.Name == 'TitleBar' and (v1022.Text:match('Sunflower Start') or (v1022.Text:match('Dandelion Deed') or (v1022.Text:match('Pollen Fetcher') or (v1022.Text:match('Red Request') or (v1022.Text:match('Into The Blue') or (v1022.Text:match('Variety Fetcher') or (v1022.Text:match('Bamboo Boogie') or (v1022.Text:match('Red Request 2') or (v1022.Text:match('Cobweb Sweeper') or (v1022.Text:match('Leisure Loot') or (v1022.Text:match('White Pollen Wrangler') or (v1022.Text:match('Pineapple Picking') or (v1022.Text:match('Pollen Fetcher 2') or (v1022.Text:match('Weed Wacker') or (v1022.Text:match('Gold') or (v1022.Text:match('Colorless Collection') or (v1022.Text:match('Springtime') or (v1022.Text:match('Weed Wacker 2') or (v1022.Text:match('Pollen Fetcher 3') or (v1022.Text:match('Lucky Landscaping') or (v1022.Text:match('Azure Adventure') or (v1022.Text:match('Pink Pineapples') or (v1022.Text:match('Blue Mushrooms') or (v1022.Text:match('Cobweb Sweeper 2') or (v1022.Text:match('Rojo') or (v1022.Text:match('Pumpkin Plower') or (v1022.Text:match('Pollen Fetcher 4') or (v1022.Text:match('Bouncing Around Biomes') or (v1022.Text:match('Blue Pineapples') or (v1022.Text:match('Rose Request') or (v1022.Text:match('Search For The White Clover') or (v1022.Text:match('Stomping Grounds') or (v1022.Text:match('Collecting Cliffside') or (v1022.Text:match('Mountain Meandering') or (v1022.Text:match('Quest Of Legends') or (v1022.Text:match('High Altitude') or (v1022.Text:match('Blissfully Blue') or (v1022.Text:match('Rouge') or (v1022.Text:match('White As Snow') or (v1022.Text:match('Solo On The Stump') or (v1022.Text:match('Colorful Craving') or (v1022.Text:match('Pumpkins, Please!') or (v1022.Text:match('Smorgasbord') or (v1022.Text:match('Pollen Fetcher 5') or (v1022.Text:match('White Clover Redux') or (v1022.Text:match('Strawberry Field Forever') or (v1022.Text:match('Tasting The Sky') or (v1022.Text:match('Whispy') or (v1022.Text:match('Walk Through The Woods') or (v1022.Text:match('Red') or (v1022.Text:match('One Stop On The Tip Top') or (v1022.Text:match('Blue Mushrooms 2') or (v1022.Text:match('Pretty Pumpkins') or (v1022.Text:match('Black Bear, Why?') or (v1022.Text:match('Bee A Star') or (v1022.Text:match('Bamboo Boogie 2: Bamboo Boogaloo') or (v1022.Text:match('Rocky Red Mountain') or (v1022.Text:match("Can't Without Ants") or (v1022.Text:match('The 15 Bee Zone') or (v1022.Text:match('Bubble Trouble') or (v1022.Text:match('Sweet And Sour') or (v1022.Text:match('Rare Red Clover') or (v1022.Text:match('Low Tier Treck') or (v1022.Text:match('Okey') or (v1022.Text:match('Pollen Fetcher 6') or (v1022.Text:match('Capsaicin Collector') or (v1022.Text:match('Mountain Mix') or (v1022.Text:match('You Blue It') or (v1022.Text:match('Variety Fetcher 2') or (v1022.Text:match('Getting Stumped') or (v1022.Text:match('Weed Wacker 3') or (v1022.Text:match('All') or (v1022.Text:match('Red Delicacy') or (v1022.Text:match('Boss Battles') or v1022.Text:match('Myth In The Making'))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                                        v1018 = v1022.Parent

                                        break
                                    end
                                end
                            else
                                u6:Notify({
                                    Title = 'Open Menu Quest First',
                                    Content = '',
                                    Duration = 3,
                                })
                                task.wait(1)
                            end

                            local v1023 = {}

                            if v1018 then
                                local v1024, v1025, v1026 = pairs(v1018:GetDescendants())

                                while true do
                                    local v1027

                                    v1026, v1027 = v1024(v1025, v1026)

                                    if v1026 == nil then
                                        break
                                    end
                                    if v1027.Name == 'TaskBar' then
                                        local v1028, v1029, v1030 = pairs(v1027:GetDescendants())
                                        local v1031 = false
                                        local v1032 = nil

                                        while true do
                                            local v1033

                                            v1030, v1033 = v1028(v1029, v1030)

                                            if v1030 == nil then
                                                break
                                            end

                                            v1031 = v1033.Name == 'BarColorChange' and true or v1031

                                            if v1033.Name == 'Description' then
                                                v1032 = v1033.Text
                                            end
                                        end

                                        if not v1031 and v1032 then
                                            table.insert(v1023, v1032)
                                        end
                                    end
                                end
                            end

                            local function v1044(p1034)
                                while true do
                                    wait(0.2)

                                    local v1035 = not u1016(_Character21.PrimaryPart.Position, p1034, u1007) and _Character21:FindFirstChildOfClass('Humanoid')

                                    if v1035 then
                                        if u75 ~= 'Walk' then
                                            local v1036 = game:GetService('TweenService'):Create(_Character21.HumanoidRootPart, TweenInfo.new((p1034.Position - _Character21.HumanoidRootPart.Position).magnitude / u77, Enum.EasingStyle.Linear), {
                                                CFrame = p1034.CFrame,
                                            })
                                            local _BodyVelocity10 = Instance.new('BodyVelocity', _Character21.HumanoidRootPart)
                                            local v1038 = Vector3.new(0, 0, 0)

                                            _BodyVelocity10.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                            _BodyVelocity10.velocity = v1038
                                            _BodyVelocity10.Name = 'Main'

                                            v1036:Play()
                                            v1036.Completed:Wait()
                                            _BodyVelocity10:Destroy()
                                        else
                                            v1035:MoveTo(p1034.Position)
                                        end

                                        local _Humanoid9 = _Character21:FindFirstChildOfClass('Humanoid')
                                        local _HumanoidRootPart8 = _Character21:FindFirstChild('HumanoidRootPart')

                                        if _Humanoid9 and _HumanoidRootPart8 then
                                            local _Position21 = _HumanoidRootPart8.Position
                                            local v1042 = _HumanoidRootPart8.CFrame.LookVector * u70
                                            local v1043 = Ray.new(_Position21, v1042)

                                            if workspace:FindPartOnRay(v1043, _Character21) and _Humanoid9:GetState() ~= Enum.HumanoidStateType.Jumping then
                                                _Humanoid9:ChangeState(Enum.HumanoidStateType.Jumping)
                                            end
                                        end
                                    end
                                    if u1016(_Character21.PrimaryPart.Position, p1034, u1007) or (not _G.quest2 or (not u95 or (u90 or (u61 or (u62 or (u93 or (u92 or u97))))))) then
                                        wait(4)

                                        for _ = 1, 5 do
                                            repeat
                                                wait(0.2)
                                                collectItem()
                                            until not IsItemEx() or (u93 or (not _G.quest2 or (not u95 or (u90 or (u61 or (u62 or (u92 or u97)))))))

                                            wait(0.2)
                                        end

                                        return
                                    end
                                end
                            end

                            if u95 and not (u90 or (u61 or (u93 or (u92 or u97)))) then
                                local v1045, v1046, v1047 = ipairs(v1023)

                                while true do
                                    local v1048

                                    v1047, v1048 = v1045(v1046, v1047)

                                    if v1047 == nil then
                                        break
                                    end
                                    if v1048:match('Mantises') then
                                        local v1049, v1050, v1051 = pairs(workspace.MonsterSpawners:GetDescendants())

                                        while true do
                                            local v1052

                                            v1051, v1052 = v1049(v1050, v1051)

                                            if v1051 == nil then
                                                break
                                            end
                                            if v1052.Name:match('ForestMantis') or v1052.Name:match('PineappleMantis1') then
                                                local v1053, v1054, v1055 = pairs(v1052:GetDescendants())

                                                while true do
                                                    local v1056

                                                    v1055, v1056 = v1053(v1054, v1055)

                                                    if v1055 == nil then
                                                        break
                                                    end
                                                    if v1056.Name ~= 'TimerLabel' or v1056.Text ~= '1:00' and tonumber(v1056.Text:gsub('%D', '')) >= 20 then
                                                        u98 = true
                                                        u96 = true
                                                    elseif _G.quest2 then
                                                        u98 = false
                                                        u96 = false

                                                        v1044(v1052)

                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    elseif v1048:match('Rhino Beetles') then
                                        local v1057, v1058, v1059 = pairs(workspace.MonsterSpawners:GetDescendants())

                                        while true do
                                            local v1060

                                            v1059, v1060 = v1057(v1058, v1059)

                                            if v1059 == nil then
                                                break
                                            end
                                            if v1060.Name:match('Rhino') or v1060.Name:match('PineappleBeetle') then
                                                local v1061, v1062, v1063 = pairs(v1060:GetDescendants())

                                                while true do
                                                    local v1064

                                                    v1063, v1064 = v1061(v1062, v1063)

                                                    if v1063 == nil then
                                                        break
                                                    end
                                                    if v1064.Name ~= 'TimerLabel' or v1064.Text ~= '1:00' and tonumber(v1064.Text:gsub('%D', '')) >= 20 then
                                                        u98 = true
                                                        u96 = true
                                                    elseif _G.quest2 then
                                                        u98 = false
                                                        u96 = false

                                                        v1044(v1060)

                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    elseif v1048:match('Ladybugs') then
                                        local v1065, v1066, v1067 = pairs(workspace.MonsterSpawners:GetDescendants())

                                        while true do
                                            local v1068

                                            v1067, v1068 = v1065(v1066, v1067)

                                            if v1067 == nil then
                                                break
                                            end
                                            if v1068.Name:match('Ladybug') or v1068.Name:match('MushroomBush') then
                                                local v1069, v1070, v1071 = pairs(v1068:GetDescendants())

                                                while true do
                                                    local v1072

                                                    v1071, v1072 = v1069(v1070, v1071)

                                                    if v1071 == nil then
                                                        break
                                                    end
                                                    if v1072.Name ~= 'TimerLabel' or v1072.Text ~= '1:00' and tonumber(v1072.Text:gsub('%D', '')) >= 20 then
                                                        u98 = true
                                                        u96 = true
                                                    elseif _G.quest2 then
                                                        u98 = false
                                                        u96 = false

                                                        v1044(v1068)

                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    elseif v1048:match('Scorpions') then
                                        local v1073, v1074, v1075 = pairs(workspace.MonsterSpawners:GetDescendants())

                                        while true do
                                            local v1076

                                            v1075, v1076 = v1073(v1074, v1075)

                                            if v1075 == nil then
                                                break
                                            end
                                            if v1076.Name:match('RoseBush') or v1076.Name:match('RoseBush2') then
                                                local v1077, v1078, v1079 = pairs(v1076:GetDescendants())

                                                while true do
                                                    local v1080

                                                    v1079, v1080 = v1077(v1078, v1079)

                                                    if v1079 == nil then
                                                        break
                                                    end
                                                    if v1080.Name ~= 'TimerLabel' or v1080.Text ~= '1:00' and tonumber(v1080.Text:gsub('%D', '')) >= 20 then
                                                        u98 = true
                                                        u96 = true
                                                    elseif _G.quest2 then
                                                        u98 = false
                                                        u96 = false

                                                        v1044(v1076)

                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    elseif v1048:match('Werewolv') or v1048:match('Werewolves') then
                                        local v1081, v1082, v1083 = pairs(workspace.MonsterSpawners:GetDescendants())

                                        while true do
                                            local v1084

                                            v1083, v1084 = v1081(v1082, v1083)

                                            if v1083 == nil then
                                                break
                                            end
                                            if v1084.Name:match('WerewolfCave') then
                                                local v1085, v1086, v1087 = pairs(v1084:GetDescendants())

                                                while true do
                                                    local v1088

                                                    v1087, v1088 = v1085(v1086, v1087)

                                                    if v1087 == nil then
                                                        break
                                                    end
                                                    if v1088.Name ~= 'TimerLabel' or v1088.Text ~= '1:00' and tonumber(v1088.Text:gsub('%D', '')) >= 20 then
                                                        u98 = true
                                                        u96 = true
                                                    elseif _G.quest2 then
                                                        u98 = false
                                                        u96 = false

                                                        v1044(v1084)

                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    elseif v1048:match('Spiders') or v1048:match('Spider') then
                                        local v1089, v1090, v1091 = pairs(workspace.MonsterSpawners:GetDescendants())

                                        while true do
                                            local v1092

                                            v1091, v1092 = v1089(v1090, v1091)

                                            if v1091 == nil then
                                                break
                                            end
                                            if v1092.Name:match('Spider Cave') then
                                                local v1093, v1094, v1095 = pairs(v1092:GetDescendants())

                                                while true do
                                                    local v1096

                                                    v1095, v1096 = v1093(v1094, v1095)

                                                    if v1095 == nil then
                                                        break
                                                    end
                                                    if v1096.Name ~= 'TimerLabel' or v1096.Text ~= '1:00' and tonumber(v1096.Text:gsub('%D', '')) >= 20 then
                                                        u98 = true
                                                        u96 = true
                                                    elseif _G.quest2 then
                                                        u98 = false
                                                        u96 = false

                                                        v1044(v1092)

                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    else
                                        u98 = true
                                        u96 = true

                                        wait(0.1)
                                    end
                                end
                            end
                        end)
                        wait(0.2)
                    end
                else
                    wait(0.2)

                    u98 = true
                    u96 = true
                end
            end)
            _Options.quest2:SetValue(false)
            u10.Main:AddToggle('quest3', {
                Title = 'Auto Quest | Others',
                Default = false,
            }):OnChanged(function()
                _G.quest3 = _Options.quest3.Value

                if _G.quest3 then
                    while _G.quest3 do
                        pcall(function()
                            local _ScreenGui5 = game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('ScreenGui')

                            if _ScreenGui5 then
                                _ScreenGui5 = _ScreenGui5:FindFirstChild('Menus')
                            end
                            if _ScreenGui5 then
                                _ScreenGui5 = _ScreenGui5:FindFirstChild('Children')
                            end
                            if _ScreenGui5 then
                                _ScreenGui5 = _ScreenGui5:FindFirstChild('Quests')
                            end
                            if _ScreenGui5 then
                                _ScreenGui5 = _ScreenGui5:FindFirstChild('Content')
                            end
                            if _ScreenGui5 then
                                _ScreenGui5 = _ScreenGui5:FindFirstChild('Frame')
                            end

                            local v1098 = nil

                            if _ScreenGui5 then
                                local v1099, v1100, v1101 = pairs(_ScreenGui5:GetDescendants())

                                while true do
                                    local v1102

                                    v1101, v1102 = v1099(v1100, v1101)

                                    if v1101 == nil then
                                        break
                                    end
                                    if v1102.Name == 'TitleBar' and v1102.Text:match(u78 .. ':') then
                                        v1098 = v1102.Parent

                                        break
                                    end
                                end
                            else
                                u6:Notify({
                                    Title = 'Open Menu Quest First',
                                    Content = '',
                                    Duration = 3,
                                })
                                task.wait(1)
                            end

                            local v1103 = {}

                            if v1098 then
                                local v1104, v1105, v1106 = pairs(v1098:GetDescendants())

                                while true do
                                    local v1107

                                    v1106, v1107 = v1104(v1105, v1106)

                                    if v1106 == nil then
                                        break
                                    end
                                    if v1107.Name == 'TaskBar' then
                                        local v1108, v1109, v1110 = pairs(v1107:GetDescendants())
                                        local v1111 = false
                                        local v1112 = nil

                                        while true do
                                            local v1113

                                            v1110, v1113 = v1108(v1109, v1110)

                                            if v1110 == nil then
                                                break
                                            end

                                            v1111 = v1113.Name == 'BarColorChange' and true or v1111

                                            if v1113.Name == 'Description' then
                                                v1112 = v1113.Text
                                            end
                                        end

                                        if not v1111 and v1112 then
                                            table.insert(v1103, v1112)
                                        end
                                    end
                                end
                            end

                            local v1114, v1115, v1116 = pairs(v1103)

                            while true do
                                local v1117

                                v1116, v1117 = v1114(v1115, v1116)

                                if v1116 == nil then
                                    break
                                end
                                if v1117:match('Red Field Booster') then
                                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                                        'Red Field Booster',
                                    }))
                                elseif v1117:match('Blue Field Booster') then
                                    game:GetService('ReplicatedStorage'):WaitForChild('Events'):WaitForChild('ToyEvent'):FireServer(unpack({
                                        'Blue Field Booster',
                                    }))
                                end
                            end
                        end)
                        wait(0.5)
                    end
                end
            end)
            _Options.quest3:SetValue(false)

            local u1118 = false
            local u1119 = false
            local u1120 = false
            local u1121 = false
            local u1122 = false

            u10.Combat:AddDropdown('PICKDAM', {
                Title = 'Select Boost Attack Token',
                Description = 'Auto collect tokens you selected while killing mob',
                Values = {
                    'Vicious Token',
                    'Focus Token',
                    'Music Token',
                    'Rage Token',
                    'Token Link',
                },
                Multi = true,
                Default = {},
            }):OnChanged(function(p1123)
                u1118 = p1123['Vicious Token'] or false
                u1119 = p1123['Focus Token'] or false
                u1120 = p1123['Music Token'] or false
                u1121 = p1123['Rage Token'] or false
                u1122 = p1123['Token Link'] or false
            end)
            u10.Combat:AddParagraph({
                Title = 'These auto mob you can use while farming',
                Content = '',
            })

            local u1124 = nil

            local function u1127(p1125)
                if u489 >= (p1125.Position - game.Players.LocalPlayer.character.HumanoidRootPart.Position).magnitude then
                    if p1125 and (p1125.Parent and p1125:IsA('Part')) then
                        if p1125.Orientation.Z == 0 then
                            if p1125:FindFirstChild('FrontDecal') and p1125:FindFirstChild('Sparkles') then
                                if p1125.Name == 'C' then
                                    local _BackDecal = p1125:FindFirstChild('BackDecal')

                                    if _BackDecal and _BackDecal:IsA('Decal') then
                                        return u1118 and _BackDecal.Texture == 'rbxassetid://2319083910' and true or (u1119 and _BackDecal.Texture == 'rbxassetid://1629649299' and true or (u1120 and _BackDecal.Texture == 'rbxassetid://253828517' and true or (u1121 and _BackDecal.Texture == 'rbxassetid://1442700745' and true or (u1122 and _BackDecal.Texture == 'rbxassetid://1629547638' and true or false))))
                                    else
                                        return false
                                    end
                                else
                                    return false
                                end
                            else
                                return false
                            end
                        else
                            return false
                        end
                    else
                        return false
                    end
                else
                    return false
                end
            end
            local function u1132()
                local v1128, v1129, v1130 = pairs(workspace.Collectibles:GetChildren())

                while true do
                    local v1131

                    v1130, v1131 = v1128(v1129, v1130)

                    if v1130 == nil then
                        break
                    end
                    if u1127(v1131) then
                        return v1131
                    end
                end
            end
            local function u1137()
                local v1133, v1134, v1135 = pairs(workspace.Collectibles:GetChildren())

                while true do
                    local v1136

                    v1135, v1136 = v1133(v1134, v1135)

                    if v1135 == nil then
                        break
                    end
                    if u1127(v1136) then
                        return true
                    end
                end

                return false
            end
            local function u1152()
                local _PlaceId = game.PlaceId
                local u1139 = {}
                local u1140 = ''

                function TPReturner()
                    local v1141

                    if u1140 ~= '' then
                        v1141 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. u1140))
                    else
                        v1141 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId .. '/servers/Public?sortOrder=Asc&limit=100'))
                    end
                    if v1141.nextPageCursor and (v1141.nextPageCursor ~= 'null' and v1141.nextPageCursor ~= nil) then
                        u1140 = v1141.nextPageCursor
                    end

                    local v1142, v1143, v1144 = ipairs(v1141.data)

                    while true do
                        local v1145

                        v1144, v1145 = v1142(v1143, v1144)

                        if v1144 == nil then
                            return
                        end

                        local u1146 = tostring(v1145.id)

                        if tonumber(v1145.maxPlayers) > tonumber(v1145.playing) then
                            local v1147, v1148, v1149 = ipairs(u1139)
                            local v1150 = true

                            while true do
                                local v1151

                                v1149, v1151 = v1147(v1148, v1149)

                                if v1149 == nil then
                                    break
                                end
                                if u1146 == tostring(v1151) then
                                    v1150 = false

                                    break
                                end
                            end

                            if v1150 then
                                table.insert(u1139, u1146)
                                wait()
                                pcall(function()
                                    game:GetService('TeleportService'):TeleportToPlaceInstance(_PlaceId, u1146, game.Players.LocalPlayer)
                                end)
                                wait(4)
                            end
                        end
                    end
                end
                function Teleport()
                    while wait() do
                        pcall(function()
                            TPReturner()
                        end)
                    end
                end

                Teleport()
            end

            u10.Combat:AddToggle('HOPWINDY', {
                Title = 'Auto Hop Server Windy',
                Default = false,
            }):OnChanged(function()
                _G.HOPWINDY = _Options.HOPWINDY.Value

                if _G.HOPWINDY then
                    local function v1157()
                        local v1153, v1154, v1155 = pairs(workspace.Monsters:GetDescendants())

                        while true do
                            local v1156

                            v1155, v1156 = v1153(v1154, v1155)

                            if v1155 == nil then
                                break
                            end
                            if v1156.Name:match('Windy') then
                                return true
                            end
                        end

                        return false
                    end
                    local function v1162()
                        local v1158, v1159, v1160 = pairs(workspace.NPCBees:GetDescendants())

                        while true do
                            local v1161

                            v1160, v1161 = v1158(v1159, v1160)

                            if v1160 == nil then
                                break
                            end
                            if v1161.Name:match('Windy') then
                                return true
                            end
                        end

                        return false
                    end

                    while _G.HOPWINDY do
                        if not (v1157() or v1162()) then
                            pcall(function()
                                task.spawn(function()
                                    u1152()
                                end)
                                wait(1)
                                game:GetService('TeleportService'):Teleport(game.PlaceId)
                            end)
                        end

                        wait(1)
                    end
                end
            end)
            _Options.HOPWINDY:SetValue(false)
            u10.Combat:AddToggle('HOPVIC', {
                Title = 'Auto Hop Server Vicious',
                Default = false,
            }):OnChanged(function()
                _G.HOPVIC = _Options.HOPVIC.Value

                if _G.HOPVIC then
                    local function v1168()
                        local _Particles = workspace.Particles
                        local v1164, v1165, v1166 = pairs(_Particles:GetDescendants())

                        while true do
                            local v1167

                            v1166, v1167 = v1164(v1165, v1166)

                            if v1166 == nil then
                                break
                            end
                            if v1167.Name:match('Vicious') then
                                return true
                            end
                        end

                        return false
                    end
                    local function v1173()
                        if workspace.Particles:FindFirstChild('WTs') then
                            local v1169, v1170, v1171 = pairs(workspace.Particles.WTs:GetDescendants())

                            while true do
                                local v1172

                                v1171, v1172 = v1169(v1170, v1171)

                                if v1171 == nil then
                                    break
                                end
                                if v1172:IsA('MeshPart') then
                                    return true
                                end
                            end
                        end

                        return false
                    end

                    while _G.HOPVIC do
                        if not (v1168() or v1173()) then
                            pcall(function()
                                task.spawn(function()
                                    u1152()
                                end)
                                wait(1)
                                game:GetService('TeleportService'):Teleport(game.PlaceId)
                            end)
                        end

                        wait(1)
                    end
                end
            end)
            _Options.HOPVIC:SetValue(false)
            u10.Combat:AddToggle('VIC', {
                Title = 'Auto Vicious Bee',
                Default = false,
            }):OnChanged(function()
                _G.VIC = _Options.VIC.Value

                if _G.VIC then
                    spawn(function()
                        local function u1179()
                            local _Particles2 = workspace.Particles
                            local v1175, v1176, v1177 = pairs(_Particles2:GetDescendants())

                            while true do
                                local v1178

                                v1177, v1178 = v1175(v1176, v1177)

                                if v1177 == nil then
                                    break
                                end
                                if v1178.Name:match('Vicious') then
                                    return true
                                end
                            end

                            return false
                        end
                        local function u1185()
                            local _Particles3 = workspace.Particles
                            local v1181, v1182, v1183 = pairs(_Particles3:GetDescendants())

                            while true do
                                local v1184

                                v1183, v1184 = v1181(v1182, v1183)

                                if v1183 == nil then
                                    break
                                end
                                if v1184.Name:match('Vicious') then
                                    return v1184
                                end
                            end
                        end
                        local function u1190()
                            if workspace.Particles:FindFirstChild('WTs') then
                                local v1186, v1187, v1188 = pairs(workspace.Particles.WTs:GetDescendants())

                                while true do
                                    local v1189

                                    v1188, v1189 = v1186(v1187, v1188)

                                    if v1188 == nil then
                                        break
                                    end
                                    if v1189:IsA('MeshPart') then
                                        return true
                                    end
                                end
                            end

                            return false
                        end
                        local function v1195()
                            while _G.VIC do
                                pcall(function()
                                    if (u1190() or u1179()) and not (u61 or (u62 or (u93 or u97))) then
                                        u90 = true

                                        if u1137() then
                                            local _HumanoidRootPart9 = _LocalPlayer3.Character:FindFirstChild('HumanoidRootPart')

                                            if _HumanoidRootPart9 then
                                                u1124 = _HumanoidRootPart9:FindFirstChild('Main')

                                                if not u1124 then
                                                    local _BodyVelocity11 = Instance.new('BodyVelocity', _HumanoidRootPart9)

                                                    _BodyVelocity11.Name = 'Main'
                                                    _BodyVelocity11.Velocity = Vector3.new(0, 0, 0)
                                                    _BodyVelocity11.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                                    u1124 = _BodyVelocity11
                                                end

                                                u134(u1132().CFrame, 0, 0)
                                            end
                                        else
                                            local _HumanoidRootPart10 = _LocalPlayer3.Character:FindFirstChild('HumanoidRootPart')

                                            if _HumanoidRootPart10 then
                                                u1124 = _HumanoidRootPart10:FindFirstChild('Main')

                                                if not u1124 then
                                                    local _BodyVelocity12 = Instance.new('BodyVelocity', _HumanoidRootPart10)

                                                    _BodyVelocity12.Name = 'Main'
                                                    _BodyVelocity12.Velocity = Vector3.new(0, 0, 0)
                                                    _BodyVelocity12.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                                    u1124 = _BodyVelocity12
                                                end
                                                if u1190() then
                                                    u134(workspace.Particles.WTs.WaitingThorn.CFrame, 0, 0)
                                                elseif u1179() then
                                                    u134(u1185().CFrame, 12, 0)
                                                end
                                            end
                                        end
                                    else
                                        if u1124 then
                                            u1124:Destroy()

                                            u1124 = nil
                                        end

                                        u90 = false
                                    end
                                end)
                                wait(0)
                            end

                            if u1124 then
                                u1124:Destroy()

                                u1124 = nil
                            end
                        end

                        while _G.VIC do
                            v1195()
                            wait(1)
                        end
                    end)
                else
                    u90 = false
                end
            end)
            _Options.VIC:SetValue(false)
            u10.Combat:AddToggle('WINDY', {
                Title = 'Auto Windy Bee',
                Default = false,
            }):OnChanged(function()
                _G.WINDY = _Options.WINDY.Value

                if _G.WINDY then
                    getgenv().maxDistance = u489
                    getgenv().char = game.Players.LocalPlayer.Character
                    getgenv().humanoid = char.Humanoid

                    function windyDe()
                        local v1196, v1197, v1198 = pairs(game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller:GetDescendants())

                        while true do
                            local v1199

                            v1198, v1199 = v1196(v1197, v1198)

                            if v1198 == nil then
                                break
                            end
                            if v1199:IsA('TextLabel') and v1199.Text:match('Windy Bee is fleeing') then
                                return true
                            end
                        end

                        return false
                    end
                    function isItem(p1200)
                        if (p1200.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                            if p1200 then
                                if p1200.Parent then
                                    if p1200.Orientation.Z == 0 then
                                        if p1200:FindFirstChild('FrontDecal') then
                                            if p1200:FindFirstChild('Sparkles') then
                                                return false
                                            elseif p1200.Name == 'C' then
                                                return p1200:IsA('Part') and true or false
                                            else
                                                return false
                                            end
                                        else
                                            return false
                                        end
                                    else
                                        return false
                                    end
                                else
                                    return false
                                end
                            else
                                return false
                            end
                        else
                            return false
                        end
                    end
                    function isItemPresent()
                        local v1201 = next
                        local v1202, v1203 = game:GetService('Workspace').Collectibles:GetChildren()

                        while true do
                            local v1204

                            v1203, v1204 = v1201(v1202, v1203)

                            if v1203 == nil then
                                break
                            end
                            if isItem(v1204) and (v1204.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                return true
                            end
                        end

                        return false
                    end
                    function farmItem(p1205)
                        humanoid:MoveTo(p1205.Position)

                        repeat
                            task.wait()
                        until not isItem(p1205) or ((p1205.Position - char.HumanoidRootPart.Position).magnitude <= 4 or not _G.WINDY)
                    end
                    function collectItems()
                        local v1206 = next
                        local v1207, v1208 = game:GetService('Workspace').Collectibles:GetChildren()

                        while true do
                            local v1209

                            v1208, v1209 = v1206(v1207, v1208)

                            if v1208 == nil then
                                break
                            end
                            if isItem(v1209) and (v1209.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                farmItem(v1209)
                            end
                        end
                    end

                    local function u1214()
                        local v1210, v1211, v1212 = pairs(workspace.Monsters:GetDescendants())

                        while true do
                            local v1213

                            v1212, v1213 = v1210(v1211, v1212)

                            if v1212 == nil then
                                break
                            end
                            if v1213.Name:match('Windy') then
                                return true
                            end
                        end

                        return false
                    end
                    local function u1219()
                        local v1215, v1216, v1217 = pairs(workspace.NPCBees:GetDescendants())

                        while true do
                            local v1218

                            v1217, v1218 = v1215(v1216, v1217)

                            if v1217 == nil then
                                break
                            end
                            if v1218.Name:match('Windy') then
                                return true
                            end
                        end

                        return false
                    end
                    local function u1224()
                        local v1220, v1221, v1222 = pairs(workspace.Monsters:GetDescendants())

                        while true do
                            local v1223

                            v1222, v1223 = v1220(v1221, v1222)

                            if v1222 == nil then
                                break
                            end
                            if v1223.Name == 'Level' and v1223.Parent.Name:match('Windy') then
                                return v1223.Value
                            end
                        end
                    end
                    local function v1233()
                        local u1225 = nil

                        while _G.WINDY do
                            pcall(function()
                                if u1219() and not (u97 or windyDe()) then
                                    u93 = true

                                    local v1226 = u1224()

                                    wait(0.5)

                                    local _HumanoidRootPart11 = _LocalPlayer3.Character:FindFirstChild('HumanoidRootPart')

                                    if _HumanoidRootPart11 then
                                        u1225 = _HumanoidRootPart11:FindFirstChild('Main')

                                        if not u1225 then
                                            local _BodyVelocity13 = Instance.new('BodyVelocity', _HumanoidRootPart11)

                                            _BodyVelocity13.Name = 'Main'
                                            _BodyVelocity13.Velocity = Vector3.new(0, 0, 0)
                                            _BodyVelocity13.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                            u1225 = _BodyVelocity13
                                        end
                                        if u1219() and not (u1214() or windyDe()) then
                                            u134(workspace.NPCBees.Windy.CFrame, 0, 0)
                                        end
                                    end

                                    while true do
                                        if true then
                                            wait(0.2)

                                            if u1137() then
                                                local _HumanoidRootPart12 = _LocalPlayer3.Character:FindFirstChild('HumanoidRootPart')

                                                if _HumanoidRootPart12 then
                                                    u1225 = _HumanoidRootPart12:FindFirstChild('Main')

                                                    if not u1225 then
                                                        local _BodyVelocity14 = Instance.new('BodyVelocity', _HumanoidRootPart12)

                                                        _BodyVelocity14.Name = 'Main'
                                                        _BodyVelocity14.Velocity = Vector3.new(0, 0, 0)
                                                        _BodyVelocity14.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                                        u1225 = _BodyVelocity14
                                                    end

                                                    u134(u1132().CFrame, 0, 0)
                                                end
                                            else
                                                local _HumanoidRootPart13 = _LocalPlayer3.Character:FindFirstChild('HumanoidRootPart')

                                                if _HumanoidRootPart13 then
                                                    u1225 = _HumanoidRootPart13:FindFirstChild('Main')

                                                    if not u1225 then
                                                        local _BodyVelocity15 = Instance.new('BodyVelocity', _HumanoidRootPart13)

                                                        _BodyVelocity15.Name = 'Main'
                                                        _BodyVelocity15.Velocity = Vector3.new(0, 0, 0)
                                                        _BodyVelocity15.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                                        u1225 = _BodyVelocity15
                                                    end
                                                    if u1214() and (u1219() and not windyDe()) then
                                                        u134(workspace.NPCBees.Windy.CFrame, 23, 7)
                                                    end
                                                end
                                            end
                                        end
                                        if v1226 < u1224() or (not _G.WINDY or (not u1214() or (u97 or windyDe()))) then
                                            wait(1)

                                            if u1225 then
                                                u1225:Destroy()

                                                u1225 = nil
                                            end

                                            wait(2.5)

                                            for _ = 1, 5 do
                                                repeat
                                                    task.wait()
                                                    collectItems()
                                                until not (isItemPresent() and _G.WINDY)

                                                wait(0.2)
                                            end
                                        end
                                    end
                                else
                                    if u1225 then
                                        u1225:Destroy()

                                        u1225 = nil
                                    end

                                    u93 = false

                                    return
                                end
                            end)
                            wait(0)
                        end
                    end

                    while _G.WINDY do
                        v1233()
                        wait(1)
                    end
                else
                    if u1124 then
                        u1124:Destroy()

                        u1124 = nil
                    end

                    u93 = false
                end
            end)
            _Options.WINDY:SetValue(false)

            local u1234 = {}

            u10.Combat:AddDropdown('MUTIMOB', {
                Title = 'Select Mob',
                Description = 'select multi mob for auto farm mob',
                Values = {
                    'Rhino Beetles',
                    'Ladybugs',
                    'Scorpions',
                    'Mantises',
                    'Spiders',
                    'Werewolves',
                },
                Multi = true,
                Default = {},
            }):OnChanged(function(p1235)
                u1234 = {}

                local v1236 = next
                local v1237 = nil

                while true do
                    local v1238

                    v1237, v1238 = v1236(p1235, v1237)

                    if v1237 == nil then
                        break
                    end

                    table.insert(u1234, v1237)
                end
            end)
            u10.Combat:AddToggle('AUTOMOB', {
                Title = 'Auto Farm Mob Selected',
                Default = false,
            }):OnChanged(function()
                _G.AUTOMOB = _Options.AUTOMOB.Value

                if _G.AUTOMOB then
                    getgenv().maxDistance = u489
                    getgenv().char = game.Players.LocalPlayer.Character
                    getgenv().humanoid = char.Humanoid

                    local _Character22 = game.Players.LocalPlayer.Character
                    local _ = _Character22.PrimaryPart.Position
                    local u1240 = 0

                    local function u1249(p1241, p1242, p1243)
                        local _Position22 = p1242.Position
                        local _Size10 = p1242.Size

                        if not (_Position22 and _Size10) then
                            return false
                        end

                        local v1246 = Vector3.new(_Size10.X + p1243, _Size10.Y, _Size10.Z + p1243)
                        local v1247 = _Position22 - v1246 / 2
                        local v1248 = _Position22 + v1246 / 2

                        return p1241.X >= v1247.X and (p1241.X <= v1248.X and (p1241.Z >= v1247.Z and p1241.Z <= v1248.Z))
                    end

                    function IsItem(p1250)
                        if (p1250.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                            if p1250 then
                                if p1250.Parent then
                                    if p1250.Orientation.Z == 0 then
                                        if p1250:FindFirstChild('FrontDecal') then
                                            if p1250:FindFirstChild('Sparkles') then
                                                return false
                                            elseif p1250.Name == 'C' then
                                                return p1250:IsA('Part') and true or false
                                            else
                                                return false
                                            end
                                        else
                                            return false
                                        end
                                    else
                                        return false
                                    end
                                else
                                    return false
                                end
                            else
                                return false
                            end
                        else
                            return false
                        end
                    end
                    function IsItemEx()
                        local _Collectibles3 = game:GetService('Workspace'):FindFirstChild('Collectibles')

                        if not _Collectibles3 then
                            return false
                        end

                        local v1252 = next
                        local v1253, v1254 = _Collectibles3:GetChildren()

                        while true do
                            local v1255

                            v1254, v1255 = v1252(v1253, v1254)

                            if v1254 == nil then
                                break
                            end
                            if IsItem(v1255) and (v1255.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                return true
                            end
                        end

                        return false
                    end
                    function farmItem(p1256)
                        if humanoid and (char:FindFirstChild('HumanoidRootPart') and p1256) then
                            humanoid:MoveTo(p1256.Position)

                            repeat
                                task.wait()
                            until not IsItem(p1256) or ((p1256.Position - char.HumanoidRootPart.Position).magnitude <= 4 or (not _G.AUTOMOB or (u61 or (u62 or (u93 or u90)))))
                        end
                    end
                    function collectItem()
                        local _Collectibles4 = game:GetService('Workspace'):FindFirstChild('Collectibles')

                        if _Collectibles4 then
                            local v1258 = next
                            local v1259, v1260 = _Collectibles4:GetChildren()

                            while true do
                                local v1261

                                v1260, v1261 = v1258(v1259, v1260)

                                if v1260 == nil then
                                    break
                                end
                                if IsItem(v1261) and (v1261.Position - char.HumanoidRootPart.Position).magnitude <= maxDistance then
                                    farmItem(v1261)
                                end
                            end
                        end
                    end

                    local function u1271(p1262)
                        while true do
                            wait(0.2)

                            local v1263 = not (u1249(_Character22.PrimaryPart.Position, p1262, u1240) or u97) and _Character22:FindFirstChildOfClass('Humanoid')

                            if v1263 then
                                if u75 ~= 'Walk' then
                                    local v1264 = game:GetService('TweenService'):Create(_Character22.HumanoidRootPart, TweenInfo.new((p1262.Position - _Character22.HumanoidRootPart.Position).magnitude / u77, Enum.EasingStyle.Linear), {
                                        CFrame = p1262.CFrame,
                                    })
                                    local _BodyVelocity16 = Instance.new('BodyVelocity', _Character22.HumanoidRootPart)
                                    local v1266 = Vector3.new(0, 0, 0)

                                    _BodyVelocity16.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                    _BodyVelocity16.velocity = v1266
                                    _BodyVelocity16.Name = 'Main'

                                    v1264:Play()
                                    v1264.Completed:Wait()
                                    _BodyVelocity16:Destroy()
                                else
                                    v1263:MoveTo(p1262.Position)
                                end

                                local _HumanoidRootPart14 = _Character22:FindFirstChild('HumanoidRootPart')

                                if v1263 and _HumanoidRootPart14 then
                                    local _Position23 = _HumanoidRootPart14.Position
                                    local v1269 = _HumanoidRootPart14.CFrame.LookVector * u70
                                    local v1270 = Ray.new(_Position23, v1269)

                                    if workspace:FindPartOnRay(v1270, _Character22) and v1263:GetState() ~= Enum.HumanoidStateType.Jumping then
                                        v1263:ChangeState(Enum.HumanoidStateType.Jumping)
                                    end
                                end
                            end
                            if u1249(_Character22.PrimaryPart.Position, p1262, u1240) or (not _G.AUTOMOB or (u61 or (u62 or (u93 or (u90 or u97))))) then
                                wait(5)

                                for _ = 1, 5 do
                                    repeat
                                        task.wait()
                                        collectItem()
                                    until not IsItemEx() or (not _G.AUTOMOB or (u61 or (u62 or (u93 or u90))))

                                    wait(0.2)
                                end

                                return
                            end
                        end
                    end

                    while _G.AUTOMOB do
                        pcall(function()
                            if u61 or (u62 or (u93 or (u90 or u97))) then
                                u92 = false
                            else
                                local v1272, v1273, v1274 = ipairs(u1234)

                                while true do
                                    local v1275

                                    v1274, v1275 = v1272(v1273, v1274)

                                    if v1274 == nil then
                                        break
                                    end
                                    if v1275:match('Mantises') then
                                        local v1276, v1277, v1278 = pairs(workspace.MonsterSpawners:GetDescendants())

                                        while true do
                                            local v1279

                                            v1278, v1279 = v1276(v1277, v1278)

                                            if v1278 == nil then
                                                break
                                            end
                                            if v1279.Name:match('ForestMantis') or v1279.Name:match('PineappleMantis1') then
                                                local v1280, v1281, v1282 = pairs(v1279:GetDescendants())

                                                while true do
                                                    local v1283

                                                    v1282, v1283 = v1280(v1281, v1282)

                                                    if v1282 == nil then
                                                        break
                                                    end
                                                    if v1283.Name ~= 'TimerLabel' or v1283.Text ~= '1:00' and tonumber(v1283.Text:gsub('%D', '')) >= 20 then
                                                        u92 = false
                                                    elseif _G.AUTOMOB then
                                                        u92 = true

                                                        u1271(v1279)

                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    elseif v1275:match('Rhino Beetles') then
                                        local v1284, v1285, v1286 = pairs(workspace.MonsterSpawners:GetDescendants())

                                        while true do
                                            local v1287

                                            v1286, v1287 = v1284(v1285, v1286)

                                            if v1286 == nil then
                                                break
                                            end
                                            if v1287.Name:match('Rhino') or v1287.Name:match('PineappleBeetle') then
                                                local v1288, v1289, v1290 = pairs(v1287:GetDescendants())

                                                while true do
                                                    local v1291

                                                    v1290, v1291 = v1288(v1289, v1290)

                                                    if v1290 == nil then
                                                        break
                                                    end
                                                    if v1291.Name ~= 'TimerLabel' or v1291.Text ~= '1:00' and tonumber(v1291.Text:gsub('%D', '')) >= 20 then
                                                        u92 = false
                                                    elseif _G.AUTOMOB then
                                                        u92 = true

                                                        u1271(v1287)

                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    elseif v1275:match('Ladybugs') then
                                        local v1292, v1293, v1294 = pairs(workspace.MonsterSpawners:GetDescendants())

                                        while true do
                                            local v1295

                                            v1294, v1295 = v1292(v1293, v1294)

                                            if v1294 == nil then
                                                break
                                            end
                                            if v1295.Name:match('Ladybug') or v1295.Name:match('MushroomBush') then
                                                local v1296, v1297, v1298 = pairs(v1295:GetDescendants())

                                                while true do
                                                    local v1299

                                                    v1298, v1299 = v1296(v1297, v1298)

                                                    if v1298 == nil then
                                                        break
                                                    end
                                                    if v1299.Name ~= 'TimerLabel' or v1299.Text ~= '1:00' and tonumber(v1299.Text:gsub('%D', '')) >= 20 then
                                                        u92 = false
                                                    elseif _G.AUTOMOB then
                                                        u92 = true

                                                        u1271(v1295)

                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    elseif v1275:match('Scorpions') then
                                        local v1300, v1301, v1302 = pairs(workspace.MonsterSpawners:GetDescendants())

                                        while true do
                                            local v1303

                                            v1302, v1303 = v1300(v1301, v1302)

                                            if v1302 == nil then
                                                break
                                            end
                                            if v1303.Name:match('RoseBush') or v1303.Name:match('RoseBush2') then
                                                local v1304, v1305, v1306 = pairs(v1303:GetDescendants())

                                                while true do
                                                    local v1307

                                                    v1306, v1307 = v1304(v1305, v1306)

                                                    if v1306 == nil then
                                                        break
                                                    end
                                                    if v1307.Name ~= 'TimerLabel' or v1307.Text ~= '1:00' and tonumber(v1307.Text:gsub('%D', '')) >= 20 then
                                                        u92 = false
                                                    elseif _G.AUTOMOB then
                                                        u92 = true

                                                        u1271(v1303)

                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    elseif v1275:match('Werewolv') or v1275:match('Werewolves') then
                                        local v1308, v1309, v1310 = pairs(workspace.MonsterSpawners:GetDescendants())

                                        while true do
                                            local v1311

                                            v1310, v1311 = v1308(v1309, v1310)

                                            if v1310 == nil then
                                                break
                                            end
                                            if v1311.Name:match('WerewolfCave') then
                                                local v1312, v1313, v1314 = pairs(v1311:GetDescendants())

                                                while true do
                                                    local v1315

                                                    v1314, v1315 = v1312(v1313, v1314)

                                                    if v1314 == nil then
                                                        break
                                                    end
                                                    if v1315.Name ~= 'TimerLabel' or v1315.Text ~= '1:00' and tonumber(v1315.Text:gsub('%D', '')) >= 20 then
                                                        u92 = false
                                                    elseif _G.AUTOMOB then
                                                        u92 = true

                                                        u1271(v1311)

                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    elseif v1275:match('Spiders') or v1275:match('Spider') then
                                        local v1316, v1317, v1318 = pairs(workspace.MonsterSpawners:GetDescendants())

                                        while true do
                                            local v1319

                                            v1318, v1319 = v1316(v1317, v1318)

                                            if v1318 == nil then
                                                break
                                            end
                                            if v1319.Name:match('Spider Cave') then
                                                local v1320, v1321, v1322 = pairs(v1319:GetDescendants())

                                                while true do
                                                    local v1323

                                                    v1322, v1323 = v1320(v1321, v1322)

                                                    if v1322 == nil then
                                                        break
                                                    end
                                                    if v1323.Name ~= 'TimerLabel' or v1323.Text ~= '1:00' and tonumber(v1323.Text:gsub('%D', '')) >= 20 then
                                                        u92 = false
                                                    elseif _G.AUTOMOB then
                                                        u92 = true

                                                        u1271(v1319)

                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    else
                                        u92 = false
                                    end
                                end
                            end
                        end)
                        wait(0.2)
                    end
                else
                    u92 = false
                end
            end)
            _Options.AUTOMOB:SetValue(false)
            u10.Combat:AddParagraph({
                Title = "These auto mob you can't use while farming",
                Content = '',
            })

            local function u1338()
                (function()
                    while _G.CHICK do
                        local function v1328()
                            local v1324, v1325, v1326 = pairs(workspace.Monsters:GetDescendants())

                            while true do
                                local v1327

                                v1326, v1327 = v1324(v1325, v1326)

                                if v1326 == nil then
                                    break
                                end
                                if v1327.Name == 'Head' and v1327.Parent.Name:match('Commando') then
                                    return v1327
                                end
                            end
                        end
                        local function v1333()
                            local v1329, v1330, v1331 = pairs(workspace.Monsters:GetDescendants())

                            while true do
                                local v1332

                                v1331, v1332 = v1329(v1330, v1331)

                                if v1331 == nil then
                                    break
                                end
                                if v1332.Name == 'Emote' and v1332.Value == 'Hide' then
                                    return true
                                end
                            end

                            return false
                        end

                        if v1328() then
                            if u1137() then
                                local _HumanoidRootPart15 = _LocalPlayer3.Character:FindFirstChild('HumanoidRootPart')

                                if _HumanoidRootPart15 then
                                    u1124 = _HumanoidRootPart15:FindFirstChild('Main')

                                    if not u1124 then
                                        local _BodyVelocity17 = Instance.new('BodyVelocity', _HumanoidRootPart15)

                                        _BodyVelocity17.Name = 'Main'
                                        _BodyVelocity17.Velocity = Vector3.new(0, 0, 0)
                                        _BodyVelocity17.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                        u1124 = _BodyVelocity17
                                    end

                                    u134(u1132().CFrame, 0, 0)
                                end
                            elseif v1333() then
                                u134(CFrame.new(473.091156, 52.8888893, 164.989532, 0.031941317, -5.41475202e-8, -0.999489725, -1.41609826e-8, 1, -5.46277157e-8, 0.999489725, 1.58986388e-8, 0.031941317), 0)
                            else
                                local _HumanoidRootPart16 = _LocalPlayer3.Character:FindFirstChild('HumanoidRootPart')

                                if _HumanoidRootPart16 then
                                    u1124 = _HumanoidRootPart16:FindFirstChild('Main')

                                    if not u1124 then
                                        local _BodyVelocity18 = Instance.new('BodyVelocity', _HumanoidRootPart16)

                                        _BodyVelocity18.Name = 'Main'
                                        _BodyVelocity18.Velocity = Vector3.new(0, 0, 0)
                                        _BodyVelocity18.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                        u1124 = _BodyVelocity18
                                    end

                                    u134(v1328().CFrame, 9, 0)
                                end
                            end
                        else
                            u134(CFrame.new(524.589294, 47.0088997, 160.472443, 0.704495847, -1.6346786999999998e-8, -0.709708095, 3.74559086e-8, 1, 1.41477106e-8, 0.709708095, -3.6549764099999997e-8, 0.704495847), 0)
                        end

                        wait(0)
                    end
                end)()
            end

            u10.Combat:AddToggle('CHICK', {
                Title = 'Auto Commando Chick',
                Default = false,
            }):OnChanged(function()
                _G.CHICK = _Options.CHICK.Value

                if _G.CHICK then
                    u1338()
                elseif u1124 then
                    u1124:Destroy()

                    u1124 = nil
                end
            end)
            _Options.CHICK:SetValue(false)

            local function u1365()
                local function v1343()
                    local v1339, v1340, v1341 = ipairs(workspace:GetChildren())

                    while true do
                        local v1342

                        v1341, v1342 = v1339(v1340, v1341)

                        if v1341 == nil then
                            break
                        end
                        if v1342:IsA('Part') and v1342.Name == 'Beecon Hub On Top' then
                            return true
                        end
                    end

                    return false
                end
                local function v1352(p1344, p1345, p1346)
                    local _Position24 = p1345.Position
                    local _Size11 = p1345.Size

                    if not (_Position24 and _Size11) then
                        return false
                    end

                    local v1349 = Vector3.new(_Size11.X + p1346, _Size11.Y, _Size11.Z + p1346)
                    local v1350 = _Position24 - v1349 / 2
                    local v1351 = _Position24 + v1349 / 2

                    return p1344.X >= v1350.X and (p1344.X <= v1351.X and (p1344.Z >= v1350.Z and p1344.Z <= v1351.Z))
                end

                local v1353 = 1

                local function v1358()
                    local v1354, v1355, v1356 = ipairs(workspace.Monsters:GetChildren())

                    while true do
                        local v1357

                        v1356, v1357 = v1354(v1355, v1356)

                        if v1356 == nil then
                            break
                        end
                        if v1357.Name == 'Coconut Crab (Lvl 12)' then
                            return true
                        end
                    end

                    return false
                end

                while _G.CRAB do
                    local _Character23 = _LocalPlayer5.Character

                    if v1343() then
                        if v1352(_Character23.PrimaryPart.Position, workspace['Beecon Hub On Top'], v1353) then
                            local v1360 = v1358() and u1137() and _LocalPlayer5.Character:FindFirstChild('HumanoidRootPart')

                            if v1360 then
                                u1124 = v1360:FindFirstChild('Main')

                                if not u1124 then
                                    local _BodyVelocity19 = Instance.new('BodyVelocity', v1360)

                                    _BodyVelocity19.Name = 'Main'
                                    _BodyVelocity19.Velocity = Vector3.new(0, 0, 0)
                                    _BodyVelocity19.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                    u1124 = _BodyVelocity19
                                end

                                u134(u1132().CFrame, 2, 0)
                            end
                        else
                            local _HumanoidRootPart17 = _LocalPlayer5.Character:FindFirstChild('HumanoidRootPart')

                            if _HumanoidRootPart17 then
                                u1124 = _HumanoidRootPart17:FindFirstChild('Main')

                                if not u1124 then
                                    local _BodyVelocity20 = Instance.new('BodyVelocity', _HumanoidRootPart17)

                                    _BodyVelocity20.Name = 'Main'
                                    _BodyVelocity20.Velocity = Vector3.new(0, 0, 0)
                                    _BodyVelocity20.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                    u1124 = _BodyVelocity20
                                end

                                u134(workspace['Beecon Hub On Top'].CFrame, 6, 0)
                            end
                        end
                    else
                        local _Part2 = Instance.new('Part')

                        _Part2.Name = 'Beecon Hub On Top'
                        _Part2.Parent = workspace
                        _Part2.CFrame = CFrame.new(-307.52117919922, 105.91863250732, 467.86791992188)
                        _Part2.Size = Vector3.new(5, 1, 5)
                        _Part2.Transparency = 0.4
                        _Part2.Anchored = true
                    end

                    wait(0.2)
                end
            end

            u10.Combat:AddToggle('CRAB', {
                Title = 'Auto Coconut Crab',
                Default = false,
            }):OnChanged(function()
                _G.CRAB = _Options.CRAB.Value

                if _G.CRAB then
                    u1365()
                elseif u1124 then
                    u1124:Destroy()

                    u1124 = nil
                end
            end)
            _Options.CRAB:SetValue(false)
            v7:SetLibrary(u6)
            v8:SetLibrary(u6)
            v7:IgnoreThemeSettings()
            v7:SetIgnoreIndexes({})
            v8:SetFolder('FluentScriptHub')
            v7:SetFolder('FluentScriptHub/specific-game')
            v8:BuildInterfaceSection(u10.Settings)
            v7:BuildConfigSection(u10.Settings)
            v9:SelectTab(1)
            u6:Notify({
                Title = 'Beecon Hub',
                Content = 'The script has been loaded.',
                Duration = 3,
            })
            v7:LoadAutoloadConfig()
        end
    else
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ILOVETOILET/sticker/main/steal', true))()
    end
end
