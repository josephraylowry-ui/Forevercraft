effect give @s wither 2 2 true

playsound minecraft:entity.zombie.break_wooden_door player @a[distance=..10] ~ ~ ~ 0.3 2 1

execute at @s run particle block_marker{block_state:pointed_dripstone} ~ ~0.3 ~ 0 0 0 10 1 normal