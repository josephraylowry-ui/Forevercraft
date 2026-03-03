# Accept Tier 2 (Task) Quest — Mystery Roll
execute if score @s ec.quest_id_2 matches 1.. run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already have a Task active. Cancel it? ",color:"yellow"},{text:"(-15 rep)",color:"red"}]
execute if score @s ec.quest_id_2 matches 1.. run tellraw @s ["",{text:"  "},{text:"[Cancel Quest]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 12"}},{text:"  "},{text:"[Keep Quest]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 20"}}]
execute if score @s ec.quest_id_2 matches 1.. run return 1
execute if score @s ec.quest_done_2 matches 1 run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already completed today's Task. Return tomorrow!",color:"red"}]
execute if score @s ec.quest_done_2 matches 1 run return 1

function evercraft:quests/board/roll_tier2
scoreboard players set @s ec.quest_prog_2 0
scoreboard players operation @s ec.quest_village = @s ec.current_village

# Reset kill counters for hunt quests (so lifetime kills don't count)
execute if score @s ec.quest_id_2 matches 2 run scoreboard players set @s ec.kills_skeleton 0
execute if score @s ec.quest_id_2 matches 5 run scoreboard players set @s ec.kills_creeper 0
execute if score @s ec.quest_id_2 matches 11 run scoreboard players set @s ec.kills_drowned 0
execute if score @s ec.quest_id_2 matches 15 run scoreboard players set @s ec.kills_phantom 0
execute if score @s ec.quest_id_2 matches 23 run scoreboard players set @s ec.kills_endermite 0
execute if score @s ec.quest_id_2 matches 24 run scoreboard players set @s ec.kills_vindicator 0
execute if score @s ec.quest_id_2 matches 29 run scoreboard players set @s ec.kills_piglin 0
execute if score @s ec.quest_id_2 matches 30 run scoreboard players set @s ec.kills_magma_cube 0
execute if score @s ec.quest_id_2 matches 37 run scoreboard players set @s ec.kills_silverfish 0
execute if score @s ec.quest_id_2 matches 38 run scoreboard players set @s ec.kills_hoglin 0
execute if score @s ec.quest_id_2 matches 49 run scoreboard players set @s ec.kills_ghast 0

# Snapshot system quest counters for delta tracking
execute if score @s ec.quest_id_2 matches 16 run scoreboard players operation @s ec.stat_snap_2 = @s ach.forages_done
execute if score @s ec.quest_id_2 matches 17 run scoreboard players operation @s ec.stat_snap_2 = @s ach.prospects_done
execute if score @s ec.quest_id_2 matches 18 run scoreboard players operation @s ec.stat_snap_2 = @s ach.meals_cooked
execute if score @s ec.quest_id_2 matches 19 run scoreboard players operation @s ec.stat_snap_2 = @s ach.meals_cooked
execute if score @s ec.quest_id_2 matches 20 run scoreboard players operation @s ec.stat_snap_2 = @s ach.lore_found
execute if score @s ec.quest_id_2 matches 31 run scoreboard players operation @s ec.stat_snap_2 = @s ach.meals_cooked
execute if score @s ec.quest_id_2 matches 32 run scoreboard players operation @s ec.stat_snap_2 = @s ach.prospects_done
execute if score @s ec.quest_id_2 matches 40 run scoreboard players operation @s ec.stat_snap_2 = @s ach.forages_done
execute if score @s ec.quest_id_2 matches 41 run scoreboard players operation @s ec.stat_snap_2 = @s ach.lore_found
execute if score @s ec.quest_id_2 matches 48 run scoreboard players operation @s ec.stat_snap_2 = @s ach.forages_done
execute if score @s ec.quest_id_2 matches 50 run scoreboard players operation @s ec.stat_snap_2 = @s ach.meals_cooked

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 1.2
particle totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.1 10
return 1
