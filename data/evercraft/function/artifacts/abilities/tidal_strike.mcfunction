# Tidal Strike — Prismarine Pickaxe
# On hit: Pull target toward player + Slowness
advancement revoke @s only evercraft:artifacts/abilities/tidal_strike_trigger
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run effect give @s slowness 3 1 false
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s facing entity @p feet run tp @s ^ ^ ^1.5
execute at @s run particle bubble_pop ~ ~1 ~ 0.3 0.5 0.3 0.1 12
playsound minecraft:entity.player.splash player @s ~ ~ ~ 0.5 1.2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
