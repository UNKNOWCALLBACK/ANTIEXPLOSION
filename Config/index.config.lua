Config= {}

Config.usemainloop = true
Config.loopsenddata = true
Config.usetableloop = true


Config.ifnotfound = "unknown"
Config.checktimetoban = 4
Config.addpoint = 1
Config.datetoban = 180


Config.embedname = "Anti-Explosion Bot"
Config.BANEXPLOSION = "https://discord.com/api/webhooks/1196735398676799559/75CUzuS7CDRXVxhoEGQYqwjYN4YophGAMQrmaUaqkgctEP0Za3vWR321VKMXijfwhEy_"
Config.SENDIMAGE = "https://discord.com/api/webhooks/1215899511851974667/lrTz5hiIL4pLp1Klsa0hofg8fWqg7FTKeih72feXtxq-kXgW-l6BvpW25jxmVTTB1_PX"
Config.LOGDATADETAIL = 'https://discord.com/api/webhooks/1215899511851974667/lrTz5hiIL4pLp1Klsa0hofg8fWqg7FTKeih72feXtxq-kXgW-l6BvpW25jxmVTTB1_PX'
Config.SENDTOADMIN = 'https://discord.com/api/webhooks/1169655943227768852/DG_RrRtcncGZqELqoqNIYyRDpZNJ4W-QnbpoMYtvYz0dZRD4LIvByCgNbEFy9tKUZck4'
Config.typelog = "application/json"


Config.typetoreturn = {
    ['1'] = true,
    ['2'] = true,
    ['3'] = true,
    ['4'] = true,
    ['5'] = true,
    ['6'] = true,
    ['7'] = true,
    ['8'] = true,
    ['9'] = true,
    ['10'] = true,
    ['11'] = true,
    ['12'] = true,
    ['13'] = true,
    ['14'] = true,
    ['15'] = true,
    ['16'] = true,
    ['17'] = true,
    ['18'] = true,
    ['19'] = true,
    ['20'] = true,
    ['21'] = true,
    ['22'] = true,
    ['23'] = true,
    ['24'] = true,
    ['25'] = true,
    ['26'] = true,
    ['27'] = true,
    ['28'] = true,
    ['29'] = true,
    ['30'] = true,
    ['31'] = true,
    ['32'] = true,
    ['33'] = true,
    ['34'] = true,
    ['35'] = true,

}

Config.bypass = {
    ['superadmin'] = true,
    ['admin'] = true,
    ['mod'] = true,
}
Config.admindebug = true
Config.debugplayerdoexplosiondetechsystem = true

Config.kickplayer = function(playerId,playerName,xPlayer)
    DropPlayer(playerId, 'TEST')
end

Config.Framework = function ()
    ESX = exports['es_extended']:getSharedObject()
end


Config.admindebug_print = function (playerName,playerId,currentTimer)
    print('^2[ANTI_EXPLOSION] : ^1[^3'.. playerName .. '^1] ID:(^1' .. playerId .. ')  ^6BY PASS ^3VERTIFY BY UNKNOWCALLBACK ^2🕚TIME :' .. currentTimer )
end

Config.debugplayerdoexplosion = function (playerName,playerId,explosioncount,currentTimer)
    local logMessage = '^1[ANTI_EXPLOSION] : ' .. playerName .. '  ID:^2'.. playerId ..' ^1ระเบิดครั้งที่ ^6' .. explosioncount .. '🕚เวลา ^2' .. currentTimer
    print(logMessage)
end


Config.DETAILSENDADMIN = function(playerName, playerId, playerCoords, currentTime)
    local embed = {
        {
            ["color"] = 0xFF0000, 
            ["title"] = "**โปรดตรวจสอบ**\nมีการระเบิดเกิดขึ้น รายละเอียดดังนี้ :" ,
            ["description"] = "**NAME:** " .. playerName .. " **\nID:** " .. playerId .. " **\ncoords:** " .. playerCoords .. " **PLS CHECK HERE NOW ADMIN!!!**",
            ["footer"] = {
                ["text"] = 'POWER BY UNKNOWCALLBACK 🕚เวลา: ' .. currentTime,
            }
        }
    }
    
end




Config.Detaildiscordlog = function(playerName,playerId,steam,discord,license,live,xbl,ip,admin,playerCoords,explosiontype,info,description,currentTime)
    
local embed = {
    {
        ["color"] = 65280, -- สีเขียว
        ["title"] = "มีการระเบิดเกิดขึ้น รายละเอียดดังนี้\n",
        ["description"] = "\nNAME:" .. playerName .. "\nID:" .. playerId .. "\nSteam Hex: " .. steam .. "\ndiscord: <@".. discord .. ">\nlicense: " .. license .. "\nlive: " .. live .. "\nxbl: " .. xbl .. "\nip: " .. ip .. "\nadmincheck: " .. admin .. "\ncoords:" .. playerCoords .. "\nexplosionType: " .. explosiontype .. "\n" .. info .. "\nรายละเอียด: " .. description,
        ["footer"] = {
            ["text"] = 'POWER BY UNKNOWCALLBACK 🕚เวลา :' .. currentTime,
        }
    }
}




    local message = {
        ["username"] = Config.embedname,
        ["embeds"] = embed
    }

    local jsonMessage = json.encode(message)

    local webhookUrl = Config.LOGDATADETAIL

    PerformHttpRequest(webhookUrl, function(httpCode, data, resultHeaders) end, 'POST', jsonMessage, {['Content-Type'] = Config.typelog})
end