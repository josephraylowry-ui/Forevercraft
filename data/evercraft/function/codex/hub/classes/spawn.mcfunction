# Classes Section — Spawn Class List (Level 1)
# 3 columns: Melee (left), Support (center), Ranged/Def (right)
# All 13 classes displayed equally — bold, scale 0.35
# Each class: text_display (name) + interaction (click) + [?] text_display + [?] interaction
# [?] placed further left (^+0.40 offset) to avoid overlapping names
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.ClsPage1
# Run as the player, facing the anchor

# === COLUMN HEADERS ===
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 positioned ^1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"\u2694 Melee",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"\u2665 Support",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 positioned ^-1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"\u2726 Ranged / Def",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}

# === LEFT COLUMN: MELEE (5 classes) ===

# Rogue (class 1) — row 1
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 positioned ^1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName1"],billboard:"center",text:{text:"Rogue",color:"dark_aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick1"],width:0.35f,height:0.12f,response:1b}
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 positioned ^1.40 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^1.8 positioned ^1.40 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo1"],width:0.15f,height:0.10f,response:1b}

# Berserker (class 2) — row 2
execute rotated ~ 0 positioned ^ ^1.57 ^1.78 positioned ^1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName2"],billboard:"center",text:{text:"Berserker",color:"dark_red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.51 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick2"],width:0.35f,height:0.12f,response:1b}
execute rotated ~ 0 positioned ^ ^1.57 ^1.78 positioned ^1.40 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^1.51 ^1.8 positioned ^1.40 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo2"],width:0.15f,height:0.10f,response:1b}

# Dancer (class 3) — row 3
execute rotated ~ 0 positioned ^ ^1.42 ^1.78 positioned ^1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName3"],billboard:"center",text:{text:"Dancer",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.36 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick3"],width:0.35f,height:0.12f,response:1b}
execute rotated ~ 0 positioned ^ ^1.42 ^1.78 positioned ^1.40 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^1.36 ^1.8 positioned ^1.40 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo3"],width:0.15f,height:0.10f,response:1b}

# Striker (class 4) — row 4
execute rotated ~ 0 positioned ^ ^1.27 ^1.78 positioned ^1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName4"],billboard:"center",text:{text:"Striker",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.21 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick4"],width:0.35f,height:0.12f,response:1b}
execute rotated ~ 0 positioned ^ ^1.27 ^1.78 positioned ^1.40 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^1.21 ^1.8 positioned ^1.40 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo4"],width:0.15f,height:0.10f,response:1b}

# Sentinel (class 5) — row 5
execute rotated ~ 0 positioned ^ ^1.12 ^1.78 positioned ^1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName5"],billboard:"center",text:{text:"Sentinel",color:"gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.06 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick5"],width:0.35f,height:0.12f,response:1b}
execute rotated ~ 0 positioned ^ ^1.12 ^1.78 positioned ^1.40 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^1.06 ^1.8 positioned ^1.40 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo5"],width:0.15f,height:0.10f,response:1b}

# === CENTER COLUMN: SUPPORT (4 classes) ===

# Healer (class 6) — row 1
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName6"],billboard:"center",text:{text:"Healer",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick6"],width:0.35f,height:0.12f,response:1b}
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 positioned ^0.40 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^1.8 positioned ^0.40 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo6"],width:0.15f,height:0.10f,response:1b}

# Beastlord (class 7) — row 2
execute rotated ~ 0 positioned ^ ^1.57 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName7"],billboard:"center",text:{text:"Beastlord",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.51 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick7"],width:0.35f,height:0.12f,response:1b}
execute rotated ~ 0 positioned ^ ^1.57 ^1.78 positioned ^0.40 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^1.51 ^1.8 positioned ^0.40 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo7"],width:0.15f,height:0.10f,response:1b}

# Javelin (class 8) — row 3
execute rotated ~ 0 positioned ^ ^1.42 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName8"],billboard:"center",text:{text:"Javelin",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.36 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick8"],width:0.35f,height:0.12f,response:1b}
execute rotated ~ 0 positioned ^ ^1.42 ^1.78 positioned ^0.40 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^1.36 ^1.8 positioned ^0.40 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo8"],width:0.15f,height:0.10f,response:1b}

# Hoplite (class 9) — row 4
execute rotated ~ 0 positioned ^ ^1.27 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName9"],billboard:"center",text:{text:"Hoplite",color:"blue",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.21 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick9"],width:0.35f,height:0.12f,response:1b}
execute rotated ~ 0 positioned ^ ^1.27 ^1.78 positioned ^0.40 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^1.21 ^1.8 positioned ^0.40 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo9"],width:0.15f,height:0.10f,response:1b}

# === RIGHT COLUMN: RANGED / DEF (4 classes) ===

# Archer (class 10) — row 1
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 positioned ^-1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName10"],billboard:"center",text:{text:"Archer",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick10"],width:0.35f,height:0.12f,response:1b}
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo10"],width:0.15f,height:0.10f,response:1b}

# Hunter (class 11) — row 2
execute rotated ~ 0 positioned ^ ^1.57 ^1.78 positioned ^-1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName11"],billboard:"center",text:{text:"Hunter",color:"dark_green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.51 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick11"],width:0.35f,height:0.12f,response:1b}
execute rotated ~ 0 positioned ^ ^1.57 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^1.51 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo11"],width:0.15f,height:0.10f,response:1b}

# Tank (class 12) — row 3
execute rotated ~ 0 positioned ^ ^1.42 ^1.78 positioned ^-1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName12"],billboard:"center",text:{text:"Tank",color:"white",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.36 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick12"],width:0.35f,height:0.12f,response:1b}
execute rotated ~ 0 positioned ^ ^1.42 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^1.36 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo12"],width:0.15f,height:0.10f,response:1b}

# Knight (class 13) — row 4
execute rotated ~ 0 positioned ^ ^1.27 ^1.78 positioned ^-1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName13"],billboard:"center",text:{text:"Knight",color:"dark_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.21 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick13"],width:0.35f,height:0.12f,response:1b}
execute rotated ~ 0 positioned ^ ^1.27 ^1.78 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}
execute rotated ~ 0 positioned ^ ^1.21 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo13"],width:0.15f,height:0.10f,response:1b}
