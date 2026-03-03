# Heartstealer — Precision Strike: 25% chance for bonus 4 damage
# Run as the swinging player, anchored eyes

# Roll once
tag @s remove ec.rg_proc
execute if predicate evercraft:random/chance_25 run tag @s add ec.rg_proc

# Apply bonus damage + effects if proc'd
execute if entity @s[tag=ec.rg_proc] positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2,limit=1,sort=nearest] run damage @s 4 minecraft:player_attack by @a[tag=ec.rg_swinger,limit=1]
execute if entity @s[tag=ec.rg_proc] positioned ^ ^ ^1.5 run particle crit ~ ~1 ~ 0.3 0.4 0.3 0.2 8
execute if entity @s[tag=ec.rg_proc] run playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 0.6 1.5

tag @s remove ec.rg_proc
