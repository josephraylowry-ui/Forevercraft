# Decay relationship points over time
# Called once per hour (72000 ticks)
# -1 RP per hour for active pets

execute as @a at @s if entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, distance=..100] run function evercraft:companions/handler/relationship/decay_pet
