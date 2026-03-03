# Send pet feeding reminder to all players with active pets
# Called from schedule/3d.mcfunction

execute as @a at @s run function evercraft:companions/handler/relationship/reminder_player
