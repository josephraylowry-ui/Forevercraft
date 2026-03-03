#say trade4
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..5

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/hunter/check/prismarine_shard_to_emerald
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/hunter/check/ghast_tear_to_emerald
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/hunter/check/gunpowder_to_emerald
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/hunter/check/flesh_to_egg
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/hunter/check/magma_cream_to_emerald
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/hunter/check/flesh_to_ghast_tear

scoreboard players reset @s more_professions_rng