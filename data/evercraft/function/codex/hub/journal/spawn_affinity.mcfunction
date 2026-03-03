# Journal — Affinity Sub-Page (25 biomes with mastery level)
# LEFT column (^0.55): Overworld Surface (13 biomes)
# CENTER column (^0): Rank legend with benefits + The End
# RIGHT column (^-0.55): Surface cont. (3) + Caves (3) + Nether (5)
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.JnSubPage
# Run as the player, at player, facing anchor

# === LEFT COLUMN (^0.55) — Overworld Surface ===

# Header
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:{text:"— Overworld Surface —",color:"aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}

# b0: Plains
execute rotated ~ 0 positioned ^ ^1.78 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf0"],billboard:"center",text:{text:"Plains",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b1: Forest
execute rotated ~ 0 positioned ^ ^1.70 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf1"],billboard:"center",text:{text:"Forest",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b2: Flower Forest
execute rotated ~ 0 positioned ^ ^1.62 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf2"],billboard:"center",text:{text:"Flower Forest",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b3: Dark Forest
execute rotated ~ 0 positioned ^ ^1.54 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf3"],billboard:"center",text:{text:"Dark Forest",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b4: Taiga
execute rotated ~ 0 positioned ^ ^1.46 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf4"],billboard:"center",text:{text:"Taiga",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b5: Mountains
execute rotated ~ 0 positioned ^ ^1.38 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf5"],billboard:"center",text:{text:"Mountains",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b6: Jungle
execute rotated ~ 0 positioned ^ ^1.30 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf6"],billboard:"center",text:{text:"Jungle",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b7: Desert
execute rotated ~ 0 positioned ^ ^1.22 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf7"],billboard:"center",text:{text:"Desert",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b8: Savanna
execute rotated ~ 0 positioned ^ ^1.14 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf8"],billboard:"center",text:{text:"Savanna",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b9: Ocean
execute rotated ~ 0 positioned ^ ^1.06 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf9"],billboard:"center",text:{text:"Ocean",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b10: River
execute rotated ~ 0 positioned ^ ^0.98 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf10"],billboard:"center",text:{text:"River",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b11: Swamp
execute rotated ~ 0 positioned ^ ^0.90 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf11"],billboard:"center",text:{text:"Swamp",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b12: Mushroom Island
execute rotated ~ 0 positioned ^ ^0.82 ^1.78 positioned ^0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf12"],billboard:"center",text:{text:"Mushroom Island",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}

# === CENTER COLUMN (^0) — Rank Legend ===

# Header
execute rotated ~ 0 positioned ^ ^1.88 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:{text:"— Ranks —",color:"aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}

# Rank 1: Visitor
execute rotated ~ 0 positioned ^ ^1.78 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:[{text:"\u2605 Visitor",color:"white"},{text:" \u00b7 30 min",color:"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:{text:"First steps in the biome",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]}}

# Rank 2: Familiar
execute rotated ~ 0 positioned ^ ^1.62 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:[{text:"\u2605\u2605 Familiar",color:"aqua"},{text:" \u00b7 2 hours",color:"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
execute rotated ~ 0 positioned ^ ^1.56 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:{text:"+0.1 Dream Rate",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]}}

# Rank 3: Resident
execute rotated ~ 0 positioned ^ ^1.46 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:[{text:"\u2605\u2605\u2605 Resident",color:"#4FC3F7"},{text:" \u00b7 6 hours",color:"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
execute rotated ~ 0 positioned ^ ^1.40 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:{text:"Patron aggro reduced",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]}}

# Rank 4: Warden
execute rotated ~ 0 positioned ^ ^1.30 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:[{text:"\u2605\u2605\u2605\u2605 Warden",color:"#AB47BC"},{text:" \u00b7 15 hours",color:"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
execute rotated ~ 0 positioned ^ ^1.24 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:{text:"+0.35 Dream Rate",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]}}

# Rank 5: Master
execute rotated ~ 0 positioned ^ ^1.14 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:[{text:"\u2605\u2605\u2605\u2605\u2605 Master",color:"gold",bold:true},{text:" \u00b7 30 hours",color:"gray",bold:false}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
execute rotated ~ 0 positioned ^ ^1.08 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:{text:"+0.5 Dream Rate + biome title",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]}}

# === The End (bottom center) ===

# The End Header
execute rotated ~ 0 positioned ^ ^0.90 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:{text:"— The End —",color:"light_purple"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b23: The End
execute rotated ~ 0 positioned ^ ^0.80 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf23"],billboard:"center",text:{text:"The End",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}

# === RIGHT COLUMN (^-0.55) ===

# b13: Ice Plains
execute rotated ~ 0 positioned ^ ^1.78 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf13"],billboard:"center",text:{text:"Ice Plains",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b14: Badlands
execute rotated ~ 0 positioned ^ ^1.70 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf14"],billboard:"center",text:{text:"Badlands",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b24: Pale Garden
execute rotated ~ 0 positioned ^ ^1.62 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf24"],billboard:"center",text:{text:"Pale Garden",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}

# Caves Header
execute rotated ~ 0 positioned ^ ^1.50 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:{text:"— Caves —",color:"aqua"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b15: Lush Caves
execute rotated ~ 0 positioned ^ ^1.40 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf15"],billboard:"center",text:{text:"Lush Caves",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b16: Dripstone Caves
execute rotated ~ 0 positioned ^ ^1.32 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf16"],billboard:"center",text:{text:"Dripstone Caves",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b17: Deep Dark
execute rotated ~ 0 positioned ^ ^1.24 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf17"],billboard:"center",text:{text:"Deep Dark",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}

# Nether Header
execute rotated ~ 0 positioned ^ ^1.12 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage"],billboard:"center",text:{text:"— Nether —",color:"red"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b18: Nether Wastes
execute rotated ~ 0 positioned ^ ^1.02 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf18"],billboard:"center",text:{text:"Nether Wastes",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b19: Crimson Forest
execute rotated ~ 0 positioned ^ ^0.94 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf19"],billboard:"center",text:{text:"Crimson Forest",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b20: Warped Forest
execute rotated ~ 0 positioned ^ ^0.86 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf20"],billboard:"center",text:{text:"Warped Forest",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b21: Basalt Deltas
execute rotated ~ 0 positioned ^ ^0.78 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf21"],billboard:"center",text:{text:"Basalt Deltas",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}
# b22: Soul Sand Valley
execute rotated ~ 0 positioned ^ ^0.70 ^1.78 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnSubPage","Adv.JnAf22"],billboard:"center",text:{text:"Soul Sand Valley",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.14f]}}

# Refresh with current data
function evercraft:codex/hub/journal/refresh_affinity
