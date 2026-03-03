# ============================================================
# Campfire Kitchen GUI — Check Clicks
# Runs as the player, detects interaction entity clicks
# Handlers run as the interaction entity (at its position)
# and target the player via @a[tag=CK.InMenu,distance=..5]
# ============================================================

# --- Category Tabs ---
execute as @e[type=interaction,tag=CK.Tab0Click,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_tab {tab:0,tab_label:"[Combat]"}
execute as @e[type=interaction,tag=CK.Tab1Click,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_tab {tab:1,tab_label:"[Mining]"}
execute as @e[type=interaction,tag=CK.Tab2Click,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_tab {tab:2,tab_label:"[Fortune]"}
execute as @e[type=interaction,tag=CK.Tab3Click,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_tab {tab:3,tab_label:"[Wayfarer]"}
execute as @e[type=interaction,tag=CK.Tab4Click,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_tab {tab:4,tab_label:"[Delicacy]"}
execute as @e[type=interaction,tag=CK.Tab5Click,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_tab {tab:5,tab_label:"[Seasonal]"}
execute as @e[type=interaction,tag=CK.Tab6Click,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_tab {tab:6,tab_label:"[Treats]"}

# --- Cook Buttons ---
execute as @e[type=interaction,tag=CK.Cook0Click,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_cook {slot:0}
execute as @e[type=interaction,tag=CK.Cook1Click,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_cook {slot:1}
execute as @e[type=interaction,tag=CK.Cook2Click,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_cook {slot:2}
execute as @e[type=interaction,tag=CK.Cook3Click,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_cook {slot:3}
execute as @e[type=interaction,tag=CK.Cook4Click,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_cook {slot:4}
execute as @e[type=interaction,tag=CK.Cook5Click,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_cook {slot:5}

# --- Close Button ---
execute as @e[type=interaction,tag=CK.CloseClick,distance=..5] if data entity @s interaction at @s run function evercraft:cooking/gui/click_close
