# Housing Decoration — Block Placed
# Fires when a player places any decorative block (advancement reward)
# Only counts if player is in their home zone

# Revoke for reuse
advancement revoke @s only evercraft:housing/place_decoration

# Only count if player is in their home zone
execute unless score @s hs.in_zone matches 1 run return 0

# Increment decoration score
scoreboard players add @s hs.decor 1

# Milestone checks (every 25 blocks)
execute if score @s hs.decor matches 25 run function evercraft:housing/decoration/milestone {count:"25",tier:"Novice Decorator",color:"green"}
execute if score @s hs.decor matches 50 run function evercraft:housing/decoration/milestone {count:"50",tier:"Interior Designer",color:"aqua"}
execute if score @s hs.decor matches 100 run function evercraft:housing/decoration/milestone {count:"100",tier:"Master Architect",color:"gold"}
execute if score @s hs.decor matches 200 run function evercraft:housing/decoration/milestone {count:"200",tier:"Legendary Builder",color:"light_purple"}

# Subtle feedback every 10 blocks
scoreboard players operation #hs_dec_mod hs.temp = @s hs.decor
scoreboard players set #10_temp hs.temp 10
scoreboard players operation #hs_dec_mod hs.temp %= #10_temp hs.temp
execute if score #hs_dec_mod hs.temp matches 0 run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 0.2 1.8
