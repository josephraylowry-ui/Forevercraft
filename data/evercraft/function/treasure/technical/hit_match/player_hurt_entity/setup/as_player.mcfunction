tag @s add mt.player
execute as @e[predicate=evercraft:treasure/not_setup] run function evercraft:treasure/technical/hit_match/player_hurt_entity/setup/as_entity
tag @s remove mt.player
execute if score #found mt.id matches 0 run scoreboard players set #found mt.id 2