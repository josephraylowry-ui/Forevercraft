# Water Breathing — Ancient Trident
# Grants Water Breathing on hit + Dolphin's Grace
advancement revoke @s only evercraft:artifacts/abilities/water_breathing_trigger
effect give @s water_breathing 30 0 false
effect give @s dolphins_grace 10 0 false
execute at @s run particle bubble ~ ~1 ~ 0.3 0.5 0.3 0.1 10
playsound minecraft:entity.dolphin.ambient player @s ~ ~ ~ 0.5 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
