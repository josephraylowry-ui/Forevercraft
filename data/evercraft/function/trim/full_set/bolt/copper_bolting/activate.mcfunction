execute if items entity @s player.cursor *[custom_data~{trim_abilities_bolting:1b}] run return run function evercraft:trim/full_set/bolt/copper_bolting/execute with storage trim_abilities:copper_bolting root
execute if items entity @s player.crafting.* * run return 0
# command fails if no items in crafting grid (meaning inventory must be closed), so function proceeds
tag @s remove trim_abilities_bolting
