# Page 2: Challenges + Cosmetics
# 2-column layout: 7 challenges left, 6 challenges right + cosmetics below
# All entities tagged Adv.Page2 + Adv.MenuElement

# === CHALLENGES SECTION ===
# Section header
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2"],billboard:"center",text:{text:"Challenges",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}

# 2-column grid: LEFT column ^0.60, RIGHT column ^-0.60
# Row positions: 1.76, 1.62, 1.48, 1.34, 1.20, 1.06, 0.92 (7 rows, spacing 0.14)
# Scale 0.24 to fit wider text in columns, interaction width 0.55

# === LEFT COLUMN (^0.45) — Challenges 0-6 ===

# Agility (tree 1, challenges 1-2) — Row 1 Left
execute rotated ~ 0 positioned ^ ^1.76 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Chal0"],billboard:"center",text:{text:"Agility: Marathon",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.71 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.ChalClick0"],width:0.55f,height:0.10f,response:1b}

# Dexterity (tree 2, challenge 3) — Row 2 Left
execute rotated ~ 0 positioned ^ ^1.62 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Chal1"],billboard:"center",text:{text:"Dexterity: Precision",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.57 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.ChalClick1"],width:0.55f,height:0.10f,response:1b}

# Evasion (tree 3, challenges 4-5) — Row 3 Left
execute rotated ~ 0 positioned ^ ^1.48 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Chal2"],billboard:"center",text:{text:"Evasion: Master",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.43 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.ChalClick2"],width:0.55f,height:0.10f,response:1b}

# Stealth (tree 4, challenge 6) — Row 4 Left
execute rotated ~ 0 positioned ^ ^1.34 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Chal3"],billboard:"center",text:{text:"Stealth: Assassin",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.29 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.ChalClick3"],width:0.55f,height:0.10f,response:1b}

# Vitality (tree 5, challenges 7-8) — Row 5 Left
execute rotated ~ 0 positioned ^ ^1.20 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Chal4"],billboard:"center",text:{text:"Vitality: Warrior",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.15 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.ChalClick4"],width:0.55f,height:0.10f,response:1b}

# Taskmaster (tree 6, challenge 9) — Row 6 Left
execute rotated ~ 0 positioned ^ ^1.06 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Chal5"],billboard:"center",text:{text:"Taskmaster: Quests",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.01 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.ChalClick5"],width:0.55f,height:0.10f,response:1b}

# Beastmaster (tree 7, challenge 10) — Row 7 Centered (only entry in this row)
execute rotated ~ 0 positioned ^ ^0.92 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Chal6"],billboard:"center",text:{text:"Beastmaster: Beasts",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^0.87 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.ChalClick6"],width:0.55f,height:0.10f,response:1b}

# === RIGHT COLUMN (^-0.45) — Challenges 7-12 ===

# Victorian (tree 8, challenge 11) — Row 1 Right
execute rotated ~ 0 positioned ^ ^1.76 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Chal7"],billboard:"center",text:{text:"Victorian: Elegant",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.71 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.ChalClick7"],width:0.55f,height:0.10f,response:1b}

# Fishing (tree 9, challenge 12) — Row 2 Right
execute rotated ~ 0 positioned ^ ^1.62 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Chal8"],billboard:"center",text:{text:"Fishing: Angler",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.57 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.ChalClick8"],width:0.55f,height:0.10f,response:1b}

# Mining (tree 10, challenges 13-14) — Row 3 Right
execute rotated ~ 0 positioned ^ ^1.48 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Chal9"],billboard:"center",text:{text:"Mining: Master",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.43 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.ChalClick9"],width:0.55f,height:0.10f,response:1b}

# Gathering (tree 11, challenge 15) — Row 4 Right
execute rotated ~ 0 positioned ^ ^1.34 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Chal10"],billboard:"center",text:{text:"Gathering: Harvester",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.29 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.ChalClick10"],width:0.55f,height:0.10f,response:1b}

# Blacksmith (tree 12, challenge 16) — Row 5 Right
execute rotated ~ 0 positioned ^ ^1.20 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Chal11"],billboard:"center",text:{text:"Blacksmith: Smelter",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.15 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.ChalClick11"],width:0.55f,height:0.10f,response:1b}

# Explorer (tree 13, challenge 17) — Row 6 Right
execute rotated ~ 0 positioned ^ ^1.06 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Chal12"],billboard:"center",text:{text:"Explorer: Explorer",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.01 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.ChalClick12"],width:0.55f,height:0.10f,response:1b}

# === DIVIDER ===
execute rotated ~ 0 positioned ^ ^0.82 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2"],billboard:"center",text:{text:"--- Cosmetics ---",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}

# === COSMETICS SECTION ===
# 3+2 horizontal layout with wide spacing
# Row 1 (^0.68): T1 left (^0.85), T2 center (^0.0), T3 right (^-0.85)
# Row 2 (^0.53): T4 left (^0.50), T5 right (^-0.50)

# Tier 1: Particle Aura (Row 1 left)
execute rotated ~ 0 positioned ^ ^0.68 ^1.78 positioned ^0.85 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Cosm0"],billboard:"center",text:{text:"Tier 1: Particle Aura",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^0.64 ^1.8 positioned ^0.85 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.CosmClick0"],width:0.5f,height:0.08f,response:1b}

# Tier 2: Title Tag (Row 1 center)
execute rotated ~ 0 positioned ^ ^0.68 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Cosm1"],billboard:"center",text:{text:"Tier 2: Title Tag",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^0.64 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.CosmClick1"],width:0.5f,height:0.08f,response:1b}

# Tier 3: Effect Trail (Row 1 right)
execute rotated ~ 0 positioned ^ ^0.68 ^1.78 positioned ^-0.85 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Cosm2"],billboard:"center",text:{text:"Tier 3: Effect Trail",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^0.64 ^1.8 positioned ^-0.85 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.CosmClick2"],width:0.5f,height:0.08f,response:1b}

# Tier 4: Glowing Outline (Row 2 left)
execute rotated ~ 0 positioned ^ ^0.53 ^1.78 positioned ^0.50 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Cosm3"],billboard:"center",text:{text:"Tier 4: Glowing Outline",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^0.49 ^1.8 positioned ^0.50 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.CosmClick3"],width:0.5f,height:0.08f,response:1b}

# Tier 5: Crown Particles (Row 2 right)
execute rotated ~ 0 positioned ^ ^0.53 ^1.78 positioned ^-0.50 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page2","Adv.Cosm4"],billboard:"center",text:{text:"Tier 5: Crown Particles",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^0.49 ^1.8 positioned ^-0.50 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page2","Adv.CosmClick4"],width:0.5f,height:0.08f,response:1b}

# Refresh challenge and cosmetic displays with current data
function evercraft:advantage/gui/refresh_challenges
function evercraft:advantage/gui/refresh_cosmetics
