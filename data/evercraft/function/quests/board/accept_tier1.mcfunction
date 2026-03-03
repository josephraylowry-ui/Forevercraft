# Accept Tier 1 (Errand) Quest — Mystery Roll
execute if score @s ec.quest_id_1 matches 1.. run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already have an Errand active. Cancel it?",color:"yellow"}]
execute if score @s ec.quest_id_1 matches 1.. run tellraw @s ["",{text:"  "},{text:"[Cancel Quest]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 11"}},{text:"  "},{text:"[Keep Quest]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 20"}}]
execute if score @s ec.quest_id_1 matches 1.. run return 1
execute if score @s ec.quest_done_1 matches 1 run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already completed today's Errand. Return tomorrow!",color:"red"}]
execute if score @s ec.quest_done_1 matches 1 run return 1

# Randomly assign a quest from the Errand pool
function evercraft:quests/board/roll_tier1
scoreboard players set @s ec.quest_prog_1 0
scoreboard players operation @s ec.quest_village = @s ec.current_village

# Reset kill counters for hunt quests (so lifetime kills don't count)
execute if score @s ec.quest_id_1 matches 4 run scoreboard players set @s ec.kills_zombie 0
execute if score @s ec.quest_id_1 matches 5 run scoreboard players set @s ec.kills_spider 0
execute if score @s ec.quest_id_1 matches 19 run scoreboard players set @s ec.kills_zombie 0
execute if score @s ec.quest_id_1 matches 48 run scoreboard players set @s ec.kills_husk 0
execute if score @s ec.quest_id_1 matches 49 run scoreboard players set @s ec.kills_stray 0

# Snapshot system quest counters for delta tracking
execute if score @s ec.quest_id_1 matches 16 run scoreboard players operation @s ec.stat_snap_1 = @s ach.forages_done
execute if score @s ec.quest_id_1 matches 17 run scoreboard players operation @s ec.stat_snap_1 = @s ach.prospects_done
execute if score @s ec.quest_id_1 matches 18 run scoreboard players operation @s ec.stat_snap_1 = @s ach.meals_cooked
execute if score @s ec.quest_id_1 matches 35 run scoreboard players operation @s ec.stat_snap_1 = @s ach.lore_found
execute if score @s ec.quest_id_1 matches 36 run scoreboard players operation @s ec.stat_snap_1 = @s ach.meals_cooked
execute if score @s ec.quest_id_1 matches 38 run scoreboard players operation @s ec.stat_snap_1 = @s ach.forages_done
execute if score @s ec.quest_id_1 matches 41 run scoreboard players operation @s ec.stat_snap_1 = @s ach.meals_cooked
execute if score @s ec.quest_id_1 matches 50 run scoreboard players operation @s ec.stat_snap_1 = @s ach.prospects_done

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 1.2
particle totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.1 10
return 1
