# Ancient Netherite Core - Upgrade Ritual
# Place the core in an item frame on top of netherite blocks
# Level 1: 9 blocks (3x3)
# Level 2: 34 blocks (3x3 + 5x5 = 9+25)
# Level 3: 134 blocks (9+25+100 = 3x3+5x5+10x10)
# Level 4: 244 blocks (9+25+100+110 = full pyramid)

# Detect item frame with Ancient Netherite Core facing up
execute as @e[type=item_frame,nbt={Facing:1b}] at @s if items entity @s container.0 minecraft:beacon[custom_data~{ancient_netherite_core:1b}] run function evercraft:artifacts/netherite_core/check_blocks
