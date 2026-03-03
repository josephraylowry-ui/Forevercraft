# ============================================================
# Accept Quest
# Called via book click event with {quest:"ID",tier:N}
# ============================================================

# Check if player already has a quest of this tier
execute if score @s ec.quest_id_1 matches 1.. if data storage eden:database {temp:{tier:1}} run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already have an Errand quest active!",color:"red"}]
execute if score @s ec.quest_id_2 matches 1.. if data storage eden:database {temp:{tier:2}} run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already have a Task quest active!",color:"red"}]
execute if score @s ec.quest_id_3 matches 1.. if data storage eden:database {temp:{tier:3}} run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already have a Contract quest active!",color:"red"}]
execute if score @s ec.quest_id_4 matches 1.. if data storage eden:database {temp:{tier:4}} run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already have a Commission quest active!",color:"red"}]
execute if score @s ec.quest_id_5 matches 1.. if data storage eden:database {temp:{tier:5}} run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already have an Expedition quest active!",color:"red"}]
execute if score @s ec.quest_id_6 matches 1.. if data storage eden:database {temp:{tier:6}} run tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"You already have a Heroic quest active!",color:"red"}]

# Accept the quest (set quest ID based on tier)
# Tier 1 - Errand
execute unless score @s ec.quest_id_1 matches 1.. if data storage eden:database {temp:{tier:1}} run function evercraft:quests/board/accept_tier1
# Tier 2 - Task
execute unless score @s ec.quest_id_2 matches 1.. if data storage eden:database {temp:{tier:2}} run function evercraft:quests/board/accept_tier2
# Tier 3 - Contract
execute unless score @s ec.quest_id_3 matches 1.. if data storage eden:database {temp:{tier:3}} run function evercraft:quests/board/accept_tier3
# Tier 4 - Commission
execute unless score @s ec.quest_id_4 matches 1.. if data storage eden:database {temp:{tier:4}} run function evercraft:quests/board/accept_tier4
# Tier 5 - Expedition
execute unless score @s ec.quest_id_5 matches 1.. if data storage eden:database {temp:{tier:5}} run function evercraft:quests/board/accept_tier5
# Tier 6 - Heroic
execute unless score @s ec.quest_id_6 matches 1.. if data storage eden:database {temp:{tier:6}} run function evercraft:quests/heroic/accept
