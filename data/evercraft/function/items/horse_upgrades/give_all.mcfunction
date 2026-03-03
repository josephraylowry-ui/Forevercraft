# Give all horse upgrade carrots to the executing player
# Usage: /function evercraft:items/horse_upgrades/give_all

loot give @s loot evercraft:horse_items/speed_carrot
loot give @s loot evercraft:horse_items/jump_carrot
loot give @s loot evercraft:horse_items/health_carrot

tellraw @s {text:"Given all horse upgrade carrots!",color:"green",bold:true}
