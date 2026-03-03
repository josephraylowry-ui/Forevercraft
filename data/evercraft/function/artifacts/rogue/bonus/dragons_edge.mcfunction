# Ender Dragon Blade — Dragon's Edge: Weakness I 3s on hit + dragon breath particles
# Run as the swinging player, anchored eyes

# Weakness I for 3s on hit targets
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2.5,limit=3,sort=nearest] run effect give @s weakness 3 0

# Dragon breath particles
execute positioned ^ ^ ^1.5 run particle dragon_breath ~ ~0.8 ~ 0.5 0.3 0.5 0.02 10
execute positioned ^ ^ ^0.5 run particle dragon_breath ~ ~0.5 ~ 0.2 0.2 0.2 0.01 4

# Sound
playsound minecraft:entity.ender_dragon.growl player @a[distance=..16] ~ ~ ~ 0.2 2.0
