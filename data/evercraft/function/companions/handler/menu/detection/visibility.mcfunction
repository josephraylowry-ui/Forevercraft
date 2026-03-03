clear @s ender_eye[max_stack_size=1]
scoreboard players operation #Search Pets.ID = @s Pets.ID

# --------------------------------------------------------------------------------- #

function evercraft:companions/handler/player/visibility

# --------------------------------------------------------------------------------- #

execute as @s[tag=Pets.InMenu2] run return run function evercraft:companions/handler/menu/layout/page_2/open
function evercraft:companions/handler/menu/open