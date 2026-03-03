$execute store result storage evercraft:treasure/database "$(UUID)".total int 1 run scoreboard players get @s mt.total
$execute store result storage evercraft:treasure/database "$(UUID)".common_count int 1 run scoreboard players get @s mt.common_count
$execute store result storage evercraft:treasure/database "$(UUID)".rare_count int 1 run scoreboard players get @s mt.rare_count
$execute store result storage evercraft:treasure/database "$(UUID)".epic_count int 1 run scoreboard players get @s mt.epic_count
$execute store result storage evercraft:treasure/database "$(UUID)".mythical_count int 1 run scoreboard players get @s mt.mythical_count
$execute store result storage evercraft:treasure/database "$(UUID)".play_time int 1 run scoreboard players get @s mt.play_time