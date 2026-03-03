# Spawn a loot barrel and fill with structure-appropriate loot
# Locked during animation — unlocked by crate_anim/finish/structure
setblock ~ ~ ~ minecraft:barrel[facing=up]{lock:{items:"minecraft:air"}}

# Verify barrel was actually placed (setblock can silently fail in some contexts)
execute unless block ~ ~ ~ minecraft:barrel run return 0

# ============================================================================
# ORNATE BASE STRUCTURES (struct_id 1, 2, 6) - Tiered loot
# ============================================================================

# Ancient City (struct_id 1)
execute if score @s cf.struct_id matches 1 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/ancient_city/tier1
execute if score @s cf.struct_id matches 1 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/ancient_city/tier2
execute if score @s cf.struct_id matches 1 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/ancient_city/tier3
execute if score @s cf.struct_id matches 1 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/ancient_city/tier4
execute if score @s cf.struct_id matches 1 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/ancient_city/tier5
execute if score @s cf.struct_id matches 1 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/ancient_city/tier6

# End City (struct_id 2)
execute if score @s cf.struct_id matches 2 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/end_city/tier1
execute if score @s cf.struct_id matches 2 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/end_city/tier2
execute if score @s cf.struct_id matches 2 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/end_city/tier3
execute if score @s cf.struct_id matches 2 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/end_city/tier4
execute if score @s cf.struct_id matches 2 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/end_city/tier5
execute if score @s cf.struct_id matches 2 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/end_city/tier6

# Bastion (struct_id 6)
execute if score @s cf.struct_id matches 6 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/bastion/tier1
execute if score @s cf.struct_id matches 6 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/bastion/tier2
execute if score @s cf.struct_id matches 6 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/bastion/tier3
execute if score @s cf.struct_id matches 6 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/bastion/tier4
execute if score @s cf.struct_id matches 6 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/bastion/tier5
execute if score @s cf.struct_id matches 6 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/bastion/tier6

# ============================================================================
# RARE BASE STRUCTURES (struct_id 3, 4, 5, 7, 8) - Tiered loot
# ============================================================================

# Trial Chambers (struct_id 3)
execute if score @s cf.struct_id matches 3 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier1
execute if score @s cf.struct_id matches 3 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier2
execute if score @s cf.struct_id matches 3 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier3
execute if score @s cf.struct_id matches 3 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier4
execute if score @s cf.struct_id matches 3 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier5
execute if score @s cf.struct_id matches 3 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier6

# Stronghold (struct_id 4)
execute if score @s cf.struct_id matches 4 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/stronghold/tier1
execute if score @s cf.struct_id matches 4 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/stronghold/tier2
execute if score @s cf.struct_id matches 4 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/stronghold/tier3
execute if score @s cf.struct_id matches 4 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/stronghold/tier4
execute if score @s cf.struct_id matches 4 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/stronghold/tier5
execute if score @s cf.struct_id matches 4 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/stronghold/tier6

# Mansion (struct_id 5)
execute if score @s cf.struct_id matches 5 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/mansion/tier1
execute if score @s cf.struct_id matches 5 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/mansion/tier2
execute if score @s cf.struct_id matches 5 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/mansion/tier3
execute if score @s cf.struct_id matches 5 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/mansion/tier4
execute if score @s cf.struct_id matches 5 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/mansion/tier5
execute if score @s cf.struct_id matches 5 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/mansion/tier6

# Nether Fortress (struct_id 7)
execute if score @s cf.struct_id matches 7 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/fortress/tier1
execute if score @s cf.struct_id matches 7 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/fortress/tier2
execute if score @s cf.struct_id matches 7 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/fortress/tier3
execute if score @s cf.struct_id matches 7 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/fortress/tier4
execute if score @s cf.struct_id matches 7 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/fortress/tier5
execute if score @s cf.struct_id matches 7 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/fortress/tier6

