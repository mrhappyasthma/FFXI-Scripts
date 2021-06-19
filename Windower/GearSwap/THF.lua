require 'shared'

-- This function prepares your equipment sets. It's like 'main' and called
-- on file load.
function get_sets()
    sets.standard={
        main="Thief's Knife",
        sub="Tatami Shield",
        range="Rising Sun +1",
        head="Asn. Bonnet +1",
        body="Assassin's Vest",
        hands="Asn. Armlets +1",
        legs="Assassin's Culottes",
        feet="Areion Boots +1",
        neck="Orochi Nodowa +1",
        waist="Cuchulain's Belt",
        left_ear="Suppanomimi",
        right_ear="Pixie Earring",
        left_ring="Thunder Ring",
        right_ring="Thunder Ring",
        back="Assassin's Cape",
    }

    sets.dualwield=set_combine(sets.standard, {
        sub="Dynamis Dagger",
    })

    sets.battle=set_combine(sets.standard, {
        feet="Asn. Poulaines +1"
    })

    sets.bastok=set_combine(sets.standard, {
        body="Republic Aketon",
    })

    sets.sandy=set_combine(sets.standard, {
        body="Kingdom Aketon",
    })

    sets.windy=set_combine(sets.standard, {
        body="Federation Aketon",
    })
end

-----------------------------------------------------------------------------------

function status_change(new, old)
    if new == 'Engaged' then
        equip(sets.battle)
        windower.send_command('@wait 2;input /lockon')
    else
        equip_for_subjob(player.sub_job)
    end
end

-----------------------------------------------------------------------------------

-- Called on subjob change
function sub_job_change(new, old)
    equip_for_subjob(new)
end

-----------------------------------------------------------------------------------

-- This function performs right before the action is sent to the server.
function precast(spell)
end

-----------------------------------------------------------------------------------

-- This function performs after precast but before the action is sent to the server.
function midcast(spell)
end

-----------------------------------------------------------------------------------

-- This function performs after the action has taken place
function aftercast(spell)
end

-----------------------------------------------------------------------------------