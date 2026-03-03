# Uppercut — Golden Gauntlet
# Launches target into the air
advancement revoke @s only evercraft:artifacts/abilities/uppercut_trigger
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run effect give @s levitation 1 10 false
execute at @s run particle cloud ~ ~1 ~ 0.3 0.2 0.3 0.1 10
playsound minecraft:entity.iron_golem.attack player @s ~ ~ ~ 1 0.7

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
