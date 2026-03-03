# Spawn Respec Overlay — 14 tree buttons in red + cancel button
# Same positions as spawn_trees but with Adv.RespecOverlay tags and red danger colors
# Run as/at the player, facing the anchor

# === ADVENTURE COLUMN (^1.0) ===
# Agility (slot 0)
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 positioned ^1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree0"],billboard:"center",text:{text:"Agility  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick0"],width:0.4f,height:0.12f,response:1b}

# Dexterity (slot 1)
execute rotated ~ 0 positioned ^ ^1.55 ^1.78 positioned ^1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree1"],billboard:"center",text:{text:"Dexterity  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.49 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick1"],width:0.4f,height:0.12f,response:1b}

# Evasion (slot 2)
execute rotated ~ 0 positioned ^ ^1.38 ^1.78 positioned ^1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree2"],billboard:"center",text:{text:"Evasion  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.32 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick2"],width:0.4f,height:0.12f,response:1b}

# Stealth (slot 3)
execute rotated ~ 0 positioned ^ ^1.21 ^1.78 positioned ^1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree3"],billboard:"center",text:{text:"Stealth  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.15 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick3"],width:0.4f,height:0.12f,response:1b}

# Vitality (slot 4)
execute rotated ~ 0 positioned ^ ^1.04 ^1.78 positioned ^1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree4"],billboard:"center",text:{text:"Vitality  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^0.98 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick4"],width:0.4f,height:0.12f,response:1b}

# === PROGRESSION COLUMN (^0.0) ===
# Taskmaster (slot 5)
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree5"],billboard:"center",text:{text:"Taskmaster  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick5"],width:0.4f,height:0.12f,response:1b}

# Beastmaster (slot 6)
execute rotated ~ 0 positioned ^ ^1.55 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree6"],billboard:"center",text:{text:"Beastmaster  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.49 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick6"],width:0.4f,height:0.12f,response:1b}

# Victorian (slot 7)
execute rotated ~ 0 positioned ^ ^1.38 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree7"],billboard:"center",text:{text:"Victorian  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.32 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick7"],width:0.4f,height:0.12f,response:1b}

# Culinary (slot 13)
execute rotated ~ 0 positioned ^ ^1.21 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree13"],billboard:"center",text:{text:"Culinary  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.15 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick13"],width:0.4f,height:0.12f,response:1b}

# === GATHERING COLUMN (^-1.0) ===
# Fishing (slot 8)
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 positioned ^-1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree8"],billboard:"center",text:{text:"Fishing  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick8"],width:0.4f,height:0.12f,response:1b}

# Mining (slot 9)
execute rotated ~ 0 positioned ^ ^1.55 ^1.78 positioned ^-1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree9"],billboard:"center",text:{text:"Mining  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.49 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick9"],width:0.4f,height:0.12f,response:1b}

# Gathering (slot 10)
execute rotated ~ 0 positioned ^ ^1.38 ^1.78 positioned ^-1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree10"],billboard:"center",text:{text:"Gathering  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.32 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick10"],width:0.4f,height:0.12f,response:1b}

# Blacksmith (slot 11)
execute rotated ~ 0 positioned ^ ^1.21 ^1.78 positioned ^-1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree11"],billboard:"center",text:{text:"Blacksmith  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.15 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick11"],width:0.4f,height:0.12f,response:1b}

# Explorer (slot 12)
execute rotated ~ 0 positioned ^ ^1.04 ^1.78 positioned ^-1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RTree12"],billboard:"center",text:{text:"Explorer  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^0.98 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecClick12"],width:0.4f,height:0.12f,response:1b}

# === COLUMN HEADERS (red theme) ===
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 positioned ^1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay"],billboard:"center",text:{text:"\u2694 Adventure",color:"dark_red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay"],billboard:"center",text:{text:"\ud83d\udcdc Progression",color:"dark_red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 positioned ^-1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay"],billboard:"center",text:{text:"\ud83c\udf3f Gathering",color:"dark_red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}

# === WARNING TEXT ===
execute rotated ~ 0 positioned ^ ^0.90 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay"],billboard:"center",text:{text:"Click a tree to reset it (costs 1 Seed of Forgetting)",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}

# === [Cancel] BUTTON ===
execute rotated ~ 0 positioned ^ ^0.72 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.RespecOverlay"],billboard:"center",text:{text:"[Cancel]",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^0.66 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.RespecOverlay","Adv.RespecCancelClick"],width:0.35f,height:0.12f,response:1b}

# Update tree level displays using refresh_respec
function evercraft:advantage/gui/refresh_respec
