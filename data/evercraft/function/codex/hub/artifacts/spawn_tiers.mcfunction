# Artifact Collection — Tier Picker (Level 1)
# Constellations on top, 6 tier buttons in 2x3 grid, Random Browse at bottom
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.ArtTiers
# Run as the player, at player, facing anchor

# === Constellations Button (centered, top) ===
execute rotated ~ 0 positioned ^ ^1.68 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"\u2605 Constellations",color:"gold",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.58 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtConstBtnDesc"],billboard:"center",text:{text:"... / 10 complete",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^ ^1.58 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtConstClick"],width:0.6f,height:0.14f,response:1b}

# === ROW 1 ===
# Common (tier 1) — LEFT
execute rotated ~ 0 positioned ^ ^1.36 ^1.78 positioned ^0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"Common",color:"white",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.26 ^1.78 positioned ^0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrDesc0"],billboard:"center",text:{text:"... / 23",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^ ^1.26 ^1.8 positioned ^0.35 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrClick0"],width:0.5f,height:0.14f,response:1b}

# Uncommon (tier 2) — RIGHT
execute rotated ~ 0 positioned ^ ^1.36 ^1.78 positioned ^-0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"Uncommon",color:"green",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.26 ^1.78 positioned ^-0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrDesc1"],billboard:"center",text:{text:"... / 23",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^ ^1.26 ^1.8 positioned ^-0.35 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrClick1"],width:0.5f,height:0.14f,response:1b}

# === ROW 2 ===
# Rare (tier 3) — LEFT
execute rotated ~ 0 positioned ^ ^1.04 ^1.78 positioned ^0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"Rare",color:"blue",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^0.94 ^1.78 positioned ^0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrDesc2"],billboard:"center",text:{text:"... / 31",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^ ^0.94 ^1.8 positioned ^0.35 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrClick2"],width:0.5f,height:0.14f,response:1b}

# Ornate (tier 4) — RIGHT
execute rotated ~ 0 positioned ^ ^1.04 ^1.78 positioned ^-0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"Ornate",color:"gold",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^0.94 ^1.78 positioned ^-0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrDesc3"],billboard:"center",text:{text:"... / 109",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^ ^0.94 ^1.8 positioned ^-0.35 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrClick3"],width:0.5f,height:0.14f,response:1b}

# === ROW 3 ===
# Exquisite (tier 5) — LEFT
execute rotated ~ 0 positioned ^ ^0.72 ^1.78 positioned ^0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"Exquisite",color:"aqua",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^0.62 ^1.78 positioned ^0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrDesc4"],billboard:"center",text:{text:"... / 60",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^ ^0.62 ^1.8 positioned ^0.35 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrClick4"],width:0.5f,height:0.14f,response:1b}

# Mythical (tier 6) — RIGHT
execute rotated ~ 0 positioned ^ ^0.72 ^1.78 positioned ^-0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"Mythical",color:"light_purple",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^0.62 ^1.78 positioned ^-0.35 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrDesc5"],billboard:"center",text:{text:"... / 77",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}
execute rotated ~ 0 positioned ^ ^0.62 ^1.8 positioned ^-0.35 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrClick5"],width:0.5f,height:0.14f,response:1b}

# === Random Browse Button (centered, below grid) ===
execute rotated ~ 0 positioned ^ ^0.38 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"\u2727 Random Browse",color:"light_purple",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^0.34 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtRandomClick"],width:0.5f,height:0.12f,response:1b}

# Refresh with current discovery counts
function evercraft:codex/hub/artifacts/refresh_tiers
