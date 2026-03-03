# World Boss — Title check for Verdant Warden
# Called as participant after kill counter incremented

# Milestone 1: First kill → Verdant Warden Slayer (ID 5)
execute if score @s wb.k2 matches 1 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Verdant Warden Slayer",color:"green",bold:true}]
execute if score @s wb.k2 matches 1 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 2: 5 kills → Verdant Warden Conqueror (ID 6)
execute if score @s wb.k2 matches 5 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Verdant Warden Conqueror",color:"green",bold:true}]
execute if score @s wb.k2 matches 5 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 3: 10 kills → Verdant Warden Vanquisher (ID 7)
execute if score @s wb.k2 matches 10 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Verdant Warden Vanquisher",color:"green",bold:true}]
execute if score @s wb.k2 matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 4: 25 kills → Verdant Warden Nemesis (ID 8)
execute if score @s wb.k2 matches 25 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Verdant Warden Nemesis",color:"green",bold:true}]
execute if score @s wb.k2 matches 25 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
execute if score @s wb.k2 matches 25 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 force @s