# Ocean Monument (struct_id 8)
execute if score @s cf.struct_id matches 8 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/monument/tier1
execute if score @s cf.struct_id matches 8 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/monument/tier2
execute if score @s cf.struct_id matches 8 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/monument/tier3
execute if score @s cf.struct_id matches 8 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/monument/tier4
execute if score @s cf.struct_id matches 8 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/monument/tier5
execute if score @s cf.struct_id matches 8 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/monument/tier6

# ============================================================================
# UNCOMMON BASE STRUCTURES (struct_id 9, 10, 17, 19) - Tiered loot
# ============================================================================

# Desert Pyramid (struct_id 9)
execute if score @s cf.struct_id matches 9 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/desert_pyramid/tier1
execute if score @s cf.struct_id matches 9 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/desert_pyramid/tier2
execute if score @s cf.struct_id matches 9 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/desert_pyramid/tier3
execute if score @s cf.struct_id matches 9 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/desert_pyramid/tier4
execute if score @s cf.struct_id matches 9 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/desert_pyramid/tier5
execute if score @s cf.struct_id matches 9 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/desert_pyramid/tier6

# Jungle Pyramid (struct_id 10)
execute if score @s cf.struct_id matches 10 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/jungle_pyramid/tier1
execute if score @s cf.struct_id matches 10 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/jungle_pyramid/tier2
execute if score @s cf.struct_id matches 10 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/jungle_pyramid/tier3
execute if score @s cf.struct_id matches 10 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/jungle_pyramid/tier4
execute if score @s cf.struct_id matches 10 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/jungle_pyramid/tier5
execute if score @s cf.struct_id matches 10 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/jungle_pyramid/tier6

# Mineshaft (struct_id 17)
execute if score @s cf.struct_id matches 17 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/mineshaft/tier1
execute if score @s cf.struct_id matches 17 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/mineshaft/tier2
execute if score @s cf.struct_id matches 17 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/mineshaft/tier3
execute if score @s cf.struct_id matches 17 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/mineshaft/tier4
execute if score @s cf.struct_id matches 17 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/mineshaft/tier5
execute if score @s cf.struct_id matches 17 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/mineshaft/tier6

# Dungeon (struct_id 19)
execute if score @s cf.struct_id matches 19 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/dungeon/tier1
execute if score @s cf.struct_id matches 19 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/dungeon/tier2
execute if score @s cf.struct_id matches 19 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/dungeon/tier3
execute if score @s cf.struct_id matches 19 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/dungeon/tier4
execute if score @s cf.struct_id matches 19 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/dungeon/tier5
execute if score @s cf.struct_id matches 19 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/dungeon/tier6

# ============================================================================
# COMMON BASE STRUCTURES (struct_id 11-16, 18) - Tiered loot
# ============================================================================

# Shipwreck (struct_id 11)
execute if score @s cf.struct_id matches 11 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/shipwreck/tier1
execute if score @s cf.struct_id matches 11 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/shipwreck/tier2
execute if score @s cf.struct_id matches 11 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/shipwreck/tier3
execute if score @s cf.struct_id matches 11 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/shipwreck/tier4
execute if score @s cf.struct_id matches 11 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/shipwreck/tier5
execute if score @s cf.struct_id matches 11 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/shipwreck/tier6

# Ocean Ruins (struct_id 12)
execute if score @s cf.struct_id matches 12 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/ocean_ruins/tier1
execute if score @s cf.struct_id matches 12 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/ocean_ruins/tier2
execute if score @s cf.struct_id matches 12 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/ocean_ruins/tier3
execute if score @s cf.struct_id matches 12 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/ocean_ruins/tier4
execute if score @s cf.struct_id matches 12 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/ocean_ruins/tier5
execute if score @s cf.struct_id matches 12 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/ocean_ruins/tier6

# Igloo (struct_id 13)
execute if score @s cf.struct_id matches 13 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/igloo/tier1
execute if score @s cf.struct_id matches 13 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/igloo/tier2
execute if score @s cf.struct_id matches 13 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/igloo/tier3
execute if score @s cf.struct_id matches 13 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/igloo/tier4
execute if score @s cf.struct_id matches 13 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/igloo/tier5
execute if score @s cf.struct_id matches 13 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/igloo/tier6

