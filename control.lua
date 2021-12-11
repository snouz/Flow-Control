script.on_event(defines.events.on_built_entity, function(event)
  local player = game.players[event.player_index]
  if event.created_entity.name == "pipe-elbow"
      or event.created_entity.name == "pipe-junction"
      or event.created_entity.name == "pipe-straight" then
    player.rotate_for_build()
    player.rotate_for_build()
  end
end)