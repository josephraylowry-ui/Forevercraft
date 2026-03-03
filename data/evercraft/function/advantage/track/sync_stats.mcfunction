# Advantage Trees — Sync Stats (5s schedule)
# Reads vanilla auto-increment scoreboards and converts to advantage stat counters
# CRITICAL: Do NOT use per-centimeter advancement triggers — they fire hundreds of times/sec

schedule function evercraft:advantage/track/sync_stats 5s

# Walking: convert centimeters to blocks (divide by 100)
execute as @a run function evercraft:advantage/track/sync_walking

# Crouching: convert centimeters to blocks
execute as @a run function evercraft:advantage/track/sync_crouching

# Fish caught: copy from vanilla stat minus baseline
execute as @a run scoreboard players operation @s adv.stat_fish = @s adv.fish_ct
execute as @a run scoreboard players operation @s adv.stat_fish -= @s adv.base_fish

# Mob kills: copy from vanilla stat minus baseline
execute as @a run scoreboard players operation @s adv.stat_mobs = @s adv.mob_kills
execute as @a run scoreboard players operation @s adv.stat_mobs -= @s adv.base_mobs

# Smelting: sum of furnace + blast furnace + smoker interactions minus baseline
execute as @a run function evercraft:advantage/track/sync_smelting

# Mining: copy mt.total minus baseline
execute as @a run scoreboard players operation @s adv.stat_mine = @s mt.total
execute as @a run scoreboard players operation @s adv.stat_mine -= @s adv.base_mine

# Block placement: tracked via placed_block advancement trigger (track_place.json)
# Quests, harvest, structure crates, pets: tracked via inline scoreboard increments
