# ============================================================
# DEBUG — Revoke all alternate advancements
# Usage: /function evercraft:achievements/debug/revoke_all
# ============================================================

tellraw @s [{text:"[Achievements] ",color:"green"},{text:"Revoking all alternate advancements...",color:"yellow"}]

# Revoke all 7 advancement tabs
advancement revoke @s from evercraft:alternate/combat_root
advancement revoke @s from evercraft:alternate/gathering_root
advancement revoke @s from evercraft:alternate/companions_root
advancement revoke @s from evercraft:alternate/exploration_root
advancement revoke @s from evercraft:alternate/collection_root
advancement revoke @s from evercraft:alternate/growth_root
advancement revoke @s from evercraft:alternate/secrets_root

# Reset tracking scoreboards
scoreboard players set @s ach.pets_owned 0
scoreboard players set @s ach.pets_bonded 0
scoreboard players set @s ach.pets_devoted 0
scoreboard players set @s ach.pets_soulbound 0
scoreboard players set @s ach.pets_eternal 0
scoreboard players set @s ach.pet_feeds 0
scoreboard players set @s ach.pet_interacts 0
scoreboard players set @s ach.pet_abilities 0
scoreboard players set @s ach.quests_done 0
scoreboard players set @s ach.quest_xp 0
scoreboard players set @s ach.quest_rep 0
scoreboard players set @s ach.villages_quested 0
scoreboard players set @s ach.crates_opened 0
scoreboard players set @s ach.crates_fishing 0
scoreboard players set @s ach.crates_harvest 0
scoreboard players set @s ach.crates_mining 0
scoreboard players set @s ach.crates_structure 0
scoreboard players set @s ach.crates_mob 0
scoreboard players set @s ach.patron_kills 0
scoreboard players set @s ach.weapon_abilities 0
scoreboard players set @s ach.trees_unlocked 0
scoreboard players set @s ach.total_levels 0
scoreboard players set @s ach.surge_triggers 0
scoreboard players set @s ach.dodge_count 0
# NOTE: ach.trades_done is a vanilla stat — do NOT zero it (recapture baselines instead)
scoreboard players set @s ach.fish_caught 0
scoreboard players set @s ach.fish_treasure 0
scoreboard players set @s ach.blocks_mined 0
scoreboard players set @s ach.crops_harvested 0
scoreboard players set @s ach.biomes_visited 0
scoreboard players set @s ach.structures_found 0
scoreboard players set @s ach.sets_equipped 0
scoreboard players set @s ach.set_bonuses 0
scoreboard players set @s ach.food_eaten 0
scoreboard players set @s ach.blocks_placed 0
scoreboard players set @s ach.total 0
scoreboard players set @s ach.no_sleep_days 0
scoreboard players set @s ach.prev_sleeps 0
scoreboard players set @s ach.surge_crates 0
scoreboard players set @s ach.night_ticks 0
scoreboard players set @s ach.moons_seen 0
# NOTE: ach.flint_used and ach.maps_crafted are vanilla stats — do NOT zero them

# Reset baseline flag so vanilla stat baselines get recaptured from current values
scoreboard players set @s ach.base_set 0

# Revoke detection advancements
advancement revoke @s only evercraft:achievements/detect/one_punch_kill
advancement revoke @s only evercraft:achievements/detect/lightning_strike
advancement revoke @s only evercraft:achievements/detect/sky_walker

# Reset prestige counters
scoreboard players set @s ach.prestige_combat 0
scoreboard players set @s ach.prestige_gathering 0
scoreboard players set @s ach.prestige_companions 0
scoreboard players set @s ach.prestige_exploration 0
scoreboard players set @s ach.prestige_collection 0
scoreboard players set @s ach.prestige_growth 0
scoreboard players set @s ec.prestige_use 0

# Clear any prestige tokens from inventory
clear @s carrot_on_a_stick[custom_data~{prestige_token:true}]

tellraw @s [{text:"[Achievements] ",color:"green"},{text:"All alternate advancements revoked and scores reset!",color:"green"}]
