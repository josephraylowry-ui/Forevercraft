# World Boss — Title check for Crimson Behemoth
# Called as participant after kill counter incremented

# Milestone 1: First kill → Crimson Behemoth Slayer (ID 33)
execute if score @s wb.k9 matches 1 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Crimson Behemoth Slayer",color:"dark_red",bold:true}]
execute if score @s wb.k9 matches 1 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 2: 5 kills → Crimson Behemoth Conqueror (ID 34)
execute if score @s wb.k9 matches 5 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Crimson Behemoth Conqueror",color:"dark_red",bold:true}]
execute if score @s wb.k9 matches 5 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 3: 10 kills → Crimson Behemoth Vanquisher (ID 35)
execute if score @s wb.k9 matches 10 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Crimson Behemoth Vanquisher",color:"dark_red",bold:true}]
execute if score @s wb.k9 matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 4: 25 kills → Crimson Behemoth Nemesis (ID 36)
execute if score @s wb.k9 matches 25 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Crimson Behemoth Nemesis",color:"dark_red",bold:true}]
execute if score @s wb.k9 matches 25 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
execute if score @s wb.k9 matches 25 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 force @s
