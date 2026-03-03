# Remove Well-Fed buff
attribute @s minecraft:luck modifier remove evercraft:well_fed
scoreboard players reset @s ec.ck_wellfed
tellraw @s [{text:"[Kitchen] ",color:"gold"},{text:"Your Well-Fed buff has worn off.",color:"gray"}]
