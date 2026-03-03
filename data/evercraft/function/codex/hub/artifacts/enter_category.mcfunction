# Artifact Collection — Enter Category (Macro)
# Macro arg: category (1-4)
# Run as the player, at player, facing anchor

# Set category and page (page 3 = first item page)
$scoreboard players set @s adv.gui_art_cat $(category)
scoreboard players set @s adv.gui_page 3

# Kill category picker content
kill @e[type=text_display,tag=Adv.ArtCats,distance=..7]
kill @e[type=interaction,tag=Adv.ArtCats,distance=..7]

# Kill old sub-nav ([← Tiers]) and respawn as [← Categories]
kill @e[type=text_display,tag=Adv.ArtSubNav,distance=..7]
kill @e[type=interaction,tag=Adv.ArtSubNav,distance=..7]
execute rotated ~ 0 positioned ^ ^0.52 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtSubNav"],billboard:"center",text:{text:"[\u2190 Categories]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^0.48 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtSubNav","Adv.ArtSubNavClick"],width:0.6f,height:0.12f,response:1b}

# Update title per category
execute if score @s adv.gui_art_cat matches 1 run function evercraft:codex/hub/artifacts/set_cat_title {cat:"Weapons"}
execute if score @s adv.gui_art_cat matches 2 run function evercraft:codex/hub/artifacts/set_cat_title {cat:"Armor"}
execute if score @s adv.gui_art_cat matches 3 run function evercraft:codex/hub/artifacts/set_cat_title {cat:"Accessories"}
execute if score @s adv.gui_art_cat matches 4 run function evercraft:codex/hub/artifacts/set_cat_title {cat:"Tools"}

# Check if multi-page — spawn nav arrows if so
function evercraft:codex/hub/artifacts/get_max_page
execute if score @s adv.temp matches 2.. run function evercraft:codex/hub/artifacts/spawn_nav_arrows

# Dispatch to correct item list
function evercraft:codex/hub/artifacts/dispatch_items

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
