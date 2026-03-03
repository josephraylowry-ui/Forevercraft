# Companion Catalogue - Open (Item Display Based)
# Spawns a floating grid of pet item displays with interaction entities
# Uses rotated ~ 0 for yaw-only positioning (menu stays at eye level)

# Revoke advancement
advancement revoke @s only evercraft:companions/menu_v2/spawn

# Prevent double-opening
execute if entity @s[tag=Pets.InMenuV2] run return fail
execute if data storage evercraft:companions uninstalled run return fail

# Tag player as in menu
tag @s add Pets.InMenuV2
tag @s add Pets.ActiveMenu

# Store player ID for menu ownership
scoreboard players operation #Search Pets.ID = @s Pets.ID

# Count pets for pagination
scoreboard players operation #PetCount Pets.Menu = @s Pets.Count

# Reset page to 1
scoreboard players set @s Pets.MenuPage 1

# Spawn menu anchor (invisible marker, yaw-only position)
execute rotated ~ 0 positioned ^ ^1.2 ^1.5 run summon marker ~ ~ ~ {Tags:["Pets.MenuAnchor","Pets.New"],Invisible:1b}
scoreboard players operation @e[type=marker,tag=Pets.New,distance=..3] Pets.ID = @s Pets.ID
tag @e[type=marker,tag=Pets.New] remove Pets.New

# Spawn the menu background (dark tinted glass effect using item_display)
execute rotated ~ 0 positioned ^ ^1.2 ^1.5 as @n[type=marker,tag=Pets.MenuAnchor,distance=..3] at @s run function evercraft:companions/handler/menu_v2/spawn_frame
scoreboard players operation @e[type=item_display,tag=Pets.MenuBG,distance=..5] Pets.ID = @s Pets.ID

# Spawn title text
execute rotated ~ 0 positioned ^ ^1.85 ^1.5 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.MenuTitle","Pets.MenuElement"],billboard:"center",text:{text:"Companion Catalogue",color:"gold",bold:true},background:0,shadow:1b,see_through:0b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
scoreboard players operation @e[type=text_display,tag=Pets.MenuTitle,distance=..3] Pets.ID = @s Pets.ID

# Load pet data and spawn pet slots
execute in overworld positioned 0 -60 0 as @n[distance=..10,type=marker,tag=Pets.Marker,predicate=evercraft:companions/check_id] run function evercraft:companions/handler/menu_v2/load_pets

# === BOTTOM BAR ===
# Layout from player's view (left to right):
# ◀(prev)  Remove  ❤(relationship)  Page 1  🍖(treat)  Visible  ▶(next)
# Positions: ^1.0    ^0.65   ^0.33          ^0.0    ^-0.33      ^-0.65   ^-1.0
# Note: ^positive = player's left = viewer's left

# Spawn navigation arrows (always visible) — handles ◀ at ^1.0 and ▶ at ^-1.0
function evercraft:companions/handler/menu_v2/spawn_nav

# Spawn page info text (center)
execute rotated ~ 0 positioned ^ ^0.95 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.MenuPageInfo","Pets.MenuElement"],billboard:"center",text:{text:"Page 1",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
scoreboard players operation @e[type=text_display,tag=Pets.MenuPageInfo,distance=..5] Pets.ID = @s Pets.ID

# Spawn Info button ? (below page number, in bottom bar gap)
execute rotated ~ 0 positioned ^ ^0.87 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.MenuInfoText","Pets.MenuElement"],billboard:"center",text:[{text:"[",color:"dark_gray"},{text:"?",color:"yellow",bold:true},{text:"]",color:"dark_gray"}],background:0,shadow:1b,see_through:0b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.01f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^0.81 ^1.5 run summon interaction ~ ~ ~ {Tags:["Pets.MenuInfoClick","Pets.MenuElement"],width:0.12f,height:0.12f,response:1b}
scoreboard players operation @e[type=text_display,tag=Pets.MenuInfoText,distance=..5] Pets.ID = @s Pets.ID
scoreboard players operation @e[type=interaction,tag=Pets.MenuInfoClick,distance=..5] Pets.ID = @s Pets.ID

# Spawn Remove button (left of ❤, right of ◀)
execute rotated ~ 0 positioned ^ ^0.95 ^1.48 positioned ^0.65 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.MenuRemoveText","Pets.MenuElement"],billboard:"center",text:{text:"Remove",color:"red",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^0.88 ^1.5 positioned ^0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Pets.MenuRemoveClick","Pets.MenuElement"],width:0.20f,height:0.12f,response:1b}
scoreboard players operation @e[type=text_display,tag=Pets.MenuRemoveText,distance=..5] Pets.ID = @s Pets.ID
scoreboard players operation @e[type=interaction,tag=Pets.MenuRemoveClick,distance=..5] Pets.ID = @s Pets.ID

# Spawn Relationship button ❤ (left of center)
execute rotated ~ 0 positioned ^ ^0.95 ^1.48 positioned ^0.33 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.MenuRelText","Pets.MenuElement"],billboard:"center",text:{text:"❤",color:"red"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^0.89 ^1.5 positioned ^0.33 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Pets.MenuRelClick","Pets.MenuElement"],width:0.10f,height:0.10f,response:1b}
scoreboard players operation @e[type=text_display,tag=Pets.MenuRelText,distance=..5] Pets.ID = @s Pets.ID
scoreboard players operation @e[type=interaction,tag=Pets.MenuRelClick,distance=..5] Pets.ID = @s Pets.ID

# Spawn Treat button 🍖 (right of center, left of Visible)
execute rotated ~ 0 positioned ^ ^0.95 ^1.48 positioned ^-0.33 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.MenuTreatText","Pets.MenuElement"],billboard:"center",text:{text:"🍖",color:"yellow"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^0.89 ^1.5 positioned ^-0.33 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Pets.MenuTreatClick","Pets.MenuElement"],width:0.10f,height:0.10f,response:1b}
scoreboard players operation @e[type=text_display,tag=Pets.MenuTreatText,distance=..5] Pets.ID = @s Pets.ID
scoreboard players operation @e[type=interaction,tag=Pets.MenuTreatClick,distance=..5] Pets.ID = @s Pets.ID

# Spawn Visibility toggle button (right of 🍖, left of ▶)
execute rotated ~ 0 positioned ^ ^0.95 ^1.48 positioned ^-0.65 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.MenuVisText","Pets.MenuElement"],billboard:"center",text:{text:"Visible",color:"green",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^0.88 ^1.5 positioned ^-0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Pets.MenuVisClick","Pets.MenuElement"],width:0.20f,height:0.12f,response:1b}
scoreboard players operation @e[type=text_display,tag=Pets.MenuVisText,distance=..5] Pets.ID = @s Pets.ID
scoreboard players operation @e[type=interaction,tag=Pets.MenuVisClick,distance=..5] Pets.ID = @s Pets.ID

# Set initial visibility text based on current state
execute if entity @s[tag=Pets.Hidden] as @e[type=text_display,tag=Pets.MenuVisText,distance=..3] run data modify entity @s text set value {text:"Hidden",color:"red",bold:true}

# Play open sound
playsound minecraft:block.chest.open master @s ~ ~ ~ 0.5 1.2
