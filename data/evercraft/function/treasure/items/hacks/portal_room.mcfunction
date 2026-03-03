
particle minecraft:end_rod ~ ~0.8 ~ 0.1 0.1 0.1 0.1 10 force
playsound minecraft:entity.evoker.cast_spell player @a[distance=..15] ~ ~ ~ 0.5 1 1


execute if entity @s[y_rotation=135..225] run place template evercraft:treasure/portal_room ~-5 ~ ~-19 none
execute if entity @s[y_rotation=226..315] run place template evercraft:treasure/portal_room ~19 ~ ~-5 clockwise_90
execute if entity @s[y_rotation=45..134] run place template evercraft:treasure/portal_room ~-19 ~ ~5 counterclockwise_90
execute if entity @s[y_rotation=316..44] run place template evercraft:treasure/portal_room ~5 ~ ~19 180

fill ~4 ~4 ~-4 ~-4 ~ ~4 air replace minecraft:structure_block

advancement revoke @s only evercraft:treasure/hack/portal_room