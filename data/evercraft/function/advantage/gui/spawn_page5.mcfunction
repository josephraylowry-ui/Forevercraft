# Page 5: Boss Titles
# 2-column layout: 6 bosses left, 5 bosses right + champion centered
# All entities tagged Adv.Page5 + Adv.MenuElement

# === HEADER ===
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5"],billboard:"center",text:{text:"\u2726 Boss Titles \u2726",color:"dark_red",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}

# === LEFT COLUMN (^0.60) — Bosses 1-6 ===

# Boss 1: Hollow King
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5","Adv.BT0"],billboard:"center",text:{text:"Hollow King  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.67 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page5","Adv.BTClick0"],width:0.55f,height:0.10f,response:1b}

# Boss 2: Verdant Warden
execute rotated ~ 0 positioned ^ ^1.58 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5","Adv.BT1"],billboard:"center",text:{text:"Verdant Warden  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.53 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page5","Adv.BTClick1"],width:0.55f,height:0.10f,response:1b}

# Boss 3: Stormforged
execute rotated ~ 0 positioned ^ ^1.44 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5","Adv.BT2"],billboard:"center",text:{text:"Stormforged  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.39 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page5","Adv.BTClick2"],width:0.55f,height:0.10f,response:1b}

# Boss 4: Tidecaller
execute rotated ~ 0 positioned ^ ^1.30 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5","Adv.BT3"],billboard:"center",text:{text:"Tidecaller  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.25 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page5","Adv.BTClick3"],width:0.55f,height:0.10f,response:1b}

# Boss 5: Earthshaker
execute rotated ~ 0 positioned ^ ^1.16 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5","Adv.BT4"],billboard:"center",text:{text:"Earthshaker  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.11 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page5","Adv.BTClick4"],width:0.55f,height:0.10f,response:1b}

# Boss 6: Nightmare
execute rotated ~ 0 positioned ^ ^1.02 ^1.78 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5","Adv.BT5"],billboard:"center",text:{text:"Nightmare  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.97 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page5","Adv.BTClick5"],width:0.55f,height:0.10f,response:1b}

# === RIGHT COLUMN (^-0.60) — Bosses 7-11 ===

# Boss 7: Infernal Titan
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5","Adv.BT6"],billboard:"center",text:{text:"Infernal Titan  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.67 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page5","Adv.BTClick6"],width:0.55f,height:0.10f,response:1b}

# Boss 8: Soul Warden
execute rotated ~ 0 positioned ^ ^1.58 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5","Adv.BT7"],billboard:"center",text:{text:"Soul Warden  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.53 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page5","Adv.BTClick7"],width:0.55f,height:0.10f,response:1b}

# Boss 9: Crimson Behemoth
execute rotated ~ 0 positioned ^ ^1.44 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5","Adv.BT8"],billboard:"center",text:{text:"Crimson Behemoth  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.39 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page5","Adv.BTClick8"],width:0.55f,height:0.10f,response:1b}

# Boss 10: Void Sovereign
execute rotated ~ 0 positioned ^ ^1.30 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5","Adv.BT9"],billboard:"center",text:{text:"Void Sovereign  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.25 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page5","Adv.BTClick9"],width:0.55f,height:0.10f,response:1b}

# Boss 11: Ender Architect
execute rotated ~ 0 positioned ^ ^1.16 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5","Adv.BT10"],billboard:"center",text:{text:"Ender Architect  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.11 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page5","Adv.BTClick10"],width:0.55f,height:0.10f,response:1b}

# === DIVIDER ===
execute rotated ~ 0 positioned ^ ^0.88 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5"],billboard:"center",text:{text:"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}

# === WORLD BOSS CHAMPION (centered) ===
execute rotated ~ 0 positioned ^ ^0.74 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5","Adv.BTChamp"],billboard:"center",text:{text:"World Boss Champion  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^0.68 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page5","Adv.BTChampClick"],width:0.65f,height:0.12f,response:1b}

# Subtitle: how to earn
execute rotated ~ 0 positioned ^ ^0.60 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page5"],billboard:"center",text:{text:"Defeat all 11 World Bosses to earn Champion",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}

# Refresh displays with current data
function evercraft:advantage/gui/refresh_boss_titles
