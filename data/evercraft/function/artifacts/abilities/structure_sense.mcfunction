# Spelunker's Echo - Structure Sense
# Passive: Night Vision + Haste I when underground (below Y=60)
# Particles near chests/spawners periodically
# Called from tick function for players with the accessory

# Check if player has Spelunker's Echo in inventory
execute unless items entity @s container.* *[custom_data~{artifact:"spelunkers_echo"}] run return 0

# Passive: Night Vision always
effect give @s night_vision 13 0 true

# Haste I only when underground (Y < 60)
execute if entity @s[y=-64,dy=124] run effect give @s haste 3 0 true

# Treasure ping - particles near chests/spawners every 2 seconds (1/40 chance per tick)
execute store result score #rand ec.var run random value 1..40
execute unless score #rand ec.var matches 1 run return 0

# Spawn particles at nearby chests and spawners
execute at @s as @e[type=item_display,tag=ec.treasure_ping,distance=..30] run kill @s
execute at @s positioned ~-24 ~-12 ~-24 run function evercraft:artifacts/abilities/structure_sense_scan

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
