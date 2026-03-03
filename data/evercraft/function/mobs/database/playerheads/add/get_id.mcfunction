scoreboard players add $unique_playerhead_id mob_manager.playerhead.id 1
scoreboard players operation @s mob_manager.playerhead.id = $unique_playerhead_id mob_manager.playerhead.id
execute store result storage eden:temp playerhead.id int 1 run scoreboard players get @s mob_manager.playerhead.id

function evercraft:mobs/database/playerheads/add/fetch_data with storage eden:temp playerhead