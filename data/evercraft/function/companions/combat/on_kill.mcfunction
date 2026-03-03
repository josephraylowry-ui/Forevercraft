# Pet Combat — Mob Killed by Player After Pet Hit
# Advancement reward — revoke and award combat XP

advancement revoke @s only evercraft:companions/combat/mob_kill

# Must have an active pet
execute unless entity @s[tag=Pets.ActivePet] run return 0

# Set search ID
scoreboard players operation #Search Pets.ID = @s Pets.ID

# Increment kill counter
scoreboard players add @s Pets.Kills 1

# Award 3 combat XP for a pet-assisted kill
scoreboard players set #pc_cxp_gain ec.var 3
function evercraft:companions/combat/add_cxp

# Notify player
tellraw @s [{text:"Combat XP ",color:"gold"},{text:"+3",color:"green"},{text:" (pet-assisted kill)",color:"gray"}]
