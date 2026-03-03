# World Boss — Title check for Ender Architect
# Called as participant after kill counter incremented

# Milestone 1: First kill → Ender Architect Slayer (ID 41)
execute if score @s wb.k11 matches 1 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Ender Architect Slayer",color:"light_purple",bold:true}]
execute if score @s wb.k11 matches 1 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 2: 5 kills → Ender Architect Conqueror (ID 42)
execute if score @s wb.k11 matches 5 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Ender Architect Conqueror",color:"light_purple",bold:true}]
execute if score @s wb.k11 matches 5 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 3: 10 kills → Ender Architect Vanquisher (ID 43)
execute if score @s wb.k11 matches 10 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Ender Architect Vanquisher",color:"light_purple",bold:true}]
execute if score @s wb.k11 matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 4: 25 kills → Ender Architect Nemesis (ID 44)
execute if score @s wb.k11 matches 25 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Ender Architect Nemesis",color:"light_purple",bold:true}]
execute if score @s wb.k11 matches 25 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
execute if score @s wb.k11 matches 25 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 force @s
