# Evercraft Main Tick Function
# Runs every game tick for all evercraft systems

# Early exit if no players online
execute unless entity @a run return 0

# === SLOW DAYLIGHT: Advance DayTime by 1 every 3 real ticks ===
# gamerule minecraft:advance_time is false — we control DayTime manually
# Self-correct check moved to watchdog (every 5s) — no need to check every tick
scoreboard players add #daylight_counter ec.var 1
# OPT: Combined into one execute block to avoid duplicate score check
execute if score #daylight_counter ec.var matches 3.. run function evercraft:daylight/advance

# === SLEEP SKIP (advance_time is false, we handle sleep time-skip manually) ===
# Decrement cooldown
execute if score #sleep_skip_cd ec.var matches 1.. run scoreboard players remove #sleep_skip_cd ec.var 1
# OPT: sleeping_pos NBT scan every 5 ticks instead of every tick (saves ~80% of NBT reads)
# Sleep threshold is 100 ticks so 5-tick polling adds 5 per check — still accurate
scoreboard players add #sleep_poll ec.var 1
execute if score #sleep_poll ec.var matches 5.. run function evercraft:daylight/sleep_check
# After 100 ticks (5 seconds), skip to dawn
execute if score #sleep_wait ec.var matches 100 run function evercraft:daylight/sleep_skip

# === WATCHDOG: Ensure self-scheduling tick loops are running ===
# These use schedule function and can break on server crash
# Check every 100 ticks (5 seconds) and restart if needed
scoreboard players add #watchdog ec.var 1
execute if score #watchdog ec.var matches 100.. run function evercraft:watchdog/check
execute if score #watchdog ec.var matches 100.. run scoreboard players set #watchdog ec.var 0

# Raid victory revoke moved to achievements/tick (5s schedule) — OPT: avoid per-tick NBT check

# === RECONNECT DETECTION ===
# Player tags persist through logout — use leave_game stat to detect real reconnects
# When a player disconnects, Minecraft increments ec.leave; strip ec.joined so join logic fires
tag @a[scores={ec.leave=1..}] remove ec.joined
scoreboard players set @a[scores={ec.leave=1..}] ec.leave 0

# === DREAMING REALM: Crash/disconnect recovery ===
# If player reconnects while dream was active, clean up
execute as @a[tag=!ec.joined,scores={ec.dream_active=1..}] run function evercraft:dreaming_realm/exit/crash_recovery

# Detect player join (unified briefing + init)
execute as @a[tag=!ec.joined] at @s run function evercraft:dreams/on_join

# Track current day for "While You Were Away" — moved to luck_buffs/tick (1s schedule, OPT-6)
# Day changes once per 72000 ticks; 1s granularity is more than sufficient

# Dream rate buff system moved to 1s schedule (OPT-5, Session 9)
# Attribute modifiers persist between checks, 1s refresh is sufficient

# Mob crate detection moved to self-scheduling (10t interval)
# Items have pickup_delay so 0.5s detection is fine

# Growth Serum - detect lingering potion area_effect_clouds
# Match thick potion base (unused in vanilla, unique to Growth Serum)
# OPT: Single existence gate → apply + tag in one pass (was 2 separate entity scans)
execute if entity @e[type=area_effect_cloud,tag=!ec.growth_checked,limit=1] run function evercraft:potions/growth_serum/scan

# Titan's Shroud 4pc water walking (barrier placement needs instant per-tick response)
execute as @a[tag=titan_4pc] at @s run function evercraft:artifacts/sets/titan/water_walk

