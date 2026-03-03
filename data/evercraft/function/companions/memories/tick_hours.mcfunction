# Companion Memories — Track Hours Together
# Called every 5 seconds (100 ticks) from companion tick
# Run as: player

execute unless entity @s[tag=Pets.ActivePet] run return 0

# Increment counter (each count = 5 seconds)
scoreboard players add @s ec.pet_hours 1

# At 7200 counts (10 real hours at 5s intervals), record "The Long Road"
execute if score @s ec.pet_hours matches 7200 run function evercraft:companions/memories/record {bit_value:32,memory_name:"The Long Road"}
