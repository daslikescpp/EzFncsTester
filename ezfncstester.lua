local Globals = {getconnections, getgc, getinstances, getnilinstances, getscripts, getloadedmodules, fireclickdetector,
firetouchinterest, isnetworkowner, gethiddenproperty, sethiddenproperty, setsimulationradius,
getsenv, getcallingscript, getrawmetatable, setrawmetatable, setreadonly, isreadonly, hookfunction, newcclosure,
checkcaller, disassemble, decompile, setfflag, getnamecallmethod, setnamecallmethod, getspecialinfo, saveinstance, drawing, debug, debug.getconstants,
debug.getconstant, debug.setconstant, debug.getupvalues, debug.getupvalue, debug.setupvalue,
debug.getprotos, debug.getproto, debug.setproto, debug.getstack, debug.setstack, debug.setmetatable,
debug.getregistry, debug.getinfo, getscriptbytecode, dumpstring, get_thread_identity}

local GlobalsNames = {"getconnections", "getgc", "getinstances", "getnilinstances", "getscripts", "getloadedmodules", "fireclickdetector",
"firetouchinterest", "isnetworkowner", "gethiddenproperty", "sethiddenproperty", "setsimulationradius",
"getsenv", "getcallingscript", "getrawmetatable", "setrawmetatable", "setreadonly", "isreadonly", "hookfunction", "newcclosure",
"checkcaller", "disassemble", "decompile", "setfflag", "getnamecallmethod", "setnamecallmethod", "getspecialinfo", "saveinstance", "drawingtable", "debugtable", "debug.getconstants",
"debug.getconstant", "debug.setconstant", "debug.getupvalues", "debug.getupvalue", "debug.setupvalue",
"debug.getprotos", "debug.getproto", "debug.setproto", "debug.getstack", "debug.setstack", "debug.setmetatable",
"debug.getregistry", "debug.getinfo", "getscriptbytecode", "dumpstring", "get_thread_identity"}

local succeededCount = 0
local succeeded = 0

for i,v in pairs(GlobalsNames) do
    if Globals[i] then
        print(v .. " | Succeeded ✅")
        succeededCount = succeededCount + 1
    else
        warn(v .. " | Failed/L Exploit ⛔ 😂")
    end
end



local totalFunctions = #GlobalsNames
local successRate = succeededCount / totalFunctions
local remainingNumber = totalFunctions - succeededCount

print("\n")

print(succeededCount .. " out of " .. totalFunctions .. ".")
print("Failed in ".. remainingNumber .. " tests.")

if successRate == 1 then
    print("Test Results:")
    info("Your Exploit Succeeded In Every Tests.")
elseif successRate >= 0.3 then
    print("Test Results:")
    warn("Your Exploit Supports Some Functions That Are Enough For Exploiting.")
else
    print("Test Results:")
    error("Your Exploit Supports Barely Any Functions So It's Trash.")
end
