# Send pet feeding reminder to a single player
# Run as player

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Only remind if player has an active pet
execute unless entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, distance=..100] run return fail

# Load relationship to check status
function evercraft:companions/handler/relationship/load_rp

# Different messages based on relationship level
execute if score @s Pets.RelLevel matches 0 run tellraw @s [{text:""},{text:"[",color:"gray"},{text:"Pet Reminder",color:"gold",bold:true},{text:"] ",color:"gray"},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" is feeling neglected! Remember to feed and pet them today.",color:"yellow"}]

execute if score @s Pets.RelLevel matches 1..2 run tellraw @s [{text:""},{text:"[",color:"gray"},{text:"Pet Reminder",color:"gold",bold:true},{text:"] ",color:"gray"},{text:"Good morning! Don't forget to spend some time with ",color:"aqua"},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" today.",color:"aqua"}]

execute if score @s Pets.RelLevel matches 3..4 run tellraw @s [{text:""},{text:"[",color:"gray"},{text:"Pet Reminder",color:"gold",bold:true},{text:"] ",color:"gray"},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" is excited to see you! A quick treat would make their day.",color:"green"}]

execute if score @s Pets.RelLevel matches 5 run tellraw @s [{text:""},{text:"[",color:"gray"},{text:"Pet Reminder",color:"gold",bold:true},{text:"] ",color:"gray"},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" loves you! Keep up the great bond with a morning treat.",color:"light_purple"}]

# Play a gentle sound
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.2
