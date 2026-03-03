# Mythical Tools - Tick Function
# Handles special abilities for mythical tools
# OPT: Marker processing inlined, 3 @a at @s scans consolidated into 1

# === MARKER PROCESSING (break detection + cleanup) ===

# Axe of Honor markers
execute as @e[type=marker,tag=ec_axe_target] at @s if block ~ ~ ~ air run function evercraft:artifacts/mythical_tools/axe_of_honor/on_break
# OPT: Single kill covers all (broken + unbroken) — was 2 kills
kill @e[type=marker,tag=ec_axe_target]

# Journey Pickaxe markers
execute as @e[type=marker,tag=ec_pick_target] at @s if block ~ ~ ~ air run function evercraft:artifacts/mythical_tools/journey_pickaxe/on_break
kill @e[type=marker,tag=ec_pick_target]

# Journey Shovel markers
execute as @e[type=marker,tag=ec_shov_target] at @s if block ~ ~ ~ air run function evercraft:artifacts/mythical_tools/journey_shovel/on_break
kill @e[type=marker,tag=ec_shov_target]

# === PLAYER TOOL CHECK (single @a pass for all marker-based tools) ===
execute as @a at @s run function evercraft:artifacts/mythical_tools/check_player

# === STAT-GATED CHECKS ===
# Hoe of Honor — usage stat (no markers needed)
execute as @a[scores={ec.used_n_hoe=1..}] run function evercraft:artifacts/mythical_tools/hoe_of_honor/on_use
scoreboard players set @a[scores={ec.used_n_hoe=1..}] ec.used_n_hoe 0

# Journey Pickaxe — right-click toggle
execute as @a[scores={ec.used_n_pick=1..}] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_pickaxe"}] run function evercraft:artifacts/mythical_tools/journey_pickaxe/toggle_enchant
scoreboard players set @a[scores={ec.used_n_pick=1..}] ec.used_n_pick 0

# Journey Set - Item Magnetism (moved to 10-tick schedule for visual drop pop-out)
