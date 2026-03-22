# === QUEST AUTO-TRACKER ===
scoreboard objectives add ec.quest_track trigger "Quest Tracker Toggle"
scoreboard players enable @a ec.quest_track
schedule function evercraft:quests/tracker/tick 2s

# === VILLAGE SPECIALIZATION SYSTEM ===
function evercraft:village/load



# === PATRON BOUNTY SYSTEM ===
function evercraft:bounty/load



# === BOUNTY COMPLETION COUNTER ===
scoreboard objectives add ec.bounty_done dummy "Bounties Completed"



# === ARTIFACT BOUNTY BOARD ===
function evercraft:bounty_board/load

