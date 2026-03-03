# Strength on Kill - Gain strength after killing an enemy
# Grants Strength I for 10 seconds

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/strength_on_kill_trigger

# Apply strength effect
effect give @s strength 10 0 false

# Visual/audio feedback
particle soul ~ ~1 ~ 0.3 0.5 0.3 0.02 8
playsound minecraft:entity.wither_skeleton.death player @s ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
