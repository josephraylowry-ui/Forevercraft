# Debug — Reset all advantage stat counters to 0
# Stores baselines for vanilla-synced stats so they count from 0 after reset
# Does NOT reset tree levels, prestige, or abilities — only the stat progress

# === Ensure all baseline objectives exist (safe to run without prior /reload) ===
# Advantage stat baselines
scoreboard objectives add adv.base_walk dummy "Walk Baseline (cm)"
scoreboard objectives add adv.base_crouch dummy "Crouch Baseline (cm)"
scoreboard objectives add adv.base_fish dummy "Fish Baseline"
scoreboard objectives add adv.base_mobs dummy "Mobs Baseline"
scoreboard objectives add adv.base_mine dummy "Mining Baseline"
scoreboard objectives add adv.base_smelt dummy "Smelting Baseline"
# Achievement statistics baselines (vanilla stat criteria — can't be zeroed)
scoreboard objectives add ach.base_play dummy "Play Ticks Baseline"
scoreboard objectives add ach.base_walk dummy "Walk Distance Baseline"
scoreboard objectives add ach.base_jump dummy "Jumps Baseline"
scoreboard objectives add ach.base_sprint dummy "Sprint Baseline"
scoreboard objectives add ach.base_trade dummy "Trades Baseline"
scoreboard objectives add ach.base_sleep dummy "Sleep Baseline"
scoreboard objectives add ach.base_chest dummy "Chests Baseline"
scoreboard objectives add ach.base_swim dummy "Swim Baseline"
scoreboard objectives add ach.base_fall dummy "Fall Baseline"
scoreboard objectives add ach.base_flint dummy "Flint Baseline"
scoreboard objectives add ach.base_map dummy "Map Baseline"
scoreboard objectives add ach.base_brew dummy "Brew Baseline"
scoreboard objectives add ach.base_ench dummy "Enchant Baseline"

# === Store advantage stat baselines ===
# Walking/crouching: store raw cm values (sync subtracts before dividing by 100)
scoreboard players operation @s adv.base_walk = @s adv.walk_cm
scoreboard players operation @s adv.base_crouch = @s adv.crouch_cm

# Fish/mobs: direct stat baselines
scoreboard players operation @s adv.base_fish = @s adv.fish_ct
scoreboard players operation @s adv.base_mobs = @s adv.mob_kills

# Mining: baseline from mt.total (treasure system's blocks mined counter)
scoreboard players operation @s adv.base_mine = @s mt.total

# Smelting: sum all three furnace types for baseline
scoreboard players operation @s adv.base_smelt = @s adv.furnace_ct
scoreboard players operation @s adv.base_smelt += @s adv.blast_ct
scoreboard players operation @s adv.base_smelt += @s adv.smoker_ct

# === Store achievement statistics baselines (vanilla stat criteria) ===
scoreboard players operation @s ach.base_play = @s ach.play_ticks
scoreboard players operation @s ach.base_walk = @s ach.walk_cm
scoreboard players operation @s ach.base_jump = @s ach.jumps
scoreboard players operation @s ach.base_sprint = @s ach.sprint_cm
scoreboard players operation @s ach.base_trade = @s ach.trades_done
scoreboard players operation @s ach.base_sleep = @s ach.sleeps
scoreboard players operation @s ach.base_chest = @s ach.chests_opened
scoreboard players operation @s ach.base_swim = @s ach.swim_cm
scoreboard players operation @s ach.base_fall = @s ach.fall_cm
scoreboard players operation @s ach.base_flint = @s ach.flint_used
scoreboard players operation @s ach.base_map = @s ach.maps_crafted
scoreboard players operation @s ach.base_brew = @s ach.brew_count
scoreboard players operation @s ach.base_ench = @s ach.enchant_count

# === Zero ALL advantage stat counters (synced ones stay 0 thanks to baselines) ===
scoreboard players set @s adv.stat_walk 0
scoreboard players set @s adv.stat_crouch 0
scoreboard players set @s adv.stat_fish 0
scoreboard players set @s adv.stat_mobs 0
scoreboard players set @s adv.stat_mine 0
scoreboard players set @s adv.stat_smelt 0
scoreboard players set @s adv.stat_place 0
scoreboard players set @s adv.stat_hit 0
scoreboard players set @s adv.stat_food 0
scoreboard players set @s adv.stat_quests 0
scoreboard players set @s adv.stat_pets100 0
scoreboard players set @s adv.stat_harvest 0
scoreboard players set @s adv.stat_struct 0

# === Zero achievement stat counters (prevents re-trigger before next sync) ===
scoreboard players set @s ach.blocks_mined 0
scoreboard players set @s ach.fish_caught 0
scoreboard players set @s ach.crops_harvested 0
scoreboard players set @s ach.blocks_placed 0
scoreboard players set @s ach.food_eaten 0

# Zero dummy achievement trackers that accumulate
scoreboard players set @s ach.no_sleep_days 0
scoreboard players set @s ach.night_ticks 0

# Mark baselines as initialized (prevents auto-init from overwriting)
scoreboard players set @s ach.base_set 1

tellraw @s [{text:"[Debug] ",color:"yellow"},{text:"All advantage stat counters + achievement baselines reset to 0",color:"green"}]
