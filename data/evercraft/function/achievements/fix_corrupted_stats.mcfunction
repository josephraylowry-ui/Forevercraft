# One-time fix for corrupted vanilla stat scoreboards
# Run manually: /function evercraft:achievements/fix_corrupted_stats
#
# The old tick.mcfunction subtracted baselines directly from vanilla stat
# scoreboards (ach.play_ticks -= ach.base_play, etc.). Minecraft only increments
# these by delta each tick, so subtracting compounded and caused integer overflow.
# This script removes and re-adds the corrupted objectives so Minecraft can
# repopulate them with correct values, then triggers baseline recapture.

# Remove and re-add vanilla stat objectives to let Minecraft repopulate correct values
scoreboard objectives remove ach.play_ticks
scoreboard objectives add ach.play_ticks custom:play_time "Play Time (ticks)"
scoreboard objectives remove ach.walk_cm
scoreboard objectives add ach.walk_cm custom:walk_one_cm "Walk Distance (cm)"
scoreboard objectives remove ach.jumps
scoreboard objectives add ach.jumps custom:jump "Jumps"
scoreboard objectives remove ach.sprint_cm
scoreboard objectives add ach.sprint_cm custom:sprint_one_cm "Sprint Distance"
scoreboard objectives remove ach.trades_done
scoreboard objectives add ach.trades_done custom:traded_with_villager "Trades Completed"
scoreboard objectives remove ach.sleeps
scoreboard objectives add ach.sleeps custom:sleep_in_bed "Times Slept"
scoreboard objectives remove ach.chests_opened
scoreboard objectives add ach.chests_opened custom:open_chest "Chests Opened"
scoreboard objectives remove ach.swim_cm
scoreboard objectives add ach.swim_cm custom:walk_under_water_one_cm "Underwater Distance"
scoreboard objectives remove ach.fall_cm
scoreboard objectives add ach.fall_cm custom:fall_one_cm "Fall Distance"
scoreboard objectives remove ach.flint_used
scoreboard objectives add ach.flint_used minecraft.used:minecraft.flint_and_steel "Flint and Steel Uses"
scoreboard objectives remove ach.maps_crafted
scoreboard objectives add ach.maps_crafted minecraft.crafted:minecraft.map "Maps Crafted"
scoreboard objectives remove ach.brew_count
scoreboard objectives add ach.brew_count custom:interact_with_brewingstand "Potions Brewed"
scoreboard objectives remove ach.enchant_count
scoreboard objectives add ach.enchant_count custom:enchant_item "Items Enchanted"

# CRITICAL: Set a long cooldown BEFORE resetting base_set.
# After objectives are removed/re-added, Minecraft needs time to repopulate stat
# values from the player's statistics file. If init_baselines runs too early,
# baselines get captured as 0 and all stat achievements re-trigger once the real
# values finally sync (the "5-10 minutes later" bug).
# 24 cycles x 5 seconds = 120 seconds of delay before init_baselines can run.
scoreboard players set #ach_init_cd ec.var 24

# Reset baseline init flag so baselines get recaptured from correct values.
# The cooldown above ensures init_baselines won't run for 2 minutes, giving
# Minecraft time to repopulate all stat objectives with real values first.
scoreboard players set @a ach.base_set 0

tellraw @a [{text:"[Fix] ",color:"red"},{text:"Corrupted stat scoreboards restored. Baselines will be recaptured in ~2 minutes (waiting for stat sync).",color:"yellow"}]
