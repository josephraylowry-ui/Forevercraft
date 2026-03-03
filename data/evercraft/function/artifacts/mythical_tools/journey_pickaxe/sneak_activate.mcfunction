# Journey Pickaxe - Sneak Activation
# Player is sneaking while holding Journey Pickaxe, raycast for ores/blocks

# Initialize pick mode if not set (default to vein mining = 0)
execute unless score @s ec.pick_mode matches 0..1 run scoreboard players set @s ec.pick_mode 0

# Raycast for the target block
execute anchored eyes positioned ^ ^ ^0.5 run function evercraft:artifacts/mythical_tools/journey_pickaxe/raycast

# Set cooldown (20 ticks = 1 second) to prevent spam
scoreboard players set @s ec.pick_cd 20
