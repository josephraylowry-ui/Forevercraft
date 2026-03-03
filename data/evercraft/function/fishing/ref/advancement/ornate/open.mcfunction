# Open Ornate Crate
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/ornate/1
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/ornate/1
experience add @s 100 points
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your fishing crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
advancement revoke @s only evercraft:fishing/core/ornate/open
