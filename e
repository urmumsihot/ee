local CoreGui = game:GetService("CoreGui")
local urmumishot_was_here = {}

for i,v in pairs(CoreGui.GetDescendants(CoreGui)) do
     if v.IsA(v, "ImageLabel") and v.Image:find('rbxasset://') then
        table.insert(urmumishot_was_here, v.Image)
    end
end

local Hi_There_Prisman_Sucks;
Hi_There_Prisman_Sucks = hookfunction(game:GetService("ContentProvider").PreloadAsync, function(self, ...)
        local Args = {...}
        if not checkcaller() and type(Args[1]) == "table" and table.find(Args[1], CoreGui) then
            Args[1] = jonathan_was_here
            return Hi_There_Prisman_Sucks(self, unpack(Args))
        end
    return Hi_There_Prisman_Sucks(self, ...)
end)

local function Bypass(Caller)
     if Caller == "PreloadAsync" or Caller == "preloadAsync" then
          return true
     end
     return false
end

local __namecall;

__namecall = hookmetamethod(game, "__namecall", function(Self, ...)
    local Args = {...}
    local NamecallMethod = getnamecallmethod()
    if not checkcaller() and type(Args[1]) == "table" and table.find(Args[1], CoreGui) and Self == game.GetService(game, "ContentProvider") and Bypass(NamecallMethod) then
        Args[1] = jonathan_was_here
        return __namecall(Self, unpack(Args))
    end
    return __namecall(Self, ...)
end)
