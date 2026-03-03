# Reposition all menu elements based on player's current facing
# Called as player, at player position
# Uses rotated ~ 0 to follow yaw only (not pitch), so menu stays at eye level
# NOTE: Not called from tick anymore (menu is stationary), kept for potential page refresh use

# Background
execute rotated ~ 0 positioned ^ ^1.2 ^1.0 run tp @e[type=item_display,tag=Pets.MenuBG,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Title
execute rotated ~ 0 positioned ^ ^1.85 ^1.0 run tp @e[type=text_display,tag=Pets.MenuTitle,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Page info
execute rotated ~ 0 positioned ^ ^0.95 ^1.0 run tp @e[type=text_display,tag=Pets.MenuPageInfo,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Navigation arrows
execute rotated ~ 0 positioned ^ ^0.95 ^0.98 positioned ^0.35 ^0 ^0 run tp @e[type=text_display,tag=Pets.MenuNext,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^0.95 ^1.0 positioned ^0.35 ^0 ^0 run tp @e[type=interaction,tag=Pets.MenuNextClick,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^0.95 ^0.98 positioned ^-0.35 ^0 ^0 run tp @e[type=text_display,tag=Pets.MenuPrev,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^0.95 ^1.0 positioned ^-0.35 ^0 ^0 run tp @e[type=interaction,tag=Pets.MenuPrevClick,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Row 1 (top): slots 0-5 — item_display at ^1.0, interaction at ^0.95 with Y -0.15
execute rotated ~ 0 positioned ^ ^1.6 ^1.0 positioned ^-0.35 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot0,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.45 ^0.95 positioned ^-0.35 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click0,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.6 ^1.0 positioned ^-0.21 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot1,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.45 ^0.95 positioned ^-0.21 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click1,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.6 ^1.0 positioned ^-0.07 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot2,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.45 ^0.95 positioned ^-0.07 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click2,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.6 ^1.0 positioned ^0.07 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot3,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.45 ^0.95 positioned ^0.07 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click3,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.6 ^1.0 positioned ^0.21 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot4,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.45 ^0.95 positioned ^0.21 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click4,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.6 ^1.0 positioned ^0.35 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot5,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.45 ^0.95 positioned ^0.35 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click5,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Row 2 (middle): slots 6-11
execute rotated ~ 0 positioned ^ ^1.4 ^1.0 positioned ^-0.35 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot6,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.25 ^0.95 positioned ^-0.35 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click6,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.4 ^1.0 positioned ^-0.21 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot7,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.25 ^0.95 positioned ^-0.21 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click7,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.4 ^1.0 positioned ^-0.07 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot8,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.25 ^0.95 positioned ^-0.07 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click8,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.4 ^1.0 positioned ^0.07 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot9,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.25 ^0.95 positioned ^0.07 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click9,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.4 ^1.0 positioned ^0.21 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot10,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.25 ^0.95 positioned ^0.21 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click10,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.4 ^1.0 positioned ^0.35 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot11,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.25 ^0.95 positioned ^0.35 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click11,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Row 3 (bottom): slots 12-17
execute rotated ~ 0 positioned ^ ^1.2 ^1.0 positioned ^-0.35 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot12,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.05 ^0.95 positioned ^-0.35 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click12,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.2 ^1.0 positioned ^-0.21 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot13,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.05 ^0.95 positioned ^-0.21 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click13,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.2 ^1.0 positioned ^-0.07 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot14,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.05 ^0.95 positioned ^-0.07 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click14,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.2 ^1.0 positioned ^0.07 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot15,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.05 ^0.95 positioned ^0.07 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click15,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.2 ^1.0 positioned ^0.21 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot16,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.05 ^0.95 positioned ^0.21 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click16,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.2 ^1.0 positioned ^0.35 ^0 ^0 run tp @e[type=item_display,tag=Pets.Slot17,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^ ^1.05 ^0.95 positioned ^0.35 ^0 ^0 run tp @e[type=interaction,tag=Pets.Click17,predicate=evercraft:companions/check_id,limit=1,sort=nearest] ~ ~ ~ ~ ~
