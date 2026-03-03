# Forevercraft Main Init - Run on datapack load
# Initializes all Forevercraft systems

# === GAMERULES ===
gamerule minecraft:send_command_feedback false
# Slow daylight: we manually advance DayTime by 1 every 3 ticks
gamerule minecraft:advance_time false
# Disable vanilla sleep skip — datapack handles sleep detection + time advance manually
# (vanilla sleep wakes players before our 100-tick timer can fire)
gamerule minecraft:players_sleeping_percentage 200

# === ONE-TIME MIGRATIONS ===
execute unless score #patron_rename ec.var matches 1 run function evercraft:migrate/patron_rename
execute unless score #patron_rename ec.var matches 1 run scoreboard players set #patron_rename ec.var 1

# === PLAYER SESSION RESET ===
# Track disconnects so we can detect real logins (tags persist through logout)
scoreboard objectives add ec.leave minecraft.custom:minecraft.leave_game
# Clear join tag so dream rate notification shows on next tick
tag @a remove ec.joined

# === CODEX SYSTEM ===
scoreboard objectives add ec.codex trigger "Forevercraft Codex"
scoreboard objectives add ec.artifact_count dummy "Artifacts Collected"
scoreboard objectives add ec.has_artifacts dummy "Has Artifacts"
scoreboard objectives add ec.codex_use minecraft.used:minecraft.warped_fungus_on_a_stick "Used Codex"
scoreboard players enable @a ec.codex

# Safety net: give codex to players with artifacts who lost theirs, and migrate old codex items
function evercraft:codex/migrate

# === CODEX GLOW SYSTEMS ===
scoreboard objectives add ec.mob_glow dummy
scoreboard objectives add ec.block_glow dummy

# === CODEX OF EVERYTHING SPECTATOR SYSTEM ===
scoreboard objectives add ec.codex_spec_cd dummy "Codex Spectator Cooldown"
scoreboard objectives add ec.codex_spec_time dummy "Codex Spectator Timer"
scoreboard objectives add ec.codex_ret_x dummy "Codex Return X"
scoreboard objectives add ec.codex_ret_y dummy "Codex Return Y"
scoreboard objectives add ec.codex_ret_z dummy "Codex Return Z"
scoreboard objectives add ec.codex_ret_dim dummy "Codex Return Dimension"
scoreboard players set #72000 ec.const 72000

# === LUCK BUFF SYSTEM ===
scoreboard objectives add ec.var dummy
scoreboard players set #8 ec.const 8

# === DREAM RATE MILESTONES ===
scoreboard objectives add ec.dr_peak_ms dummy "DR Peak Milestone"
scoreboard players set #200 ec.const 200

# === DRAGON'S SPITE CONSTANTS ===
scoreboard objectives add ec.health dummy
scoreboard objectives add ec.max_health dummy
scoreboard objectives add ec.health_pct dummy
scoreboard players set #100 ec.const 100
scoreboard players set #2 ec.const 2
scoreboard players set #3 ec.const 3
scoreboard players set #-1 ec.const -1

# === ACCESSORY COOLDOWNS ===
scoreboard objectives add ec.monocle_cd dummy "Monocle Cooldown"
scoreboard objectives add ec.compass_cd dummy "Compass Cooldown"
scoreboard objectives add ec.echo_cd dummy "Echo Cooldown"
scoreboard players set #60 ec.const 60

# === DAY COUNTER CONSTANTS ===
scoreboard players set #365 ec.const 365
scoreboard players set #25 ec.const 25

# === DREAM SURGE EVENT SYSTEM ===
# #ec_event_active and #ec_event_timer use ec.var (dummy already created above)
# No new objectives needed — state tracked via fake player scores in ec.var

# === DREAMS (DREAM RATE CHECK) SYSTEM ===
scoreboard objectives add ec.dreams trigger "Check Dreams (Dream Rate)"
scoreboard objectives add ec.temp dummy
scoreboard objectives add ec.last_day dummy "Last Day Online"

# Briefing event log counter (preserves across /reload)
execute unless score #brief_count ec.var matches 0.. run scoreboard players set #brief_count ec.var 0

scoreboard objectives add ec.crystal_count dummy
scoreboard objectives add ec.droppings_count dummy
scoreboard objectives add ec.mushroom_count dummy
scoreboard objectives add ec.chorus_count dummy
scoreboard players enable @a ec.dreams

