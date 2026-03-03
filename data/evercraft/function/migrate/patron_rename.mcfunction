# ONE-TIME Migration: Captain/Rarity → Patron rename
# Migrates storage paths, entity tags, scoreboards, and revokes stale advancements
# Safe to re-run (idempotent — only operates on data that exists)

tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Running patron rename migration...",color:"white"}]

# === STORAGE MIGRATION ===

# Settings: mob_manager.rarity_mobs.* → mobs.patrons.*
execute if data storage eden:settings mob_manager.rarity_mobs run data modify storage eden:settings mobs.patrons set from storage eden:settings mob_manager.rarity_mobs
execute if data storage eden:settings mob_manager.rarity_mobs run data remove storage eden:settings mob_manager.rarity_mobs

# Name database: names.rarity_mobs.* → names.patrons.*
execute if data storage eden:database names.rarity_mobs run data modify storage eden:database names.patrons set from storage eden:database names.rarity_mobs
execute if data storage eden:database names.rarity_mobs run data remove storage eden:database names.rarity_mobs

# === ENTITY TAG MIGRATION (loaded entities only — unloaded keep old tags harmlessly) ===

# Rarity mob applied tag → patron applied tag
execute as @e[tag=mob_manager.rarity_mobs.applied] run tag @s add mobs.patrons.applied
execute as @e[tag=mob_manager.rarity_mobs.applied] run tag @s remove mob_manager.rarity_mobs.applied

# Tier tags
execute as @e[tag=mob_manager.rarity_mobs.common] run tag @s add mobs.patrons.common
execute as @e[tag=mob_manager.rarity_mobs.common] run tag @s remove mob_manager.rarity_mobs.common

execute as @e[tag=mob_manager.rarity_mobs.uncommon] run tag @s add mobs.patrons.uncommon
execute as @e[tag=mob_manager.rarity_mobs.uncommon] run tag @s remove mob_manager.rarity_mobs.uncommon

execute as @e[tag=mob_manager.rarity_mobs.rare] run tag @s add mobs.patrons.rare
execute as @e[tag=mob_manager.rarity_mobs.rare] run tag @s remove mob_manager.rarity_mobs.rare

execute as @e[tag=mob_manager.rarity_mobs.ornate] run tag @s add mobs.patrons.ornate
execute as @e[tag=mob_manager.rarity_mobs.ornate] run tag @s remove mob_manager.rarity_mobs.ornate

execute as @e[tag=mob_manager.rarity_mobs.exquisite] run tag @s add mobs.patrons.exquisite
execute as @e[tag=mob_manager.rarity_mobs.exquisite] run tag @s remove mob_manager.rarity_mobs.exquisite

execute as @e[tag=mob_manager.rarity_mobs.mythical] run tag @s add mobs.patrons.mythical
execute as @e[tag=mob_manager.rarity_mobs.mythical] run tag @s remove mob_manager.rarity_mobs.mythical

# Not_ tags (exclusion tags from depth bonus / exec)
execute as @e[tag=mob_manager.rarity_mobs.not_common] run tag @s add mobs.patrons.not_common
execute as @e[tag=mob_manager.rarity_mobs.not_common] run tag @s remove mob_manager.rarity_mobs.not_common

execute as @e[tag=mob_manager.rarity_mobs.not_uncommon] run tag @s add mobs.patrons.not_uncommon
execute as @e[tag=mob_manager.rarity_mobs.not_uncommon] run tag @s remove mob_manager.rarity_mobs.not_uncommon

execute as @e[tag=mob_manager.rarity_mobs.not_rare] run tag @s add mobs.patrons.not_rare
execute as @e[tag=mob_manager.rarity_mobs.not_rare] run tag @s remove mob_manager.rarity_mobs.not_rare

execute as @e[tag=mob_manager.rarity_mobs.not_ornate] run tag @s add mobs.patrons.not_ornate
execute as @e[tag=mob_manager.rarity_mobs.not_ornate] run tag @s remove mob_manager.rarity_mobs.not_ornate

execute as @e[tag=mob_manager.rarity_mobs.not_exquisite] run tag @s add mobs.patrons.not_exquisite
execute as @e[tag=mob_manager.rarity_mobs.not_exquisite] run tag @s remove mob_manager.rarity_mobs.not_exquisite

