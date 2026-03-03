#say trade1
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..5

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/hunter/check/wither_rose_to_emerald
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/hunter/check/flesh_to_string
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/hunter/check/flesh_to_glow_ink
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/hunter/check/egg_to_emerald
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/hunter/check/flesh
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/hunter/check/shulker_shell_to_emerald

scoreboard players reset @s more_professions_rng