# === PLAYER TRIGGERS (score-gated — zero cost when nobody has triggered) ===
execute as @a[scores={ec.dreams=1..}] run function evercraft:dreams/check
scoreboard players enable @a[scores={ec.dreams=1..}] ec.dreams
scoreboard players set @a[scores={ec.dreams=1..}] ec.dreams 0
execute as @a[scores={ec.lore_map=1..}] run function evercraft:lore/map/display
scoreboard players enable @a[scores={ec.lore_map=1..}] ec.lore_map
scoreboard players set @a[scores={ec.lore_map=1..}] ec.lore_map 0
execute as @a[scores={ec.moon=1..}] run function evercraft:moon/check
scoreboard players enable @a[scores={ec.moon=1..}] ec.moon
scoreboard players set @a[scores={ec.moon=1..}] ec.moon 0
execute as @a[scores={ec.loot_timer=1..}] run function evercraft:structures/storage/check_timer
scoreboard players enable @a[scores={ec.loot_timer=1..}] ec.loot_timer
scoreboard players set @a[scores={ec.loot_timer=1..}] ec.loot_timer 0
execute as @a[scores={ec.stats=1..}] run function evercraft:stats/show
scoreboard players enable @a[scores={ec.stats=1..}] ec.stats
scoreboard players set @a[scores={ec.stats=1..}] ec.stats 0
execute as @a[scores={ec.healthbar=1..}] run function evercraft:health_bar/toggle
scoreboard players enable @a[scores={ec.healthbar=1..}] ec.healthbar
scoreboard players set @a[scores={ec.healthbar=1..}] ec.healthbar 0
execute as @a[scores={ec.biome_mastery=1..}] run function evercraft:biome_mastery/display
scoreboard players enable @a[scores={ec.biome_mastery=1..}] ec.biome_mastery
scoreboard players set @a[scores={ec.biome_mastery=1..}] ec.biome_mastery 0
execute as @a[scores={ec.milestones=1..}] run function evercraft:milestones/display
scoreboard players enable @a[scores={ec.milestones=1..}] ec.milestones
scoreboard players set @a[scores={ec.milestones=1..}] ec.milestones 0

# === TOMB SYSTEM: DEATH DETECTION (must be per-tick for accurate death position) ===
# deathCount increments on the tick of death — capture position NOW before respawn
# Dreaming Realm override: death = wake up, no tomb (keepInventory is on)
execute as @a[tag=dr.in_realm,scores={ec.tomb_death=1..}] run function evercraft:dreaming_realm/exit/on_death
scoreboard players set @a[tag=dr.in_realm,scores={ec.tomb_death=1..}] ec.tomb_death 0
# Normal death: tomb system for non-dream players
execute as @a[tag=!dr.in_realm,scores={ec.tomb_death=1..},gamemode=!creative,gamemode=!spectator] at @s run function evercraft:tomb/on_death
scoreboard players set @a[tag=!dr.in_realm,scores={ec.tomb_death=1..}] ec.tomb_death 0

# Artifact Codex system (trigger-based chat menu)
function evercraft:codex/tick

# Portal Dial system moved to 1s schedule (OPT-5, Session 9)
# Lodestone binding is a rare event that doesn't need tick precision

# Run artifact set detection and abilities
function evercraft:artifacts/sets/tick

# Spelunker compass system
function evercraft:artifacts/sets/spelunker/tick

# Mythical tools — vein mining, 3x3 dig, timber, item magnet
function evercraft:artifacts/mythical_tools/tick

# Right-click crop harvest — any hoe on mature crops harvests + replants
function evercraft:crop_harvest/tick

# Harvest XP — moved to 4t self-schedule (OPT: 75% fewer NBT item scans)
# XP Magnet — moved to 2t self-schedule (OPT: 50% fewer entity scans)

# Clean up dynamic looting enchant from artifact weapons (applied on kill, removed next tick)
execute as @a[tag=artifact_got_looting] run function evercraft:artifacts/abilities/melee/looting/remove

# Fortune bonus system - dynamically add fortune to held tools with fortune_bonus tag
function evercraft:artifacts/abilities/mining/fortune_tick

# Draconic Gale - Dragon's Spite passive (damage boost at low HP) — inlined, gated on held item
execute as @a if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{artifact:"dragon_fan"}] run function evercraft:artifacts/abilities/dragon_fan/apply_spite

