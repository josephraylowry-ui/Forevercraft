# Open Mythical Crate - EPIC REWARDS!
tellraw @s [{text:"★ ",color:"gold"},{text:"Opening ",color:"yellow"},{text:"MYTHICAL",color:"gold",bold:true},{text:" crate...",color:"yellow"}]
playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.3 1.5
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/mythical/1
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/mythical/1
experience add @s 500 points
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your fishing crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
advancement revoke @s only evercraft:fishing/core/mythical/open
