# Cosmetics Section — Page 2: Crate Cosmetics (Particles & Titles)
# 2-column layout: 18 particles (top), 18 titles (bottom)
# All entities tagged Adv.MenuElement + Adv.SectionContent + Adv.CosmPage
# Run as the player, at player, facing the anchor

# ============================================
# === PARTICLES SECTION ===
# ============================================

# Section header
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"\u2726 Particles \u2726",color:"light_purple",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}

# === FEET ZONE (LEFT ^0.55) — Particles 1-5 ===

# Zone label: Feet
execute rotated ~ 0 positioned ^ ^1.76 ^1.78 positioned ^0.95 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"[Feet]",color:"aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}

# Particle 1: Frostwalker
execute rotated ~ 0 positioned ^ ^1.76 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP0"],billboard:"center",text:{text:"Frostwalker",color:"aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.74 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick0"],width:0.50f,height:0.08f,response:1b}

# Particle 2: Blazeborn
execute rotated ~ 0 positioned ^ ^1.66 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP1"],billboard:"center",text:{text:"Blazeborn",color:"red"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.64 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick1"],width:0.50f,height:0.08f,response:1b}

# Particle 3: Soulstepper
execute rotated ~ 0 positioned ^ ^1.56 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP2"],billboard:"center",text:{text:"Soulstepper",color:"dark_aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.54 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick2"],width:0.50f,height:0.08f,response:1b}

# Particle 4: Mudtreader
execute rotated ~ 0 positioned ^ ^1.46 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP3"],billboard:"center",text:{text:"Mudtreader",color:"dark_green"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.44 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick3"],width:0.50f,height:0.08f,response:1b}

# Particle 5: Bloomstep
execute rotated ~ 0 positioned ^ ^1.36 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP4"],billboard:"center",text:{text:"Bloomstep",color:"green"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.34 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick4"],width:0.50f,height:0.08f,response:1b}

# === AURA ZONE (RIGHT ^-0.55) — Particles 6-10 ===

# Zone label: Aura
execute rotated ~ 0 positioned ^ ^1.76 ^1.78 positioned ^-0.95 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"[Aura]",color:"yellow"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}

# Particle 6: Blossom
execute rotated ~ 0 positioned ^ ^1.76 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP5"],billboard:"center",text:{text:"Blossom",color:"light_purple"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.74 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick5"],width:0.50f,height:0.08f,response:1b}

# Particle 7: Super Hot
execute rotated ~ 0 positioned ^ ^1.66 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP6"],billboard:"center",text:{text:"Super Hot",color:"red"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.64 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick6"],width:0.50f,height:0.08f,response:1b}

# Particle 8: Stardust
execute rotated ~ 0 positioned ^ ^1.56 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP7"],billboard:"center",text:{text:"Stardust",color:"white"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.54 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick7"],width:0.50f,height:0.08f,response:1b}

# Particle 9: Cauldron
execute rotated ~ 0 positioned ^ ^1.46 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP8"],billboard:"center",text:{text:"Cauldron",color:"dark_purple"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.44 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick8"],width:0.50f,height:0.08f,response:1b}

# Particle 10: Heartbeat
execute rotated ~ 0 positioned ^ ^1.36 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP9"],billboard:"center",text:{text:"Heartbeat",color:"red"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.34 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick9"],width:0.50f,height:0.08f,response:1b}

# === DIVIDER ===
execute rotated ~ 0 positioned ^ ^1.26 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}

# === HEAD ZONE (LEFT ^0.55) — Particles 11-14 ===

# Zone label: Head
execute rotated ~ 0 positioned ^ ^1.16 ^1.78 positioned ^0.95 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"[Head]",color:"gold"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}

# Particle 11: Halo
execute rotated ~ 0 positioned ^ ^1.16 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP10"],billboard:"center",text:{text:"Halo",color:"yellow"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.14 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick10"],width:0.50f,height:0.08f,response:1b}

# Particle 12: Storm Crown
execute rotated ~ 0 positioned ^ ^1.06 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP11"],billboard:"center",text:{text:"Storm Crown",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.04 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick11"],width:0.50f,height:0.08f,response:1b}

# Particle 13: Dripping Honey
execute rotated ~ 0 positioned ^ ^0.96 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP12"],billboard:"center",text:{text:"Dripping Honey",color:"gold"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.94 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick12"],width:0.50f,height:0.08f,response:1b}

# Particle 14: Inkcloud
execute rotated ~ 0 positioned ^ ^0.86 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP13"],billboard:"center",text:{text:"Inkcloud",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.84 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick13"],width:0.50f,height:0.08f,response:1b}

# === AMBIENT ZONE (RIGHT ^-0.55) — Particles 15-18 ===

# Zone label: Ambient
execute rotated ~ 0 positioned ^ ^1.16 ^1.78 positioned ^-0.95 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"[Ambient]",color:"dark_aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]}}

# Particle 15: Fireflies
execute rotated ~ 0 positioned ^ ^1.16 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP14"],billboard:"center",text:{text:"Fireflies",color:"yellow"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.14 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick14"],width:0.50f,height:0.08f,response:1b}

# Particle 16: Spore Cloud
execute rotated ~ 0 positioned ^ ^1.06 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP15"],billboard:"center",text:{text:"Spore Cloud",color:"green"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^1.04 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick15"],width:0.50f,height:0.08f,response:1b}

