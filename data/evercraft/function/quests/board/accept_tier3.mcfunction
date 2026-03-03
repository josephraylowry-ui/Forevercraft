# Accept Tier 3 (Contract) Quest — Mystery Roll
execute if score @s ec.quest_id_3 matches 1.. run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already have a Contract active. Cancel it? ",color:"yellow"},{text:"(-25 rep)",color:"red"}]
execute if score @s ec.quest_id_3 matches 1.. run tellraw @s ["",{text:"  "},{text:"[Cancel Quest]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 13"}},{text:"  "},{text:"[Keep Quest]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 20"}}]
execute if score @s ec.quest_id_3 matches 1.. run return 1
execute if score @s ec.quest_done_3 matches 1 run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already completed today's Contract. Return tomorrow!",color:"red"}]
execute if score @s ec.quest_done_3 matches 1 run return 1

function evercraft:quests/board/roll_tier3
scoreboard players set @s ec.quest_prog_3 0
scoreboard players operation @s ec.quest_village = @s ec.current_village

# Reset kill counters for hunt quests (so lifetime kills don't count)
execute if score @s ec.quest_id_3 matches 2 run scoreboard players set @s ec.kills_enderman 0
execute if score @s ec.quest_id_3 matches 4 run scoreboard players set @s ec.kills_cave_spider 0
execute if score @s ec.quest_id_3 matches 6 run scoreboard players set @s ec.kills_witch 0
execute if score @s ec.quest_id_3 matches 9 run scoreboard players set @s ec.kills_blaze 0
execute if score @s ec.quest_id_3 matches 11 run scoreboard players set @s ec.kills_guardian 0
execute if score @s ec.quest_id_3 matches 22 run scoreboard players set @s ec.kills_wither_skeleton 0
execute if score @s ec.quest_id_3 matches 25 run scoreboard players set @s ec.kills_breeze 0
execute if score @s ec.quest_id_3 matches 31 run scoreboard players set @s ec.kills_ravager 0
execute if score @s ec.quest_id_3 matches 33 run scoreboard players set @s ec.kills_elder_guardian 0
execute if score @s ec.quest_id_3 matches 40 run scoreboard players set @s ec.kills_piglin_brute 0

# Snapshot system quest counters for delta tracking
execute if score @s ec.quest_id_3 matches 14 run scoreboard players operation @s ec.stat_snap_3 = @s ach.meals_cooked
execute if score @s ec.quest_id_3 matches 15 run scoreboard players operation @s ec.stat_snap_3 = @s ach.prospects_done
execute if score @s ec.quest_id_3 matches 16 run scoreboard players operation @s ec.stat_snap_3 = @s ach.lore_found
execute if score @s ec.quest_id_3 matches 17 run scoreboard players operation @s ec.stat_snap_3 = @s ach.forages_done
execute if score @s ec.quest_id_3 matches 18 run scoreboard players operation @s ec.stat_snap_3 = @s ach.dungeons_done
execute if score @s ec.quest_id_3 matches 19 run scoreboard players operation @s ec.stat_snap_3 = @s ach.meals_cooked
execute if score @s ec.quest_id_3 matches 20 run scoreboard players operation @s ec.stat_snap_3 = @s ach.prospects_done
execute if score @s ec.quest_id_3 matches 21 run scoreboard players operation @s ec.stat_snap_3 = @s ach.lore_found
execute if score @s ec.quest_id_3 matches 26 run scoreboard players operation @s ec.stat_snap_3 = @s ach.meals_cooked
execute if score @s ec.quest_id_3 matches 27 run scoreboard players operation @s ec.stat_snap_3 = @s ach.forages_done
execute if score @s ec.quest_id_3 matches 28 run scoreboard players operation @s ec.stat_snap_3 = @s ach.prospects_done
execute if score @s ec.quest_id_3 matches 29 run scoreboard players operation @s ec.stat_snap_3 = @s ach.runes_forged
execute if score @s ec.quest_id_3 matches 30 run scoreboard players operation @s ec.stat_snap_3 = @s ach.transmutes_done
execute if score @s ec.quest_id_3 matches 34 run scoreboard players operation @s ec.stat_snap_3 = @s ach.prospects_done
execute if score @s ec.quest_id_3 matches 35 run scoreboard players operation @s ec.stat_snap_3 = @s ach.meals_cooked
execute if score @s ec.quest_id_3 matches 36 run scoreboard players operation @s ec.stat_snap_3 = @s ach.lore_found
execute if score @s ec.quest_id_3 matches 37 run scoreboard players operation @s ec.stat_snap_3 = @s ach.forages_done

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 1.2
particle totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.1 10
return 1
