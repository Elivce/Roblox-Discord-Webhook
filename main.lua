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
        ["title"] = "Murder Mystery 2",
        ["description"] = "Username: " .. game.Players.LocalPlayer.Name.."\n Executor: **"..executor.."**",
        ["url"] = "https://www.roblox.com/users/"..game:GetService("Players").LocalPlayer.UserId.."/profile",
        ["color"] = 5763719,
    }}
}

Post(Data)
