#say trade5
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..5

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/circut_board/check/sticky_piston
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/circut_board/check/target
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/circut_board/check/redstone_ore_redstone_dust
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/circut_board/check/sculk_sensor
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/circut_board/check/slime_block
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/circut_board/check/string

scoreboard players reset @s more_professions_rng