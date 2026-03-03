# Harvest XP — Intercept stone_button XP markers on the ground
# Block loot tables always spawn items as entities; this catches them
# before they're visible and awards XP directly to the nearest player.
# OPT: Self-scheduling at 4t instead of per-tick (items have pickup_delay, 4t is well within)

schedule function evercraft:harvest/intercept_xp_markers 4t

# Gate: skip if no stone_button items exist (most ticks have none)
execute unless entity @e[type=item,nbt={Item:{id:"minecraft:stone_button"}},limit=1] run return 0

execute as @e[type=item,nbt={Item:{id:"minecraft:stone_button",components:{"minecraft:custom_data":{ec_harvest_xp:1b}}}}] at @s run function evercraft:harvest/award_xp_from_drop
