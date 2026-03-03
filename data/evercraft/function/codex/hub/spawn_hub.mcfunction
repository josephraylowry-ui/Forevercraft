# Codex Hub — Spawn Hub Buttons
# Advantage Trees centered on top, then 6 buttons in 3 rows x 2 columns
# Each button = name text_display + description text_display + interaction entity
# All tagged Adv.MenuElement + Adv.HubContent

# ===== FEATURED: ADVANTAGE TREES (centered top) =====

# === Button 0: Advantage Trees ===
# Name (centered, slightly larger)
execute rotated ~ 0 positioned ^0.0 ^1.74 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn0"],billboard:"center",text:{text:"\u2694 Advantage Trees",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
# Description
execute rotated ~ 0 positioned ^0.0 ^1.64 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Level up skills & abilities",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
# Interaction (wider for centered button)
execute rotated ~ 0 positioned ^0.0 ^1.62 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick0"],width:0.8f,height:0.14f,response:1b}

# ===== LEFT COLUMN =====

# === Button 1: Challenges ===
# Name
execute rotated ~ 0 positioned ^0.55 ^1.40 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn1"],billboard:"center",text:{text:"\u2620 Challenges",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.38f,0.38f,0.38f]}}
# Description
execute rotated ~ 0 positioned ^0.55 ^1.30 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Accept & track challenges",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
# Interaction
execute rotated ~ 0 positioned ^0.55 ^1.30 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick1"],width:0.6f,height:0.14f,response:1b}

# === Button 2: Cosmetics ===
# Name
execute rotated ~ 0 positioned ^0.55 ^1.12 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn2"],billboard:"center",text:{text:"\u2726 Cosmetics",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.38f,0.38f,0.38f]}}
# Description
execute rotated ~ 0 positioned ^0.55 ^1.02 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Particles, trails & titles",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
# Interaction
execute rotated ~ 0 positioned ^0.55 ^1.02 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick2"],width:0.6f,height:0.14f,response:1b}

# === Button 3: Artifact Collection ===
# Name
execute rotated ~ 0 positioned ^0.55 ^0.84 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn3"],billboard:"center",text:{text:"\u2666 Artifact Collection",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.38f,0.38f,0.38f]}}
# Description
execute rotated ~ 0 positioned ^0.55 ^0.74 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Browse discovered artifacts",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
# Interaction
execute rotated ~ 0 positioned ^0.55 ^0.74 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick3"],width:0.6f,height:0.14f,response:1b}

# ===== RIGHT COLUMN =====

# === Button 4: Travel Journal ===
# Name
execute rotated ~ 0 positioned ^-0.55 ^1.40 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn4"],billboard:"center",text:{text:"\u2605 Travel Journal",color:"dark_aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.38f,0.38f,0.38f]}}
# Description
execute rotated ~ 0 positioned ^-0.55 ^1.30 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Exploration progress",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
# Interaction
execute rotated ~ 0 positioned ^-0.55 ^1.30 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick4"],width:0.6f,height:0.14f,response:1b}

# === Button 5: Lore Discovery ===
# Name
execute rotated ~ 0 positioned ^-0.55 ^1.12 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn5"],billboard:"center",text:{text:"\u2726 Lore Discovery",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.38f,0.38f,0.38f]}}
# Description
execute rotated ~ 0 positioned ^-0.55 ^1.02 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Collectible lore fragments",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
# Interaction
execute rotated ~ 0 positioned ^-0.55 ^1.02 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick5"],width:0.6f,height:0.14f,response:1b}

# === Button 6: Party ===
# Name
execute rotated ~ 0 positioned ^-0.55 ^0.84 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn6"],billboard:"center",text:{text:"\u2726 Party",color:"dark_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.38f,0.38f,0.38f]}}
# Description
execute rotated ~ 0 positioned ^-0.55 ^0.74 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Manage party & synergies",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
# Interaction
execute rotated ~ 0 positioned ^-0.55 ^0.74 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick6"],width:0.6f,height:0.14f,response:1b}

# ===== FEATURED: CLASSES (centered bottom, in line with Advantage Trees) =====

# === Button 7: Classes ===
# Name (centered, slightly larger)
execute rotated ~ 0 positioned ^0.0 ^0.56 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn7"],billboard:"center",text:{text:"\u2694 Classes",color:"dark_red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
# Description
execute rotated ~ 0 positioned ^0.0 ^0.46 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Weapon classes & artifacts",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
# Interaction (wider for centered button)
execute rotated ~ 0 positioned ^0.0 ^0.46 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick7"],width:0.8f,height:0.14f,response:1b}
