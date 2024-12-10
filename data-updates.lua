local belt_distance_per_15 = settings.startup["UndergroundLength-belt-length"].value
local pipe_distance = settings.startup["UndergroundLength-pipe-length"].value

-- Belts
local undergrounds = data.raw["underground-belt"]
for _, belt in pairs(undergrounds) do
  local items_per_second = belt.speed * 480
  local fifteens = math.floor((items_per_second / 15) + 0.5)

  -- should be (x per 15, plus 2 per 15 but only after the first)
  -- >> This is so that the values are super nice in the context of a main bus.
  -- >> Equation ends with "-1" because the belt needs 1 more tile to connect to the end point.
  -- ... so to have 4 spaces in between it needs length of 5.
  local new_length = (belt_distance_per_15 + 2) * math.max(1, fifteens) - 1

  belt.max_distance = new_length
end

-- Pipes
local undergound_pipes = data.raw["pipe-to-ground"]
for _, pipe in pairs(undergound_pipes) do
  if (pipe.fluid_box.pipe_connections[2])
  then
    pipe.fluid_box.pipe_connections[2].max_underground_distance = pipe_distance
  end
end
