# ONE-TIME Migration Cleanup — Run once after namespace consolidation
# Revokes ALL advancements under migrated namespaces so triggers can re-fire
# Also re-bootstraps scheduled functions and migrates storage data
# SAFE TO RUN: Just resets advancement trigger states, no data loss
# DELETE THIS FILE after confirming everything works

tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Running migration cleanup...",color:"white"}]

# === REVOKE ALL ADVANCEMENTS FOR ALL MIGRATED NAMESPACES ===
# Using "from" with root advancements to catch EVERYTHING in each tree
# For namespaces without a root, revoke each top-level advancement individually

# --- Patrons (replaces old captains system) ---
advancement revoke @a only evercraft:mobs/patrons/kill/common
advancement revoke @a only evercraft:mobs/patrons/kill/uncommon
advancement revoke @a only evercraft:mobs/patrons/kill/rare
advancement revoke @a only evercraft:mobs/patrons/kill/ornate
advancement revoke @a only evercraft:mobs/patrons/kill/exquisite
advancement revoke @a only evercraft:mobs/patrons/kill/mythical

# --- Companions (ALL pet advancements) ---
advancement revoke @a only evercraft:companions/menu/open
advancement revoke @a only evercraft:companions/menu/spawn
advancement revoke @a only evercraft:companions/menu/despawn
advancement revoke @a only evercraft:companions/menu_v2/spawn
advancement revoke @a only evercraft:companions/add_to_player
advancement revoke @a only evercraft:companions/new_player
advancement revoke @a only evercraft:companions/changed_dimension
advancement revoke @a only evercraft:companions/player_death
advancement revoke @a only evercraft:companions/divine_beast_tamer
advancement revoke @a only evercraft:companions/abilities/dog
advancement revoke @a only evercraft:companions/abilities/ghast
advancement revoke @a only evercraft:companions/abilities/panda_enter
advancement revoke @a only evercraft:companions/abilities/panda_exit
advancement revoke @a only evercraft:companions/abilities/penguin_enter
advancement revoke @a only evercraft:companions/abilities/penguin_exit
advancement revoke @a only evercraft:companions/abilities/phoenix
advancement revoke @a only evercraft:companions/abilities/reaper

# --- Fishing (ALL crate advancements) ---
advancement revoke @a only evercraft:fishing/core/common/open
advancement revoke @a only evercraft:fishing/core/common/place
advancement revoke @a only evercraft:fishing/core/common/process
advancement revoke @a only evercraft:fishing/core/uncommon/open
advancement revoke @a only evercraft:fishing/core/uncommon/place
advancement revoke @a only evercraft:fishing/core/uncommon/process
advancement revoke @a only evercraft:fishing/core/rare/open
advancement revoke @a only evercraft:fishing/core/rare/place
advancement revoke @a only evercraft:fishing/core/rare/process
advancement revoke @a only evercraft:fishing/core/ornate/open
advancement revoke @a only evercraft:fishing/core/ornate/place
advancement revoke @a only evercraft:fishing/core/ornate/process
advancement revoke @a only evercraft:fishing/core/exquisite/open
advancement revoke @a only evercraft:fishing/core/exquisite/place
advancement revoke @a only evercraft:fishing/core/exquisite/process
advancement revoke @a only evercraft:fishing/core/mythical/open
advancement revoke @a only evercraft:fishing/core/mythical/place
advancement revoke @a only evercraft:fishing/core/mythical/process

# --- Harvest (ALL crate advancements) ---
advancement revoke @a only evercraft:harvest/core/common/open
advancement revoke @a only evercraft:harvest/core/common/place
advancement revoke @a only evercraft:harvest/core/common/process
advancement revoke @a only evercraft:harvest/core/uncommon/open
advancement revoke @a only evercraft:harvest/core/uncommon/place
advancement revoke @a only evercraft:harvest/core/uncommon/process
advancement revoke @a only evercraft:harvest/core/rare/open
advancement revoke @a only evercraft:harvest/core/rare/place
advancement revoke @a only evercraft:harvest/core/rare/process
advancement revoke @a only evercraft:harvest/core/ornate/open
advancement revoke @a only evercraft:harvest/core/ornate/place
advancement revoke @a only evercraft:harvest/core/ornate/process
advancement revoke @a only evercraft:harvest/core/exquisite/open
advancement revoke @a only evercraft:harvest/core/exquisite/place
advancement revoke @a only evercraft:harvest/core/exquisite/process
advancement revoke @a only evercraft:harvest/core/mythical/open
advancement revoke @a only evercraft:harvest/core/mythical/place
advancement revoke @a only evercraft:harvest/core/mythical/process

# --- Structures (chest interactions) ---
advancement revoke @a only evercraft:structures/interact/open_chest
advancement revoke @a only evercraft:structures/interact/open_barrel
advancement revoke @a only evercraft:structures/interact/open_trapped_chest
advancement revoke @a only evercraft:structures/interact/open_minecart_chest
advancement revoke @a only evercraft:structures/interact/place_chest
advancement revoke @a only evercraft:structures/interact/place_barrel
advancement revoke @a only evercraft:structures/interact/place_trapped_chest

