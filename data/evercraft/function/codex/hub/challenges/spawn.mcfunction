# Challenges Section — Spawn (Section 2, standalone page)
# 2-column layout: 7 challenges left, 6 challenges right
# All entities tagged Adv.SectionContent + Adv.MenuElement
# Run as the player, at player, facing anchor

# Section header
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent"],billboard:"center",text:{text:"Accept & Track Challenges",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}

# === LEFT COLUMN (^0.60) — Challenges 0-6 ===

# Agility (tree 1, challenges 1-2) — Row 1 Left
execute rotated ~ 0 positioned ^ ^1.76 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.Chal0"],billboard:"center",text:{text:"Agility: Marathon",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.73 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalClick0"],width:0.55f,height:0.10f,response:1b}

# Dexterity (tree 2, challenge 3) — Row 2 Left
execute rotated ~ 0 positioned ^ ^1.62 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.Chal1"],billboard:"center",text:{text:"Dexterity: Precision",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.59 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalClick1"],width:0.55f,height:0.10f,response:1b}

# Evasion (tree 3, challenges 4-5) — Row 3 Left
execute rotated ~ 0 positioned ^ ^1.48 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.Chal2"],billboard:"center",text:{text:"Evasion: Master",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.45 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalClick2"],width:0.55f,height:0.10f,response:1b}

# Stealth (tree 4, challenge 6) — Row 4 Left
execute rotated ~ 0 positioned ^ ^1.34 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.Chal3"],billboard:"center",text:{text:"Stealth: Assassin",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.31 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalClick3"],width:0.55f,height:0.10f,response:1b}

# Vitality (tree 5, challenges 7-8) — Row 5 Left
execute rotated ~ 0 positioned ^ ^1.20 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.Chal4"],billboard:"center",text:{text:"Vitality: Warrior",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.17 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalClick4"],width:0.55f,height:0.10f,response:1b}

# Taskmaster (tree 6, challenge 9) — Row 6 Left
execute rotated ~ 0 positioned ^ ^1.06 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.Chal5"],billboard:"center",text:{text:"Taskmaster: Quests",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.03 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalClick5"],width:0.55f,height:0.10f,response:1b}

# Beastmaster (tree 7, challenge 10) — Row 7 Centered
execute rotated ~ 0 positioned ^ ^0.92 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.Chal6"],billboard:"center",text:{text:"Beastmaster: Beasts",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^0.89 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalClick6"],width:0.55f,height:0.10f,response:1b}

# === RIGHT COLUMN (^-0.60) — Challenges 7-12 ===

# Victorian (tree 8, challenge 11) — Row 1 Right
execute rotated ~ 0 positioned ^ ^1.76 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.Chal7"],billboard:"center",text:{text:"Victorian: Elegant",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.73 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalClick7"],width:0.55f,height:0.10f,response:1b}

# Fishing (tree 9, challenge 12) — Row 2 Right
execute rotated ~ 0 positioned ^ ^1.62 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.Chal8"],billboard:"center",text:{text:"Fishing: Angler",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.59 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalClick8"],width:0.55f,height:0.10f,response:1b}

# Mining (tree 10, challenges 13-14) — Row 3 Right
execute rotated ~ 0 positioned ^ ^1.48 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.Chal9"],billboard:"center",text:{text:"Mining: Master",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.45 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalClick9"],width:0.55f,height:0.10f,response:1b}

# Gathering (tree 11, challenge 15) — Row 4 Right
execute rotated ~ 0 positioned ^ ^1.34 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.Chal10"],billboard:"center",text:{text:"Gathering: Harvester",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.31 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalClick10"],width:0.55f,height:0.10f,response:1b}

# Blacksmith (tree 12, challenge 16) — Row 5 Right
execute rotated ~ 0 positioned ^ ^1.20 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.Chal11"],billboard:"center",text:{text:"Blacksmith: Smelter",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.17 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalClick11"],width:0.55f,height:0.10f,response:1b}

# Explorer (tree 13, challenge 17) — Row 6 Right
execute rotated ~ 0 positioned ^ ^1.06 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.Chal12"],billboard:"center",text:{text:"Explorer: Expeditionist",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.24f]}}
execute rotated ~ 0 positioned ^ ^1.03 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalClick12"],width:0.55f,height:0.10f,response:1b}

# === INFO BUTTON (centered, below Beastmaster) ===
execute rotated ~ 0 positioned ^ ^0.78 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent"],billboard:"center",text:{text:"[?] View All Challenges",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
execute rotated ~ 0 positioned ^ ^0.76 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ChalInfoClick"],width:0.55f,height:0.08f,response:1b}

# Refresh challenge displays with current data
function evercraft:advantage/gui/refresh_challenges
