# Codex Hub — Set Section Title
# Updates the title text_display based on adv.gui_section scoreboard
# Run as the player

execute if score @s adv.gui_section matches 1 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Advantage Trees \u2726",color:"gold",bold:true}
execute if score @s adv.gui_section matches 2 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Challenges \u2726",color:"red",bold:true}
execute if score @s adv.gui_section matches 3 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Tier Cosmetics \u2726",color:"aqua",bold:true}
execute if score @s adv.gui_section matches 4 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Artifact Collection \u2726",color:"light_purple",bold:true}
execute if score @s adv.gui_section matches 5 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Travel Journal \u2726",color:"dark_aqua",bold:true}
execute if score @s adv.gui_section matches 6 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Lore Discovery \u2726",color:"yellow",bold:true}
execute if score @s adv.gui_section matches 7 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Party \u2726",color:"dark_purple",bold:true}
execute if score @s adv.gui_section matches 8 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Classes \u2726",color:"dark_red",bold:true}
