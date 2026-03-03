# ============================================================
# Black Market — Open GUI
# Run as: player who clicked the barrel
# ============================================================

# Already in menu? Close first (toggle behavior)
execute if entity @s[tag=BM.InMenu] run function evercraft:black_market/gui/close
execute if entity @s[tag=BM.InMenu] run return 0

# Kill any orphaned elements from a previous session (crash, relog)
execute at @s run kill @e[type=text_display,tag=BM.El,distance=..8]
execute at @s run kill @e[type=interaction,tag=BM.El,distance=..8]
execute at @s run kill @e[type=item_display,tag=BM.El,distance=..8]

# Tag player and set defaults
tag @s add BM.InMenu
scoreboard players set @s ec.bm_tab 1
scoreboard players set @s ec.bm_page 1
scoreboard players set @s ec.bm_select 0
scoreboard players set @s ec.bm_price 0

# Ensure daily deals exist
function evercraft:black_market/generate_deals

# Check for pending sale notification
function evercraft:black_market/escrow/check_pending_sale

# Load player balance + listing count from storage
function evercraft:black_market/escrow/load_player

# === SPAWN GUI SHELL ===

# Background panel (black stained glass pane)
execute rotated ~ 0 positioned ^ ^1.5 ^1.8 run summon item_display ~ ~ ~ {\
  Tags:["BM.El","BM.BG"],\
  billboard:"center",\
  item:{id:"black_stained_glass_pane",count:1},\
  item_display:"fixed",\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.4f,2.8f,0.01f]}\
}

# Title
execute rotated ~ 0 positioned ^ ^2.45 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.Title"],\
  billboard:"center",\
  text:{text:"\u2620 Black Market \u2620",color:"dark_red",bold:true},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}\
}

# === TAB BUTTONS ===
# Buy tab (active by default = gold)
execute rotated ~ 0 positioned ^0.45 ^2.25 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.TabBuyTxt"],\
  billboard:"center",\
  text:{text:"[ Buy ]",color:"gold",bold:true},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}\
}
execute rotated ~ 0 positioned ^0.45 ^2.21 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["BM.El","BM.TabBuyBtn"],width:0.35f,height:0.08f,response:1b\
}

# Sell tab (inactive = gray)
execute rotated ~ 0 positioned ^ ^2.25 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.TabSellTxt"],\
  billboard:"center",\
  text:{text:"[ Sell ]",color:"gray"},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}\
}
execute rotated ~ 0 positioned ^ ^2.21 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["BM.El","BM.TabSellBtn"],width:0.35f,height:0.08f,response:1b\
}

# Listings tab (inactive = gray)
execute rotated ~ 0 positioned ^-0.45 ^2.25 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.TabListTxt"],\
  billboard:"center",\
  text:{text:"[ Listings ]",color:"gray"},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}\
}
execute rotated ~ 0 positioned ^-0.45 ^2.21 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["BM.El","BM.TabListBtn"],width:0.45f,height:0.08f,response:1b\
}

# === NETHERITE DISPLAY (bottom bar) ===
execute rotated ~ 0 positioned ^ ^0.82 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.NethDisplay"],\
  billboard:"center",\
  text:{text:"Netherite: ...",color:"aqua"},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}\
}

# === CLOSE BUTTON ===
execute rotated ~ 0 positioned ^ ^0.62 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.CloseTxt"],\
  billboard:"center",\
  text:[{text:"[ ",color:"dark_gray"},{text:"Close",color:"gray",bold:true},{text:" ]",color:"dark_gray"}],\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}\
}
execute rotated ~ 0 positioned ^ ^0.48 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["BM.El","BM.CloseBtn"],width:0.4f,height:0.12f,response:1b\
}

# Populate tab content + update netherite display
function evercraft:black_market/gui/refresh

# Sound
playsound minecraft:block.barrel.open master @s ~ ~ ~ 0.6 0.7
