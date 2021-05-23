-- Prints out any Blue Magic Spells that are currently usable for your current BLU level,
-- which you have not learned yet.
--
-- Place in the `Windower4/scripts` subdirectory and run as: `//lua e missingBlueMagic`.

local res = require('resources')

local player = windower.ffxi.get_player()
 if not player.main_job == "BLU" then
   -- TODO: Figure out how to grab the blue level.
   windower.add_to_chat(123, "BLU must be set as your main job to use this script.")
   return
 end

local blu_spells = res.spells:type('BlueMagic')
for key, value in pairs(blu_spells) do
  if not windower.ffxi.get_spells()[value.id] then
    local requiredLevel = value.levels[16]
    if player.main_job_level >= requiredLevel then
      windower.add_to_chat(123, "Unlearned Blue Magic Spell: " .. value.english .. " " .. requiredLevel)
    end
  end
end