# --- Mobs (talking villagers, playerhead) ---
advancement revoke @a only evercraft:mobs/playerhead_db_trigger
advancement revoke @a only evercraft:mobs/talking_villager/plains
advancement revoke @a only evercraft:mobs/talking_villager/desert
advancement revoke @a only evercraft:mobs/talking_villager/jungle
advancement revoke @a only evercraft:mobs/talking_villager/savanna
advancement revoke @a only evercraft:mobs/talking_villager/snow
advancement revoke @a only evercraft:mobs/talking_villager/swamp
advancement revoke @a only evercraft:mobs/talking_villager/taiga

# --- Quests ---
advancement revoke @a only evercraft:quests/quest_triggers/place_book_lectern

# --- Treasure (ALL MT advancements — runes, armor, mechanics, items, technical, hack) ---
# Runes
advancement revoke @a only evercraft:treasure/runes/end_rune
advancement revoke @a only evercraft:treasure/runes/fireball_rune
advancement revoke @a only evercraft:treasure/runes/knockchant_rune
advancement revoke @a only evercraft:treasure/runes/lightning_rune
advancement revoke @a only evercraft:treasure/runes/nether_rune
advancement revoke @a only evercraft:treasure/runes/jungle_rune
advancement revoke @a only evercraft:treasure/runes/mysterichant_rune
advancement revoke @a only evercraft:treasure/runes/ally_rune
advancement revoke @a only evercraft:treasure/runes/ice_rune
advancement revoke @a only evercraft:treasure/runes/dripstone_rune
advancement revoke @a only evercraft:treasure/runes/sponge_rune
advancement revoke @a only evercraft:treasure/runes/assassin_rune
advancement revoke @a only evercraft:treasure/runes/black_rune
advancement revoke @a only evercraft:treasure/runes/heal_rune
advancement revoke @a only evercraft:treasure/runes/reverse_rune
advancement revoke @a only evercraft:treasure/runes/piglin_rune

# Armor
advancement revoke @a only evercraft:treasure/armor/fully_refined
advancement revoke @a only evercraft:treasure/armor/badlands_helmet
advancement revoke @a only evercraft:treasure/armor/end_boots
advancement revoke @a only evercraft:treasure/armor/jungle_shoes
advancement revoke @a only evercraft:treasure/armor/mountain_leggings
advancement revoke @a only evercraft:treasure/armor/swamp_chestplate

# Mechanics (size changes, charms, reach, light, mooshroom, etc.)
advancement revoke @a only evercraft:treasure/mechanics/big/timer
advancement revoke @a only evercraft:treasure/mechanics/big/fall
advancement revoke @a only evercraft:treasure/mechanics/big/apply
advancement revoke @a only evercraft:treasure/mechanics/small/timer
advancement revoke @a only evercraft:treasure/mechanics/small/apply
advancement revoke @a only evercraft:treasure/mechanics/small/ride
advancement revoke @a only evercraft:treasure/mechanics/step_height/timer
advancement revoke @a only evercraft:treasure/mechanics/step_height/apply
advancement revoke @a only evercraft:treasure/mechanics/reach/timer
advancement revoke @a only evercraft:treasure/mechanics/reach/apply
advancement revoke @a only evercraft:treasure/mechanics/light/timer
advancement revoke @a only evercraft:treasure/mechanics/light/apply
advancement revoke @a only evercraft:treasure/mechanics/charm/common
advancement revoke @a only evercraft:treasure/mechanics/charm/rare
advancement revoke @a only evercraft:treasure/mechanics/charm/timer
advancement revoke @a only evercraft:treasure/mechanics/charm/epic
advancement revoke @a only evercraft:treasure/mechanics/charm/mythical
advancement revoke @a only evercraft:treasure/mechanics/mooshroom/milk
advancement revoke @a only evercraft:treasure/mechanics/toxic_machette/rc
advancement revoke @a only evercraft:treasure/mechanics/milk

