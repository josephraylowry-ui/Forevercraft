# Armored Elytra — Ritual Tick (every 1s) (OPT Session 76 — was 10t)
# Merge: throw elytra + chestplate on beacon (beacon is sacrificed)
# Unmerge: throw armored elytra on stonecutter
# Ritual detection doesn't need 0.5s precision — 1s is fine for thrown items

# Reschedule first (guarantees we keep ticking regardless of gate)
schedule function evercraft:armored_elytra/tick 1s

# Gate: skip logic if no players online
execute unless entity @a run return 0

# Find elytra artifacts on beacons (merge)
execute as @e[type=item,nbt={Item:{id:"minecraft:elytra",components:{"minecraft:custom_data":{is_artifact:true}}}}] at @s if block ~ ~ ~ minecraft:beacon run function evercraft:armored_elytra/detect_merge
execute as @e[type=item,nbt={Item:{id:"minecraft:elytra",components:{"minecraft:custom_data":{is_artifact:true}}}}] at @s if block ~ ~-1 ~ minecraft:beacon run function evercraft:armored_elytra/detect_merge

# Find armored elytra on stonecutters (unmerge)
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_chestplate",components:{"minecraft:custom_data":{armored_elytra:{armored:true}}}}}] at @s if block ~ ~ ~ minecraft:stonecutter run function evercraft:armored_elytra/detect_unmerge
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_chestplate",components:{"minecraft:custom_data":{armored_elytra:{armored:true}}}}}] at @s if block ~ ~-1 ~ minecraft:stonecutter run function evercraft:armored_elytra/detect_unmerge

