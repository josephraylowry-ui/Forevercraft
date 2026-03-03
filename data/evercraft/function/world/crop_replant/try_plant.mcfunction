# Crop Seed Auto-Replant — Try to plant this seed item
# Run as item entity at its position
#
# Items resting on farmland (15/16 height) or soul_sand (14/16 height):
#   floor(entity Y) = the soil block itself
#   ~ ~ ~ = farmland/soul_sand block, ~ ~1 ~ = crop position above
#
# Uses 'keep' mode so setblock only succeeds if the target is air
# (prevents overwriting existing crops or double-planting)

scoreboard players set #planted ec.temp 0

# Farmland crops
execute if data entity @s {Item:{id:"minecraft:wheat_seeds"}} if block ~ ~ ~ farmland store success score #planted ec.temp run setblock ~ ~1 ~ minecraft:wheat[age=0] keep
execute if data entity @s {Item:{id:"minecraft:carrot"}} if block ~ ~ ~ farmland store success score #planted ec.temp run setblock ~ ~1 ~ minecraft:carrots[age=0] keep
execute if data entity @s {Item:{id:"minecraft:potato"}} if block ~ ~ ~ farmland store success score #planted ec.temp run setblock ~ ~1 ~ minecraft:potatoes[age=0] keep
execute if data entity @s {Item:{id:"minecraft:beetroot_seeds"}} if block ~ ~ ~ farmland store success score #planted ec.temp run setblock ~ ~1 ~ minecraft:beetroots[age=0] keep
execute if data entity @s {Item:{id:"minecraft:melon_seeds"}} if block ~ ~ ~ farmland store success score #planted ec.temp run setblock ~ ~1 ~ minecraft:melon_stem[age=0] keep
execute if data entity @s {Item:{id:"minecraft:pumpkin_seeds"}} if block ~ ~ ~ farmland store success score #planted ec.temp run setblock ~ ~1 ~ minecraft:pumpkin_stem[age=0] keep
execute if data entity @s {Item:{id:"minecraft:torchflower_seeds"}} if block ~ ~ ~ farmland store success score #planted ec.temp run setblock ~ ~1 ~ minecraft:torchflower_crop[age=0] keep
execute if data entity @s {Item:{id:"minecraft:pitcher_pod"}} if block ~ ~ ~ farmland store success score #planted ec.temp run setblock ~ ~1 ~ minecraft:pitcher_crop[age=0] keep

# Soul sand crops
execute if data entity @s {Item:{id:"minecraft:nether_wart"}} if block ~ ~ ~ soul_sand store success score #planted ec.temp run setblock ~ ~1 ~ minecraft:nether_wart[age=0] keep

# If planted, consume one seed and show feedback
execute if score #planted ec.temp matches 1 run function evercraft:world/crop_replant/consume_one
