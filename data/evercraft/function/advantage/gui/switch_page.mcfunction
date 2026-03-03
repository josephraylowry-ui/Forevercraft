# Advantage GUI — Switch Page (Section 1: Advantage Trees)
# Macro arg: operation ("add" = next page, "remove" = previous page)
# Kills current page content, updates gui_page, spawns new page content
# 2 pages: Page 1 = Trees, Page 2 = Prestige Abilities
# Run as/at the player

# Calculate new page: add 1 or remove 1, then wrap 1-2
$execute if score @s adv.gui_page matches 1.. run scoreboard players $(operation) @s adv.gui_page 1
execute if score @s adv.gui_page matches 0 run scoreboard players set @s adv.gui_page 2
execute if score @s adv.gui_page matches 3 run scoreboard players set @s adv.gui_page 1

# Clean up respec overlay if active
kill @e[type=text_display,tag=Adv.RespecOverlay,distance=..7]
kill @e[type=interaction,tag=Adv.RespecOverlay,distance=..7]
tag @s remove Adv.RespecMode

# Kill all page-specific content
kill @e[type=text_display,tag=Adv.Page1,distance=..7]
kill @e[type=interaction,tag=Adv.Page1,distance=..7]
kill @e[type=text_display,tag=Adv.Page3,distance=..7]
kill @e[type=interaction,tag=Adv.Page3,distance=..7]

# Update title text based on page
execute if score @s adv.gui_page matches 1 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Advantage Trees \u2726",color:"gold",bold:true}
execute if score @s adv.gui_page matches 2 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Prestige Abilities \u2726",color:"light_purple",bold:true}

# Spawn new page content
execute if score @s adv.gui_page matches 1 run function evercraft:advantage/gui/spawn_trees
execute if score @s adv.gui_page matches 2 run function evercraft:advantage/gui/spawn_page3

# Page switch sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
