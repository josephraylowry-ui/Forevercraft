# ============================================================
# ACHIEVEMENTS — Check Progress
# Shows achievement completion stats per category
# Triggered by: /trigger ach.progress set 1
# ============================================================

# Display header
tellraw @s ["",{text:"✦ ",color:"gold"},{text:"Achievement Progress",color:"gold",bold:true},{text:" ✦",color:"gold"}]
tellraw @s ""

# Display tracking stats
tellraw @s ["",{text:"  ",color:"gray"},{text:"Artifacts Found: ",color:"white"},{score:{name:"@s",objective:"ec.artifact_count"},color:"green"},{text:"/292",color:"gray"}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Pets Adopted: ",color:"white"},{score:{name:"@s",objective:"ach.pets_owned"},color:"green"},{text:"/93",color:"gray"}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Quests Done: ",color:"white"},{score:{name:"@s",objective:"ach.quests_done"},color:"green"},{text:"/75",color:"gray"}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Crates Opened: ",color:"white"},{score:{name:"@s",objective:"ach.crates_opened"},color:"green"}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Patron Kills: ",color:"white"},{score:{name:"@s",objective:"ach.patron_kills"},color:"green"}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Fish Caught: ",color:"white"},{score:{name:"@s",objective:"ach.fish_caught"},color:"green"},{text:"  Treasure: ",color:"gray"},{score:{name:"@s",objective:"ach.fish_treasure"},color:"green"}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Blocks Mined: ",color:"white"},{score:{name:"@s",objective:"ach.blocks_mined"},color:"green"},{text:"  Crops: ",color:"gray"},{score:{name:"@s",objective:"ach.crops_harvested"},color:"green"}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Trades: ",color:"white"},{score:{name:"@s",objective:"ach.adj_trade"},color:"green"},{text:"  Trees: ",color:"gray"},{score:{name:"@s",objective:"ach.trees_unlocked"},color:"green"},{text:"/13",color:"gray"}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Sets Equipped: ",color:"white"},{score:{name:"@s",objective:"ach.sets_equipped"},color:"green"},{text:"/27",color:"gray"}]
tellraw @s ""
tellraw @s ["",{text:"  ",color:"gray"},{text:"Total Achievements: ",color:"gold",bold:true},{score:{name:"@s",objective:"ach.total"},color:"yellow"},{text:"/600",color:"gray"}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Secrets Found: ",color:"dark_gray",italic:true},{text:"???",color:"dark_gray"}]
tellraw @s ""

# Prestige status
tellraw @s ["",{text:"  ",color:"gray"},{text:"★ Prestige: ",color:"gold",bold:true},{text:"Combat ",color:"red"},{score:{name:"@s",objective:"ach.prestige_combat"},color:"yellow"},{text:" | ",color:"dark_gray"},{text:"Gathering ",color:"green"},{score:{name:"@s",objective:"ach.prestige_gathering"},color:"yellow"},{text:" | ",color:"dark_gray"},{text:"Companions ",color:"yellow"},{score:{name:"@s",objective:"ach.prestige_companions"},color:"yellow"}]
tellraw @s ["",{text:"            ",color:"gray"},{text:"Exploration ",color:"aqua"},{score:{name:"@s",objective:"ach.prestige_exploration"},color:"yellow"},{text:" | ",color:"dark_gray"},{text:"Collection ",color:"light_purple"},{score:{name:"@s",objective:"ach.prestige_collection"},color:"yellow"},{text:" | ",color:"dark_gray"},{text:"Growth ",color:"dark_purple"},{score:{name:"@s",objective:"ach.prestige_growth"},color:"yellow"}]
tellraw @s ""
tellraw @s ["",{text:"  View all achievements: ",color:"gray"},{text:"Press L",color:"yellow"},{text:" to open Advancements tab",color:"gray"}]

# Reset trigger
scoreboard players set @s ach.progress 0
