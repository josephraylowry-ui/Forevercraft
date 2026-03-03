# World Boss — Title check for Stormforged
# Called as participant after kill counter incremented

# Milestone 1: First kill → Stormforged Slayer (ID 9)
execute if score @s wb.k3 matches 1 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Stormforged Slayer",color:"yellow",bold:true}]
execute if score @s wb.k3 matches 1 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 2: 5 kills → Stormforged Conqueror (ID 10)
execute if score @s wb.k3 matches 5 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Stormforged Conqueror",color:"yellow",bold:true}]
execute if score @s wb.k3 matches 5 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 3: 10 kills → Stormforged Vanquisher (ID 11)
execute if score @s wb.k3 matches 10 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Stormforged Vanquisher",color:"yellow",bold:true}]
execute if score @s wb.k3 matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 4: 25 kills → Stormforged Nemesis (ID 12)
execute if score @s wb.k3 matches 25 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Stormforged Nemesis",color:"yellow",bold:true}]
execute if score @s wb.k3 matches 25 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
execute if score @s wb.k3 matches 25 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 force @s
