# ============================================================
# ACHIEVEMENTS — Exploration Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# NOTE: Most exploration achievements use vanilla triggers (in JSON).
# Only threshold-based ones go here.
# ============================================================

# --- Biomes visited (uses ach.biomes_visited) ---
execute as @a[scores={ach.biomes_visited=5..}] unless entity @s[advancements={evercraft:alternate/exploration/common/discover_5_biomes=true}] run advancement grant @s only evercraft:alternate/exploration/common/discover_5_biomes
execute as @a[scores={ach.biomes_visited=10..}] unless entity @s[advancements={evercraft:alternate/exploration/uncommon/discover_10_biomes=true}] run advancement grant @s only evercraft:alternate/exploration/uncommon/discover_10_biomes
execute as @a[scores={ach.biomes_visited=15..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/discover_15_biomes=true}] run advancement grant @s only evercraft:alternate/exploration/rare/discover_15_biomes
execute as @a[scores={ach.biomes_visited=20..}] unless entity @s[advancements={evercraft:alternate/exploration/ornate/discover_20_biomes=true}] run advancement grant @s only evercraft:alternate/exploration/ornate/discover_20_biomes
execute as @a[scores={ach.biomes_visited=24..}] unless entity @s[advancements={evercraft:alternate/exploration/exquisite/discover_all_biomes=true}] run advancement grant @s only evercraft:alternate/exploration/exquisite/discover_all_biomes

# --- Structures found ---
execute as @a[scores={ach.structures_found=5..}] unless entity @s[advancements={evercraft:alternate/exploration/uncommon/discover_5_structures=true}] run advancement grant @s only evercraft:alternate/exploration/uncommon/discover_5_structures
execute as @a[scores={ach.structures_found=10..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/discover_10_structures=true}] run advancement grant @s only evercraft:alternate/exploration/rare/discover_10_structures
execute as @a[scores={ach.structures_found=15..}] unless entity @s[advancements={evercraft:alternate/exploration/ornate/discover_15_structures=true}] run advancement grant @s only evercraft:alternate/exploration/ornate/discover_15_structures

# --- Lore/Story Achievements ---
# Dreams of Power: reach 5 Dreams (luck >= 5.0, stored as ec.temp * 10 = 50)
# NOTE: Checked inline in dreams/check.mcfunction instead (needs luck attribute read)

# The Sleeping Giant: see all 3 moon types (ach.moons_seen bits: 1=full, 2=harvest, 4=new = 7)
execute as @a[scores={ach.moons_seen=7..}] unless entity @s[advancements={evercraft:alternate/exploration/ornate/sleeping_giant=true}] run advancement grant @s only evercraft:alternate/exploration/ornate/sleeping_giant

# Champion of Evercraft: max any advantage tree (level 25)
# Check all 13 trees — if any is 25+, grant
execute as @a unless entity @s[advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true}] if score @s adv.agility matches 25.. run advancement grant @s only evercraft:alternate/exploration/exquisite/champion_of_evercraft
execute as @a unless entity @s[advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true}] if score @s adv.vitality matches 25.. run advancement grant @s only evercraft:alternate/exploration/exquisite/champion_of_evercraft
execute as @a unless entity @s[advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true}] if score @s adv.dexterity matches 25.. run advancement grant @s only evercraft:alternate/exploration/exquisite/champion_of_evercraft
execute as @a unless entity @s[advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true}] if score @s adv.evasion matches 25.. run advancement grant @s only evercraft:alternate/exploration/exquisite/champion_of_evercraft
execute as @a unless entity @s[advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true}] if score @s adv.stealth matches 25.. run advancement grant @s only evercraft:alternate/exploration/exquisite/champion_of_evercraft
execute as @a unless entity @s[advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true}] if score @s adv.victorian matches 25.. run advancement grant @s only evercraft:alternate/exploration/exquisite/champion_of_evercraft
execute as @a unless entity @s[advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true}] if score @s adv.taskmaster matches 25.. run advancement grant @s only evercraft:alternate/exploration/exquisite/champion_of_evercraft
execute as @a unless entity @s[advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true}] if score @s adv.beastmaster matches 25.. run advancement grant @s only evercraft:alternate/exploration/exquisite/champion_of_evercraft
execute as @a unless entity @s[advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true}] if score @s adv.blacksmith matches 25.. run advancement grant @s only evercraft:alternate/exploration/exquisite/champion_of_evercraft
execute as @a unless entity @s[advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true}] if score @s adv.explorer matches 25.. run advancement grant @s only evercraft:alternate/exploration/exquisite/champion_of_evercraft
execute as @a unless entity @s[advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true}] if score @s adv.fishing matches 25.. run advancement grant @s only evercraft:alternate/exploration/exquisite/champion_of_evercraft
execute as @a unless entity @s[advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true}] if score @s adv.mining matches 25.. run advancement grant @s only evercraft:alternate/exploration/exquisite/champion_of_evercraft
execute as @a unless entity @s[advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true}] if score @s adv.gathering matches 25.. run advancement grant @s only evercraft:alternate/exploration/exquisite/champion_of_evercraft

# Legend Eternal: 35 Dreams + max tree + 200 artifacts + 50 pets
# Requires champion_of_evercraft already earned (proxy for max tree)
execute as @a[scores={ec.artifact_count=200..,ach.pets_owned=50..},advancements={evercraft:alternate/exploration/exquisite/champion_of_evercraft=true,evercraft:alternate/secrets/dream_weaver=true}] unless entity @s[advancements={evercraft:alternate/exploration/mythical/legend_eternal=true}] run advancement grant @s only evercraft:alternate/exploration/mythical/legend_eternal
