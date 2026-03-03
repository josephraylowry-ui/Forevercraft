# Apply health upgrade to horse
# Runs as the player who consumed the item

# Find nearest tamed horse within 8 blocks and add max health modifier
execute as @s at @s as @e[type=horse,distance=..8,limit=1,sort=nearest,nbt={Tame:1b}] run attribute @s max_health modifier add evercraft:health_boost 4 add_value

# Heal the horse to reflect the new max health
execute as @s at @s as @e[type=horse,distance=..8,limit=1,sort=nearest,nbt={Tame:1b}] run effect give @s minecraft:instant_health 1 1 true

# Visual and audio feedback at horse position
execute as @s at @s as @e[type=horse,distance=..8,limit=1,sort=nearest,nbt={Tame:1b}] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 0.1 20 force
execute as @s at @s as @e[type=horse,distance=..8,limit=1,sort=nearest,nbt={Tame:1b}] at @s run particle minecraft:heart ~ ~1.5 ~ 0.5 0.5 0.5 0.1 10 force
execute as @s at @s as @e[type=horse,distance=..8,limit=1,sort=nearest,nbt={Tame:1b}] at @s run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 0.7 1.5
execute as @s at @s as @e[type=horse,distance=..8,limit=1,sort=nearest,nbt={Tame:1b}] at @s run playsound minecraft:entity.horse.eat master @a[distance=..10] ~ ~ ~ 1.0 1.0

# Display message
title @s actionbar {text:"Horse max health increased!",color:"red",bold:true}

# Revoke advancement for reuse
advancement revoke @s only evercraft:items/horse_upgrades/health_carrot_used
