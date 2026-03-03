execute if entity @s[tag=mt.small] run function evercraft:treasure/mechanics/small/over

playsound minecraft:entity.mooshroom.convert player @s ~ ~ ~ 0.1 0

tag @s add mt.big
attribute @s scale modifier add mt.big 3 add_multiplied_total
attribute @s movement_speed modifier add mt.big 3 add_multiplied_total
attribute @s gravity modifier add mt.big 1 add_multiplied_total
attribute @s jump_strength modifier add mt.big 1 add_value
attribute @s fall_damage_multiplier modifier add mt.big -1 add_multiplied_total
attribute @s block_interaction_range modifier add mt.big 8 add_value
attribute @s entity_interaction_range modifier add mt.big 8 add_value
attribute @s attack_damage modifier add mt.big 2 add_value
attribute @s step_height modifier add mt.big 2.5 add_value

execute store result storage evercraft:treasure/big duration int 0.05 run data get entity @s active_effects[{id:"minecraft:unluck"}]."duration"

effect clear @s unluck
function evercraft:treasure/mechanics/big/apply_time with storage evercraft:treasure/big

advancement revoke @s only evercraft:treasure/mechanics/big/timer
advancement revoke @s only evercraft:treasure/mechanics/big/apply