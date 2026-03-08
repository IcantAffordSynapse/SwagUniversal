-- SWAG Universal File System
-- 08/03/2026

if not getgenv().FileSystemFuncs then 
    return "File System Unsupported." 
end

local HttpService = game:GetService("HttpService")

local function deepVerify(template, target)
    for k,v in pairs(template) do
        if target[k] == nil then
            if type(v) == "table" then
                target[k] = {}
                deepVerify(v, target[k])
            else
                target[k] = v
            end
        elseif type(v) == "table" and type(target[k]) == "table" then
            deepVerify(v, target[k])
        end
    end
end

local function serialize(value, indent)
    indent = indent or 0
    local spacing = string.rep("    ", indent)

    if type(value) == "table" then
        local str = "{\n"
        for k,v in pairs(value) do
            local key

            if type(k) == "string" then
                key = k
            else
                key = "["..tostring(k).."]"
            end

            str = str .. spacing.."    "..key.." = "..serialize(v, indent + 1)..",\n"
        end
        return str .. spacing.."}"

    elseif typeof(value) == "Color3" then
        return string.format(
            "Color3.fromRGB(%d, %d, %d)",
            math.floor(value.R * 255),
            math.floor(value.G * 255),
            math.floor(value.B * 255)
        )

    elseif typeof(value) == "EnumItem" then
        return tostring(value)

    elseif type(value) == "string" then
        return string.format("%q", value)

    else
        return tostring(value)
    end
end

local files = {
    ["SavedData.lua"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/IcantAffordSynapse/SwagUniversal/refs/heads/main/Templates/SavedData.lua"))(),
    ["Settings.lua"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/IcantAffordSynapse/SwagUniversal/refs/heads/main/Templates/Settings.lua"))()
}

if not isfile("SWAG__UNIVERSAL") then
    makefolder("SWAG__UNIVERSAL")
end

for name, templateTable in pairs(files) do
    local path = "SWAG__UNIVERSAL/" .. name

    if not isfile(path) then
        writefile(path, "return "..serialize(templateTable))
    else
        local success, userTable = pcall(loadstring(readfile(path)))

        if success and type(userTable) == "table" then
            deepVerify(templateTable, userTable)
            writefile(path, "return "..serialize(userTable))
        else
            writefile(path, "return "..serialize(templateTable))
        end
    end
end

return true
