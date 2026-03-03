# ============================================================
# Accept Heroic Quest (Tier 6)
# 7-day timer, special rewards
# ============================================================

# Check if already active
execute if score @s ec.quest_id_6 matches 1.. run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already have a Heroic quest active. Cancel it? ",color:"yellow"},{text:"(-100 rep)",color:"red"}]
execute if score @s ec.quest_id_6 matches 1.. run tellraw @s ["",{text:"  "},{text:"[Cancel Quest]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 16"}},{text:"  "},{text:"[Keep Quest]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.quest set 20"}}]
execute if score @s ec.quest_id_6 matches 1.. run return 1

# Check if already completed
execute if score @s ec.quest_done_6 matches 1 run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You have already completed a Heroic quest. Seek glory elsewhere!",color:"red"}]
execute if score @s ec.quest_done_6 matches 1 run return 1

# Check prerequisites (requires 1000+ rep with village)
execute unless score @s ec.village_rep matches 1000.. run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You need ",color:"red"},{text:"Hero ",color:"dark_purple"},{text:"rank (1000+ reputation) to accept Heroic quests!",color:"red"}]
execute unless score @s ec.village_rep matches 1000.. run return 1

# Randomly assign a heroic quest
function evercraft:quests/board/roll_tier6
scoreboard players set @s ec.quest_prog_6 0
scoreboard players operation @s ec.quest_village = @s ec.current_village

# Reset kill counters for hunt quests (so lifetime kills don't count)
execute if score @s ec.quest_id_6 matches 1 run scoreboard players set @s ec.kills_wither 0
execute if score @s ec.quest_id_6 matches 2 run scoreboard players set @s ec.kills_ender_dragon 0
execute if score @s ec.quest_id_6 matches 3 run scoreboard players set @s ec.kills_warden 0

# Set 7-day expiry timer (7 in-game days * 3600 seconds/day = 25200, decremented 1/second)
scoreboard players set @s ec.quest_expiry 25200

# Big effects for heroic acceptance
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
particle totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.2 50
effect give @s minecraft:glowing 5 0 true

tellraw @s ["",{text:"✦ ",color:"dark_purple"},{text:"[Quests] ",color:"gold"},{text:"HEROIC QUEST ACCEPTED!",color:"dark_purple",bold:true}]
tellraw @s ["",{text:"  You have ",color:"gray"},{text:"7 days",color:"gold"},{text:" to complete this legendary challenge!",color:"gray"}]

# Title announcement
title @s times 10 70 20
title @s title {text:"HEROIC QUEST",color:"dark_purple",bold:true}
title @s subtitle {text:"The legends will speak of you...",color:"light_purple",italic:true}
return 1