# === MOON PHASE CHECK SYSTEM ===
scoreboard objectives add ec.moon trigger "Moon Phase Info"
scoreboard players enable @a ec.moon

# === LOOT RESET TIMER SYSTEM ===
scoreboard objectives add ec.loot_timer trigger "Loot Reset Timer"
scoreboard players enable @a ec.loot_timer

# === PLAYER STATS SYSTEM ===
scoreboard objectives add ec.stats trigger "Player Stats"
scoreboard players enable @a ec.stats
scoreboard players set #100000 ec.const 100000

# === ANECDOTE TRACKING ===
# Track which anecdotes each player has found (0 = not found, 1 = found)
scoreboard objectives add ec.anec_elder dummy "Elder's Anecdote"
scoreboard objectives add ec.anec_fisher dummy "Fisherman's Anecdote"
scoreboard objectives add ec.anec_miner dummy "Miner's Anecdote"
scoreboard objectives add ec.anec_wanderer dummy "Wanderer's Anecdote"
scoreboard objectives add ec.anec_scholar dummy "Scholar's Anecdote"
scoreboard objectives add ec.anec_beast dummy "Beastkeeper's Anecdote"


# Artifact Biome Affinity (E27)
scoreboard objectives add ec.affinity_match dummy "Affinity Match"

# === TOME OF EXPERIENCE ===
scoreboard objectives add ec.tome_lvl dummy "Tome Stored Levels"
scoreboard objectives add ec.tome_pts dummy "Tome Stored Points"

# === GUI SESSION OWNERSHIP (multiplayer menu isolation) ===
scoreboard objectives add adv.gui_session dummy "GUI Session"

# === CRATE ANIMATION SYSTEM ===
scoreboard objectives add ec.crate_plot dummy "Crate Animation"
scoreboard objectives add ec.crate_tier dummy "Crate Tier"

# === DEBUG SYSTEM ===
scoreboard objectives add ec.debug dummy "Debug Flags"

# === ACHIEVEMENT INIT COOLDOWN ===
scoreboard players set #ach_init_cd ec.var 0

# === SCHEDULE BOOTSTRAPS (OPT-2/3/5, Session 9) ===
# Initialize time tracking scores to prevent false-triggers on first tick
# Slow daylight: DayTime advances 1/3 speed, so daytime IS visual_time (0-24000)
# and day IS visual_day (increments every 72000 real ticks)
execute store result score #prev_time ec.var run time query daytime
execute store result score #time ec.var run time query daytime
execute store result score #prev_day ec.var run time query day
execute store result score #current_day ec.var run time query day
execute store result score #visual_time ec.var run time query daytime
scoreboard players operation #prev_vtime ec.var = #visual_time ec.var
execute store result score #visual_day ec.var run time query day
scoreboard players operation #prev_visual_day ec.var = #visual_day ec.var
execute store result score #quest_visual_day ec.var run time query day
scoreboard players operation #quest_prev_visual_day ec.var = #quest_visual_day ec.var
# Moon phase = day % 8
scoreboard players operation #moon_phase ec.var = #visual_day ec.var
scoreboard players operation #moon_phase ec.var %= #8 ec.const
# Daylight counter (0-2, time add 1 when it hits 3)
scoreboard players set #daylight_counter ec.var 0
# Sleep skip cooldown
scoreboard players set #sleep_skip_cd ec.var 0
scoreboard players set #sleep_wait ec.var 0
scoreboard players set #sleep_poll ec.var 0
schedule function evercraft:luck_buffs/tick 1s
schedule function evercraft:portal_dial/tick 1s
schedule function evercraft:artifacts/sets/check_tick 1s
schedule function evercraft:xp_magnet/tick 2t
schedule function evercraft:harvest/intercept_xp_markers 4t

# === MYTHICAL TOOLS ===
function evercraft:artifacts/mythical_tools/load
schedule function evercraft:artifacts/mythical_tools/magnet 10t
schedule function evercraft:mob_crates/tick 10t

# === VAULT LOOT SYSTEM ===
scoreboard objectives add cf.vault_ominous dummy "Vault Ominous Flag"

# === BIOME AFFINITY SYSTEM ===
scoreboard objectives add ec.biome_id dummy "Biome ID"
scoreboard objectives add ec.biome_prev dummy "Previous Biome ID"
scoreboard objectives add ec.biome_last dummy "Biome Cache Time"