# === ACCESSORY PASSIVES (OPT-1, Session 9) ===
# All accessory passive effects (passive_regen, xp_boost, miners_blessing, mob_glow,
# tailwind, fast_fishing, pathfinder, crop_boost, mob_radar, structure_sense,
# vibration_sense, haggle) are now handled exclusively by accessories/tick (1s schedule).
# Effects have 5-15s durations so 1s refresh is sufficient. Cooldowns also in accessories/tick.
# This removes ~30 commands/tick/player (13 duplicate @a scans eliminated).

# Cleanup accessory attribute modifiers for items no longer held
# Moved to accessories/tick (1s schedule) — 1s stale modifier is imperceptible (OPT, Session 76)

# Codex of Everything - Spectator mode timer/cooldown
function evercraft:artifacts/codex_spectator/tick

# Dream Surge Event — timer countdown + modifier application
execute if score #ec_event_active ec.var matches 1 run function evercraft:event/tick

# === ARROW OF LIGHTNING ===
# OPT: Single scan for new arrows — tag check + mark in one pass
execute as @e[type=spectral_arrow,tag=!ec.arrow_checked] run function evercraft:arrows/check_new
# Only check tagged arrows for ground impact (fast tag+NBT check instead of deep item scan)
execute as @e[type=spectral_arrow,tag=ec.lightning_arrow,nbt={inGround:1b}] at @s run function evercraft:arrows/lightning_strike

# === CRATE ANIMATION SYSTEM ===
# OPT: Gate entire block — skip all 4 entity scans when no animations are active
execute if entity @e[type=armor_stand,tag=ec.crate_anim,limit=1] run function evercraft:crate_anim/tick_all

# === ADVANTAGE TREE SYSTEM ===
# GUI tick — unified hub tick handles all sections (distance, hold, clicks)
execute as @a[tag=Adv.InMenu] at @s run function evercraft:codex/hub/tick
# Handle menu trigger (legacy — opens hub now instead of advantage trees directly)
execute as @a[scores={adv.menu=1..}] at @s run function evercraft:codex/hub/open
scoreboard players enable @a[scores={adv.menu=1..}] adv.menu
scoreboard players set @a[scores={adv.menu=1..}] adv.menu 0
# Handle advantage triggers (levelup, prestige, respec, cosmetic, challenge, etc.)
# OPT: Single @a scan + early-exit function instead of 9 separate @a scans
execute as @a run function evercraft:advantage/check_triggers

# Handle /trigger ec.ncore (Netherite Core configuration)
execute as @a[scores={ec.ncore=1..}] run function evercraft:artifacts/netherite_core/trigger_handler
scoreboard players enable @a[scores={ec.ncore=1..}] ec.ncore
scoreboard players set @a[scores={ec.ncore=1..}] ec.ncore 0

# Handle /trigger ec.codex_tp (Codex of Everything teleport)
execute as @a[scores={ec.codex_tp=1..}] run function evercraft:artifacts/codex_tp/trigger_handler
scoreboard players enable @a[scores={ec.codex_tp=1..}] ec.codex_tp
scoreboard players set @a[scores={ec.codex_tp=1..}] ec.codex_tp 0

# Handle /trigger ec.quest (Quest Board actions)
execute as @a[scores={ec.quest=1..}] run function evercraft:quests/board/trigger_handler
scoreboard players enable @a[scores={ec.quest=1..}] ec.quest
scoreboard players set @a[scores={ec.quest=1..}] ec.quest 0

# === ARTIFACT TRANSMUTATION GUI ===
# Per-tick click detection for responsive GUI (same pattern as Advantage Trees)
execute as @a[tag=TX.InMenu] at @s run function evercraft:transmute/gui/tick

# === RUNEFORGE GUI ===
execute as @a[tag=RF.InMenu] at @s run function evercraft:runeforge/gui/tick

# === HEARTHSTONE GUI ===
execute as @a[tag=HS.InMenu] at @s run function evercraft:housing/gui/tick

