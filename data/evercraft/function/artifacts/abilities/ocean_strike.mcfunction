# Ocean Strike — Prismarine Gauntlet
# Water damage + Slowness II on target
advancement revoke @s only evercraft:artifacts/abilities/ocean_strike_trigger
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run damage @s 3 minecraft:drown
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run effect give @s slowness 4 1 false
execute at @s run particle bubble ~ ~1 ~ 0.5 0.5 0.5 0.1 20
playsound minecraft:entity.dolphin.splash player @s ~ ~ ~ 0.8 1.2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
