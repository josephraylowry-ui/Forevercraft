# Every hour - Relationship decay
# 1 hour = 72000 ticks

scoreboard players set #1h Pets.Timer 72000

# Run decay for all players with active pets
function evercraft:companions/handler/relationship/decay
