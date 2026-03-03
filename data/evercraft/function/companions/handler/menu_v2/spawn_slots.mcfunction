# Spawn pet display slots in a 6x3 grid
# Grid is centered in front of player, 1.0 blocks away
# Uses rotated ~ 0 for yaw-only positioning
# Columns at ^0.50, ^0.30, ^0.10, ^-0.10, ^-0.30, ^-0.50 (0.20 spacing)
# ^positive = player's left = viewer's left
# Item displays at ^1.0, interaction entities at ^0.95 with Y -0.15 (shifted down to center on pet head)
# Interaction size 0.18x0.18 (tight to each 0.20-spaced cell to prevent overlap)

# Row 1 (top): slots 0-5 at ^1.6 height
execute rotated ~ 0 positioned ^ ^1.6 ^1.0 positioned ^0.50 ^0 ^0 if data storage evercraft:companions MenuDisplay[0] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot0"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.48 ^0.95 positioned ^0.50 ^0 ^0 if data storage evercraft:companions MenuDisplay[0] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click0"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.6 ^1.0 positioned ^0.30 ^0 ^0 if data storage evercraft:companions MenuDisplay[1] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot1"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.48 ^0.95 positioned ^0.30 ^0 ^0 if data storage evercraft:companions MenuDisplay[1] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click1"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.6 ^1.0 positioned ^0.10 ^0 ^0 if data storage evercraft:companions MenuDisplay[2] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot2"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.48 ^0.95 positioned ^0.10 ^0 ^0 if data storage evercraft:companions MenuDisplay[2] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click2"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.6 ^1.0 positioned ^-0.10 ^0 ^0 if data storage evercraft:companions MenuDisplay[3] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot3"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.48 ^0.95 positioned ^-0.10 ^0 ^0 if data storage evercraft:companions MenuDisplay[3] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click3"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.6 ^1.0 positioned ^-0.30 ^0 ^0 if data storage evercraft:companions MenuDisplay[4] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot4"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.48 ^0.95 positioned ^-0.30 ^0 ^0 if data storage evercraft:companions MenuDisplay[4] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click4"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.6 ^1.0 positioned ^-0.50 ^0 ^0 if data storage evercraft:companions MenuDisplay[5] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot5"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.48 ^0.95 positioned ^-0.50 ^0 ^0 if data storage evercraft:companions MenuDisplay[5] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click5"],width:0.18f,height:0.18f,response:1b}

# Row 2 (middle): slots 6-11 at ^1.4 height
execute rotated ~ 0 positioned ^ ^1.4 ^1.0 positioned ^0.50 ^0 ^0 if data storage evercraft:companions MenuDisplay[6] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot6"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.28 ^0.95 positioned ^0.50 ^0 ^0 if data storage evercraft:companions MenuDisplay[6] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click6"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.4 ^1.0 positioned ^0.30 ^0 ^0 if data storage evercraft:companions MenuDisplay[7] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot7"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.28 ^0.95 positioned ^0.30 ^0 ^0 if data storage evercraft:companions MenuDisplay[7] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click7"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.4 ^1.0 positioned ^0.10 ^0 ^0 if data storage evercraft:companions MenuDisplay[8] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot8"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.28 ^0.95 positioned ^0.10 ^0 ^0 if data storage evercraft:companions MenuDisplay[8] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click8"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.4 ^1.0 positioned ^-0.10 ^0 ^0 if data storage evercraft:companions MenuDisplay[9] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot9"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.28 ^0.95 positioned ^-0.10 ^0 ^0 if data storage evercraft:companions MenuDisplay[9] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click9"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.4 ^1.0 positioned ^-0.30 ^0 ^0 if data storage evercraft:companions MenuDisplay[10] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot10"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.28 ^0.95 positioned ^-0.30 ^0 ^0 if data storage evercraft:companions MenuDisplay[10] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click10"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.4 ^1.0 positioned ^-0.50 ^0 ^0 if data storage evercraft:companions MenuDisplay[11] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot11"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.28 ^0.95 positioned ^-0.50 ^0 ^0 if data storage evercraft:companions MenuDisplay[11] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click11"],width:0.18f,height:0.18f,response:1b}

# Row 3 (bottom): slots 12-17 at ^1.2 height
execute rotated ~ 0 positioned ^ ^1.2 ^1.0 positioned ^0.50 ^0 ^0 if data storage evercraft:companions MenuDisplay[12] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot12"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.08 ^0.95 positioned ^0.50 ^0 ^0 if data storage evercraft:companions MenuDisplay[12] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click12"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.2 ^1.0 positioned ^0.30 ^0 ^0 if data storage evercraft:companions MenuDisplay[13] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot13"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.08 ^0.95 positioned ^0.30 ^0 ^0 if data storage evercraft:companions MenuDisplay[13] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click13"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.2 ^1.0 positioned ^0.10 ^0 ^0 if data storage evercraft:companions MenuDisplay[14] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot14"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.08 ^0.95 positioned ^0.10 ^0 ^0 if data storage evercraft:companions MenuDisplay[14] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click14"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.2 ^1.0 positioned ^-0.10 ^0 ^0 if data storage evercraft:companions MenuDisplay[15] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot15"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.08 ^0.95 positioned ^-0.10 ^0 ^0 if data storage evercraft:companions MenuDisplay[15] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click15"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.2 ^1.0 positioned ^-0.30 ^0 ^0 if data storage evercraft:companions MenuDisplay[16] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot16"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.08 ^0.95 positioned ^-0.30 ^0 ^0 if data storage evercraft:companions MenuDisplay[16] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click16"],width:0.18f,height:0.18f,response:1b}

execute rotated ~ 0 positioned ^ ^1.2 ^1.0 positioned ^-0.50 ^0 ^0 if data storage evercraft:companions MenuDisplay[17] run summon item_display ~ ~ ~ {Tags:["Pets.PetSlot","Pets.MenuElement","Pets.Slot17"],billboard:"center",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.08 ^0.95 positioned ^-0.50 ^0 ^0 if data storage evercraft:companions MenuDisplay[17] run summon interaction ~ ~ ~ {Tags:["Pets.PetClick","Pets.MenuElement","Pets.Click17"],width:0.18f,height:0.18f,response:1b}

# Tag all new elements with owner ID
scoreboard players operation @e[type=item_display,tag=Pets.MenuElement,distance=..7] Pets.ID = @s Pets.ID
scoreboard players operation @e[type=interaction,tag=Pets.MenuElement,distance=..7] Pets.ID = @s Pets.ID

# Now set the item data for each slot
function evercraft:companions/handler/menu_v2/set_items
