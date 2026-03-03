execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/2

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/circut_board/set/variants/redstone_ore_redstone_dust/redstone_ore
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/circut_board/set/variants/redstone_ore_redstone_dust/deepslate_redstone_ore

scoreboard players reset @s more_professions_rng