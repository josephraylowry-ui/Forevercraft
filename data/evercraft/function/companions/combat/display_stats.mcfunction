# Pet Combat — Display Combat Stats
# Shows the active pet's combat statistics

execute unless entity @s[tag=Pets.ActivePet] run return run tellraw @s {text:"No active companion.",color:"red"}

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Load combat data
execute store result score #pc_cxp ec.var run data get entity @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] item.components."minecraft:custom_data".combat_xp
execute store result score #pc_clvl ec.var run data get entity @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] item.components."minecraft:custom_data".combat_level

# Calculate threshold for next level
scoreboard players operation #pc_threshold ec.var = #pc_clvl ec.var
scoreboard players operation #pc_threshold ec.var *= #5 ec.const
scoreboard players add #pc_threshold ec.var 5

# Calculate damage bonus (1% per combat level)
scoreboard players operation #pc_bonus ec.var = #pc_clvl ec.var

tellraw @s [{text:"══ Companion Combat Stats ══",color:"gold",bold:true}]
tellraw @s [{text:"  Combat Level: ",color:"gray"},{score:{name:"#pc_clvl",objective:"ec.var"},color:"yellow",bold:true},{text:"/100",color:"dark_gray"}]
tellraw @s [{text:"  Combat XP: ",color:"gray"},{score:{name:"#pc_cxp",objective:"ec.var"},color:"aqua"},{text:"/",color:"dark_gray"},{score:{name:"#pc_threshold",objective:"ec.var"},color:"dark_gray"}]
tellraw @s [{text:"  Damage Bonus: ",color:"gray"},{text:"+",color:"green"},{score:{name:"#pc_bonus",objective:"ec.var"},color:"green"},{text:"%",color:"green"}]
