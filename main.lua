local ct_timezone = "CST" -- replace with "CDT" during Daylight Saving Time
local new_time = os.date("%m/%d/%Y %I:%M:%S %p "..ct_timezone, os.time()+7200)
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local game_name = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local executor =
   syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   "Unknown Executor"

function Post(V)
    local request = http_request or request or HttpPost or syn.request
    request({
        Url = "https://discord.com/api/webhooks/1096968265961586738/xh2Vc9mCycAhqu4-2Tm2XDrUl9I1BcXbYiB4J50pmLjnph2d18CN9ayfAjZpO8Za0kwL",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(V)
    })
end

local Data = {
    ["embeds"] = {{
        ["title"] = game_name,
        ["description"] = "Username: " .. game.Players.LocalPlayer.Name.."\nExecutor: **"..executor.."**\nTimestamp: **"..new_time.."**\nHWID: **"..HWID.."**",
        ["url"] = "https://www.roblox.com/users/"..game:GetService("Players").LocalPlayer.UserId.."/profile",
        ["color"] = 5763719,
    }}
}

Post(Data)
