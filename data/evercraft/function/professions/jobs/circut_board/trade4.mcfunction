#say trade4
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..5

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/circut_board/check/trapped_chest
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/circut_board/check/redstone_lamp
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/circut_board/check/repeater
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/circut_board/check/tnt
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/circut_board/check/hopper_minecart
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/circut_board/check/daylight_detector

scoreboard players reset @s more_professions_rng