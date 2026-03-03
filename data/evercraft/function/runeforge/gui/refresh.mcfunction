# Runeforge GUI — Refresh display entities (state-aware)

# Update rune status line based on deposited rune
execute if score @s rf.rune_id matches 0 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value {text:"Rune: Empty",color:"gray"}
execute if score @s rf.rune_id matches 1 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Rune: ",color:"gray"},{text:"Ice Rune",color:"aqua",bold:true},{text:" -> Frostbite",color:"white"}]
execute if score @s rf.rune_id matches 2 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Rune: ",color:"gray"},{text:"Heal Rune",color:"green",bold:true},{text:" -> Life Steal",color:"white"}]
execute if score @s rf.rune_id matches 3 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Rune: ",color:"gray"},{text:"Assassin Rune",color:"dark_red",bold:true},{text:" -> Backstab",color:"white"}]
execute if score @s rf.rune_id matches 4 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Rune: ",color:"gray"},{text:"Black Rune",color:"dark_gray",bold:true},{text:" -> Void Strike",color:"white"}]
execute if score @s rf.rune_id matches 5 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Rune: ",color:"gray"},{text:"End Rune",color:"dark_purple",bold:true},{text:" -> Ender Shift",color:"white"}]
execute if score @s rf.rune_id matches 6 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Rune: ",color:"gray"},{text:"Jungle Rune",color:"dark_green",bold:true},{text:" -> Thornmail",color:"white"}]
execute if score @s rf.rune_id matches 7 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Rune: ",color:"gray"},{text:"Dripstone Rune",color:"gold",bold:true},{text:" -> Stalactite",color:"white"}]
execute if score @s rf.rune_id matches 8 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Rune: ",color:"gray"},{text:"Piglin Rune",color:"gold",bold:true},{text:" -> Gold Greed",color:"white"}]
execute if score @s rf.rune_id matches 9 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Rune: ",color:"gray"},{text:"Sponge Rune",color:"yellow",bold:true},{text:" -> Absorption",color:"white"}]
execute if score @s rf.rune_id matches 10 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Rune: ",color:"gray"},{text:"Ally Rune",color:"blue",bold:true},{text:" -> Guardian",color:"white"}]
execute if score @s rf.rune_id matches 11 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Rune: ",color:"gray"},{text:"Reverse Rune",color:"light_purple",bold:true},{text:" -> Reflect",color:"white"}]
execute if score @s rf.rune_id matches 12 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Rune: ",color:"gray"},{text:"Knockchant Rune",color:"white",bold:true},{text:" -> Force",color:"white"}]
execute if score @s rf.rune_id matches 13 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Rune: ",color:"gray"},{text:"Mysterichant Rune",color:"light_purple",bold:true},{text:" -> ???",color:"white"}]

# State 0: Update forge button (gray)
execute if score @s rf.state matches 0 at @s run data modify entity @e[type=text_display,tag=RF.ForgeText,distance=..7,limit=1] text set value {text:"[ Forge ]",color:"gray",bold:true}

# State 1: Update forge button (red = Start Forging)
execute if score @s rf.state matches 1 at @s run data modify entity @e[type=text_display,tag=RF.ForgeText,distance=..7,limit=1] text set value {text:"[ Start Forging ]",color:"red",bold:true}

# State 2: Forging — calculate and display remaining time
execute if score @s rf.state matches 2 run function evercraft:runeforge/gui/calc_time_remaining
execute if score @s rf.state matches 2 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Forging in progress...",color:"gold",bold:true}]

# State 3: Forge complete
execute if score @s rf.state matches 3 at @s run data modify entity @e[type=text_display,tag=RF.ForgeText,distance=..7,limit=1] text set value {text:"[ Collect ]",color:"gold",bold:true}
execute if score @s rf.state matches 3 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value {text:"Forge Complete!",color:"green",bold:true}
execute if score @s rf.state matches 3 at @s run data modify entity @e[type=text_display,tag=RF.Info,distance=..7,limit=1] text set value {text:"Hold equipment in mainhand and collect",color:"yellow"}

# Sound
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.3 1.5
