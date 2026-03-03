# Dungeon Instance System — Start (Key Consumed)
# Called when player consumes a Dungeon Key (advancement reward)
# Validates conditions, then opens difficulty selection menu
# Run as: the player who consumed the key

# Revoke advancement for reuse
advancement revoke @s only evercraft:dungeon/use_key

# Check if a dungeon is already active — return the key if so
execute if score #dg_active ec.var matches 1 run loot give @s loot evercraft:dungeon/key
execute if score #dg_active ec.var matches 1 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"A dungeon is already in progress! Key returned.",color:"red"}]
execute if score #dg_active ec.var matches 1 run return 0

# Check 7-day lockout (504000 gametime ticks = 7 in-game days)
execute store result score #dg_now ec.var run time query gametime
scoreboard players operation #dg_elapsed ec.var = #dg_now ec.var
scoreboard players operation #dg_elapsed ec.var -= @s dg.lockout
execute if score @s dg.lockout matches 1.. if score #dg_elapsed ec.var matches ..503999 run loot give @s loot evercraft:dungeon/key
execute if score @s dg.lockout matches 1.. if score #dg_elapsed ec.var matches ..503999 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"You must wait before running another dungeon! Key returned.",color:"red"}]
execute if score @s dg.lockout matches 1.. if score #dg_elapsed ec.var matches ..503999 run function evercraft:dungeon/lockout_info
execute if score @s dg.lockout matches 1.. if score #dg_elapsed ec.var matches ..503999 run return 0

# Check if player is at a structure (not villages — those use Village Defense)
execute at @s unless predicate evercraft:dungeon/at_structure run loot give @s loot evercraft:dungeon/key
execute at @s unless predicate evercraft:dungeon/at_structure run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"You must be inside a structure to use this! Key returned.",color:"red"}]
execute at @s unless predicate evercraft:dungeon/at_structure run return 0

# Check if player is in a GUI menu — return key
execute if entity @s[tag=Adv.InMenu] run loot give @s loot evercraft:dungeon/key
execute if entity @s[tag=Adv.InMenu] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Close your menu first! Key returned.",color:"red"}]
execute if entity @s[tag=Adv.InMenu] run return 0
execute if entity @s[tag=TX.InMenu] run loot give @s loot evercraft:dungeon/key
execute if entity @s[tag=TX.InMenu] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Close your menu first! Key returned.",color:"red"}]
execute if entity @s[tag=TX.InMenu] run return 0
execute if entity @s[tag=RF.InMenu] run loot give @s loot evercraft:dungeon/key
execute if entity @s[tag=RF.InMenu] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Close your menu first! Key returned.",color:"red"}]
execute if entity @s[tag=RF.InMenu] run return 0
execute if entity @s[tag=HS.InMenu] run loot give @s loot evercraft:dungeon/key
execute if entity @s[tag=HS.InMenu] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Close your menu first! Key returned.",color:"red"}]
execute if entity @s[tag=HS.InMenu] run return 0
execute if entity @s[tag=DG.InMenu] run loot give @s loot evercraft:dungeon/key
execute if entity @s[tag=DG.InMenu] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Close your menu first! Key returned.",color:"red"}]
execute if entity @s[tag=DG.InMenu] run return 0

# === OPEN DIFFICULTY SELECTION MENU ===
execute at @s run function evercraft:dungeon/menu/open
