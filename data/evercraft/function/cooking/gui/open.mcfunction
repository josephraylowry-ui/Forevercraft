# ============================================================
# Campfire Kitchen GUI — Open
# Runs as the player, at the player
# Spawns all GUI entities in front of the player
# ============================================================

# Tag player as in menu
tag @s add CK.InMenu

# Default to Combat category (0)
scoreboard players set @s ec.ck_cat 0

# --- Anchor Marker (tracks menu position) ---
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 run summon marker ~ ~ ~ {Tags:["CK.MenuEl","CK.Anchor"]}

# --- Title ---
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0 ^0.70 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Title"],billboard:"center",text:[{"text":"✦ ","color":"gold"},{"text":"Campfire Kitchen","color":"gold","bold":true},{"text":" ✦","color":"gold"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}

# --- Category Tabs (0.42 spacing, scale 0.25) ---
# Tab 0: Combat (active by default — yellow)
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.84 ^0.54 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Tab0Text"],billboard:"center",text:{"text":"[Combat]","color":"yellow","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.84 ^0.48 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Tab0Click"],width:0.3f,height:0.12f,response:1b}

# Tab 1: Mining
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.42 ^0.54 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Tab1Text"],billboard:"center",text:{"text":"[Mining]","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.42 ^0.48 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Tab1Click"],width:0.3f,height:0.12f,response:1b}

# Tab 2: Fortune
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.00 ^0.54 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Tab2Text"],billboard:"center",text:{"text":"[Fortune]","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.00 ^0.48 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Tab2Click"],width:0.3f,height:0.12f,response:1b}

# Tab 3: Wayfarer
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.42 ^0.54 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Tab3Text"],billboard:"center",text:{"text":"[Wayfarer]","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.42 ^0.48 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Tab3Click"],width:0.3f,height:0.12f,response:1b}

# Tab 4: Delicacy
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.84 ^0.54 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Tab4Text"],billboard:"center",text:{"text":"[Delicacy]","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.84 ^0.48 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Tab4Click"],width:0.3f,height:0.12f,response:1b}

# Tab 5: Seasonal
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-1.26 ^0.54 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Tab5Text"],billboard:"center",text:{"text":"[Seasonal]","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-1.26 ^0.48 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Tab5Click"],width:0.3f,height:0.12f,response:1b}

# Tab 6: Treats (companion treats)
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-1.68 ^0.54 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Tab6Text"],billboard:"center",text:{"text":"[Treats]","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-1.68 ^0.48 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Tab6Click"],width:0.3f,height:0.12f,response:1b}

# --- Recipe Rows (6 recipes per category, 0.23 spacing) ---
# Recipe 0 — name + [Cook] button + ingredient line
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.15 ^0.36 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Recipe0"],billboard:"center",text:{"text":"Loading...","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.55 ^0.36 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Cook0Text"],billboard:"center",text:{"text":"[Cook]","color":"green","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.55 ^0.31 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Cook0Click"],width:0.18f,height:0.1f,response:1b}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.15 ^0.26 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Ingr0"],billboard:"center",text:{"text":"","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}

# Recipe 1
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.15 ^0.13 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Recipe1"],billboard:"center",text:{"text":"Loading...","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.55 ^0.13 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Cook1Text"],billboard:"center",text:{"text":"[Cook]","color":"green","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.55 ^0.08 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Cook1Click"],width:0.18f,height:0.1f,response:1b}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.15 ^0.03 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Ingr1"],billboard:"center",text:{"text":"","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}

# Recipe 2
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.15 ^-0.10 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Recipe2"],billboard:"center",text:{"text":"Loading...","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.55 ^-0.10 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Cook2Text"],billboard:"center",text:{"text":"[Cook]","color":"green","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.55 ^-0.15 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Cook2Click"],width:0.18f,height:0.1f,response:1b}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.15 ^-0.20 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Ingr2"],billboard:"center",text:{"text":"","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}

# Recipe 3
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.15 ^-0.33 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Recipe3"],billboard:"center",text:{"text":"Loading...","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.55 ^-0.33 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Cook3Text"],billboard:"center",text:{"text":"[Cook]","color":"green","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.55 ^-0.38 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Cook3Click"],width:0.18f,height:0.1f,response:1b}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.15 ^-0.43 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Ingr3"],billboard:"center",text:{"text":"","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}

# Recipe 4
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.15 ^-0.56 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Recipe4"],billboard:"center",text:{"text":"Loading...","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.55 ^-0.56 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Cook4Text"],billboard:"center",text:{"text":"[Cook]","color":"green","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.55 ^-0.61 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Cook4Click"],width:0.18f,height:0.1f,response:1b}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.15 ^-0.66 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Ingr4"],billboard:"center",text:{"text":"","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}

# Recipe 5
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.15 ^-0.79 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Recipe5"],billboard:"center",text:{"text":"Loading...","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.55 ^-0.79 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Cook5Text"],billboard:"center",text:{"text":"[Cook]","color":"green","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.55 ^-0.84 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Cook5Click"],width:0.18f,height:0.1f,response:1b}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^0.15 ^-0.89 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Ingr5"],billboard:"center",text:{"text":"","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}

# --- Close Button ---
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.45 ^-1.02 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.CloseText"],billboard:"center",text:{"text":"[Close]","color":"red"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute at @s rotated ~ 0 positioned ^ ^1.2 ^1.5 positioned ^-0.45 ^-1.08 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.CloseClick"],width:0.2f,height:0.12f,response:1b}

# --- Sound ---
playsound minecraft:block.campfire.crackle master @s ~ ~ ~ 0.8 1.2

# --- Initial refresh to populate recipe displays ---
function evercraft:cooking/gui/refresh
