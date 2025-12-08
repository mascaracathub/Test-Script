local MAPBF = game.GameId == 994732206
local Fish = game.CreatorId == 7381705 or game.PlaceId == 16732694052
local days99 = game.GameId == 7326934954
local TSB = game.GameId == 10449761463
local ISPG = game.CreatorId == 16993432698 or game.PlaceId == 5830262966
local SPE = game.GameId == 73934517857372 or game.PlaceId == 7789353543
local Arsenal = game.GameId == 286090429
local BRC = game.GameId == 129768092435314
local BD = game.GameId == 86479448397834
local LS = game.GameId == 3101667897 or game.PlaceId == 1119466531
local GSS = game.GameId == 101237818732976
repeat wait() until game:IsLoaded();
local CountString = 0
local MainPack
local LoadedBackUp
if MAPBF then
    task.spawn(function()
        repeat task.wait() until LoadedBackUp
        repeat task.wait() until StatusCheckIsBad
        wait()
        if _G.Script_Mode == "Main"then  
            loadstring(game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Test-Script/refs/heads/main/Protected_5678912757027947.txt"))()
        end
    end)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/FIXING/main/ABC.lua"))()
    LoadedBackUp = true
    print("Loaded Backup Load")
    local ABC, CBA = pcall(function()
        if _G.Script_Mode == "Main"then  
            loadstring(game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Test-Script/refs/heads/main/Protected_5678912757027947.txt"))()
        end
    end)
    if not ABC then
        StatusCheckIsBad = true
    end
    print("Loaded Main Load")
elseif Fish then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Test-Script/refs/heads/main/Fish-Main.lua.txt"))()
    elseif days99 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Test-Script/refs/heads/main/GPRS.lua.txt"))()
    elseif TSB then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Test-Script/refs/heads/main/TheStrongestBattlegrounds.lua%20(1).txt"))()
    elseif ISPG then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Test-Script/refs/heads/main/Protected_2814004259330302.lua.txt"))()
    elseif SPE then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Test-Script/refs/heads/main/Protected_2578153094727553.lua.txt"))()
    elseif Arsenal then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Test-Script/refs/heads/main/Arsenal.lua.txt"))()
    elseif BRC then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Test-Script/refs/heads/main/Build-A-Roller-Coaster.lua.txt"))()
    elseif BD then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Test-Script/refs/heads/main/Bake-or-Die.lua.txt"))()
    elseif LS then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Test-Script/refs/heads/main/Legends-of-Speed.lua.txt"))()
    elseif GSS then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Test-Script/refs/heads/main/Protected_2677459089970026.txt"))()
elseif (MAPBLADEB or MAPAFS or MAPRGH or MAPHAZEP or MAPALS or DRIVEEMPIRE or SOLRNG or TITAN or MS or AV or PG or Fish or Jujutsu or AA or BL or AD or AC or HT or ARX or BS or GAG or ASTDX or days99 or ZOmBie or TSB or ISPG or SPE or Arsenal or BRC or BD or LS or GSS or game.GameId == 6701277882 or BAZ or game.GameId == 7671049560) then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/CreamSoScute/main/LoadAm.lua",true))()
else game.Players.LocalPlayer:Kick("\224\185\132\224\184\161\224\185\136\224\184\158\224\184\154\224\185\129\224\184\161\224\184\158")
    wait(3)
    game:Shutdown()
    wait(3)
    if game then
        while true do end
    end
end