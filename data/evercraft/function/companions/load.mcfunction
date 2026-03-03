data remove storage evercraft:companions uninstalled

advancement revoke @a only evercraft:companions/add_to_player

scoreboard objectives add Pets.Timer dummy
scoreboard objectives add Pets.ID dummy
scoreboard objectives add Pets.Count dummy
scoreboard objectives add Pets.Menu dummy
scoreboard objectives add Pets.MenuPage dummy
scoreboard objectives add Pets.Calc dummy
scoreboard objectives add Pets.EXP dummy
scoreboard objectives add Pets.PlayerEXP xp
scoreboard objectives add Pets.PreviousPlayerEXP dummy
scoreboard objectives add Pets.Temp dummy

# Relationship system scoreboards
scoreboard objectives add Pets.RP dummy
scoreboard objectives add Pets.RelLevel dummy
scoreboard objectives add Pets.RelMult dummy
scoreboard objectives add Pets.FeedCD dummy
scoreboard objectives add Pets.PetCD dummy

# Kill counter (per active pet session)
scoreboard objectives add Pets.Kills dummy

# Rivalry cooldown
scoreboard objectives add ec.rival_cd dummy

scoreboard players set #0 Pets.Calc 0
scoreboard players set #1 Pets.Calc 1
scoreboard players set #2 Pets.Calc 2
scoreboard players set #5 Pets.Calc 5
scoreboard players set #10 Pets.Calc 10
scoreboard players set #15 Pets.Calc 15
scoreboard players set #100 Pets.Calc 100
scoreboard players set #400 Pets.Calc 400
scoreboard players set #1000 Pets.Calc 1000
scoreboard players set #5000 Pets.Calc 5000
scoreboard players set #25 Pets.Calc 25

# Relationship level thresholds (scaled for 5000 max)
scoreboard players set #RelLvl1 Pets.Calc 500
scoreboard players set #RelLvl2 Pets.Calc 1250
scoreboard players set #RelLvl3 Pets.Calc 2250
scoreboard players set #RelLvl4 Pets.Calc 3500
scoreboard players set #RelLvl5 Pets.Calc 4500

execute unless score #Global Pets.ID matches 0.. run scoreboard players set #Global Pets.ID 0
execute as @a unless score @s Pets.ID matches 0.. run advancement revoke @s only evercraft:companions/new_player

# Relationship system timers
execute unless score #1h Pets.Timer matches 0.. run scoreboard players set #1h Pets.Timer 72000
execute unless score #3d Pets.Timer matches 0.. run scoreboard players set #3d Pets.Timer 5184000

execute unless score #1d Pets.Timer matches 0.. run scoreboard players set #1d Pets.Timer 1728000
execute unless score #18h Pets.Timer matches 0.. run scoreboard players set #18h Pets.Timer 1296000
execute unless score #12h Pets.Timer matches 0.. run scoreboard players set #12h Pets.Timer 864000
execute unless score #3m Pets.Timer matches 0.. run scoreboard players set #3m Pets.Timer 3600
execute unless score #2m30s Pets.Timer matches 0.. run scoreboard players set #2m30s Pets.Timer 3000
execute unless score #2m Pets.Timer matches 0.. run scoreboard players set #2m Pets.Timer 2400
execute unless score #1m30s Pets.Timer matches 0.. run scoreboard players set #1m30s Pets.Timer 1800
execute unless score #1m Pets.Timer matches 0.. run scoreboard players set #1m Pets.Timer 1200
execute unless score #30s Pets.Timer matches 0.. run scoreboard players set #30s Pets.Timer 600
execute unless score #28s Pets.Timer matches 0.. run scoreboard players set #28s Pets.Timer 560
execute unless score #26s Pets.Timer matches 0.. run scoreboard players set #26s Pets.Timer 520
execute unless score #24s Pets.Timer matches 0.. run scoreboard players set #24s Pets.Timer 480
execute unless score #22s Pets.Timer matches 0.. run scoreboard players set #22s Pets.Timer 440
execute unless score #20s Pets.Timer matches 0.. run scoreboard players set #20s Pets.Timer 400
execute unless score #18s Pets.Timer matches 0.. run scoreboard players set #18s Pets.Timer 360
execute unless score #16s Pets.Timer matches 0.. run scoreboard players set #16s Pets.Timer 320
execute unless score #14s Pets.Timer matches 0.. run scoreboard players set #14s Pets.Timer 280
execute unless score #12s Pets.Timer matches 0.. run scoreboard players set #12s Pets.Timer 240
execute unless score #10s Pets.Timer matches 0.. run scoreboard players set #10s Pets.Timer 200
execute unless score #5s Pets.Timer matches 0.. run scoreboard players set #5s Pets.Timer 100
execute unless score #3s Pets.Timer matches 0.. run scoreboard players set #3s Pets.Timer 60

