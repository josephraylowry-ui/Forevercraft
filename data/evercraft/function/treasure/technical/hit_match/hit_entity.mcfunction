# Crimson Chestplate
execute at @s if entity @a[scores={mt.crimson_chestplate=0},distance=..10,limit=1] run return run function evercraft:treasure/items/armor/crimson_chestplate with storage evercraft:treasure/write data
# Small Ride
execute at @s if entity @a[scores={mt.small_hit=0},distance=..6,limit=1] run return run function evercraft:treasure/mechanics/small/ride_entity
# Piglin Jealousy
execute at @s if entity @a[scores={mt.piglin_jealousy=0},limit=1] run return run function evercraft:treasure/runes/piglin/steal