# Pillager Outpost (struct_id 14)
execute if score @s cf.struct_id matches 14 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/outpost/tier1
execute if score @s cf.struct_id matches 14 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/outpost/tier2
execute if score @s cf.struct_id matches 14 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/outpost/tier3
execute if score @s cf.struct_id matches 14 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/outpost/tier4
execute if score @s cf.struct_id matches 14 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/outpost/tier5
execute if score @s cf.struct_id matches 14 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/outpost/tier6

# Trail Ruins (struct_id 15)
execute if score @s cf.struct_id matches 15 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/trail_ruins/tier1
execute if score @s cf.struct_id matches 15 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/trail_ruins/tier2
execute if score @s cf.struct_id matches 15 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/trail_ruins/tier3
execute if score @s cf.struct_id matches 15 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/trail_ruins/tier4
execute if score @s cf.struct_id matches 15 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/trail_ruins/tier5
execute if score @s cf.struct_id matches 15 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/trail_ruins/tier6

# Village (struct_id 16)
execute if score @s cf.struct_id matches 16 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/village/tier1
execute if score @s cf.struct_id matches 16 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/village/tier2
execute if score @s cf.struct_id matches 16 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/village/tier3
execute if score @s cf.struct_id matches 16 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/village/tier4
execute if score @s cf.struct_id matches 16 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/village/tier5
execute if score @s cf.struct_id matches 16 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/village/tier6

# Ruined Portal (struct_id 18)
execute if score @s cf.struct_id matches 18 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/ruined_portal/tier1
execute if score @s cf.struct_id matches 18 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/ruined_portal/tier2
execute if score @s cf.struct_id matches 18 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/ruined_portal/tier3
execute if score @s cf.struct_id matches 18 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/ruined_portal/tier4
execute if score @s cf.struct_id matches 18 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/ruined_portal/tier5
execute if score @s cf.struct_id matches 18 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/ruined_portal/tier6

# ============================================================================
# VAULT STRUCTURES (struct_id 21=Normal Vault, 22=Ominous Vault)
# Reuse trial_chambers loot tables — vaults are in the same structure
# ============================================================================

# Normal Vault (struct_id 21)
execute if score @s cf.struct_id matches 21 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier1
execute if score @s cf.struct_id matches 21 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier2
execute if score @s cf.struct_id matches 21 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier3
execute if score @s cf.struct_id matches 21 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier4
execute if score @s cf.struct_id matches 21 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier5
execute if score @s cf.struct_id matches 21 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier6

# Ominous Vault (struct_id 22)
execute if score @s cf.struct_id matches 22 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier1
execute if score @s cf.struct_id matches 22 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier2
execute if score @s cf.struct_id matches 22 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier3
execute if score @s cf.struct_id matches 22 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier4
execute if score @s cf.struct_id matches 22 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier5
execute if score @s cf.struct_id matches 22 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/structures/trial_chambers/tier6

# ============================================================================
# UNKNOWN/CUSTOM STRUCTURES (struct_id 20) - Uses rolled tier from luck system
# ============================================================================
execute if score @s cf.struct_id matches 20 if score @s cf.tier matches 1 run loot insert ~ ~ ~ loot evercraft:structures/unknown/tier1
execute if score @s cf.struct_id matches 20 if score @s cf.tier matches 2 run loot insert ~ ~ ~ loot evercraft:structures/unknown/tier2
execute if score @s cf.struct_id matches 20 if score @s cf.tier matches 3 run loot insert ~ ~ ~ loot evercraft:structures/unknown/tier3
execute if score @s cf.struct_id matches 20 if score @s cf.tier matches 4 run loot insert ~ ~ ~ loot evercraft:structures/unknown/tier4
execute if score @s cf.struct_id matches 20 if score @s cf.tier matches 5 run loot insert ~ ~ ~ loot evercraft:structures/unknown/tier5
execute if score @s cf.struct_id matches 20 if score @s cf.tier matches 6 run loot insert ~ ~ ~ loot evercraft:structures/unknown/tier6

