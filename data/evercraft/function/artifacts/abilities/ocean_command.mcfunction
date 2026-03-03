# Ocean Command — Fantasy Trident
# Water Breathing + Conduit Power + drowning damage to target
advancement revoke @s only evercraft:artifacts/abilities/ocean_command_trigger
effect give @s water_breathing 15 0 false
effect give @s conduit_power 10 0 false
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run damage @s 3 minecraft:drown
execute at @s run particle bubble ~ ~1 ~ 0.5 0.5 0.5 0.1 20
playsound minecraft:entity.trident.return player @s ~ ~ ~ 0.8 0.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
