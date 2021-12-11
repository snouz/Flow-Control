script.on_event(defines.events.on_built_entity, function(event)
  if event.created_entity.name == "pipe-elbow"
      or event.created_entity.name == "pipe-junction"
      or event.created_entity.name == "pipe-straight" then
    game.players[event.player_index].rotate_for_build()
    game.players[event.player_index].rotate_for_build()
  end
end)