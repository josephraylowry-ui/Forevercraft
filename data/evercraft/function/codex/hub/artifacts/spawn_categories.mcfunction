# Artifact Collection — Category Picker (Level 2)
# 4 category buttons, centered vertically
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.ArtCats
# Run as the player, at player, facing anchor

# Weapons
execute rotated ~ 0 positioned ^ ^1.58 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats"],billboard:"center",text:{text:"\u2694 Weapons",color:"red",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.48 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats","Adv.ArtCatDesc0"],billboard:"center",text:{text:"...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^ ^1.48 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats","Adv.ArtCatClick0"],width:0.6f,height:0.14f,response:1b}

# Armor
execute rotated ~ 0 positioned ^ ^1.30 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats"],billboard:"center",text:{text:"\u26E8 Armor",color:"blue",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.20 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats","Adv.ArtCatDesc1"],billboard:"center",text:{text:"...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^ ^1.20 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats","Adv.ArtCatClick1"],width:0.6f,height:0.14f,response:1b}

# Accessories
execute rotated ~ 0 positioned ^ ^1.02 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats"],billboard:"center",text:{text:"\u2B50 Accessories",color:"green",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^0.92 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats","Adv.ArtCatDesc2"],billboard:"center",text:{text:"...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^ ^0.92 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats","Adv.ArtCatClick2"],width:0.6f,height:0.14f,response:1b}

# Tools (grayed out for Exquisite/Mythical)
execute if score @s adv.gui_art_tier matches 1..4 rotated ~ 0 positioned ^ ^0.74 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats"],billboard:"center",text:{text:"\u26CF Tools",color:"yellow",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute if score @s adv.gui_art_tier matches 5..6 rotated ~ 0 positioned ^ ^0.74 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats"],billboard:"center",text:{text:"\u26CF Tools",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute if score @s adv.gui_art_tier matches 1..4 rotated ~ 0 positioned ^ ^0.64 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats","Adv.ArtCatDesc3"],billboard:"center",text:{text:"...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute if score @s adv.gui_art_tier matches 5..6 rotated ~ 0 positioned ^ ^0.64 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats"],billboard:"center",text:{text:"No tools in this tier",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute if score @s adv.gui_art_tier matches 1..4 rotated ~ 0 positioned ^ ^0.64 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtCats","Adv.ArtCatClick3"],width:0.6f,height:0.14f,response:1b}

# Refresh with current discovery counts
function evercraft:codex/hub/artifacts/refresh_categories