execute as @e[tag=mob_manager.rarity_mobs.not_mythical] run tag @s add mobs.patrons.not_mythical
execute as @e[tag=mob_manager.rarity_mobs.not_mythical] run tag @s remove mob_manager.rarity_mobs.not_mythical

# Old captain tag (if any ancient captains exist)
execute as @e[tag=mc.captain] run tag @s add ec.patron
execute as @e[tag=mc.captain] run tag @s remove mc.captain

# === SCOREBOARD MIGRATION ===

# Merge rarity_kills into patron_kills (patron_kills already exists and accumulates)
scoreboard objectives add ach.patron_kills dummy "Patrons Killed"
execute as @a if score @s ach.rarity_kills matches 1.. run scoreboard players operation @s ach.patron_kills += @s ach.rarity_kills
scoreboard objectives remove ach.rarity_kills

# Remove captain_kills if it still exists
scoreboard objectives remove ach.captain_kills

# === REVOKE STALE ADVANCEMENTS (deleted captain paths) ===

# Captain kill advancements (deleted in Phase 1)
advancement revoke @a only evercraft:captains/kill/common
advancement revoke @a only evercraft:captains/kill/uncommon
advancement revoke @a only evercraft:captains/kill/rare
advancement revoke @a only evercraft:captains/kill/ornate
advancement revoke @a only evercraft:captains/kill/exquisite
advancement revoke @a only evercraft:captains/kill/mythical

# Captain mob_crate kill advancements (deleted in Phase 2)
advancement revoke @a only evercraft:mob_crates/killed_captain_common
advancement revoke @a only evercraft:mob_crates/killed_captain_uncommon
advancement revoke @a only evercraft:mob_crates/killed_captain_rare
advancement revoke @a only evercraft:mob_crates/killed_captain_ornate
advancement revoke @a only evercraft:mob_crates/killed_captain_exquisite
advancement revoke @a only evercraft:mob_crates/killed_captain_mythical

# Disabled rarity_mob advancement (deleted in Phase 2)
advancement revoke @a only evercraft:mob_crates/killed_rarity_mob

# === RE-GRANT RENAMED ACHIEVEMENTS (old path → new path) ===
# Captain-named combat achievements → patron
execute as @a[advancements={evercraft:alternate/combat/common/first_captain_kill=true}] run advancement grant @s only evercraft:alternate/combat/common/first_patron_kill
advancement revoke @a only evercraft:alternate/combat/common/first_captain_kill
execute as @a[advancements={evercraft:alternate/combat/common/survive_captain=true}] run advancement grant @s only evercraft:alternate/combat/common/survive_patron
advancement revoke @a only evercraft:alternate/combat/common/survive_captain
execute as @a[advancements={evercraft:alternate/combat/uncommon/five_captain_kills=true}] run advancement grant @s only evercraft:alternate/combat/uncommon/five_patron_kills
advancement revoke @a only evercraft:alternate/combat/uncommon/five_captain_kills
execute as @a[advancements={evercraft:alternate/combat/rare/fifteen_captains=true}] run advancement grant @s only evercraft:alternate/combat/rare/fifteen_patrons
advancement revoke @a only evercraft:alternate/combat/rare/fifteen_captains
execute as @a[advancements={evercraft:alternate/combat/rare/all_captain_tiers=true}] run advancement grant @s only evercraft:alternate/combat/rare/all_patron_tiers
advancement revoke @a only evercraft:alternate/combat/rare/all_captain_tiers
execute as @a[advancements={evercraft:alternate/combat/ornate/thirty_captains=true}] run advancement grant @s only evercraft:alternate/combat/ornate/thirty_patrons
advancement revoke @a only evercraft:alternate/combat/ornate/thirty_captains
execute as @a[advancements={evercraft:alternate/combat/exquisite/fifty_captains=true}] run advancement grant @s only evercraft:alternate/combat/exquisite/fifty_patrons
advancement revoke @a only evercraft:alternate/combat/exquisite/fifty_captains
execute as @a[advancements={evercraft:alternate/combat/exquisite/hundred_captains=true}] run advancement grant @s only evercraft:alternate/combat/exquisite/hundred_patrons
advancement revoke @a only evercraft:alternate/combat/exquisite/hundred_captains
execute as @a[advancements={evercraft:alternate/combat/exquisite/mythical_captain_kill=true}] run advancement grant @s only evercraft:alternate/combat/exquisite/mythical_patron_kill
advancement revoke @a only evercraft:alternate/combat/exquisite/mythical_captain_kill
execute as @a[advancements={evercraft:alternate/combat/mythical/two_hundred_captains=true}] run advancement grant @s only evercraft:alternate/combat/mythical/two_hundred_patrons
advancement revoke @a only evercraft:alternate/combat/mythical/two_hundred_captains