team add Pets.ImmuneToWarden
team modify Pets.ImmuneToWarden friendlyFire false

team add Pets.OreGlow
team modify Pets.OreGlow color aqua

execute in overworld run forceload add 0 0 0 0
execute in overworld run setblock 0 -63 0 barrel{lock:{items:"command_block"}} replace


data modify storage evercraft:companions constants.menu set value [{id:"bookshelf", Slot:18b, count:1, components:{custom_data:{MenuItem:1b}, "minecraft:max_stack_size":1,"minecraft:lore":[{italic:0b, text:"Displays your pet's level,", color:"gray"}, {italic:0b, text:"current exp, and the exp", color:"gray"}, {italic:0b, text:"needed for the next level.", color:"gray"}, "", {italic:0b, text:"No active pet detected", bold:1b, color:"red"}], "minecraft:custom_name":{italic:0b, text:"Pet Leveling Display", bold:1b, color:"aqua"}}}, {count:1, Slot:19b, components:{"minecraft:custom_data":{MenuItem:1b, Visibility:1b},"minecraft:max_stack_size":1, "minecraft:custom_name":{italic:0b, text:"Pet Visibility", bold:1b, color:"yellow"}}, id:"ender_eye"}, {count:1, Slot:20b, components:{"minecraft:custom_data":{MenuItem:1b},"minecraft:max_stack_size":1, tooltip_display:{hide_tooltip:true}}, id:"gray_stained_glass_pane"}, {count:1, Slot:21b, components:{"minecraft:max_stack_size":1,"minecraft:lore":[{color:"gray",italic:false,text:"Click to convert active pet"}, {color:"gray",italic:false,text:"back to an item."}, "", {color:"gray",italic:false,text:"This removes the active pet"}, {color:"gray",italic:false,text:"from your pet list."}], custom_data:{MenuItem:1b} ,"minecraft:custom_name":{bold:true,color:"red",italic:false,text:"Convert pet to item"}}, id:"gray_dye"}, {count:1, Slot:22b, components:{"minecraft:max_stack_size":1,"minecraft:lore":[{color:"gray",italic:false,text:"Click to close the menu"}], custom_data:{MenuItem:1b} ,"minecraft:custom_name":{bold:true,color:"dark_red",italic:false,text:"Close"}}, id:"barrier"}, {count:1, Slot:23b, components:{"minecraft:max_stack_size":1,"minecraft:lore":[{color:"gray",italic:false,text:"Click to despawn your"},{color:"gray",italic:false,text:"active pet"}], custom_data:{MenuItem:1b} ,"minecraft:custom_name":{bold:true,color:"dark_red",italic:false,text:"Despawn Pet"}}, id:"purple_dye"}, {count:1, Slot:24b, components:{"minecraft:custom_data":{MenuItem:1b},"minecraft:max_stack_size":1, tooltip_display:{hide_tooltip:true}}, id:"gray_stained_glass_pane"}, {count:1, Slot:25b, components:{"minecraft:custom_data":{MenuItem:1b},"minecraft:max_stack_size":1, tooltip_display:{hide_tooltip:true}}, id:"gray_stained_glass_pane"}, {count:1, Slot:26b, components:{"minecraft:custom_data":{MenuItem:1b},"minecraft:max_stack_size":1, tooltip_display:{hide_tooltip:true}}, id:"gray_stained_glass_pane"}]

data modify storage evercraft:companions constants.pages set value [{Slot: 26b, count: 1, components: {custom_data: {MenuItem: 1b, PreviousPage:1b}, "minecraft:custom_name": {italic: 0b, text: "Previous Page", bold: 1b, color: "green"}, "minecraft:max_stack_size": 1, "minecraft:lore": [{italic: 0b, text: "To page 1 (1-18)", color: "gray"}]}, id: "arrow"},{Slot: 26b, count: 1, components: {custom_data: {MenuItem: 1b, NextPage:1b}, "minecraft:custom_name": {italic: 0b, text: "Next Page", bold: 1b, color: "green"}, "minecraft:max_stack_size": 1, "minecraft:lore": [{italic: 0b, text: "To page 2 (19-36)", color: "gray"}]}, id: "arrow"}]