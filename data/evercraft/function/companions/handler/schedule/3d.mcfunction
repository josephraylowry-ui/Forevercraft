# Every 3 days - Pet feeding reminder (morning only)
# 3 days = 1440000 ticks (3 * 24000 * 20... wait, schedule uses ticks directly)
# Actually the timer is managed by the companion system, not schedule

# Check if it's morning (0-1800 ticks into the day)
execute store result score #timeCheck Pets.Calc run time query daytime

# Only send reminder in the morning, otherwise wait for next tick cycle
execute unless score #timeCheck Pets.Calc matches 0..1800 run return fail

# Reset timer
scoreboard players set #3d Pets.Timer 5184000

# Send reminder to all players
function evercraft:companions/handler/relationship/reminder
