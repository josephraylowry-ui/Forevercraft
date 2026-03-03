# Journal — Villages Sub-Page
# Dynamic village count display + 3 milestones
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.JnSubPage
# Run as the player, at player, facing anchor

# Village count (dynamic — updated by refresh macro)
execute rotated ~ 0 positioned ^ ^1.60 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnVCount"],billboard:"center",text:{text:"...",color:"white"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.36f,0.36f,0.36f]}}

# Milestones header
execute rotated ~ 0 positioned ^ ^1.34 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:{text:"— Milestones —",color:"gold"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}

# Milestone 1: 5 Villages — Novice Traveler
execute rotated ~ 0 positioned ^ ^1.20 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnVm1"],billboard:"center",text:{text:"? 5 Villages — Novice Traveler",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}

# Milestone 2: 10 Villages — Seasoned Explorer
execute rotated ~ 0 positioned ^ ^1.06 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnVm2"],billboard:"center",text:{text:"? 10 Villages — Seasoned Explorer",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}

# Milestone 3: 20 Villages — Master Cartographer
execute rotated ~ 0 positioned ^ ^0.92 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnVm3"],billboard:"center",text:{text:"? 20 Villages — Master Cartographer",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}

# Refresh with current data
function evercraft:codex/hub/journal/refresh_villages
