---@param event ConfigurationChangedData
script.on_configuration_changed(function(event)
    -- We are migrating the old Flow Control valves to be the new
    -- Valves mod. We have a json migration for the entities and items,
    -- but the Valves mod need to add the hidden entities. We can't do
    -- that during a migration Lua, because the remote interface doesn't
    -- exist yet, so we do it here, once. Luckily it seems the directions
    -- are all correct, so we don't have to worry too much.

    if storage.migrated_valves then return end
    local old_version = event.old_version
    if not old_version then return end
    local major = tonumber(old_version:match("^0*(%d+)"))
    if not (major and major < 2) then return end
    remote.call("valves", "rebuild_all")
    storage.migrated_valves = true -- Just to be safe.
end)