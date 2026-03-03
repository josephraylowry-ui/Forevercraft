# Warden's Echo - Activate Vibration Sense
# Makes ALL mobs glow within 24 blocks

# Check cooldown (30 seconds)
execute if score @s ec.echo_cd matches 1.. run return 0

# Apply glowing to all mobs within 24 blocks
effect give @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,distance=..24] glowing 10 0 true

# Visual and audio feedback - warden-like
particle sculk_charge_pop ~ ~1 ~ 1 1 1 0.1 20
playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1.0 1.0
title @s actionbar {text:"Vibrations detected...",color:"dark_aqua"}

# Set cooldown (30 seconds = 600 ticks)
scoreboard players set @s ec.echo_cd 600
