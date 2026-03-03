
particle minecraft:end_rod ~ ~0.8 ~ 0.1 0.1 0.1 0.1 10 force
playsound minecraft:entity.evoker.cast_spell player @a[distance=..15] ~ ~ ~ 0.5 1 1

execute if entity @s[y_rotation=135..225] run place template minecraft:pillager_outpost/watchtower ~-7 ~ ~-16 none
execute if entity @s[y_rotation=226..315] run place template minecraft:pillager_outpost/watchtower ~16 ~ ~-7 clockwise_90
execute if entity @s[y_rotation=45..134] run place template minecraft:pillager_outpost/watchtower ~-16 ~ ~7 counterclockwise_90
execute if entity @s[y_rotation=316..44] run place template minecraft:pillager_outpost/watchtower ~7 ~ ~16 180

fill ~4 ~4 ~-4 ~-4 ~ ~4 air replace minecraft:jigsaw


advancement revoke @s only evercraft:treasure/hack/pillager_outpost