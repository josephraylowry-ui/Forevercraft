# Lightning Strike - Chance to strike lightning on hit
# 25% chance to summon lightning at target

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/lightning_strike_trigger

# Roll for lightning (1 in 4 chance)
execute store result score @s ec.artifact_roll run random value 1..4
execute if score @s ec.artifact_roll matches 1 at @s at @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run summon lightning_bolt ~ ~ ~

# Visual/audio feedback (always show sparks)
execute at @s run particle electric_spark ~ ~1 ~ 0.3 0.5 0.3 0.1 10

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
