# Artifact Collection — Spawn Nav Arrows for Item List
# Only called when category has multiple pages
# Run as the player, at player, facing anchor

# Left arrow (◀)
execute rotated ~ 0 positioned ^ ^0.64 ^1.78 positioned ^0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.NavLeftText"],billboard:"center",text:{text:"\u25C0",color:"white"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.32f,0.32f,0.32f]}}
execute rotated ~ 0 positioned ^ ^0.60 ^1.8 positioned ^0.35 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.NavLeftClick"],width:0.25f,height:0.12f,response:1b}

# Right arrow (▶)
execute rotated ~ 0 positioned ^ ^0.64 ^1.78 positioned ^-0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.NavRightText"],billboard:"center",text:{text:"\u25B6",color:"white"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.32f,0.32f,0.32f]}}
execute rotated ~ 0 positioned ^ ^0.60 ^1.8 positioned ^-0.35 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.NavRightClick"],width:0.25f,height:0.12f,response:1b}
