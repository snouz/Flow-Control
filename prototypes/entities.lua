-- Check Valve ***************************************************************************
check_valve =
{
  type = "storage-tank",
  name = "check-valve",
  icon = "__Flow Control__/graphics/icon/check-valve.png",
  flags = {"placeable-player", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "check-valve"},
  max_health = 80,
  corpse = "small-remnants",
  resistances =
  {
    {
      type = "fire",
      percent = 70
    }
  },
  fast_replaceable_group = "pipe",
  collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  fluid_box =
  {
    base_area = 1,
    pipe_covers = pipecoverspictures(),
    pipe_connections =
    {
      -- { position = {0, 1}, type="output"},
      { position = {0, 1} },
      { position = {0, -1}, type="input"}
      -- { position = {0, -1} }
    },
  },
  window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
  pictures =
  {
    picture =
    {
      sheet =
      {
        filename = "__Flow Control__/graphics/entity/check-valve/check-valve.png",
        priority = "extra-high",
        frames = 4,
        width = 58,
        height = 55,
        shift = {0.28125, -0.078125}
      }
    },
    fluid_background =
    {
      filename = "__core__/graphics/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1
    },
    window_background =
    {
      filename = "__core__/graphics/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1
    },
    flow_sprite =
    {
      filename = "__core__/graphics/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1
    }
  },
  flow_length_in_ticks = 360,
  vehicle_impact_sound =
  {
    filename = "__base__/sound/car-metal-impact.ogg",
    volume = 0.65
  },
  circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {0.171875, 0.140625},
          green = {0.171875, 0.265625},
        },
        wire =
        {
          red = {-0.53125, -0.15625},
          green = {-0.53125, 0},
        }
      },
      {
        shadow =
        {
          red = {0.890625, 0.703125},
          green = {0.75, 0.75},
        },
        wire =
        {
          red = {0.34375, 0.28125},
          green = {0.34375, 0.4375},
        }
      },
      {
        shadow =
        {
          red = {0.15625, 0.0625},
          green = {0.09375, 0.125},
        },
        wire =
        {
          red = {-0.53125, -0.09375},
          green = {-0.53125, 0.03125},
        }
      },
      {
        shadow =
        {
          red = {0.796875, 0.703125},
          green = {0.625, 0.75},
        },
        wire =
        {
          red = {0.40625, 0.28125},
          green = {0.40625, 0.4375},
        }
      }
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({-0.40625, -0.3125}, nil, 24),
      get_circuit_connector_sprites({0.125, 0.21875}, {0.34375, 0.40625}, 18),
      get_circuit_connector_sprites({-0.40625, -0.25}, nil, 24),
      get_circuit_connector_sprites({0.203125, 0.203125}, {0.25, 0.40625}, 18),
    },
    circuit_wire_max_distance = 7.5
}

-- Overflow Valve ************************************************************************
overflow_valve = util.table.deepcopy(check_valve)
overflow_valve.name = "overflow-valve"
overflow_valve.icon = "__Flow Control__/graphics/icon/overflow-valve.png"
overflow_valve.minable.result = "overflow-valve"
overflow_valve.fluid_box.base_level = 0.8
overflow_valve.fluid_box.pipe_connections =
{
  { position = {0, 1}, type="output"},
  { position = {0, -1} }
}
overflow_valve.pictures.picture.sheet.filename =
  "__Flow Control__/graphics/entity/overflow-valve/overflow-valve.png"

-- Express Pump **************************************************************************
express_pump = util.table.deepcopy(data.raw["pump"]["small-pump"])
express_pump.name = "express-pump"
express_pump.icon = "__Flow Control__/graphics/icon/express-pump.png"
express_pump.minable.result = "express-pump"
express_pump.energy_usage = "120kW"
express_pump.pumping_speed = 2.5
express_pump.animations.north.filename =
  "__Flow Control__/graphics/entity/express-pump/express-pump-up.png"
express_pump.animations.north.animation_speed = 1
express_pump.animations.east.filename =
  "__Flow Control__/graphics/entity/express-pump/express-pump-right.png"
express_pump.animations.east.animation_speed = 1
express_pump.animations.south.filename =
  "__Flow Control__/graphics/entity/express-pump/express-pump-down.png"
