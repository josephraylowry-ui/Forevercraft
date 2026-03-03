# Dragon's Breath - Set block on fire at range (15 blocks)
# Called when player shift+uses Draconic Gale

# Initialize raycast
scoreboard players set #fire_dist ec.var 0
execute at @s anchored eyes run function evercraft:artifacts/abilities/dragon_fan/fire_raycast_step

# Sound and visual at player
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.0 0.8
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.8 1.0
particle flame ~ ~1 ~ 0.3 0.3 0.3 0.05 10

# Cooldown message
title @s actionbar {text:"Dragon's Breath!",color:"red"}