# === WORLD FEATURES (Sapling Replant, Crop Replant, Timber, Birch Strip) ===
scoreboard objectives add ec.sapling_age dummy "Sapling Ground Age"
schedule function evercraft:world/sapling_replant/tick 5s
schedule function evercraft:world/crop_replant/tick 2s
schedule function evercraft:world/timber/tick 2t

# === VILLAGER DEATH NOTIFICATIONS (S69) ===
schedule function evercraft:mobs/village/death/tick 5s

# === RPG HEALTH BAR (N10, S69) ===
scoreboard objectives add ec.healthbar trigger "Toggle Health Bar"
scoreboard players enable @a ec.healthbar

# === CAVE DARKNESS SYSTEM (S71) ===
schedule function evercraft:cave_darkness/tick 1s

# === VISUAL TIME TRACKER (S70) ===
scoreboard players set #sleep_fix ec.var 0
function evercraft:visual_time/load

# === HARMONIZATION SYSTEM ===
# harmonize/load is registered in load.json — no need to call here
# function evercraft:harmonize/load

# === WEAPON MASTERY SYSTEM (S71) ===
function evercraft:weapon_mastery/load

# === ADVANTAGE TREE SYSTEM ===
# advantage/load is registered in load.json — no need to call here
# function evercraft:advantage/load

# === CLICK EVENT TRIGGERS (non-op safe) ===
# Replace /function click_events with /trigger for Realms/non-op compatibility
scoreboard objectives add ec.ncore trigger "Netherite Core Config"
scoreboard objectives add ec.codex_tp trigger "Codex TP"
scoreboard objectives add ec.quest trigger "Quest Board"
scoreboard players enable @a ec.ncore
scoreboard players enable @a ec.codex_tp
scoreboard players enable @a ec.quest

# === DREAM RATE CONSUMABLE ITEMS (S76 — 10 new permanent DR items) ===
scoreboard objectives add ec.patron_dream_count dummy
scoreboard objectives add ec.quill_count dummy
scoreboard objectives add ec.thread_count dummy
scoreboard objectives add ec.tome_count dummy
scoreboard objectives add ec.codex_page_count dummy
scoreboard objectives add ec.lure_count dummy
scoreboard objectives add ec.geode_count dummy
scoreboard objectives add ec.seed_count dummy
scoreboard objectives add ec.ember_count dummy
scoreboard objectives add ec.map_count dummy
scoreboard objectives add ec.dream_ore_count dummy
scoreboard objectives add ec.dream_relic_count dummy
scoreboard objectives add ec.dream_petal_count dummy

# === STRUCTURE TYPE TRACKING (Wanderer's Dream Map — 22 unique structure types) ===
scoreboard objectives add ec.struct_1 dummy
scoreboard objectives add ec.struct_2 dummy
scoreboard objectives add ec.struct_3 dummy
scoreboard objectives add ec.struct_4 dummy
scoreboard objectives add ec.struct_5 dummy
scoreboard objectives add ec.struct_6 dummy
scoreboard objectives add ec.struct_7 dummy
scoreboard objectives add ec.struct_8 dummy
scoreboard objectives add ec.struct_9 dummy
scoreboard objectives add ec.struct_10 dummy
scoreboard objectives add ec.struct_11 dummy
scoreboard objectives add ec.struct_12 dummy
scoreboard objectives add ec.struct_13 dummy
scoreboard objectives add ec.struct_14 dummy
scoreboard objectives add ec.struct_15 dummy
scoreboard objectives add ec.struct_16 dummy
scoreboard objectives add ec.struct_17 dummy
scoreboard objectives add ec.struct_18 dummy
scoreboard objectives add ec.struct_19 dummy
scoreboard objectives add ec.struct_20 dummy
scoreboard objectives add ec.struct_21 dummy
scoreboard objectives add ec.struct_22 dummy
scoreboard objectives add ec.struct_unique dummy

# === ARTIFACT TRANSMUTATION SYSTEM ===
function evercraft:transmute/load

# === SEASONAL EVENTS CALENDAR ===
function evercraft:calendar/load

# === SPONTANEOUS WORLD EVENTS ===
function evercraft:world_events/load

# === RUNEFORGE SYSTEM ===
function evercraft:runeforge/load
schedule function evercraft:runeforge/effects/tick 1s

# === VILLAGE SPECIALIZATION SYSTEM ===
function evercraft:village/load

# === EXPLORATION JOURNAL SYSTEM ===
function evercraft:journal/load

