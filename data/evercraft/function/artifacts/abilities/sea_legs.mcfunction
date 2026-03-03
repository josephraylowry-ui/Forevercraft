# Sea Legs — Cutlass
# Grants Speed I + Dolphin's Grace on hit
advancement revoke @s only evercraft:artifacts/abilities/sea_legs_trigger
effect give @s speed 8 0 false
effect give @s dolphins_grace 8 0 false
execute at @s run particle bubble ~ ~1 ~ 0.3 0.3 0.3 0.05 8
playsound minecraft:entity.fish.swim player @s ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
