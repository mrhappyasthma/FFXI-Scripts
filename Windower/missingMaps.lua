-- Prints out any Magical Maps that the player does not yet have.
--
-- Place in the `Windower4/scripts` subdirectory and run as: `//lua e missingMaps`.

local res = require('resources')

-- Returns if a table contains the given value.
local function has_value(t, value)
    for k, v in ipairs(t) do
        if v == value then
            return true
        end
    end
    return false
end

local all_key_items = res.key_items
local players_key_items = windower.ffxi.get_key_items()
local missingMaps = false
for key, value in pairs(all_key_items) do
  if value["category"] == "Magical Maps" then
    if not has_value(players_key_items, key) then
    missingMaps = true
      local map = value["en"]
      windower.add_to_chat(160, "Missing Map: " .. map)
    end
  end
end

if not missingMaps then
  windower.add_to_chat(100, "Congrats! You already unlocked all the Magical Maps! :)")
end
