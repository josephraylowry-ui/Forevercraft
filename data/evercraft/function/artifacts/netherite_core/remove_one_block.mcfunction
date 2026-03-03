# Remove exactly one netherite block from ender chest
# EnderItems is stored on the player, we need to modify the count via data commands

# Get current count in slot 1, subtract 1, write back
# First store the current count
execute store result score #nc_count ec.temp run data get entity @s EnderItems[{id:"minecraft:netherite_block"}].count

# Subtract 1
scoreboard players remove #nc_count ec.temp 1

# If count is now 0 or less, remove the item entirely; otherwise update count
execute if score #nc_count ec.temp matches ..0 run data remove entity @s EnderItems[{id:"minecraft:netherite_block"}]
execute if score #nc_count ec.temp matches 1.. store result entity @s EnderItems[{id:"minecraft:netherite_block"}].count int 1 run scoreboard players get #nc_count ec.temp
