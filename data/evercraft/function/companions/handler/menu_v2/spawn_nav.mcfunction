# Spawn navigation arrows for pagination
# Always spawned — arrows at far edges of bottom bar
# ^positive = player's left = viewer's left, ^negative = player's right = viewer's right

# Previous page arrow (far left from player view)
execute rotated ~ 0 positioned ^ ^0.95 ^1.48 positioned ^1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.MenuPrev","Pets.MenuElement","Pets.NavArrow"],billboard:"center",text:{text:"◀",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}
execute rotated ~ 0 positioned ^ ^0.88 ^1.5 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Pets.MenuPrevClick","Pets.MenuElement","Pets.NavArrow"],width:0.12f,height:0.12f,response:1b}

# Next page arrow (far right from player view)
execute rotated ~ 0 positioned ^ ^0.95 ^1.48 positioned ^-1.0 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.MenuNext","Pets.MenuElement","Pets.NavArrow"],billboard:"center",text:{text:"▶",color:"green"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}
execute rotated ~ 0 positioned ^ ^0.88 ^1.5 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Pets.MenuNextClick","Pets.MenuElement","Pets.NavArrow"],width:0.12f,height:0.12f,response:1b}

# Tag with owner ID
scoreboard players operation @e[type=text_display,tag=Pets.NavArrow,distance=..7] Pets.ID = @s Pets.ID
scoreboard players operation @e[type=interaction,tag=Pets.NavArrow,distance=..7] Pets.ID = @s Pets.ID
