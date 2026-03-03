# Bounty — Patron target killed
# Run as player who had the active bounty

# Grant tier-specific rewards
execute if score @s ec.bnt_tier matches 2 run function evercraft:bounty/reward/contract
execute if score @s ec.bnt_tier matches 3 run function evercraft:bounty/reward/commission
execute if score @s ec.bnt_tier matches 4 run function evercraft:bounty/reward/expedition
execute if score @s ec.bnt_tier matches 5 run function evercraft:bounty/reward/heroic

# Clear bounty state
scoreboard players set @s ec.bnt_tier 0
scoreboard players set @s ec.bnt_biome -1
scoreboard players set @s ec.bnt_timer 0
scoreboard players set @s ec.bnt_spawned 0
scoreboard players set @s ec.bnt_owner 0

# Announcement
tellraw @a [{text:"  ",color:"red",bold:true},{selector:"@s",color:"gold",bold:true},{text:" has completed a Patron Bounty!",color:"red"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.0 1.0
title @s subtitle {text:"Bounty Complete!",color:"gold",bold:true}
title @s title {text:"",color:"gold"}

# Track kills
scoreboard players add @s ec.bnt_kills 1
