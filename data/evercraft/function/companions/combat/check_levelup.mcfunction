# Pet Combat — Check if Combat Level Up
# CXP required per level: level * 5 + 5 (5, 10, 15, 20, ... 505)
# Total to max (level 100): 25250

# Calculate CXP needed for next level: (current_level * 5) + 5
scoreboard players operation #pc_threshold ec.var = #pc_clvl ec.var
scoreboard players operation #pc_threshold ec.var *= #5 ec.const
scoreboard players add #pc_threshold ec.var 5

# Check if enough XP
execute unless score #pc_cxp ec.var >= #pc_threshold ec.var run return 0

# Level up!
scoreboard players operation #pc_cxp ec.var -= #pc_threshold ec.var
scoreboard players add #pc_clvl ec.var 1

# Effects
execute at @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] run particle totem_of_undying ~ ~0.5 ~ 0.3 0.3 0.3 0.1 15
execute at @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.8 1.2

# Notify
tellraw @s [{text:"Your companion's combat prowess increased to ",color:"gold"},{text:"Level ",color:"yellow"},{score:{name:"#pc_clvl",objective:"ec.var"},color:"yellow",bold:true},{text:"!",color:"gold"}]

# Check for another level up (in case of overflow)
execute if score #pc_clvl ec.var matches ..99 run function evercraft:companions/combat/check_levelup
