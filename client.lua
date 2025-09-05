!!DO NOT EDIT!!

-- Client-side healing function
RegisterNetEvent("heal:client")
AddEventHandler("heal:client", function()
    local playerPed = PlayerPedId()
    if DoesEntityExist(playerPed) then
        SetEntityHealth(playerPed, GetEntityMaxHealth(playerPed))
        ClearPedBloodDamage(playerPed)
        ResetPedVisibleDamage(playerPed)
        ClearPedLastWeaponDamage(playerPed)
        print("You have been healed!")
    end
end)

