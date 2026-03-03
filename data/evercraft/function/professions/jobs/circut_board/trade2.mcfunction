#say trade2
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..5

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/circut_board/check/tripwire_hook
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/circut_board/check/honey_block
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/circut_board/check/hopper
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/circut_board/check/dispenser
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/circut_board/check/dropper
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/circut_board/check/pressure_plate

scoreboard players reset @s more_professions_rng