# === WORLD BOSS SYSTEM ===
# Bossbar HP update (per-tick for responsiveness)
execute if score #wb_active ec.var matches 1 store result bossbar evercraft:world_boss value run data get entity @e[type=!player,tag=wb.boss,limit=1] Health 1

# === DUNGEON DIFFICULTY MENU ===
execute as @a[tag=DG.InMenu] at @s run function evercraft:dungeon/menu/tick

# === DUNGEON INSTANCE SYSTEM ===
# Only tick when a dungeon is active (zero overhead otherwise)
execute if score #dg_active ec.var matches 1 run function evercraft:dungeon/tick_active

# === PET COMBAT SYSTEM ===
# Per-tick whistle cooldown (only runs math when players have active cooldowns)
execute as @a[scores={pet.wcd=1..}] run scoreboard players remove @s pet.wcd 1

# === HEALER ARTIFACT LOCKOUT ===
# Per-tick: tag fresh arrows from locked healers, show actionbar warnings
execute if entity @a[scores={ec.hl_locked=1..}] run function evercraft:artifacts/healer/lockout_tick

# === ROGUE ARTIFACT AUTO-SWING ===
# Per-tick: detect new equips, then tick active rogues
execute as @a[tag=!ec.rg_active] if items entity @s weapon.mainhand *[custom_data~{rogue:true}] run function evercraft:artifacts/rogue/detect
execute if entity @a[tag=ec.rg_active] run function evercraft:artifacts/rogue/tick

# === BERSERKER DUAL-AXE SYSTEM ===
# Per-tick: detect new dual-axe equips, then tick active berserkers
execute as @a[tag=!ec.bk_active] if items entity @s weapon.mainhand #minecraft:axes[custom_data~{is_artifact:true}] run function evercraft:artifacts/berserker/detect
execute if entity @a[tag=ec.bk_active] run function evercraft:artifacts/berserker/tick

# === DANCER GAUNTLET SYSTEM ===
# Per-tick: detect new gauntlet equips, then tick active dancers
execute as @a[tag=!ec.dn_active] if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] run function evercraft:artifacts/dancer/detect
execute if entity @a[tag=ec.dn_active] run function evercraft:artifacts/dancer/tick

# === ARCHER BOW SYSTEM ===
# Per-tick: draw stale detection (fires on_fire when player stops drawing)
scoreboard players add @a[scores={ec.ar_draw=1..}] ec.ar_stale 1
execute as @a[scores={ec.ar_stale=3..,ec.ar_draw=1..}] run function evercraft:artifacts/archer/on_fire
# Per-tick: overcharge hit timer countdown + reset charged flag on expiry
scoreboard players remove @a[scores={ec.ar_hit_timer=1..}] ec.ar_hit_timer 1
execute as @a[scores={ec.ar_hit_timer=0,ec.ar_charged=1}] run scoreboard players set @s ec.ar_charged 0

# === HUNTER CROSSBOW SYSTEM ===
# Per-tick: Steady Aim check for players holding hunter crossbows
execute as @a if items entity @s weapon.mainhand crossbow[custom_data~{hunter:true}] run function evercraft:artifacts/hunter/aim_check
# Per-tick: precision hit timer countdown + reset charged flag on expiry
scoreboard players remove @a[scores={ec.ht_hit_timer=1..}] ec.ht_hit_timer 1
execute as @a[scores={ec.ht_hit_timer=0,ec.ht_charged=1}] run scoreboard players set @s ec.ht_charged 0

# === BEASTLORD SPEAR SYSTEM ===
# Per-tick: detect new beastlord equips, then tick active beastlords
execute as @a[tag=!ec.bl_active] if items entity @s weapon.mainhand *[custom_data~{beastlord:true}] run function evercraft:artifacts/beastlord/detect
execute if entity @a[tag=ec.bl_active] run function evercraft:artifacts/beastlord/tick
# Reverse shield check: beastlord spear in offhand + shield in mainhand
execute as @a if items entity @s weapon.offhand *[custom_data~{beastlord:true}] if items entity @s weapon.mainhand minecraft:shield run function evercraft:artifacts/beastlord/shield_check_reverse