# Particle 17: Void Whispers
execute rotated ~ 0 positioned ^ ^0.96 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP16"],billboard:"center",text:{text:"Void Whispers",color:"dark_blue"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.94 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick16"],width:0.50f,height:0.08f,response:1b}

# Particle 18: Ashfall
execute rotated ~ 0 positioned ^ ^0.86 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCP17"],billboard:"center",text:{text:"Ashfall",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.84 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCPClick17"],width:0.50f,height:0.08f,response:1b}

# ============================================
# === TITLES SECTION ===
# ============================================

# Section header
execute rotated ~ 0 positioned ^ ^0.75 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"\u2726 Titles \u2726",color:"light_purple",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}

# === LEFT COLUMN (^0.55) — Titles 1-9 ===

# Title 1: Dreamwalker
execute rotated ~ 0 positioned ^ ^0.63 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT0"],billboard:"center",text:{text:"Dreamwalker",color:"light_purple"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.61 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick0"],width:0.50f,height:0.08f,response:1b}

# Title 2: Stargazer
execute rotated ~ 0 positioned ^ ^0.53 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT1"],billboard:"center",text:{text:"Stargazer",color:"blue"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.51 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick1"],width:0.50f,height:0.08f,response:1b}

# Title 3: The Ancient
execute rotated ~ 0 positioned ^ ^0.43 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT2"],billboard:"center",text:{text:"The Ancient",color:"dark_green"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.41 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick2"],width:0.50f,height:0.08f,response:1b}

# Title 4: Moonblessed
execute rotated ~ 0 positioned ^ ^0.33 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT3"],billboard:"center",text:{text:"Moonblessed",color:"aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.31 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick3"],width:0.50f,height:0.08f,response:1b}

# Title 5: Nightborn
execute rotated ~ 0 positioned ^ ^0.23 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT4"],billboard:"center",text:{text:"Nightborn",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.21 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick4"],width:0.50f,height:0.08f,response:1b}

# Title 6: Sunforged
execute rotated ~ 0 positioned ^ ^0.13 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT5"],billboard:"center",text:{text:"Sunforged",color:"gold"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.11 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick5"],width:0.50f,height:0.08f,response:1b}

# Title 7: The Eternal
execute rotated ~ 0 positioned ^ ^0.03 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT6"],billboard:"center",text:{text:"The Eternal",color:"dark_purple"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.01 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick6"],width:0.50f,height:0.08f,response:1b}

# Title 8: Stormchaser
execute rotated ~ 0 positioned ^ ^-0.07 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT7"],billboard:"center",text:{text:"Stormchaser",color:"yellow"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^-0.09 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick7"],width:0.50f,height:0.08f,response:1b}

# Title 9: Frostbitten
execute rotated ~ 0 positioned ^ ^-0.17 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT8"],billboard:"center",text:{text:"Frostbitten",color:"white"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^-0.19 ^1.8 positioned ^0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick8"],width:0.50f,height:0.08f,response:1b}

# === RIGHT COLUMN (^-0.55) — Titles 10-18 ===

# Title 10: Flameheart
execute rotated ~ 0 positioned ^ ^0.63 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT9"],billboard:"center",text:{text:"Flameheart",color:"dark_red"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.61 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick9"],width:0.50f,height:0.08f,response:1b}

# Title 11: Tidecaller
execute rotated ~ 0 positioned ^ ^0.53 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT10"],billboard:"center",text:{text:"Tidecaller",color:"dark_aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.51 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick10"],width:0.50f,height:0.08f,response:1b}

# Title 12: Earthshaker
execute rotated ~ 0 positioned ^ ^0.43 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT11"],billboard:"center",text:{text:"Earthshaker",color:"green"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.41 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick11"],width:0.50f,height:0.08f,response:1b}

# Title 13: Voidtouched
execute rotated ~ 0 positioned ^ ^0.33 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT12"],billboard:"center",text:{text:"Voidtouched",color:"dark_blue"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.31 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick12"],width:0.50f,height:0.08f,response:1b}

# Title 14: Wyrmborn
execute rotated ~ 0 positioned ^ ^0.23 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT13"],billboard:"center",text:{text:"Wyrmborn",color:"red"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.21 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick13"],width:0.50f,height:0.08f,response:1b}

# Title 15: The Undying
execute rotated ~ 0 positioned ^ ^0.13 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT14"],billboard:"center",text:{text:"The Undying",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.11 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick14"],width:0.50f,height:0.08f,response:1b}

# Title 16: Spiritbound
execute rotated ~ 0 positioned ^ ^0.03 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT15"],billboard:"center",text:{text:"Spiritbound",color:"aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^0.01 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick15"],width:0.50f,height:0.08f,response:1b}

# Title 17: Dawnbringer
execute rotated ~ 0 positioned ^ ^-0.07 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT16"],billboard:"center",text:{text:"Dawnbringer",color:"gold"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^-0.09 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick16"],width:0.50f,height:0.08f,response:1b}

# Title 18: The Forsaken
execute rotated ~ 0 positioned ^ ^-0.17 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCT17"],billboard:"center",text:{text:"The Forsaken",color:"dark_red"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
execute rotated ~ 0 positioned ^ ^-0.19 ^1.8 positioned ^-0.55 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.CCTClick17"],width:0.50f,height:0.08f,response:1b}

# Refresh displays with current data
function evercraft:advantage/gui/refresh_crate_cosmetics
