# ============================================================
# ALTERNATE ADVANCEMENTS — Load
# Registers all tracking scoreboards for the achievement system
# ============================================================

# --- Artifact tracking (ec.artifact_count already exists in init.mcfunction) ---
scoreboard objectives add ec.artifacts_ever dummy "Artifacts Ever Discovered"

# --- Pet tracking ---
scoreboard objectives add ach.pets_owned dummy "Pets Adopted"
scoreboard objectives add ach.pets_bonded dummy "Pets at Bonded+"
scoreboard objectives add ach.pets_devoted dummy "Pets at Devoted+"
scoreboard objectives add ach.pets_soulbound dummy "Pets at Soulbound+"
scoreboard objectives add ach.pets_eternal dummy "Pets at Eternal Bond"
scoreboard objectives add ach.pet_feeds dummy "Times Fed Pets"
scoreboard objectives add ach.pet_interacts dummy "Pet Interactions"
scoreboard objectives add ach.pet_abilities dummy "Pet Ability Triggers"

# --- Quest tracking ---
scoreboard objectives add ach.quests_done dummy "Quests Completed"
scoreboard objectives add ach.quest_xp dummy "Quest XP Earned"
scoreboard objectives add ach.quest_rep dummy "Total Rep Earned"
scoreboard objectives add ach.villages_quested dummy "Villages Quested In"

# --- Crate tracking ---
scoreboard objectives add ach.crates_opened dummy "Crates Opened"
scoreboard objectives add ach.crates_fishing dummy "Fishing Crates"
scoreboard objectives add ach.crates_harvest dummy "Harvest Crates"
scoreboard objectives add ach.crates_mining dummy "Mining Crates"
scoreboard objectives add ach.crates_structure dummy "Structure Crates"
scoreboard objectives add ach.crates_mob dummy "Mob Crates"
scoreboard objectives add ec.last_mythical_at dummy

# --- Combat tracking ---
scoreboard objectives add ach.patron_kills dummy "Patrons Killed"
scoreboard objectives add ach.weapon_abilities dummy "Weapon Ability Triggers"

# --- Advantage tree tracking (uses adv.* scoreboards from advantage system when implemented) ---
scoreboard objectives add ach.trees_unlocked dummy "Trees Unlocked"
scoreboard objectives add ach.total_levels dummy "Total Levels Spent"
scoreboard objectives add ach.surge_triggers dummy "Surge Triggers"
scoreboard objectives add ach.dodge_count dummy "Dodges"

# --- Profession tracking ---
scoreboard objectives add ach.trades_done custom:traded_with_villager "Trades Completed"

# --- Fishing tracking ---
scoreboard objectives add ach.fish_caught dummy "Fish Caught"
scoreboard objectives add ach.fish_treasure dummy "Treasure Catches"

# --- Mining/Harvest tracking ---
scoreboard objectives add ach.blocks_mined dummy "Blocks Mined"
scoreboard objectives add ach.crops_harvested dummy "Crops Harvested"

# --- Exploration tracking ---
scoreboard objectives add ach.biomes_visited dummy "Biomes Visited"
scoreboard objectives add ach.structures_found dummy "Structures Found"

# --- Armor set tracking ---
scoreboard objectives add ach.sets_equipped dummy "Sets Equipped"
scoreboard objectives add ach.set_bonuses dummy "Set Bonuses Triggered"

# --- Statistics tracking (vanilla stat criteria where available) ---
scoreboard objectives add ach.play_ticks custom:play_time "Play Time (ticks)"
scoreboard objectives add ach.walk_cm custom:walk_one_cm "Walk Distance (cm)"
scoreboard objectives add ach.food_eaten dummy "Food Eaten"
scoreboard objectives add ach.jumps custom:jump "Jumps"
scoreboard objectives add ach.blocks_placed dummy "Blocks Placed"
scoreboard objectives add ach.deaths custom:deaths "Deaths"

# --- Secret achievement tracking ---
scoreboard objectives add ach.sprint_cm custom:sprint_one_cm "Sprint Distance"
scoreboard objectives add ach.swim_cm custom:walk_under_water_one_cm "Underwater Distance"
scoreboard objectives add ach.brew_count custom:interact_with_brewingstand "Potions Brewed"
scoreboard objectives add ach.enchant_count custom:enchant_item "Items Enchanted"
scoreboard objectives add ach.no_sleep_days dummy "Days Without Sleep"
scoreboard objectives add ach.surge_crates dummy "Crates During Surge"
scoreboard objectives add ach.night_ticks dummy "Night Play Time"

# --- Expanded statistics tracking ---
scoreboard objectives add ach.chests_opened custom:open_chest "Chests Opened"
scoreboard objectives add ach.sleeps custom:sleep_in_bed "Times Slept"
scoreboard objectives add ach.prev_sleeps dummy "Previous Sleep Count"
scoreboard objectives add ach.fall_cm custom:fall_one_cm "Fall Distance"

# --- Item-specific stat tracking ---
scoreboard objectives add ach.flint_used minecraft.used:minecraft.flint_and_steel "Flint and Steel Uses"
scoreboard objectives add ach.maps_crafted minecraft.crafted:minecraft.map "Maps Crafted"

# --- Lore achievement tracking ---
scoreboard objectives add ach.moons_seen dummy "Moon Phases Witnessed"

