# Quest Board trigger handler
# Routes ec.quest trigger values to quest functions
# Run as player

# Block quest actions if exiled (allow forgiveness trigger 8 and rep check 7)
execute if score @s vs.exile matches 1 if score @s ec.quest matches 1..6 run tellraw @s ["",{text:"[Village] ",color:"dark_red"},{text:"You are exiled. Offer ",color:"red"},{text:"64 Emerald Blocks",color:"green"},{text:" to seek forgiveness.",color:"red"}]
execute if score @s vs.exile matches 1 if score @s ec.quest matches 1..6 run return fail

execute if score @s ec.quest matches 1 run function evercraft:quests/board/accept_tier1
execute if score @s ec.quest matches 2 run function evercraft:quests/board/accept_tier2
execute if score @s ec.quest matches 3 run function evercraft:quests/board/accept_tier3
execute if score @s ec.quest matches 4 run function evercraft:quests/board/accept_tier4
execute if score @s ec.quest matches 5 run function evercraft:quests/board/accept_tier5
execute if score @s ec.quest matches 6 run function evercraft:quests/heroic/accept
execute if score @s ec.quest matches 7 run function evercraft:quests/reputation/show_rep
execute if score @s ec.quest matches 8 run function evercraft:village/exile/forgiveness

# Bounty accept (from quest board bounty page)
execute if score @s ec.quest matches 10 run function evercraft:bounty/roll_bounty

# Cancel quest confirmations (from chat prompt)
execute if score @s ec.quest matches 11 run function evercraft:quests/cancel/confirm_tier1
execute if score @s ec.quest matches 12 run function evercraft:quests/cancel/confirm_tier2
execute if score @s ec.quest matches 13 run function evercraft:quests/cancel/confirm_tier3
execute if score @s ec.quest matches 14 run function evercraft:quests/cancel/confirm_tier4
execute if score @s ec.quest matches 15 run function evercraft:quests/cancel/confirm_tier5
execute if score @s ec.quest matches 16 run function evercraft:quests/cancel/confirm_tier6
execute if score @s ec.quest matches 20 run function evercraft:quests/cancel/dismiss
