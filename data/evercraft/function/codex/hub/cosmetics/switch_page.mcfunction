# Cosmetics Section — Switch Page (Section 3)
# Macro arg: operation ("add" = next page, "remove" = previous page)
# Kills current page content, updates gui_page, spawns new page content
# 3 pages: Page 1 = Tier Cosmetics, Page 2 = Crate Cosmetics, Page 3 = Boss Titles
# Run as/at the player

# Calculate new page: add 1 or remove 1, then wrap 1-3
$execute if score @s adv.gui_page matches 1.. run scoreboard players $(operation) @s adv.gui_page 1
execute if score @s adv.gui_page matches 0 run scoreboard players set @s adv.gui_page 3
execute if score @s adv.gui_page matches 4 run scoreboard players set @s adv.gui_page 1

# Kill all cosmetics page-specific content
kill @e[type=text_display,tag=Adv.CosmPage,distance=..7]
kill @e[type=interaction,tag=Adv.CosmPage,distance=..7]

# Update title text based on page
execute if score @s adv.gui_page matches 1 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Tier Cosmetics \u2726",color:"aqua",bold:true}
execute if score @s adv.gui_page matches 2 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Crate Cosmetics \u2726",color:"light_purple",bold:true}
execute if score @s adv.gui_page matches 3 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Boss Titles \u2726",color:"dark_red",bold:true}

# Spawn new page content
execute if score @s adv.gui_page matches 1 run function evercraft:codex/hub/cosmetics/spawn
execute if score @s adv.gui_page matches 2 run function evercraft:codex/hub/cosmetics/spawn_crate
execute if score @s adv.gui_page matches 3 run function evercraft:codex/hub/cosmetics/spawn_boss_titles

# Page switch sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
