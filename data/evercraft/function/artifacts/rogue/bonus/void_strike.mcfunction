# Void-Touched Blade — Void Strike: 15% chance to levitate target for 1s
# Run as the swinging player, anchored eyes

# Roll once
tag @s remove ec.rg_proc
execute if predicate evercraft:random/chance_15 run tag @s add ec.rg_proc

# Apply levitation + effects if proc'd
execute if entity @s[tag=ec.rg_proc] positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2,limit=2,sort=nearest] run effect give @s levitation 1 1
execute if entity @s[tag=ec.rg_proc] positioned ^ ^ ^1.5 run particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 8
execute if entity @s[tag=ec.rg_proc] run playsound minecraft:entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 0.4 1.8

tag @s remove ec.rg_proc
