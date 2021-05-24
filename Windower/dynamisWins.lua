-- Prints out any Dynamis Wins that the player does not yet have.
--
-- Place in the `Windower4/scripts` subdirectory and run as: `//lua e dynamisWins`.

local res = require('resources')

local dynamis_key_items = {
  [486] = {name="San d'Oria", key_item="Hydra Corps Command Scepter"},
  [487] = {name="Bastok", key_item="Hydra Corps Eyeglass"},
  [488] = {name="Windurst", key_item="Hydra Corps Lantern"},
  [489] = {name="Jeuno", key_item="Hydra Corps Tactical Map"},  -- Requires Windy, Bastok, San d'Oria.
  [490] = {name="Beaucedine", key_item="Hydra Corps Insignia"},  -- Requires Jeuno
  [491] = {name="Xarcabard", key_item="Hydra Corps Battle Standard"},  -- Requires Beaucedine

  -- Dreamland
  [739] = {name="Valkurm", key_item="Dynamis - Valkurm Sliver"},
  [740] = {name="Buburimu", key_item="Dynamis - Buburimu Sliver"},
  [741] = {name="Qufim", key_item="Dynamis - Qufim Sliver"},
  [742] = {name="Tavnazia", key_item="Dynamis - Tavnazia Sliver"},
}

-- Iterate the player's key items, and remove dynamis key items that
-- the player already unlocked from a Win.
local players_key_items = windower.ffxi.get_key_items()
for key, value in pairs(players_key_items) do
  local dynamis = dynamis_key_items[value]
  if dynamis then
    dynamis_key_items[value] = nil
  end
end

-- Print the remaining dynamis names, which are the ones the player
-- still needs to beat.
if next(dynamis_key_items) == nil then
  windower.add_to_chat(100, "Congrats! You have all dynamis wins already! :)")
else
  for key, value in pairs(dynamis_key_items) do
    windower.add_to_chat(160, "Player needs dynamis win: " .. value.name)
  end
end
