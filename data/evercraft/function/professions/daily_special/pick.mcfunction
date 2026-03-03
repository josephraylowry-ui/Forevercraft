# Profession Daily Special — Pick today's featured profession
# Called from calendar/dawn_check (new day)
# Uses visual_day % 10 to cycle through 10 refreshable professions (excludes Nymph)

execute store result score #prof_daily ec.var run time query day
scoreboard players set #10_temp ec.temp 10
scoreboard players operation #prof_daily ec.var %= #10_temp ec.temp

# Force trade refresh for all custom villagers (clears ec.trades_set)
tag @e[type=minecraft:villager,tag=ec.trades_set] remove ec.trades_set

# Announce
execute if score #prof_daily ec.var matches 0 run tellraw @a [{text:"[Market] ",color:"dark_green"},{text:"Daily Special: ",color:"gold"},{text:"Artificer",color:"aqua"},{text:" villagers have a bonus trade today!",color:"green"}]
execute if score #prof_daily ec.var matches 1 run tellraw @a [{text:"[Market] ",color:"dark_green"},{text:"Daily Special: ",color:"gold"},{text:"Bartender",color:"aqua"},{text:" villagers have a bonus trade today!",color:"green"}]
execute if score #prof_daily ec.var matches 2 run tellraw @a [{text:"[Market] ",color:"dark_green"},{text:"Daily Special: ",color:"gold"},{text:"Beekeeper",color:"aqua"},{text:" villagers have a bonus trade today!",color:"green"}]
execute if score #prof_daily ec.var matches 3 run tellraw @a [{text:"[Market] ",color:"dark_green"},{text:"Daily Special: ",color:"gold"},{text:"Circuit Board",color:"aqua"},{text:" villagers have a bonus trade today!",color:"green"}]
execute if score #prof_daily ec.var matches 4 run tellraw @a [{text:"[Market] ",color:"dark_green"},{text:"Daily Special: ",color:"gold"},{text:"Expeditionist",color:"aqua"},{text:" villagers have a bonus trade today!",color:"green"}]
execute if score #prof_daily ec.var matches 5 run tellraw @a [{text:"[Market] ",color:"dark_green"},{text:"Daily Special: ",color:"gold"},{text:"Hunter",color:"aqua"},{text:" villagers have a bonus trade today!",color:"green"}]
execute if score #prof_daily ec.var matches 6 run tellraw @a [{text:"[Market] ",color:"dark_green"},{text:"Daily Special: ",color:"gold"},{text:"Spelunker",color:"aqua"},{text:" villagers have a bonus trade today!",color:"green"}]
execute if score #prof_daily ec.var matches 7 run tellraw @a [{text:"[Market] ",color:"dark_green"},{text:"Daily Special: ",color:"gold"},{text:"Retired Adventurer",color:"aqua"},{text:" villagers have a bonus trade today!",color:"green"}]
execute if score #prof_daily ec.var matches 8 run tellraw @a [{text:"[Market] ",color:"dark_green"},{text:"Daily Special: ",color:"gold"},{text:"Wise Wanderer",color:"aqua"},{text:" villagers have a bonus trade today!",color:"green"}]
execute if score #prof_daily ec.var matches 9 run tellraw @a [{text:"[Market] ",color:"dark_green"},{text:"Daily Special: ",color:"gold"},{text:"Zookeeper",color:"aqua"},{text:" villagers have a bonus trade today!",color:"green"}]
