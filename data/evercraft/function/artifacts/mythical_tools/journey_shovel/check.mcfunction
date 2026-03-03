# Journey Shovel — Tick Check
# Detects block breaks via marker-in-air method

# Pass 1: Check if tracked target was broken
execute as @e[type=marker,tag=ec_shov_target] at @s if block ~ ~ ~ air run function evercraft:artifacts/mythical_tools/journey_shovel/on_break
kill @e[type=marker,tag=ec_shov_target,nbt={Tags:["ec_shov_broken"]}]

# Pass 2: Clean old markers, place new ones
kill @e[type=marker,tag=ec_shov_target]
# OPT: Single @a scan instead of 2 duplicate selectors
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run function evercraft:artifacts/mythical_tools/journey_shovel/start_raycast
