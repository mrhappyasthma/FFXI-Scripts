res = require('resources')

function zone_change(new_id, old_id)
    local zone = res.zones[new_id].name
    if zone:match('Bastok') and not zone:match('Dynamis') then
         equip(sets.bastok)
    elseif zone:match("San d'Oria") and not zone:match('Dynamis') then
         equip(sets.sandy)
    elseif zone:match('Windurst') and not zone:match('Dynamis') then
         equip(sets.windy)
    else
        equip_for_subjob(player.sub_job)
    end
end

function job_change(main_job_id, main_job_level, sub_job_id, sub_job_level)
    local subjob = res.jobs[sub_job_id].ens
    equip_for_subjob(subjob)
end

windower.register_event('job change', job_change)
windower.register_event('zone change', zone_change)

function equip_for_subjob(subjob)
    -- TODO: check for the job trait directly? it's #18 in the job_traits resources
    if (subjob == 'DNC' or subjob == 'NIN') and sets.dualwield then
      equip(sets.dualwield)
    else
      equip(sets.standard)
    end
end