# Message in a Bottle — Show clickable message options
# Called when player uses /trigger ec.bottle set 1

# Check they're holding a bottle
execute unless items entity @s weapon.mainhand minecraft:glass_bottle[custom_data~{message_bottle:1b}] run tellraw @s [{text:"[Forevercraft] ",color:"gray"},{text:"Hold a Message in a Bottle first!",color:"red"}]
execute unless items entity @s weapon.mainhand minecraft:glass_bottle[custom_data~{message_bottle:1b}] run return 0

# Show clickable message options
tellraw @s {text:""}
tellraw @s [{text:"=== ",color:"gray"},{text:"Write Your Message",color:"gold",bold:true},{text:" ===",color:"gray"}]
tellraw @s {text:"Click a message to seal it in your bottle:",color:"white"}
tellraw @s {text:""}
tellraw @s [{text:" [1] ",color:"gold"},{text:"Good luck on your adventures!",color:"#E8C99B",italic:true,click_event:{action:"run_command",command:"/trigger ec.bottle set 2"}}]
tellraw @s [{text:" [2] ",color:"gold"},{text:"I found treasure here!",color:"#E8C99B",italic:true,click_event:{action:"run_command",command:"/trigger ec.bottle set 3"}}]
tellraw @s [{text:" [3] ",color:"gold"},{text:"Watch out for patrons at night!",color:"#E8C99B",italic:true,click_event:{action:"run_command",command:"/trigger ec.bottle set 4"}}]
tellraw @s [{text:" [4] ",color:"gold"},{text:"The fishing is great today!",color:"#E8C99B",italic:true,click_event:{action:"run_command",command:"/trigger ec.bottle set 5"}}]
tellraw @s [{text:" [5] ",color:"gold"},{text:"May your dreams guide you.",color:"#E8C99B",italic:true,click_event:{action:"run_command",command:"/trigger ec.bottle set 6"}}]
tellraw @s [{text:" [6] ",color:"gold"},{text:"The air feels lucky today...",color:"#E8C99B",italic:true,click_event:{action:"run_command",command:"/trigger ec.bottle set 7"}}]
tellraw @s [{text:" [7] ",color:"gold"},{text:"Never dig straight down!",color:"#E8C99B",italic:true,click_event:{action:"run_command",command:"/trigger ec.bottle set 8"}}]
tellraw @s [{text:" [8] ",color:"gold"},{text:"Somewhere out there, adventure awaits.",color:"#E8C99B",italic:true,click_event:{action:"run_command",command:"/trigger ec.bottle set 9"}}]
tellraw @s {text:""}
tellraw @s [{text:"========================",color:"gray"}]
