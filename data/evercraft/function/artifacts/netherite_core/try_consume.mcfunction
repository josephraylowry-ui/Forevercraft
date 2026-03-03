# Ancient Netherite Core - Try to consume netherite blocks
# Called when player is holding the core with netherite blocks in inventory

tellraw @s {text:"Try consume called!",color:"green"}

# Check if already max level
execute if items entity @s weapon.mainhand minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:4}] run return run tellraw @s {text:"Your Ancient Netherite Core is already at maximum level!",color:"gold"}

# Consume one block and track progress
clear @s minecraft:netherite_block 1
scoreboard players add @s evercraft.nc_blocks 1

# Play consume sound and particle
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 1.2
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 0.02 5

# Show current count
tellraw @s [{text:"Blocks consumed: ",color:"gold"},{score:{name:"@s",objective:"evercraft.nc_blocks"}}]

# Check upgrade thresholds based on current level
# Level 0 -> Level 1 at 9 blocks
execute if items entity @s weapon.mainhand minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:0}] if score @s evercraft.nc_blocks matches 9 run function evercraft:artifacts/netherite_core/upgrade_hand_to_1

# Level 1 -> Level 2 at 34 blocks
execute if items entity @s weapon.mainhand minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:1}] if score @s evercraft.nc_blocks matches 34 run function evercraft:artifacts/netherite_core/upgrade_hand_to_2

# Level 2 -> Level 3 at 100 blocks
execute if items entity @s weapon.mainhand minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:2}] if score @s evercraft.nc_blocks matches 100 run function evercraft:artifacts/netherite_core/upgrade_hand_to_3

# Level 3 -> Level 4 at 244 blocks
execute if items entity @s weapon.mainhand minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:3}] if score @s evercraft.nc_blocks matches 244 run function evercraft:artifacts/netherite_core/upgrade_hand_to_4

# Show progress actionbar based on level
execute if items entity @s weapon.mainhand minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:0}] run title @s actionbar [{text:"Awakening: ",color:"dark_purple"},{score:{name:"@s",objective:"evercraft.nc_blocks"},color:"gold"},{text:"/9 blocks",color:"gray"}]

execute if items entity @s weapon.mainhand minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:1}] run title @s actionbar [{text:"Level 2: ",color:"dark_purple"},{score:{name:"@s",objective:"evercraft.nc_blocks"},color:"gold"},{text:"/34 blocks",color:"gray"}]

execute if items entity @s weapon.mainhand minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:2}] run title @s actionbar [{text:"Level 3: ",color:"dark_purple"},{score:{name:"@s",objective:"evercraft.nc_blocks"},color:"gold"},{text:"/100 blocks",color:"gray"}]

execute if items entity @s weapon.mainhand minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:3}] run title @s actionbar [{text:"Level 4: ",color:"dark_purple"},{score:{name:"@s",objective:"evercraft.nc_blocks"},color:"gold"},{text:"/244 blocks",color:"gray"}]
