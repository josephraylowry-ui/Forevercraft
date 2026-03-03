# Journey Pickaxe — Tick Check
# Detects block breaks via marker-in-air method

# Pass 1: Check if tracked target was broken (marker now in air)
execute as @e[type=marker,tag=ec_pick_target] at @s if block ~ ~ ~ air run function evercraft:artifacts/mythical_tools/journey_pickaxe/on_break
kill @e[type=marker,tag=ec_pick_target,nbt={Tags:["ec_pick_broken"]}]

# Pass 2: Clean old markers and place new ones for current targets
kill @e[type=marker,tag=ec_pick_target]
# OPT: Single @a scan instead of 2 duplicate selectors
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_pickaxe"}] run function evercraft:artifacts/mythical_tools/journey_pickaxe/start_raycast

# Right-click: toggle Silk Touch / Fortune (scoreboard stat fires once per click)
execute as @a[scores={ec.used_n_pick=1..}] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_pickaxe"}] run function evercraft:artifacts/mythical_tools/journey_pickaxe/toggle_enchant
scoreboard players set @a[scores={ec.used_n_pick=1..}] ec.used_n_pick 0
