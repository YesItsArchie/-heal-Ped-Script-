!!DO NOT EDIT!!

-- Server-side command to trigger heal
RegisterCommand("heal", function(source, args, rawCommand)
    local src = source

    -- If no player triggered it (console), reject
    if src == 0 then
        print("Console cannot use /heal")
        return
    end

    -- Heal the player who typed /heal
    TriggerClientEvent("heal:client", src)
end, false) -- "false" = anyone can use. Change to true and use ACE perms for admins only.
