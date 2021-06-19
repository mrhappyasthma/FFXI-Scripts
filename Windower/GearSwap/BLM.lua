require 'shared'

-- This function prepares your equipment sets. It's like 'main' and called
-- on file load.
function get_sets()
    sets.standard={
        main="Aquilo's Staff",
        sub="Bugard Strap +1",
        ammo="Phtm. Tathlum",
        head="Sorcerer's Petas.",
        body="Sorcerer's Coat",
        hands="Src. Gloves +1",
        legs="Errant Slops",
        feet="Wizard's Sabots",
        neck="Lmg. Medallion +1",
        waist="Sorcerer's Belt",
        left_ear="Insomnia Earring",
        right_ear="Omn. Earring +1",
        left_ring="Snow Ring",
        right_ring="Snow Ring",
        back="Prism Cape",
    }

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