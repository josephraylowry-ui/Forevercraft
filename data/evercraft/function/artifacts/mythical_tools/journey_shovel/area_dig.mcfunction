# Journey Shovel - Area Dig Single Block
# Mines a single block if it's mineable by shovel

# Only mine blocks that are mineable by shovel (dirt, sand, gravel, etc.)
execute if predicate evercraft:mythical_tools/is_shovel_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if predicate evercraft:mythical_tools/is_shovel_mineable run setblock ~ ~ ~ air destroy
