# Lore Discovery Section — Dimension Picker (Section 6, Page 1)
# 4 dimension buttons with progress counts
# All entities tagged Adv.MenuElement + Adv.SectionContent + Adv.LoreDimPick
# Run as the player, at player, facing anchor

# Reset lore GUI state
scoreboard players set @s adv.gui_page 1
scoreboard players set @s adv.gui_lore_dim 0
scoreboard players set @s adv.gui_lore_subcat 0
scoreboard players set @s adv.gui_lore_set 0

# Subtitle
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"Choose a dimension to browse",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}

# === Overworld ===
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"Overworld",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.32f,0.32f,0.32f]}}
execute rotated ~ 0 positioned ^ ^1.60 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimDesc0"],billboard:"center",text:{text:"- / 83 sets",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.60 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimClick0"],width:0.8f,height:0.16f,response:1b}

# === Nether ===
execute rotated ~ 0 positioned ^ ^1.44 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"The Nether",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.32f,0.32f,0.32f]}}
execute rotated ~ 0 positioned ^ ^1.32 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimDesc1"],billboard:"center",text:{text:"- / 30 sets",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.32 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimClick1"],width:0.8f,height:0.16f,response:1b}

# === The End ===
execute rotated ~ 0 positioned ^ ^1.16 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"The End",color:"dark_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.32f,0.32f,0.32f]}}
execute rotated ~ 0 positioned ^ ^1.04 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimDesc2"],billboard:"center",text:{text:"- / 26 sets",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.04 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimClick2"],width:0.8f,height:0.16f,response:1b}

# === Lore Pages ===
execute rotated ~ 0 positioned ^ ^0.88 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"Lore Pages",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.32f,0.32f,0.32f]}}
execute rotated ~ 0 positioned ^ ^0.76 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimDesc3"],billboard:"center",text:{text:"- / 24 sets",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.76 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimClick3"],width:0.8f,height:0.16f,response:1b}

# Refresh with current data
function evercraft:codex/hub/lore/refresh_dims
