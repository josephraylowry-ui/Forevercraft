# Crop Seed Auto-Replant — Scheduled every 2 seconds
# Seeds and plantable crops on farmland/soul_sand auto-plant themselves
# Similar to sapling replant but immediate (no timer) since farming is active gameplay

# Re-schedule
schedule function evercraft:world/crop_replant/tick 2s

# Find seed/crop items on the ground sitting on farmland or soul_sand
execute as @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds"},OnGround:1b}] at @s run function evercraft:world/crop_replant/try_plant
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot"},OnGround:1b}] at @s run function evercraft:world/crop_replant/try_plant
execute as @e[type=item,nbt={Item:{id:"minecraft:potato"},OnGround:1b}] at @s run function evercraft:world/crop_replant/try_plant
execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"},OnGround:1b}] at @s run function evercraft:world/crop_replant/try_plant
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_wart"},OnGround:1b}] at @s run function evercraft:world/crop_replant/try_plant
execute as @e[type=item,nbt={Item:{id:"minecraft:melon_seeds"},OnGround:1b}] at @s run function evercraft:world/crop_replant/try_plant
execute as @e[type=item,nbt={Item:{id:"minecraft:pumpkin_seeds"},OnGround:1b}] at @s run function evercraft:world/crop_replant/try_plant
execute as @e[type=item,nbt={Item:{id:"minecraft:torchflower_seeds"},OnGround:1b}] at @s run function evercraft:world/crop_replant/try_plant
execute as @e[type=item,nbt={Item:{id:"minecraft:pitcher_pod"},OnGround:1b}] at @s run function evercraft:world/crop_replant/try_plant
