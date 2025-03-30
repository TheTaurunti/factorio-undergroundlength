data:extend({
  {
    type = "int-setting",
    name = "UndergroundLength-base-length",
    setting_type = "startup",
    default_value = 2,
    minimum_value = 1,
    order = "1"
  },
  {
    type = "int-setting",
    name = "UndergroundLength-distance-per-15",
    setting_type = "startup",
    default_value = 2,
    minimum_value = 1,
    order = "2"
  },
  {
    type = "bool-setting",
    name = "UndergroundLength-add-spacing-for-bus",
    setting_type = "startup",
    default_value = false,
    order = "3"
  },
  {
    type = "int-setting",
    name = "UndergroundLength-pipe-length",
    setting_type = "startup",
    default_value = 10,
    minimum_value = 1,
    order = "4"
  }
})
