# Journal Section — Overview (Section 5, Page 1)
# 6 category buttons in a 2×3 grid layout
# All entities tagged Adv.MenuElement + Adv.SectionContent + Adv.JnOverview
# Run as the player, at player, facing anchor

# Subtitle
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Your exploration progress",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}

# ===== ROW 1 =====

# === Biomes (left) ===
execute rotated ~ 0 positioned ^0.30 ^1.74 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Biomes",color:"dark_green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^0.30 ^1.63 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvDesc0"],billboard:"center",text:{text:"- / 25 discovered",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^0.30 ^1.63 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvClick0"],width:0.5f,height:0.14f,response:1b}

# === Structures (right) ===
execute rotated ~ 0 positioned ^-0.30 ^1.74 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Structures",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^-0.30 ^1.63 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvDesc1"],billboard:"center",text:{text:"- / 18 discovered",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^-0.30 ^1.63 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvClick1"],width:0.5f,height:0.14f,response:1b}

# ===== ROW 2 =====

# === Villages (left) ===
execute rotated ~ 0 positioned ^0.30 ^1.38 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Villages",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^0.30 ^1.27 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvDesc2"],billboard:"center",text:{text:"- discovered",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^0.30 ^1.27 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvClick2"],width:0.5f,height:0.14f,response:1b}

# === Secrets (right) ===
execute rotated ~ 0 positioned ^-0.30 ^1.38 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Secrets",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^-0.30 ^1.27 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvDesc3"],billboard:"center",text:{text:"- / 5 discovered",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^-0.30 ^1.27 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvClick3"],width:0.5f,height:0.14f,response:1b}

# ===== ROW 3 =====

# === Region Bonuses (left) ===
execute rotated ~ 0 positioned ^0.30 ^1.02 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Bonuses",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^0.30 ^0.91 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvDesc4"],billboard:"center",text:{text:"- / 4 complete",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^0.30 ^0.91 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvClick4"],width:0.5f,height:0.14f,response:1b}

# === Affinity (right) ===
execute rotated ~ 0 positioned ^-0.30 ^1.02 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Affinity",color:"#4CAF50",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^-0.30 ^0.91 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvDesc5"],billboard:"center",text:{text:"- / 25 attuned",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^-0.30 ^0.91 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvClick5"],width:0.5f,height:0.14f,response:1b}

# Refresh with current data
function evercraft:codex/hub/journal/refresh_overview