# Items (totems, weapons, food, utility)
advancement revoke @a only evercraft:treasure/items/totems/totem_of_shade
advancement revoke @a only evercraft:treasure/items/totems/totem_of_assassination
advancement revoke @a only evercraft:treasure/items/totems/totem_of_death
advancement revoke @a only evercraft:treasure/items/weapons/detonation_mine
advancement revoke @a only evercraft:treasure/items/weapons/laser
advancement revoke @a only evercraft:treasure/items/weapons/pointed_boots/1
advancement revoke @a only evercraft:treasure/items/weapons/pointed_boots/2
advancement revoke @a only evercraft:treasure/items/weapons/pointed_boots/3
advancement revoke @a only evercraft:treasure/items/food/holy_eye
advancement revoke @a only evercraft:treasure/items/food/gold_edibles
advancement revoke @a only evercraft:treasure/items/food/shroom_milk
advancement revoke @a only evercraft:treasure/items/food/enchanted_chorus_fruit
advancement revoke @a only evercraft:treasure/items/food/xp_juice
advancement revoke @a only evercraft:treasure/items/utility/sense_of_urgency
advancement revoke @a only evercraft:treasure/items/utility/mythical_spawn
advancement revoke @a only evercraft:treasure/items/utility/floor_is_spikes
advancement revoke @a only evercraft:treasure/items/utility/epic_spawn
advancement revoke @a only evercraft:treasure/items/utility/healing_flower
advancement revoke @a only evercraft:treasure/items/utility/progression_increase
advancement revoke @a only evercraft:treasure/items/utility/mountain_horn
advancement revoke @a only evercraft:treasure/items/utility/necromancy
advancement revoke @a only evercraft:treasure/items/utility/soul_flint_and_steel

# Technical (hit detection, armor triggers, database)
advancement revoke @a only evercraft:treasure/technical/hit_match/player_hurt_entity
advancement revoke @a only evercraft:treasure/technical/advancement
advancement revoke @a only evercraft:treasure/technical/armor/leggings
advancement revoke @a only evercraft:treasure/technical/armor/boots_durability
advancement revoke @a only evercraft:treasure/technical/armor/chestplate
advancement revoke @a only evercraft:treasure/technical/armor/helmet
advancement revoke @a only evercraft:treasure/technical/armor/chest_durability
advancement revoke @a only evercraft:treasure/technical/armor/helmet_durability
advancement revoke @a only evercraft:treasure/technical/armor/boots
advancement revoke @a only evercraft:treasure/technical/armor/legs_durability
advancement revoke @a only evercraft:treasure/technical/hit_items/crimson_chestplate
advancement revoke @a only evercraft:treasure/technical/hit_items/piglin_jealousy
advancement revoke @a only evercraft:treasure/technical/database/log_out
advancement revoke @a only evercraft:treasure/technical/database/save
advancement revoke @a only evercraft:treasure/player_load
advancement revoke @a only evercraft:treasure/player_update
advancement revoke @a only evercraft:treasure/hurt/mushroom_shield

# Hack advancements (mob spawns, cow variants, etc.)
advancement revoke @a only evercraft:treasure/hack/blacksmith
advancement revoke @a only evercraft:treasure/hack/dirty
advancement revoke @a only evercraft:treasure/hack/dolphin_spawn
advancement revoke @a only evercraft:treasure/hack/dolphins_grace_cow
advancement revoke @a only evercraft:treasure/hack/donkey_spawn
advancement revoke @a only evercraft:treasure/hack/giant_ruined_portal
advancement revoke @a only evercraft:treasure/hack/health_boost_cow
advancement revoke @a only evercraft:treasure/hack/horse
advancement revoke @a only evercraft:treasure/hack/levitation_cow
advancement revoke @a only evercraft:treasure/hack/lucky_cow
advancement revoke @a only evercraft:treasure/hack/panda_spawn
advancement revoke @a only evercraft:treasure/hack/pegasus
advancement revoke @a only evercraft:treasure/hack/pillager_outpost
advancement revoke @a only evercraft:treasure/hack/portal_room
advancement revoke @a only evercraft:treasure/hack/ruined_portal
advancement revoke @a only evercraft:treasure/hack/saturation_cow
advancement revoke @a only evercraft:treasure/hack/slow_falling_cow
advancement revoke @a only evercraft:treasure/hack/super_strider
advancement revoke @a only evercraft:treasure/hack/villager_spawn

# === RE-BOOTSTRAP SCHEDULED FUNCTIONS ===
# Stale schedules under old namespaces will error once and die — these restart them

# Patron & Furia check loops
schedule function evercraft:mobs/patrons/check 1s
schedule function evercraft:mobs/furia/check 1s

# Fishing tellraw init
schedule function evercraft:fishing/ref/tellraw/init 1s

# Professions tick
schedule function evercraft:professions/internal/tick 1s replace

# Mobs baby mount
schedule function evercraft:mobs/baby_mount/scheduled 5s

# === STORAGE DATA MIGRATION (one-time) ===
# Copy live data from old storage namespaces to new ones

# pets → evercraft:companions
execute store success score #migration_pets ec.var run data get storage pets {}
execute if score #migration_pets ec.var matches 1 run data modify storage evercraft:companions {} merge from storage pets {}

# more_professions → evercraft:professions
execute store success score #migration_prof ec.var run data get storage more_professions {}
execute if score #migration_prof ec.var matches 1 run data modify storage evercraft:professions {} merge from storage more_professions {}

tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Migration cleanup complete!",color:"green"}]
tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"All advancements revoked + schedules re-bootstrapped.",color:"green"}]
tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Delete migration_cleanup.mcfunction when everything works.",color:"yellow"}]
