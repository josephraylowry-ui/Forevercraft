# Companion Rivalry — Check for nearby pet owners
# Run as player with Pets.ActivePet, at their position
# Fires a random rivalry message if another pet owner is within 16 blocks
# Called every 30s — cooldown is in cycles (2 = 1 min, 4 = 2 min)

# Cooldown check
execute if score @s ec.rival_cd matches 1.. run scoreboard players remove @s ec.rival_cd 1
execute if score @s ec.rival_cd matches 1.. run return 0

# Check for another player with active pet within 16 blocks (not self)
execute store result score #rival_count ec.temp if entity @a[tag=Pets.ActivePet,distance=1..16]
execute unless score #rival_count ec.temp matches 1.. run return 0

# Set cooldown (4 cycles × 30s = 2 min between messages)
scoreboard players set @s ec.rival_cd 4

# Pick random message (1-8)
execute store result score #rival_msg ec.temp run random value 1..8

# Display rivalry message
execute if score #rival_msg ec.temp matches 1 run tellraw @s [{text:"",color:"gray",italic:true},{text:"Your companion glances at the nearby pet and snorts disapprovingly."}]
execute if score #rival_msg ec.temp matches 2 run tellraw @s [{text:"",color:"gray",italic:true},{text:"Your companion puffs up, trying to look bigger than the other pet."}]
execute if score #rival_msg ec.temp matches 3 run tellraw @s [{text:"",color:"gray",italic:true},{text:"Your companion lets out a low growl toward the rival pet..."}]
execute if score #rival_msg ec.temp matches 4 run tellraw @s [{text:"",color:"gray",italic:true},{text:"Your companion struts around proudly, clearly showing off."}]
execute if score #rival_msg ec.temp matches 5 run tellraw @s [{text:"",color:"gray",italic:true},{text:"The two companions eye each other warily across the path."}]
execute if score #rival_msg ec.temp matches 6 run tellraw @s [{text:"",color:"gray",italic:true},{text:"Your companion turns its nose up at the other pet nearby."}]
execute if score #rival_msg ec.temp matches 7 run tellraw @s [{text:"",color:"gray",italic:true},{text:"Your companion nudges you closer, as if to say 'I'm the better pet.'"}]
execute if score #rival_msg ec.temp matches 8 run tellraw @s [{text:"",color:"gray",italic:true},{text:"Your companion and the nearby pet lock eyes in a silent standoff."}]
