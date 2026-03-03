# Axe of Honor — Tick Check
# Detects block breaks via marker-in-air method (same pattern as pickaxe/shovel)

# Pass 1: Check if tracked target was broken (marker now in air)
execute as @e[type=marker,tag=ec_axe_target] at @s if block ~ ~ ~ air run function evercraft:artifacts/mythical_tools/axe_of_honor/on_break
kill @e[type=marker,tag=ec_axe_target,nbt={Tags:["ec_axe_broken"]}]

# Pass 2: Clean old markers and place new ones for current targets
kill @e[type=marker,tag=ec_axe_target]
# OPT: Single @a scan instead of 2 duplicate selectors
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"axe_of_honor"}] run function evercraft:artifacts/mythical_tools/axe_of_honor/start_raycast