# ============================================================================
# ANNOUNCE TIER — Only here (after loot spawns) to prevent spam on re-opens
# ============================================================================
function evercraft:structures/interact/announce_tier

# ============================================================================
# BONUS SYSTEMS
# ============================================================================

# Bonus loot
function evercraft:structures/container/add_bonus_loot

# 1% chance: Totem of Summoning bonus
execute align xyz run function evercraft:bosses/totem/roll_crate_drop

# Shuffle barrel contents into random slots (items spawn packed at top from loot insert)
function evercraft:structures/container/shuffle_barrel

# Grant XP based on tier (with actionbar feedback)
execute if score @s cf.tier matches 1 run experience add @s 10 points
execute if score @s cf.tier matches 1 run title @s actionbar {text:"+10 XP",color:"green"}
execute if score @s cf.tier matches 2 run experience add @s 25 points
execute if score @s cf.tier matches 2 run title @s actionbar {text:"+25 XP",color:"green"}
execute if score @s cf.tier matches 3 run experience add @s 50 points
execute if score @s cf.tier matches 3 run title @s actionbar {text:"+50 XP",color:"aqua"}
execute if score @s cf.tier matches 4 run experience add @s 100 points
execute if score @s cf.tier matches 4 run title @s actionbar {text:"+100 XP",color:"dark_purple"}
execute if score @s cf.tier matches 5 run experience add @s 200 points
execute if score @s cf.tier matches 5 run title @s actionbar {text:"+200 XP",color:"light_purple"}
execute if score @s cf.tier matches 6 run experience add @s 500 points
execute if score @s cf.tier matches 6 run title @s actionbar {text:"+500 XP",color:"gold"}

# Summon invisible marker to track this loot barrel (90s despawn)
# align xyz to ensure marker is at block corner, not fractional position
execute align xyz run summon marker ~ ~ ~ {Tags:["cf.loot_barrel","cf.temp_container"],data:{lifetime:1800}}

# ============================================================================
# MARK POSITION AS LOOTED
# This MUST happen here (after successful spawn) not earlier!
# If dream gated, this function never runs, so player can retry later
# ============================================================================
function evercraft:structures/storage/mark_looted

# ============================================================================
# PARTY COMBO: Rally Cry — Explorer 15+ in party triggers Dream Rate buff
# ============================================================================
execute if score @s ec.party_id matches 1.. at @s run function evercraft:party/combos/rally_cry

