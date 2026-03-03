# Set nearby hostile mobs on fire when you attack
# Find any hostile mob that was just hurt (hurt_time = 10) within range
execute as @e[type=#minecraft:hostile,distance=..5,nbt={hurt_time:10s}] run data merge entity @s {Fire:100s}
execute if entity @e[type=#minecraft:hostile,distance=..5,nbt={hurt_time:10s}] run playsound minecraft:item.firecharge.use player @s ~ ~ ~ 0.5 1.5
execute as @e[type=#minecraft:hostile,distance=..5,nbt={hurt_time:10s}] at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.02 10