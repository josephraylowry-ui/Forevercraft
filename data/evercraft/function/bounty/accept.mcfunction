# Patron Bounty — Accept a bounty from quest board
# Macro: tier (2-5), biome (0-24), biome_name (display), time_limit (seconds)
# Called with storage evercraft:bounty

# Check not already on a bounty
execute if score @s ec.bnt_tier matches 1.. run tellraw @s [{text:"[Bounty] ",color:"red"},{text:"You already have an active bounty! Cancel it first.",color:"gray"}]
execute if score @s ec.bnt_tier matches 1.. run return 0

# Set bounty parameters
$scoreboard players set @s ec.bnt_tier $(tier)
$scoreboard players set @s ec.bnt_biome $(biome)
$scoreboard players set @s ec.bnt_timer $(time_limit)
scoreboard players set @s ec.bnt_spawned 0

# Assign unique owner ID for per-player entity tracking
scoreboard players add #bnt_next_id ec.var 1
scoreboard players operation @s ec.bnt_owner = #bnt_next_id ec.var

# Announce
tellraw @s [{text:"  ",color:"red",bold:true},{text:"PATRON BOUNTY ACCEPTED",color:"red",bold:true}]
$tellraw @s [{text:"  Target: ",color:"gray"},{text:"Tier $(tier) Patron",color:"red"}]
$tellraw @s [{text:"  Location: ",color:"gray"},{text:"$(biome_name)",color:"green"}]
tellraw @s [{text:"  Travel to the biome to summon the target.",color:"dark_gray",italic:true}]

playsound minecraft:item.goat_horn.sound_4 player @s ~ ~ ~ 0.7 1.2

# Start tick loop
schedule function evercraft:bounty/tick 2s
