# Satchel — Give specific tier (macro)
# Usage: function evercraft:satchel/give_tier {tier:"rare"}
$loot give @s loot evercraft:satchel/$(tier)
$tellraw @s [{text:"[Satchel] ",color:"gold"},{text:"You received a $(tier) Essentials Satchel!",color:"yellow"}]
