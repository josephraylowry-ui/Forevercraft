execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/4

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/beekeeper/set/variants/flower/allium
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/beekeeper/set/variants/flower/cornflower
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/beekeeper/set/variants/flower/dandelion
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/beekeeper/set/variants/flower/poppy

scoreboard players reset @s more_professions_rng