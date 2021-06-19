require 'shared'

-- This function prepares your equipment sets. It's like 'main' and called
-- on file load.
function get_sets()
    sets.standard={
        main="Excalibur",
        sub="Harpy Shield",
        range="Rising Sun +1",
        head="Mirage Keffiyeh +1",
        body="Mirage Jubbah",
        hands="Mrg. Bazubands +1",
        legs="Mirage Shalwar",
        feet="Mirage Charuqs +1",
        neck="Orochi Nodowa +1",
        waist="Al Zahbi Sash",
        left_ear="Crapaud Earring",
        right_ear="Suppanomimi",
        left_ring="Ebullient Ring",
        right_ring="Assailant's Ring",
        back="Mirage Mantle",
    }

    sets.dualwield=set_combine(sets.standard, {
        sub="Fragarach",
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