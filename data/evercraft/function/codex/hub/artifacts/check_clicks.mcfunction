# Artifact Collection — Click Routing
# Handles clicks at all 3 levels: tier picker, category picker, item list
# Run as the player

# === Level 1: Tier picker clicks (page 1) ===
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtTrClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_tier_click {tier:1}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtTrClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_tier_click {tier:2}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtTrClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_tier_click {tier:3}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtTrClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_tier_click {tier:4}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtTrClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_tier_click {tier:5}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtTrClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_tier_click {tier:6}
# Constellations button
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtConstClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_constellations_click
# Random Browse button
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ArtRandomClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/random_browse_click

# === Level 2: Category picker clicks (page 2) ===
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCatClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_category_click {category:1}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCatClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_category_click {category:2}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.ArtCatClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_category_click {category:3}
# Tools — only clickable for tiers 1-4 (Exquisite/Mythical have no tools)
execute if score @s adv.gui_page matches 2 if score @s adv.gui_art_tier matches 1..4 as @e[type=interaction,tag=Adv.ArtCatClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/enter_category_click {category:4}

# === Sub-navigation click (levels 2-3) ===
execute if score @s adv.gui_page matches 2.. as @e[type=interaction,tag=Adv.ArtSubNavClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/subnav_click

# === Level 3: Nav arrow clicks (page 3+) ===
execute if score @s adv.gui_page matches 3.. as @e[type=interaction,tag=Adv.NavLeftClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/nav_left
execute if score @s adv.gui_page matches 3.. as @e[type=interaction,tag=Adv.NavRightClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/artifacts/nav_right