express_pump.animations.south.animation_speed = 1
express_pump.animations.west.filename =
  "__Flow Control__/graphics/entity/express-pump/express-pump-left.png"
express_pump.animations.west.animation_speed = 1

-- Pipe Elbow ****************************************************************************
pipe_elbow = 
{
  type = "pipe-to-ground",
  name = "pipe-elbow",
  icon = "__Flow Control__/graphics/icon/pipe-elbow.png",
  flags = {"placeable-neutral", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "pipe"},
  max_health = 50,
  corpse = "small-remnants",
  resistances =
  {
    {
      type = "fire",
      percent = 90
    }
  },
  fast_replaceable_group = "pipe",
  collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  fluid_box =
  {
    base_area = 1,
    pipe_covers = pipecoverspictures(),
    pipe_connections =
    {
      { position = {1, 0} },
      { position = {0, 1} }
    },
  },
  underground_sprite =
  {
    filename = "__core__/graphics/empty.png",
    priority = "high",
    width = 1,
    height = 1
  },
  vehicle_impact_sound =
  {
    filename = "__base__/sound/car-metal-impact.ogg",
    volume = 0.65
  },
  pictures =
  {
    up =
    {
      filename = "__Flow Control__/graphics/entity/pipes/pipe-elbow.png",
      priority = "high",
      width = 44,
      height = 44
    },
    down =
    {
      filename = "__Flow Control__/graphics/entity/pipes/pipe-elbow.png",
      priority = "high",
      width = 44,
      height = 44,
      x = 88
    },
    left =
    {
      filename = "__Flow Control__/graphics/entity/pipes/pipe-elbow.png",
      priority = "high",
      width = 44,
      height = 44,
      x = 132
    },
    right =
    {
      filename = "__Flow Control__/graphics/entity/pipes/pipe-elbow.png",
      priority = "high",
      width = 44,
      height = 44,
      x = 44
    },
  }
}

-- Pipe Junction *************************************************************************
pipe_junction = util.table.deepcopy(pipe_elbow)
pipe_junction.name = "pipe-junction"
pipe_junction.icon = "__Flow Control__/graphics/icon/pipe-junction.png"
pipe_junction.fluid_box.pipe_connections =
{
  { position = {1, 0} },
  { position = {0, 1} },
  { position = {-1, 0} }
}
pipe_junction.pictures.up.filename =
  "__Flow Control__/graphics/entity/pipes/pipe-junction.png"
pipe_junction.pictures.down.filename =
  "__Flow Control__/graphics/entity/pipes/pipe-junction.png"
pipe_junction.pictures.left.filename =
  "__Flow Control__/graphics/entity/pipes/pipe-junction.png"
pipe_junction.pictures.right.filename =
  "__Flow Control__/graphics/entity/pipes/pipe-junction.png"

-- Pipe Straight *************************************************************************
pipe_straight = util.table.deepcopy(pipe_elbow)
pipe_straight.name = "pipe-straight"
pipe_straight.icon = "__Flow Control__/graphics/icon/pipe-straight.png"
pipe_straight.fluid_box.pipe_connections =
{
  { position = {0, -1} },
  { position = {0, 1} }
}
pipe_straight.pictures.up.filename =
  "__Flow Control__/graphics/entity/pipes/pipe-straight.png"
pipe_straight.pictures.down.filename =
  "__Flow Control__/graphics/entity/pipes/pipe-straight.png"
pipe_straight.pictures.down.x = nil
pipe_straight.pictures.left.filename =
  "__Flow Control__/graphics/entity/pipes/pipe-straight.png"
pipe_straight.pictures.left.x = 44
pipe_straight.pictures.right.filename =
  "__Flow Control__/graphics/entity/pipes/pipe-straight.png"

-- Small Pump ****************************************************************************
data.raw["pump"]["small-pump"].icon = "__Flow Control__/graphics/icon/small-pump.png"

-- Insert Entities ***********************************************************************
data:extend(
{
  check_valve,
  overflow_valve,
  express_pump,
  pipe_elbow,
  pipe_junction,
  pipe_straight
})