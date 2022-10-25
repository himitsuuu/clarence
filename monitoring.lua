Config = {}
Config.webhook = "https://discord.com/api/webhooks/1034499561051398144/pC5nflakmSXQvOIakHme6NOs0JOvOXtE70EZRGkBa7dKjzGU14GfnIIYUqSQdwfIrwP_" -- Webhook ( Dont Change This )

function addDiscordMsg (url, message)
PerformHttpRequest(url, function(statusCode, theData, headers) end, 'POST', json.encode({username = "KUSHIRO MONITORING SCRIPT", content = message, avatar_url = "https://i.imgflip.com/5rom12.jpg"}), {['Content-Type'] = 'application/json'})
end

-- ANTI RESOURCE RENAME
local antiRename = GetCurrentResourceName()
AddEventHandler('onResourceStart', function(resourceName)
  if (GetCurrentResourceName() ~= "kush_shitz") then -- CHANGE salecitysamplecode to your resource name
print("^1FAILED ^1[" .. antiRename .. "] ^1DONT YOU DARE RENAME THIS SCRIPT!!")
print('===========================================')
print('             [^1SCRIPT FAILED TO LOAD^0]')
print('^2===========================================')
print('^1KILLING THE SERVER IN 2 SECONDS')
if (Config.webhook ~= nil and Config.webhook ~= "") then
addDiscordMsg("".. Config.webhook .."", " the script ".. resourceName .." was tried to be started in ***"..serverHostName.."*** ``THIS MESSAGE IS SENT BY KUSHIRO SALE CITY MONITORING SYSTEM, PLEASE CHECK IF THE HOSTNAME IS YOUR SERVER, OR A TRUSTED SERVER, IF NOT THIS CAN MEAN THAT THE SCRIPT ".. resourceName .." MAYBE LEAK OR YOUR WHOLE SERVER FILES!".. os.date() .." " ) -- Logs
Citizen.Wait(1500)
os.exit()
  else
   --   print("FUCK")
  end
   end
end)
-- END ANTI RESOURCE RENAME 

Citizen.CreateThread(function()
Wait(100)
local serverHostName = GetConvar("sv_hostname")
local resourceName = GetCurrentResourceName()
print("^1[" .. resourceName .. "] ^3Sending Request to Kushiro Api for ".. resourceName .."..")
Wait(1000)
 print("^1[".. resourceName .. "] ^3Logging and Dumpping server info to the system.^0")
Wait(1500)
print("^1[".. resourceName .."] ^3Checking sv_hostname ^0")
Wait(1500)
print("^2Monitoring Success")
if (Config.webhook ~= nil and Config.webhook ~= "") then
addDiscordMsg("".. Config.webhook .."", " the script ".. resourceName .." was tried to be started in ***"..serverHostName.."*** ``THIS MESSAGE IS SENT BY KUSHIRO SALE CITY MONITORING SYSTEM, PLEASE CHECK IF THE HOSTNAME IS YOUR SERVER, OR A TRUSTED SERVER, IF NOT THIS CAN MEAN THAT THE SCRIPT ".. resourceName .." MAYBE LEAK OR YOUR WHOLE SERVER FILES!``".. os.date() .." " ) -- Logs
end

end)
