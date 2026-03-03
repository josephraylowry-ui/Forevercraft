# Cave Darkness — 1s self-schedule
# Below Y=16, block light ≤ 3, no night vision → apply darkness
schedule function evercraft:cave_darkness/tick 1s

# For each survival/adventure player in the overworld:
# Predicate checks: Y ≤ 16, block_light ≤ 3, not in water, no night vision
# OPT: night vision check moved into predicate (avoids per-player NBT scan)
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate evercraft:in_overworld if predicate evercraft:cave_darkness/is_dark_cave run effect give @s darkness 2 0 true
