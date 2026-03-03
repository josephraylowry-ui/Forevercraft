# Codex Hub — Spawn Back Button
# Spawns [← Menu] button at the very bottom of the panel
# Shared across all sections — returns to hub when clicked
# Positioned below section-specific back buttons to avoid overlap
# Run as the player, facing the anchor

execute rotated ~ 0 positioned ^ ^0.24 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.BackBtnText"],billboard:"center",text:{text:"[ \u2190 Menu ]",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^0.20 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.BackBtnClick"],width:0.4f,height:0.12f,response:1b}
