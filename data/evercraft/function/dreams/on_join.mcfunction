# On Join — Compute dream rate, show unified briefing, initialize player systems
# @s = player, at @s context

# === Compute dream rate (scores used by briefing/show) ===
# Get total dream rate (scale 10 for decimal display)
execute store result score @s ec.temp run attribute @s luck get 10

# Calculate whole and decimal parts
scoreboard players operation @s ec.var = @s ec.temp
scoreboard players set #10 ec.const 10
scoreboard players operation @s ec.var /= #10 ec.const
scoreboard players operation #dec ec.temp = @s ec.temp
scoreboard players operation #dec ec.temp %= #10 ec.const

# Fix negative decimals: ensure decimal part is always positive for display
# e.g., -5 % 10 = -5 in Minecraft, but we want to show -0.5 not -0.-5
scoreboard players set #-1 ec.var -1
execute if score #dec ec.temp matches ..-1 run scoreboard players operation #dec ec.temp *= #-1 ec.var

# === Show unified join briefing ===
function evercraft:briefing/show

playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 0.3 1.5

# === Initialize player systems ===
function evercraft:advantage/init_player
function evercraft:advantage/effects/reapply_all

# Initialize RPG health bar (claim/reassign boss bar slot)
function evercraft:health_bar/join

# === ENABLE ALL TRIGGER SCOREBOARDS (OPT — moved from per-tick enable @a) ===
# Core triggers
scoreboard players enable @s ec.dreams
scoreboard players enable @s ec.moon
scoreboard players enable @s ec.loot_timer
scoreboard players enable @s ec.stats
scoreboard players enable @s ec.healthbar
scoreboard players enable @s ec.codex
scoreboard players enable @s ec.ncore
scoreboard players enable @s ec.codex_tp
scoreboard players enable @s ec.quest
scoreboard players enable @s ec.lore_add
scoreboard players enable @s ec.lore_map
scoreboard players enable @s ec.wake
scoreboard players enable @s ec.biome_mastery
scoreboard players enable @s ec.milestones
# Trim triggers
scoreboard players enable @s update_trim_ability
scoreboard players enable @s wild_wolves
scoreboard players enable @s panda_genes
scoreboard players enable @s find_way
scoreboard players enable @s get_bundle
scoreboard players enable @s water_dash
scoreboard players enable @s summon_guardian

# Initialize party scores (no score ≠ 0, so invite scan won't find them without this)
scoreboard players add @s ec.party_id 0
scoreboard players add @s ec.party_role 0

# Mark as joined
tag @s add ec.joined