# ============================================================================
# CRATE ANIMATION — Spawn visual display based on tier
# The barrel is locked during animation, unlocked by finish function
# align xyz ensures animation spawns centered on the barrel block, not at fractional pos
# ============================================================================
execute align xyz if score @s cf.tier matches 1 run function evercraft:crate_anim/spawn_display {tier:"common",system_tag:"structure_crate",plot_start:10,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2NTMyNiwKICAicHJvZmlsZUlkIiA6ICI5ZjJiY2M1M2U4YzM0OTY4YTc5Yzc0NTExYWQ2NmQyYyIsCiAgInByb2ZpbGVOYW1lIiA6ICJLYWJveWlvIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2M1M2UxYTgwYTQ4ODEyZTJlYmFiYTU0YTRiMjczM2RjMTFjNDc2ZTI0NDJlMzcwYzNjOWRjMWQ0OTc5NzE4ZDIiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}
execute align xyz if score @s cf.tier matches 2 run function evercraft:crate_anim/spawn_display {tier:"uncommon",system_tag:"structure_crate",plot_start:10,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY3NDQ1OCwKICAicHJvZmlsZUlkIiA6ICIxODEzOTc2N2Q2YjU0N2E5OWY3M2M0ZjRmZjEzOTZhNCIsCiAgInByb2ZpbGVOYW1lIiA6ICJVc2FXaW1hIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzVkZGYwYTEwOGNkM2JjYWNmOTZjZmJmMzBlMTVkMzU0N2ZmN2JmZjk1ZDBmOTI0M2VjMzU0N2NhZWM2YWQzZmMiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}
execute align xyz if score @s cf.tier matches 3 run function evercraft:crate_anim/spawn_display {tier:"rare",system_tag:"structure_crate",plot_start:15,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY3MjYyOCwKICAicHJvZmlsZUlkIiA6ICIzMjFjNTBiMjJhY2Q0OGUxOGEyMGU0N2I2ZThhYjE2ZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJsaWdodDEzMzM3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzYzMDdhZWJjNWEwOGQzMTYyMWQ3NTRkODc5ZWI1OTQ5OTFmMDQxNTI5ZjFmYmFhMjg0MGZhYTlmMjQ3MWU0IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}
execute align xyz if score @s cf.tier matches 4 run function evercraft:crate_anim/spawn_display {tier:"ornate",system_tag:"structure_crate",plot_start:20,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2ODYzNSwKICAicHJvZmlsZUlkIiA6ICJmYjZkM2E5Zjk3MWY0ZTdlYmQ0MjE2Yjk0MjE5NDA3NCIsCiAgInByb2ZpbGVOYW1lIiA6ICJHb2xkZW5BcHBsZUdIRyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9hMGFlZDAxZjE4Yjc5MDhjZTBiMTFjNjViMTFjMGE1NjgwMDlmY2IyZWY2NWQ3YThjOTEzN2NkYjY3YTM0YTJkIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}
execute align xyz if score @s cf.tier matches 5 run function evercraft:crate_anim/spawn_display {tier:"exquisite",system_tag:"structure_crate",plot_start:25,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2NjM1NywKICAicHJvZmlsZUlkIiA6ICJmNzM0MmExODMxZDA0ZDA5ODc4Y2ViOTVmOTUxYTllMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJOb3RNMWtzIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzI1ODY4MWY2YmFjZjE4MTVhYTNmMjc4N2E4MjJiNDQwZmJjZmViZTdkZDJjOGEyN2Y5OGRlNTk4NmI3MTBmMGYiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}
execute align xyz if score @s cf.tier matches 6 run function evercraft:crate_anim/spawn_display {tier:"mythical",system_tag:"structure_crate",plot_start:30,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2NzEzNSwKICAicHJvZmlsZUlkIiA6ICI3OThlZWM3OGYzNGU0MGJhYjlmNjk0ODIwYzM3ZTcxYyIsCiAgInByb2ZpbGVOYW1lIiA6ICJFbENoYW5vbk1DIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzc0ZDNmNDY0NmYxMWRlODY2MDhkZTY0NjM2NmE4YmU4YThlOWQ4MjA3ZjhhZDRjZDU2YzQzOTk2Y2JhZWMwOTUiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}

