--[[ 
    PASTEFY SECURE LINK v1.3.1
    IP_IDENTIFIER: 113.188.39.235
    STATUS: ENCRYPTED https://discord.gg/wWHxH6ARU
]]
return(function(...)
    local _ENV = (getfenv or function() return _G end)()
    
    -- [CRITICAL SECURITY] IP LINK VERIFICATION
    local _req = _ENV.game:HttpGet("https://api.ipify.org")
    if _req ~= "113.188.39.235" then 
        _ENV.error("INVALID IP LINK - THIS SCRIPT IS LOCKED TO ANOTHER DEVICE")
        return 
    end

    local _F = {"\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\102\121\46\97\112\112\47\48\107\74\72\55\122\54\120\47\114\97\119\34\41\41\40\41"}
    local _C = _ENV.string.char
    
    local function _VM(...)
        local _s = ""
        local _p = ((241887+241787)-(483674))
        local _l = #_F[1]
        while (_p < _l) do
            -- [VM FLATTENING]
            if _p < (_l/2) or (_p + ((283734+283624)-(567348)) > ((233647+233542)-(467184))) then
                _s = _s .. _C(_ENV.string.byte(_F[1], _p + 1))
                _p = _p + 1
            end
            -- Junk Math Protection
            local _j = ((936495+935058)-(1870216)); if _j < 0 then return end
        end
        local _f, _e = _ENV.loadstring(_s)
        if _f then return _f(...) else _ENV.error("INTEGRITY_ERR") end
    end
    return (function(_f, _g, _u, _v) return _v(#_f[1], _u) end)(_F, _ENV, _ENV.unpack or table.unpack, _VM)
end)(...)
