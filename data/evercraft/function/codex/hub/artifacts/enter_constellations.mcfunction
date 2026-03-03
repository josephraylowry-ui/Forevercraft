# Artifact Collection — Enter Constellations
# From tier picker (page 1) → constellation display (page 2)
# Run as the player, at player, facing anchor

# Set page (2 so subnav_route returns us to tiers)
scoreboard players set @s adv.gui_page 2

# Kill tier picker content (constellation button is also tagged Adv.ArtTiers)
kill @e[type=text_display,tag=Adv.ArtTiers,distance=..7]
kill @e[type=interaction,tag=Adv.ArtTiers,distance=..7]

# Spawn [← Tiers] sub-nav button
execute rotated ~ 0 positioned ^ ^0.52 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtSubNav"],billboard:"center",text:{text:"[\u2190 Tiers]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^0.48 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtSubNav","Adv.ArtSubNavClick"],width:0.5f,height:0.12f,response:1b}

# Update title
data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Constellations \u2726",color:"gold",bold:true}

# Spawn constellation display
function evercraft:codex/hub/artifacts/spawn_constellations

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