# === PLAYER HOUSING SYSTEM ===
function evercraft:housing/load

# === WORLD BOSS SYSTEM ===
function evercraft:bosses/load

# === DUNGEON INSTANCE SYSTEM ===
function evercraft:dungeon/load

# === PET COMBAT SYSTEM ===
function evercraft:companions/combat/load

# === UNDERGROUND BIOME ENCOUNTERS ===
function evercraft:encounters/load

# === SHIELD TANK SYSTEM ===
function evercraft:artifacts/shields/load

# === ESSENTIALS SATCHEL SYSTEM ===
function evercraft:satchel/load

# === HEALER ARTIFACT SYSTEM ===
function evercraft:artifacts/healer/load

# === ROGUE ARTIFACT SYSTEM ===
function evercraft:artifacts/rogue/load

# === BERSERKER DUAL-AXE SYSTEM ===
function evercraft:artifacts/berserker/load

# === DANCER GAUNTLET SYSTEM ===
function evercraft:artifacts/dancer/load

# === ARCHER BOW SYSTEM ===
function evercraft:artifacts/archer/load

# === HUNTER CROSSBOW SYSTEM ===
function evercraft:artifacts/hunter/load

# === BEASTLORD SPEAR SYSTEM ===
function evercraft:artifacts/beastlord/load

# === STRIKER MACE SYSTEM ===
function evercraft:artifacts/striker/load

# === LORE DISCOVERY SYSTEM ===
function evercraft:lore/load

# === PARTY / CO-OP SYSTEM ===
function evercraft:party/load

# === FORAGING BUSH SYSTEM ===
function evercraft:forage/load

# === ORE NODE SYSTEM ===
function evercraft:prospect/load

# === COOKING & CUISINE SYSTEM ===
scoreboard players set #80 ec.const 80
function evercraft:cooking/load

# === CROP AUTO-REPLANT ===
# Track block-mined stats for auto-replant when holding a hoe
scoreboard objectives add ec.rh_wheat minecraft.mined:minecraft.wheat
scoreboard objectives add ec.rh_carrot minecraft.mined:minecraft.carrots
scoreboard objectives add ec.rh_potato minecraft.mined:minecraft.potatoes
scoreboard objectives add ec.rh_beet minecraft.mined:minecraft.beetroots
scoreboard objectives add ec.rh_nwart minecraft.mined:minecraft.nether_wart

# === MESSAGE IN A BOTTLE SYSTEM ===
function evercraft:bottles/load

# === WELCOME BACK BRIEFING ===
function evercraft:briefing/load

# === BIOME MASTERY SYSTEM ===
function evercraft:biome_mastery/load

# === DREAM ECHOES SYSTEM ===
function evercraft:dream_echoes/load

# === CAMPFIRE STORIES SYSTEM ===
function evercraft:campfire_stories/load

# === INSCRIPTION STONES SYSTEM ===
function evercraft:inscription/load

# === DREAMING REALM SYSTEM ===
function evercraft:dreaming_realm/load

# === BATCH ENTITY CLEANUP ===
function evercraft:cleanup/load

# === WEATHER OMENS (pre-event warning system) ===
function evercraft:omens/load

# === REALM MILESTONES (cooperative realm-wide goals) ===
function evercraft:milestones/load

# === BIOME TRANSITION DETECTION (ambient sounds + milestone tracking) ===
schedule function evercraft:biome/tick 5s

# === ARTIFACT PATINA SYSTEM ===
function evercraft:patina/load

# === NIGHT TERRORS (New Moon mini-bosses) ===
function evercraft:night_terrors/load

# === PATRON BOUNTY SYSTEM ===
function evercraft:bounty/load

# === COMPANION MEMORIES SYSTEM ===
function evercraft:companions/memories/load

# === ARTIFACT CONSTELLATIONS SYSTEM ===
function evercraft:constellations/load

# === SHARED MOVEMENT DETECTION (OPT: lore/forage/prospect share 1 Pos read) ===
scoreboard objectives add ec.moving dummy "Shared Moving Flag"
scoreboard objectives add ec.move_lastx dummy "Shared Last X"
scoreboard objectives add ec.move_lastz dummy "Shared Last Z"
schedule function evercraft:movement/tick 1s

# === TAMED ANIMAL PROTECTION (player damage negated on tamed animals) ===
schedule function evercraft:tamed_protection/tick 5s

# === SEASONAL SYSTEM ===
function evercraft:seasons/load
