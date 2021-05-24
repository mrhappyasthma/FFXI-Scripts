-- Prints out any Blue Magic Spells that are currently usable for your current BLU level,
-- which you have not learned yet.
--
-- Place in the `Windower4/scripts` subdirectory and run as: `//lua e missingBlueMagic`.

local res = require('resources')

local player = windower.ffxi.get_player()
local blu_spells = res.spells:type('BlueMagic')
local missingSpells = false
for key, value in pairs(blu_spells) do
  if not windower.ffxi.get_spells()[value.id] then
    local requiredLevel = value.levels[16]
    if player.jobs["BLU"] >= requiredLevel then
      missingSpells = true
      windower.add_to_chat(160, "Unlearned Blue Magic Spell: " .. value.english .. " " .. requiredLevel)
    end
  end
end

if not missingSpells then
  windower.add_to_chat(100, "Congrats! You already know all the Blue Magic that you can use for your level! :)")
end
