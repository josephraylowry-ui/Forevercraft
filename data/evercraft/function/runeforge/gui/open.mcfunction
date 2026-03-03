# Runeforge GUI — Open
# Spawns floating display entities in front of the player
# State-aware: reads forge state from nearest RF.Marker

# Toggle — if already open, close instead
execute if entity @s[tag=RF.InMenu] run return run function evercraft:runeforge/gui/close

# Clean orphaned elements
kill @e[type=text_display,tag=RF.MenuEl,distance=..10]
kill @e[type=item_display,tag=RF.MenuEl,distance=..10]
kill @e[type=interaction,tag=RF.MenuEl,distance=..10]

# Tag player
tag @s add RF.InMenu

# Read state and rune_id from nearest marker
execute store result score @s rf.state run data get entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.rf_state
execute store result score @s rf.rune_id run data get entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.rf_rune_id

# Background panel
execute rotated ~ 0 positioned ^ ^1.3 ^1.8 run summon item_display ~ ~ ~ {Tags:["RF.MenuBG","RF.MenuEl"],billboard:"center",item:{id:"black_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[2.8f,1.9f,0.01f]}}

# Title
execute rotated ~ 0 positioned ^ ^2.05 ^1.8 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["RF.MenuEl","RF.Title"],billboard:"center",text:{text:"Runeforge",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}

# Rune status line (dynamic)
execute rotated ~ 0 positioned ^ ^1.7 ^1.8 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["RF.MenuEl","RF.RuneStatus"],billboard:"center",text:{text:"Rune: Empty",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}

# Info line
execute rotated ~ 0 positioned ^ ^1.45 ^1.8 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["RF.MenuEl","RF.Info"],billboard:"center",text:{text:"Hold rune/weapon and click below",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}

# State 0: Deposit Rune button + grayed Forge button
execute if score @s rf.state matches 0 rotated ~ 0 positioned ^ ^1.1 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["RF.MenuEl","RF.DepositText"],billboard:"center",text:{text:"[ Deposit Rune ]",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute if score @s rf.state matches 0 rotated ~ 0 positioned ^ ^1.03 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["RF.MenuEl","RF.DepositBtn"],width:0.5f,height:0.14f,response:1b}
execute if score @s rf.state matches 0 rotated ~ 0 positioned ^ ^1.1 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["RF.MenuEl","RF.ForgeText"],billboard:"center",text:{text:"[ Forge ]",color:"gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute if score @s rf.state matches 0 rotated ~ 0 positioned ^ ^1.03 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["RF.MenuEl","RF.ForgeBtn"],width:0.4f,height:0.14f,response:1b}

# State 1: Rune deposited — Start Forging button (centered)
execute if score @s rf.state matches 1 rotated ~ 0 positioned ^ ^1.1 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["RF.MenuEl","RF.ForgeText"],billboard:"center",text:{text:"[ Start Forging ]",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute if score @s rf.state matches 1 rotated ~ 0 positioned ^ ^1.03 ^1.8 run summon interaction ~ ~ ~ {Tags:["RF.MenuEl","RF.ForgeBtn"],width:0.5f,height:0.14f,response:1b}

# State 2: Forging in progress — timer display only, no action buttons
# (Info line will be updated by refresh to show countdown)

# State 3: Forge complete — Collect button (centered)
execute if score @s rf.state matches 3 rotated ~ 0 positioned ^ ^1.1 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["RF.MenuEl","RF.ForgeText"],billboard:"center",text:{text:"[ Collect ]",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute if score @s rf.state matches 3 rotated ~ 0 positioned ^ ^1.03 ^1.8 run summon interaction ~ ~ ~ {Tags:["RF.MenuEl","RF.ForgeBtn"],width:0.45f,height:0.14f,response:1b}

# Close button (always)
execute rotated ~ 0 positioned ^ ^0.8 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["RF.MenuEl","RF.CloseText"],billboard:"center",text:{text:"[ Close ]",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^0.74 ^1.8 run summon interaction ~ ~ ~ {Tags:["RF.MenuEl","RF.CloseBtn"],width:0.35f,height:0.12f,response:1b}

# Sound
playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.3 1.5

# Initial refresh
function evercraft:runeforge/gui/refresh
