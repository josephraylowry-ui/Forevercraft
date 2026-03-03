# Migrate codex items and ensure all players have a codex
# Runs on every /reload and server start via init.mcfunction

# --- Step 1: Replace old recovery_compass codex items ---
tag @a remove ec.had_old_codex
execute as @a store success score @s ec.temp run clear @s recovery_compass[custom_data~{artifact_codex:true}] 0
execute as @a if score @s ec.temp matches 1.. run tag @s add ec.had_old_codex

# Clear old codex items
execute as @a[tag=ec.had_old_codex] run clear @s recovery_compass[custom_data~{artifact_codex:true}]

# Give new codex to players who had the old one
execute as @a[tag=ec.had_old_codex] run loot give @s loot evercraft:items/artifact_codex_item
execute as @a[tag=ec.had_old_codex] run tellraw @s [{text:"[Forevercraft] ",color:"gold",bold:true},{text:"Your codex has been upgraded!",color:"yellow"}]
tag @a remove ec.had_old_codex

# --- Step 2: Refresh all existing codex items to latest version ---
# Replaces any warped_fungus_on_a_stick with artifact_codex custom data
# This ensures name, lore, and model are always up-to-date after changes
tag @a remove ec.had_old_codex
execute as @a store success score @s ec.temp run clear @s warped_fungus_on_a_stick[custom_data~{artifact_codex:true}] 0
execute as @a if score @s ec.temp matches 1.. run tag @s add ec.had_old_codex
execute as @a[tag=ec.had_old_codex] run clear @s warped_fungus_on_a_stick[custom_data~{artifact_codex:true}]
execute as @a[tag=ec.had_old_codex] run loot give @s loot evercraft:items/artifact_codex_item
tag @a remove ec.had_old_codex

# --- Step 3: Bootstrap ec.has_artifacts for existing players ---
# Delegates to bootstrap function which checks ALL 265+ artifact advancements
function evercraft:codex/bootstrap_has_artifacts

# --- Step 4: Give codex to ALL online players who don't have one ---
# The codex is a reference book — harmless to give to everyone
# This ensures it always appears on login/reload regardless of artifact history
execute as @a unless items entity @s container.* warped_fungus_on_a_stick[custom_data~{artifact_codex:true}] unless items entity @s weapon.offhand warped_fungus_on_a_stick[custom_data~{artifact_codex:true}] unless items entity @s enderchest.* warped_fungus_on_a_stick[custom_data~{artifact_codex:true}] run loot give @s loot evercraft:items/artifact_codex_item
