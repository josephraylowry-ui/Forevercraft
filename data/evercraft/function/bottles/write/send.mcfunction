# Message in a Bottle — Seal message and add to pool
# @s = player, ec.bottle = message ID (2-9)

# Verify still holding bottle
execute unless items entity @s weapon.mainhand minecraft:glass_bottle[custom_data~{message_bottle:1b}] run tellraw @s [{text:"[Forevercraft] ",color:"gray"},{text:"Hold a Message in a Bottle first!",color:"red"}]
execute unless items entity @s weapon.mainhand minecraft:glass_bottle[custom_data~{message_bottle:1b}] run return 0

# Build message entry in temp storage
data modify storage evercraft:bottles temp set value {}

# Store message ID (2-9)
execute store result storage evercraft:bottles temp.msg int 1 run scoreboard players get @s ec.bottle

# Store current day
execute store result storage evercraft:bottles temp.day int 1 run scoreboard players get #visual_day ec.var

# Detect and store biome
function evercraft:biome/detect
execute store result storage evercraft:bottles temp.biome int 1 run scoreboard players get @s ec.biome_id

# Append to pool
data modify storage evercraft:bottles pool append from storage evercraft:bottles temp

# FIFO: remove oldest if pool > 50
execute store result score #bottle_pool_size ec.temp run data get storage evercraft:bottles pool
execute if score #bottle_pool_size ec.temp matches 51.. run data remove storage evercraft:bottles pool[0]

# Consume the bottle from player's hand
clear @s minecraft:glass_bottle[custom_data~{message_bottle:1b}] 1

# Confirmation
tellraw @s [{text:"[Forevercraft] ",color:"gray"},{text:"Your message has been sealed and cast to the sea!",color:"aqua"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.2