# Vault crate animations (struct_id 21, 22) — same skins as structure crates
execute align xyz if score @s cf.struct_id matches 21..22 if score @s cf.tier matches 1 run function evercraft:crate_anim/spawn_display {tier:"common",system_tag:"structure_crate",plot_start:10,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2NTMyNiwKICAicHJvZmlsZUlkIiA6ICI5ZjJiY2M1M2U4YzM0OTY4YTc5Yzc0NTExYWQ2NmQyYyIsCiAgInByb2ZpbGVOYW1lIiA6ICJLYWJveWlvIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2M1M2UxYTgwYTQ4ODEyZTJlYmFiYTU0YTRiMjczM2RjMTFjNDc2ZTI0NDJlMzcwYzNjOWRjMWQ0OTc5NzE4ZDIiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}
execute align xyz if score @s cf.struct_id matches 21..22 if score @s cf.tier matches 2 run function evercraft:crate_anim/spawn_display {tier:"uncommon",system_tag:"structure_crate",plot_start:10,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY3NDQ1OCwKICAicHJvZmlsZUlkIiA6ICIxODEzOTc2N2Q2YjU0N2E5OWY3M2M0ZjRmZjEzOTZhNCIsCiAgInByb2ZpbGVOYW1lIiA6ICJVc2FXaW1hIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzVkZGYwYTEwOGNkM2JjYWNmOTZjZmJmMzBlMTVkMzU0N2ZmN2JmZjk1ZDBmOTI0M2VjMzU0N2NhZWM2YWQzZmMiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}
execute align xyz if score @s cf.struct_id matches 21..22 if score @s cf.tier matches 3 run function evercraft:crate_anim/spawn_display {tier:"rare",system_tag:"structure_crate",plot_start:15,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY3MjYyOCwKICAicHJvZmlsZUlkIiA6ICIzMjFjNTBiMjJhY2Q0OGUxOGEyMGU0N2I2ZThhYjE2ZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJsaWdodDEzMzM3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzYzMDdhZWJjNWEwOGQzMTYyMWQ3NTRkODc5ZWI1OTQ5OTFmMDQxNTI5ZjFmYmFhMjg0MGZhYTlmMjQ3MWU0IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}
execute align xyz if score @s cf.struct_id matches 21..22 if score @s cf.tier matches 4 run function evercraft:crate_anim/spawn_display {tier:"ornate",system_tag:"structure_crate",plot_start:20,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2ODYzNSwKICAicHJvZmlsZUlkIiA6ICJmYjZkM2E5Zjk3MWY0ZTdlYmQ0MjE2Yjk0MjE5NDA3NCIsCiAgInByb2ZpbGVOYW1lIiA6ICJHb2xkZW5BcHBsZUdIRyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9hMGFlZDAxZjE4Yjc5MDhjZTBiMTFjNjViMTFjMGE1NjgwMDlmY2IyZWY2NWQ3YThjOTEzN2NkYjY3YTM0YTJkIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}
execute align xyz if score @s cf.struct_id matches 21..22 if score @s cf.tier matches 5 run function evercraft:crate_anim/spawn_display {tier:"exquisite",system_tag:"structure_crate",plot_start:25,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2NjM1NywKICAicHJvZmlsZUlkIiA6ICJmNzM0MmExODMxZDA0ZDA5ODc4Y2ViOTVmOTUxYTllMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJOb3RNMWtzIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzI1ODY4MWY2YmFjZjE4MTVhYTNmMjc4N2E4MjJiNDQwZmJjZmViZTdkZDJjOGEyN2Y5OGRlNTk4NmI3MTBmMGYiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}
execute align xyz if score @s cf.struct_id matches 21..22 if score @s cf.tier matches 6 run function evercraft:crate_anim/spawn_display {tier:"mythical",system_tag:"structure_crate",plot_start:30,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2NzEzNSwKICAicHJvZmlsZUlkIiA6ICI3OThlZWM3OGYzNGU0MGJhYjlmNjk0ODIwYzM3ZTcxYyIsCiAgInByb2ZpbGVOYW1lIiA6ICJFbENoYW5vbk1DIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzc0ZDNmNDY0NmYxMWRlODY2MDhkZTY0NjM2NmE4YmU4YThlOWQ4MjA3ZjhhZDRjZDU2YzQzOTk2Y2JhZWMwOTUiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}

# Copy tier score to animation entity for finish function routing
execute align xyz if score @s cf.tier matches 1 run scoreboard players set @n[type=armor_stand,tag=ec.crate_anim,tag=ec.structure_crate,distance=..1] ec.crate_tier 1
execute align xyz if score @s cf.tier matches 2 run scoreboard players set @n[type=armor_stand,tag=ec.crate_anim,tag=ec.structure_crate,distance=..1] ec.crate_tier 2
execute align xyz if score @s cf.tier matches 3 run scoreboard players set @n[type=armor_stand,tag=ec.crate_anim,tag=ec.structure_crate,distance=..1] ec.crate_tier 3
execute align xyz if score @s cf.tier matches 4 run scoreboard players set @n[type=armor_stand,tag=ec.crate_anim,tag=ec.structure_crate,distance=..1] ec.crate_tier 4
execute align xyz if score @s cf.tier matches 5 run scoreboard players set @n[type=armor_stand,tag=ec.crate_anim,tag=ec.structure_crate,distance=..1] ec.crate_tier 5
execute align xyz if score @s cf.tier matches 6 run scoreboard players set @n[type=armor_stand,tag=ec.crate_anim,tag=ec.structure_crate,distance=..1] ec.crate_tier 6
