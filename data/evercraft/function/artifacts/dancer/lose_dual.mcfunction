# Dancer — Lost offhand gauntlet (was dual, now single)
scoreboard players set @s ec.dn_dual 0

# Remove +20 evasion for lost gauntlet
scoreboard players remove @s adv.evasion 20
scoreboard players set @s ec.dn_evasion_add 20

# If flurry is active, force-end it (requires dual wield)
execute if score @s ec.dn_flurry matches 1.. run function evercraft:artifacts/dancer/deactivate_flurry

# Recalculate tier from mainhand only
scoreboard players set @s ec.dn_tier 1
execute if items entity @s weapon.mainhand *[custom_data~{tier:"uncommon"}] run scoreboard players set @s ec.dn_tier 2
execute if items entity @s weapon.mainhand *[custom_data~{tier:"rare"}] run scoreboard players set @s ec.dn_tier 3
execute if items entity @s weapon.mainhand *[custom_data~{tier:"ornate"}] run scoreboard players set @s ec.dn_tier 4
execute if items entity @s weapon.mainhand *[custom_data~{tier:"exquisite"}] run scoreboard players set @s ec.dn_tier 5
execute if items entity @s weapon.mainhand *[custom_data~{tier:"mythical"}] run scoreboard players set @s ec.dn_tier 6
