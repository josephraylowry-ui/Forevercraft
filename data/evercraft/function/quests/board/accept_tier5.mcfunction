# Accept Tier 5 (Expedition) Quest — Mystery Roll
execute if score @s ec.quest_id_5 matches 1.. run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already have an Expedition active. Cancel it? ",color:"yellow"},{text:"(-60 rep)",color:"red"}]
execute if score @s ec.quest_id_5 matches 1.. run tellraw @s ["",{text:"  "},{text:"[Cancel Quest]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 15"}},{text:"  "},{text:"[Keep Quest]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 20"}}]
execute if score @s ec.quest_id_5 matches 1.. run return 1
execute if score @s ec.quest_done_5 matches 1 run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already completed today's Expedition. Return tomorrow!",color:"red"}]
execute if score @s ec.quest_done_5 matches 1 run return 1

function evercraft:quests/board/roll_tier5
scoreboard players set @s ec.quest_prog_5 0
scoreboard players operation @s ec.quest_village = @s ec.current_village

# Reset kill counters for hunt quests (so lifetime kills don't count)
execute if score @s ec.quest_id_5 matches 1 run scoreboard players set @s ec.kills_elder_guardian 0
execute if score @s ec.quest_id_5 matches 10 run scoreboard players set @s ec.kills_breeze 0

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 1.2
particle totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.1 20
return 1
