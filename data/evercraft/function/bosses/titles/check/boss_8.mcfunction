# World Boss — Title check for Soul Warden
# Called as participant after kill counter incremented

# Milestone 1: First kill → Soul Warden Slayer (ID 29)
execute if score @s wb.k8 matches 1 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Soul Warden Slayer",color:"dark_aqua",bold:true}]
execute if score @s wb.k8 matches 1 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 2: 5 kills → Soul Warden Conqueror (ID 30)
execute if score @s wb.k8 matches 5 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Soul Warden Conqueror",color:"dark_aqua",bold:true}]
execute if score @s wb.k8 matches 5 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 3: 10 kills → Soul Warden Vanquisher (ID 31)
execute if score @s wb.k8 matches 10 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Soul Warden Vanquisher",color:"dark_aqua",bold:true}]
execute if score @s wb.k8 matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 4: 25 kills → Soul Warden Nemesis (ID 32)
execute if score @s wb.k8 matches 25 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Soul Warden Nemesis",color:"dark_aqua",bold:true}]
execute if score @s wb.k8 matches 25 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
execute if score @s wb.k8 matches 25 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 force @s
