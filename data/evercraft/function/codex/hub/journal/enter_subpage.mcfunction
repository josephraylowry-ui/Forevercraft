# Journal — Enter Sub-Page (Macro)
# Macro arg: page (2-7)
# Run as the player, at player, facing the anchor

# Set page
$scoreboard players set @s adv.gui_page $(page)

# Kill overview content
kill @e[type=text_display,tag=Adv.JnOverview,distance=..7]
kill @e[type=interaction,tag=Adv.JnOverview,distance=..7]

# Spawn [← Overview] button
execute rotated ~ 0 positioned ^ ^0.52 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnBackOvText"],billboard:"center",text:{text:"[\u2190 Overview]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^0.46 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnBackOvClick"],width:0.5f,height:0.16f,response:1b}

# Update title per sub-page
execute if score @s adv.gui_page matches 2 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Biomes \u2726",color:"dark_green",bold:true}
execute if score @s adv.gui_page matches 3 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Structures \u2726",color:"gold",bold:true}
execute if score @s adv.gui_page matches 4 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Villages \u2726",color:"green",bold:true}
execute if score @s adv.gui_page matches 5 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Secrets \u2726",color:"light_purple",bold:true}
execute if score @s adv.gui_page matches 6 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Region Bonuses \u2726",color:"yellow",bold:true}
execute if score @s adv.gui_page matches 7 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Biome Affinity \u2726",color:"#4CAF50",bold:true}

# Spawn sub-page content
execute if score @s adv.gui_page matches 2 run function evercraft:codex/hub/journal/spawn_biomes
execute if score @s adv.gui_page matches 3 run function evercraft:codex/hub/journal/spawn_structures
execute if score @s adv.gui_page matches 4 run function evercraft:codex/hub/journal/spawn_villages
execute if score @s adv.gui_page matches 5 run function evercraft:codex/hub/journal/spawn_secrets
execute if score @s adv.gui_page matches 6 run function evercraft:codex/hub/journal/spawn_bonuses
execute if score @s adv.gui_page matches 7 run function evercraft:codex/hub/journal/spawn_affinity

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
