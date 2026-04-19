local sup = {
    {
        IDs = {2788229376, 7213786345}, -- Da hood
        Script = "https://api.rubis.app/v2/scrap/vVCzHWdaam4S6tV2/raw"
    },
    {
        IDs = {70845479499574}, -- Bite By Night
        Script = "https://api.rubis.app/v2/scrap/zQgxyPi1AURNXDyT/raw"
    }
}

local placeId = game.PlaceId
local found = false

for _, gameData in ipairs(sup) do
    for _, id in ipairs(gameData.IDs) do
        if placeId == id then
            found = true
            pcall(function()
                loadstring(game:HttpGet(gameData.Script))()
            end)
            break
        end
    end
    if found then break end
end

if not found then
    warn("Not on Supports list")
end
