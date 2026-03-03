function evercraft:treasure/database/get with entity @s

execute as @e[type=#evercraft:treasure/targets,tag=!mt.end_boots,distance=..8] run function evercraft:treasure/items/armor/end/victim with storage evercraft:treasure/write data

effect give @s regeneration 2 2 true

particle minecraft:witch ~ ~ ~ 3 3 3 0 50 force

playsound minecraft:block.note_block.chime player @a[distance=..10] ~ ~ ~ 0.5 0.6 1

advancement revoke @s only evercraft:treasure/armor/end_boots