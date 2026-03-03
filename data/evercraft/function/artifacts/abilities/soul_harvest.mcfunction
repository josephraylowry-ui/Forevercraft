# Soul Harvest — Eyelander
# Gain Strength II + Speed I for 15 seconds on kill (stacks with repeated kills)
advancement revoke @s only evercraft:artifacts/abilities/soul_harvest_trigger
effect give @s strength 15 1 false
effect give @s speed 15 0 false
particle soul ~ ~1 ~ 0.3 0.5 0.3 0.02 10
playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 0.2 2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
