-- Optional test commands, off by default. Enable with `setr ushell_test 1` in server.cfg.
--   /shelltest <name>   spawn a shell high above you and teleport inside
--   /shellexit          remove it and return to where you were
if GetConvarInt('ushell_test', 0) ~= 1 then return end

local shell, returnCoords

RegisterCommand('shelltest', function(_, args)
    local name = args[1]
    local data = name and Config.Shells[name]
    if not data then
        print('Usage: /shelltest <name>. See config.lua for shell names.')
        return
    end
    local model = joaat(name)
    if not IsModelInCdimage(model) then
        print(('%s is not streamed. Is the resource started?'):format(name))
        return
    end
    CreateThread(function()
        RequestModel(model)
        while not HasModelLoaded(model) do Wait(0) end
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        returnCoords = returnCoords or coords
        if shell then DeleteEntity(shell) end
        local origin = vec3(coords.x, coords.y, 800.0)
        shell = CreateObjectNoOffset(model, origin.x, origin.y, origin.z, false, false, false)
        FreezeEntityPosition(shell, true)
        SetModelAsNoLongerNeeded(model)
        SetEntityCoordsNoOffset(ped, origin.x + data.entrance.x, origin.y + data.entrance.y, origin.z + data.entrance.z + 1.0, false, false, false)
        SetEntityHeading(ped, data.entrance.w)
    end)
end, false)

RegisterCommand('shellexit', function()
    if shell then DeleteEntity(shell) shell = nil end
    if returnCoords then
        SetEntityCoordsNoOffset(PlayerPedId(), returnCoords.x, returnCoords.y, returnCoords.z, false, false, false)
        returnCoords = nil
    end
end, false)
