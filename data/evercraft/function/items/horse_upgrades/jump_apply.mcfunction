# Apply jump upgrade to horse
# Runs as the player who consumed the item

# Find nearest tamed horse within 8 blocks and add jump strength modifier
execute as @s at @s as @e[type=horse,distance=..8,limit=1,sort=nearest,nbt={Tame:1b}] run attribute @s jump_strength modifier add evercraft:jump_boost 0.2 add_value

# Visual and audio feedback at horse position
execute as @s at @s as @e[type=horse,distance=..8,limit=1,sort=nearest,nbt={Tame:1b}] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 0.1 20 force
execute as @s at @s as @e[type=horse,distance=..8,limit=1,sort=nearest,nbt={Tame:1b}] at @s run particle minecraft:cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.05 25 force
execute as @s at @s as @e[type=horse,distance=..8,limit=1,sort=nearest,nbt={Tame:1b}] at @s run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 0.7 1.5
execute as @s at @s as @e[type=horse,distance=..8,limit=1,sort=nearest,nbt={Tame:1b}] at @s run playsound minecraft:entity.horse.eat master @a[distance=..10] ~ ~ ~ 1.0 1.0

# Display message
title @s actionbar {text:"Horse jump strength increased!",color:"green",bold:true}

# Revoke advancement for reuse
advancement revoke @s only evercraft:items/horse_upgrades/jump_carrot_used