# Rarity-named combat achievements → patron_mob
execute as @a[advancements={evercraft:alternate/combat/common/first_rarity_kill=true}] run advancement grant @s only evercraft:alternate/combat/common/first_patron_mob_kill
advancement revoke @a only evercraft:alternate/combat/common/first_rarity_kill
execute as @a[advancements={evercraft:alternate/combat/common/three_rarity_kills=true}] run advancement grant @s only evercraft:alternate/combat/common/three_patron_mob_kills
advancement revoke @a only evercraft:alternate/combat/common/three_rarity_kills
execute as @a[advancements={evercraft:alternate/combat/uncommon/ten_rarity_kills=true}] run advancement grant @s only evercraft:alternate/combat/uncommon/ten_patron_mob_kills
advancement revoke @a only evercraft:alternate/combat/uncommon/ten_rarity_kills
execute as @a[advancements={evercraft:alternate/combat/uncommon/ornate_rarity_kill=true}] run advancement grant @s only evercraft:alternate/combat/uncommon/ornate_patron_mob_kill
advancement revoke @a only evercraft:alternate/combat/uncommon/ornate_rarity_kill
execute as @a[advancements={evercraft:alternate/combat/rare/twenty_five_rarity=true}] run advancement grant @s only evercraft:alternate/combat/rare/twenty_five_patron_mobs
advancement revoke @a only evercraft:alternate/combat/rare/twenty_five_rarity
execute as @a[advancements={evercraft:alternate/combat/rare/exquisite_rarity_kill=true}] run advancement grant @s only evercraft:alternate/combat/rare/exquisite_patron_mob_kill
advancement revoke @a only evercraft:alternate/combat/rare/exquisite_rarity_kill
execute as @a[advancements={evercraft:alternate/combat/ornate/fifty_rarity=true}] run advancement grant @s only evercraft:alternate/combat/ornate/fifty_patron_mobs
advancement revoke @a only evercraft:alternate/combat/ornate/fifty_rarity
execute as @a[advancements={evercraft:alternate/combat/ornate/mythical_rarity_kill=true}] run advancement grant @s only evercraft:alternate/combat/ornate/mythical_patron_mob_kill
advancement revoke @a only evercraft:alternate/combat/ornate/mythical_rarity_kill
execute as @a[advancements={evercraft:alternate/combat/exquisite/hundred_rarity=true}] run advancement grant @s only evercraft:alternate/combat/exquisite/hundred_patron_mobs
advancement revoke @a only evercraft:alternate/combat/exquisite/hundred_rarity
execute as @a[advancements={evercraft:alternate/combat/exquisite/all_rarity_tiers=true}] run advancement grant @s only evercraft:alternate/combat/exquisite/all_patron_mob_tiers
advancement revoke @a only evercraft:alternate/combat/exquisite/all_rarity_tiers

# Captain-named artifact achievements → patron
execute as @a[advancements={evercraft:alternate/artifacts/rare/three_captain_artifacts=true}] run advancement grant @s only evercraft:alternate/artifacts/rare/three_patron_artifacts
advancement revoke @a only evercraft:alternate/artifacts/rare/three_captain_artifacts
execute as @a[advancements={evercraft:alternate/artifacts/ornate/all_captain_tiers=true}] run advancement grant @s only evercraft:alternate/artifacts/ornate/all_patron_tiers
advancement revoke @a only evercraft:alternate/artifacts/ornate/all_captain_tiers

tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Patron rename migration complete!",color:"green"}]
