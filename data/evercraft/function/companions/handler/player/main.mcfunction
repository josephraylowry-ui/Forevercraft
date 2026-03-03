# OPT: Early exit for players with no companion system involvement
# Skip menu ticks, AI, XP tracking — just run marker failsafe
execute unless entity @s[tag=Pets.ActivePet] unless entity @s[tag=Pets.ActiveMenu] unless entity @s[tag=Pets.InMenu] unless entity @s[tag=Pets.InMenuV2] run return run execute positioned 0 -60 0 run function evercraft:companions/handler/player/test_for_marker

# Migrate old Pet Menu items to new Companion Catalogue (adds consumable for right-click)
# Detects any PetMenuKey sword missing the consumable component (old version)
execute store success score #t ec.var run clear @s wooden_sword[custom_data~{PetMenuKey:1b},!consumable] 0
execute if score #t ec.var matches 1 run clear @s wooden_sword[custom_data~{PetMenuKey:1b},!consumable]
execute if score #t ec.var matches 1 run loot give @s loot evercraft:companions/menu

# Old menu system (v1) - keeping for backwards compatibility
execute as @s[tag=Pets.ActiveMenu,tag=!Pets.InMenuV2] run function evercraft:companions/handler/menu/follow
execute as @s[tag=Pets.InMenu,tag=!Pets.InMenuV2] if predicate evercraft:companions/clicked_item run function evercraft:companions/handler/menu/detection/listener

# New menu system (v2) - item display based
execute as @s[tag=Pets.InMenuV2] run function evercraft:companions/handler/menu_v2/tick

execute if predicate evercraft:companions/clear_item run function evercraft:companions/handler/menu/clear

scoreboard players operation #exp_to_gain Pets.EXP = @s Pets.PlayerEXP
scoreboard players operation #exp_to_gain Pets.EXP -= @s Pets.PreviousPlayerEXP

execute as @s[tag=Pets.ActivePet] run function evercraft:companions/handler/active_pet/ai

scoreboard players operation @s Pets.PreviousPlayerEXP = @s Pets.PlayerEXP

# --------------------------------------------------------------------------------- #

# Fail safe to test for per player marker database.
execute positioned 0 -60 0 run function evercraft:companions/handler/player/test_for_marker