# === JAVELIN TRIDENT SYSTEM ===
# Per-tick: detect new javelin equips, then tick active javelin players
execute as @a[tag=!ec.jv_active] if items entity @s weapon.mainhand minecraft:trident[custom_data~{javelin:true}] run function evercraft:artifacts/javelin/detect
execute if entity @a[tag=ec.jv_active] run function evercraft:artifacts/javelin/tick

# === STRIKER MACE SYSTEM ===
# Per-tick: detect new striker equips, then tick active strikers
execute as @a[tag=!ec.sk_active] if items entity @s weapon.mainhand mace[custom_data~{striker:true}] run function evercraft:artifacts/striker/detect
execute if entity @a[tag=ec.sk_active] run function evercraft:artifacts/striker/tick

# === LORE DISCOVERY SYSTEM ===
# Per-tick: detect sparkle right-clicks
execute as @e[type=interaction,tag=ec.lore_click] if data entity @s interaction at @s run function evercraft:lore/on_click
# Per-tick: progress bar for active pickups (only when players are picking up)
execute as @a[scores={ec.lore_picking=1}] at @s run function evercraft:lore/progress_step
# Per-tick: pre-cache held physical lore item UID for consume detection
# OPT: Only reset/scan players who might be holding lore pieces (most players aren't)
execute as @a[scores={ec.lore_cached=1..}] run scoreboard players set @s ec.lore_cached 0
execute as @a if items entity @s weapon.mainhand *[custom_data~{lore_piece:true}] unless items entity @s weapon.mainhand written_book store result score @s ec.lore_cached run data get entity @s SelectedItem.components."minecraft:custom_data".lore_uid
# Per-tick: handle /trigger ec.lore_add (collection button in books)
execute as @a[scores={ec.lore_add=1..}] run function evercraft:lore/collect/try_add
scoreboard players enable @a[scores={ec.lore_add=1..}] ec.lore_add
scoreboard players set @a[scores={ec.lore_add=1..}] ec.lore_add 0

# === FORAGING BUSH SYSTEM ===
# Per-tick: detect bush right-clicks
execute as @e[type=interaction,tag=ec.forage_click] if data entity @s interaction at @s run function evercraft:forage/on_click
# Per-tick: progress bar for active gathering (only when players are gathering)
execute as @a[scores={ec.fg_picking=1}] at @s run function evercraft:forage/progress_step

# === ORE NODE SYSTEM ===
# Per-tick: detect node right-clicks
execute as @e[type=interaction,tag=ec.prospect_click] if data entity @s interaction at @s run function evercraft:prospect/on_click
# Per-tick: progress bar for active mining (only when players are mining)
execute as @a[scores={ec.pr_picking=1}] at @s run function evercraft:prospect/progress_step

# === CAMPFIRE KITCHEN GUI ===
# Delayed utensil restore (consume_item fires before item removal — restore next tick)
execute as @a[tag=CK.Restore] run function evercraft:cooking/restore_utensil
# Per-tick: menu validation + click detection for players with kitchen open
execute as @a[tag=CK.InMenu] at @s run function evercraft:cooking/gui/tick

# === DREAMING REALM ===
# Per-tick: timer, bossbar, fall catch, warnings (only when active — zero overhead otherwise)
execute if score #dr_active ec.var matches 1 run function evercraft:dreaming_realm/tick
# Handle /trigger ec.wake (emergency wake from Dreaming Realm)
execute as @a[tag=dr.in_realm,scores={ec.wake=1..}] run function evercraft:dreaming_realm/exit/wake_up
scoreboard players enable @a[scores={ec.wake=1..}] ec.wake
scoreboard players set @a[scores={ec.wake=1..}] ec.wake 0
