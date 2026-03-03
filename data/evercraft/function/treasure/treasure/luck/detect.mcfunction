# Detect player's luck attribute and store in scoreboard
# Called when treasure spawns, run as player
# Luck scaling: 0-35 luck maps to bonus rolls in chests

# Reset luck score
scoreboard players set @s mt.luck 0

# Get luck attribute (whole number, scales to actual luck value)
# attribute get returns luck * scale, so luck 5 with scale 1 = 5
execute store result score @s mt.luck run attribute @s luck get 1

# Cap at 35 (max useful luck)
execute if score @s mt.luck matches 35.. run scoreboard players set @s mt.luck 35

# Also calculate bonus rolls based on luck tier
# Luck 0: 0 bonus, Luck 1-2: 1 bonus, Luck 3-4: 2 bonus, etc.
scoreboard players operation @s mt.luck_bonus = @s mt.luck
scoreboard players operation @s mt.luck_bonus /= #2 mt.constant

# Store for loot table access
execute store result storage evercraft:treasure/luck bonus int 1 run scoreboard players get @s mt.luck_bonus
execute store result storage evercraft:treasure/luck level int 1 run scoreboard players get @s mt.luck