# --- World event tracking ---
scoreboard objectives add ach.cal_meteor dummy "Meteor Showers Seen"
scoreboard objectives add ach.cal_rift dummy "Dimensional Rifts Seen"
scoreboard objectives add ach.cal_prosperity dummy "Prosperity Tides Seen"
scoreboard objectives add ach.we_starfall dummy "Starfall Events Seen"
scoreboard objectives add ach.we_dreaming dummy "The Dreaming Witnessed"
scoreboard objectives add ach.we_abyssal dummy "Abyssal Tremors Seen"
scoreboard objectives add ach.we_aurora dummy "Aurora Blooms Seen"
scoreboard objectives add ach.we_rift_echo dummy "Rift Echoes Seen"
scoreboard objectives add ach.rift_kills_event dummy "Rift Kills (Event)"
scoreboard objectives add ach.fallen_stars dummy "Fallen Stars Collected"
scoreboard objectives add ach.meteor_ores_event dummy "Meteor Ores (Event)"
scoreboard objectives add ach.prosperity_base dummy "Prosperity Crate Baseline"
scoreboard objectives add ach.mined_debris minecraft.mined:minecraft.ancient_debris "Ancient Debris Mined"
scoreboard objectives add ach.tremor_base dummy "Tremor Debris Baseline"
scoreboard objectives add ach.aurora_base dummy "Aurora Harvest Baseline"

# --- Boss tracking ---
scoreboard objectives add ach.boss_kills dummy "Bosses Killed"
scoreboard objectives add ach.boss_unique dummy "Unique Bosses Killed"

# --- Dungeon tracking ---
scoreboard objectives add ach.dungeons_done dummy "Dungeons Completed"
scoreboard objectives add ach.dungeon_no_death dummy "Deathless Dungeon Runs"

# --- Cooking tracking ---
scoreboard objectives add ach.meals_cooked dummy "Meals Cooked"
scoreboard objectives add ach.recipes_learned dummy "Unique Recipes Cooked"

# --- Lore discovery tracking ---
scoreboard objectives add ach.lore_found dummy "Lore Fragments Found"
scoreboard objectives add ach.lore_sets dummy "Lore Sets Completed"

# --- Party tracking ---
scoreboard objectives add ach.parties_formed dummy "Parties Formed"
scoreboard objectives add ach.combos_triggered dummy "Party Combos Triggered"

# --- Housing tracking ---
scoreboard objectives add ach.housing_tier dummy "Housing Tier Reached"

# --- Journal tracking ---
scoreboard objectives add ach.journal_entries dummy "Journal Entries"

# --- Satchel tracking ---
scoreboard objectives add ach.satchel_artifacts dummy "Satchel Artifacts Stored"

# --- Runeforge tracking ---
scoreboard objectives add ach.runes_forged dummy "Runes Forged"

# --- Transmute tracking ---
scoreboard objectives add ach.transmutes_done dummy "Transmutes Completed"

# --- Forage & Prospect tracking ---
scoreboard objectives add ach.forages_done dummy "Forages Completed"
scoreboard objectives add ach.prospects_done dummy "Prospects Completed"

# --- Encounter tracking ---
scoreboard objectives add ach.encounters_done dummy "Encounters Completed"

# --- Armored Elytra tracking ---
scoreboard objectives add ach.elytra_merges dummy "Armored Elytra Merges"

# --- Village specialization tracking ---
scoreboard objectives add ach.village_upgrades dummy "Village Upgrades Done"

# --- Achievement progress ---
scoreboard objectives add ach.total dummy "Achievements Earned"
scoreboard objectives add ach.progress trigger "Achievement Progress"

# --- Prestige system ---
scoreboard objectives add ec.prestige_use minecraft.used:minecraft.carrot_on_a_stick "Prestige Token Use"
scoreboard objectives add ach.prestige_combat dummy "Combat Prestige"
scoreboard objectives add ach.prestige_gathering dummy "Gathering Prestige"
scoreboard objectives add ach.prestige_companions dummy "Companions Prestige"
scoreboard objectives add ach.prestige_exploration dummy "Exploration Prestige"
scoreboard objectives add ach.prestige_collection dummy "Collection Prestige"
scoreboard objectives add ach.prestige_growth dummy "Growth Prestige"

# --- Baseline initialization flag (prevents raw vanilla stats from firing all achievements) ---
scoreboard objectives add ach.base_set dummy "Baselines Initialized"

# --- Statistics baselines (for reset support — vanilla criteria can't be zeroed) ---
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

# --- Adjusted stat scores (copy-then-subtract, never modify vanilla stats) ---
scoreboard objectives add ach.adj_play dummy "Adjusted Play Ticks"
scoreboard objectives add ach.adj_walk dummy "Adjusted Walk Distance"
scoreboard objectives add ach.adj_jump dummy "Adjusted Jumps"
scoreboard objectives add ach.adj_sprint dummy "Adjusted Sprint"
scoreboard objectives add ach.adj_trade dummy "Adjusted Trades"
scoreboard objectives add ach.adj_sleep dummy "Adjusted Sleep"
scoreboard objectives add ach.adj_chest dummy "Adjusted Chests"
scoreboard objectives add ach.adj_swim dummy "Adjusted Swim"
scoreboard objectives add ach.adj_fall dummy "Adjusted Fall"
scoreboard objectives add ach.adj_flint dummy "Adjusted Flint"
scoreboard objectives add ach.adj_map dummy "Adjusted Maps"
scoreboard objectives add ach.adj_brew dummy "Adjusted Brew"
scoreboard objectives add ach.adj_ench dummy "Adjusted Enchant"

# Bootstrap the milestone checker schedule
schedule function evercraft:achievements/tick 100t
