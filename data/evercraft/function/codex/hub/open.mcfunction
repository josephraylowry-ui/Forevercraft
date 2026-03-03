# Codex Hub — Open
# Entry point when player right-clicks the codex item
# Spawns the floating GUI shell + hub directory buttons
# Toggle: if already open, close instead

# Toggle — if already open, close instead
execute if entity @s[tag=Adv.InMenu] run return run function evercraft:advantage/gui/close

# Tag player and set to hub (section 0)
tag @s add Adv.InMenu
scoreboard players set @s adv.gui_section 0
scoreboard players set @s adv.gui_page 1

# Generate unique session ID for multiplayer isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var

# Spawn anchor marker (yaw-only, eye level, 1.8 blocks forward)
execute rotated ~ 0 positioned ^ ^1.2 ^1.8 run summon marker ~ ~ ~ {Tags:["Adv.MenuAnchor","Adv.MenuElement"]}

# Background panel (shared shell — stays across all sections)
execute rotated ~ 0 positioned ^ ^1.2 ^1.8 run summon item_display ~ ~ ~ {Tags:["Adv.MenuBG","Adv.MenuElement"],billboard:"center",item:{id:"black_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.4f,2.2f,0.01f]}}

# Title (shared shell — text changes per section)
execute rotated ~ 0 positioned ^ ^2.05 ^1.8 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuTitle","Adv.MenuElement"],billboard:"center",text:{text:"\u2726 The Forevercraft Codex \u2726",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}

# Spawn hub directory buttons (NO nav arrows on hub page)
function evercraft:codex/hub/spawn_hub

# Stamp all newly spawned entities with our session ID
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[tag=Adv.MenuElement,distance=..3] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

# Play open sound
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.5 1.2
