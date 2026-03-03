# Sapling Auto-Replant — Scheduled every 5 seconds
# Saplings on the ground for 30+ seconds have a 33% chance to plant themselves
# Uses a scoreboard timer on item entities (incremented every 5s, triggers at 6 = 30s)

# Re-schedule
schedule function evercraft:world/sapling_replant/tick 5s

# Increment timer for all sapling items on the ground
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_sapling"},OnGround:1b}] run scoreboard players add @s ec.sapling_age 1
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_sapling"},OnGround:1b}] run scoreboard players add @s ec.sapling_age 1
execute as @e[type=item,nbt={Item:{id:"minecraft:birch_sapling"},OnGround:1b}] run scoreboard players add @s ec.sapling_age 1
execute as @e[type=item,nbt={Item:{id:"minecraft:jungle_sapling"},OnGround:1b}] run scoreboard players add @s ec.sapling_age 1
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling"},OnGround:1b}] run scoreboard players add @s ec.sapling_age 1
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_sapling"},OnGround:1b}] run scoreboard players add @s ec.sapling_age 1
execute as @e[type=item,nbt={Item:{id:"minecraft:cherry_sapling"},OnGround:1b}] run scoreboard players add @s ec.sapling_age 1
execute as @e[type=item,nbt={Item:{id:"minecraft:mangrove_propagule"},OnGround:1b}] run scoreboard players add @s ec.sapling_age 1

# At 6 ticks (30 seconds), attempt to plant
execute as @e[type=item,scores={ec.sapling_age=6..}] at @s run function evercraft:world/sapling_replant/try_plant

# Reset timer so they get another chance in 30s if they didn't plant
scoreboard players set @e[type=item,scores={ec.sapling_age=6..}] ec.sapling_age 0
