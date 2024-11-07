data:extend(
{
  {
    type = "recipe",
    name = "check-valve",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "iron-plate", amount = 1},
      {type = "item", name = "iron-gear-wheel", amount = 1},
      {type = "item", name = "pipe",amount =  1}
    },
    results = {{type = "item", name = "check-valve", amount = 1}},
  },
  {
    type = "recipe",
    name = "overflow-valve",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electronic-circuit", amount = 1},
      {type = "item", name = "iron-plate", amount = 1},
      {type = "item", name = "iron-gear-wheel", amount = 1},
      {type = "item", name = "pipe", amount = 1}
    },
    results = {{type = "item", name = "overflow-valve", amount = 1}},
  },
  {
    type = "recipe",
    name = "underflow-valve",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electronic-circuit", amount = 1},
      {type = "item", name = "iron-plate", amount = 1},
      {type = "item", name = "iron-gear-wheel", amount = 1},
      {type = "item", name = "pipe", amount = 1}
    },
    results = {{type = "item", name = "underflow-valve", amount = 1}},
  },
  {
    type = "recipe",
    name = "pipe-elbow",
    energy_required = 0.01,
    ingredients =
    {
      {type = "item", name = "pipe", amount = 1}
    },
    results = {{type = "item", name = "pipe-elbow", amount = 1}},
  },
  {
    type = "recipe",
    name = "pipe-junction",
    energy_required = 0.01,
    ingredients =
    {
      {type = "item", name = "pipe", amount = 1}
    },
    results = {{type = "item", name = "pipe-junction", amount = 1}},
  },
  {
    type = "recipe",
    name = "pipe-straight",
    energy_required = 0.01,
    ingredients =
    {
      {type = "item", name = "pipe", amount = 1}
    },
    results = {{type = "item", name = "pipe-straight", amount = 1}},
  }
})