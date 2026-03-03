execute store result storage eden:temp playerhead.id int 1 run scoreboard players get @s mob_manager.playerhead.id
function evercraft:mobs/database/playerheads/update/fetch_data with storage eden:temp playerhead
scoreboard players set @s mob_manager.playerhead.update 0