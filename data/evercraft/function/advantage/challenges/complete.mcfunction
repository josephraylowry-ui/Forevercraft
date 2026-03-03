# Challenge Complete — award XP + tokens

# Set rewards based on challenge ID
execute if score @s adv.chal_id matches 1 run data modify storage evercraft:advantage chal_xp set value 100
execute if score @s adv.chal_id matches 1 run data modify storage evercraft:advantage amount set value 10
execute if score @s adv.chal_id matches 2 run data modify storage evercraft:advantage chal_xp set value 15
execute if score @s adv.chal_id matches 2 run data modify storage evercraft:advantage amount set value 1
execute if score @s adv.chal_id matches 3 run data modify storage evercraft:advantage chal_xp set value 30
execute if score @s adv.chal_id matches 3 run data modify storage evercraft:advantage amount set value 3
execute if score @s adv.chal_id matches 4 run data modify storage evercraft:advantage chal_xp set value 77
execute if score @s adv.chal_id matches 4 run data modify storage evercraft:advantage amount set value 7
execute if score @s adv.chal_id matches 5 run data modify storage evercraft:advantage chal_xp set value 30
execute if score @s adv.chal_id matches 5 run data modify storage evercraft:advantage amount set value 3
execute if score @s adv.chal_id matches 6 run data modify storage evercraft:advantage chal_xp set value 50
execute if score @s adv.chal_id matches 6 run data modify storage evercraft:advantage amount set value 5
execute if score @s adv.chal_id matches 7 run data modify storage evercraft:advantage chal_xp set value 50
execute if score @s adv.chal_id matches 7 run data modify storage evercraft:advantage amount set value 5
execute if score @s adv.chal_id matches 8 run data modify storage evercraft:advantage chal_xp set value 77
execute if score @s adv.chal_id matches 8 run data modify storage evercraft:advantage amount set value 7
execute if score @s adv.chal_id matches 9 run data modify storage evercraft:advantage chal_xp set value 100
execute if score @s adv.chal_id matches 9 run data modify storage evercraft:advantage amount set value 10
execute if score @s adv.chal_id matches 10 run data modify storage evercraft:advantage chal_xp set value 50
execute if score @s adv.chal_id matches 10 run data modify storage evercraft:advantage amount set value 5
execute if score @s adv.chal_id matches 11 run data modify storage evercraft:advantage chal_xp set value 100
execute if score @s adv.chal_id matches 11 run data modify storage evercraft:advantage amount set value 10
execute if score @s adv.chal_id matches 12 run data modify storage evercraft:advantage chal_xp set value 15
execute if score @s adv.chal_id matches 12 run data modify storage evercraft:advantage amount set value 1
execute if score @s adv.chal_id matches 13 run data modify storage evercraft:advantage chal_xp set value 100
execute if score @s adv.chal_id matches 13 run data modify storage evercraft:advantage amount set value 10
execute if score @s adv.chal_id matches 14 run data modify storage evercraft:advantage chal_xp set value 15
execute if score @s adv.chal_id matches 14 run data modify storage evercraft:advantage amount set value 1
execute if score @s adv.chal_id matches 15 run data modify storage evercraft:advantage chal_xp set value 50
execute if score @s adv.chal_id matches 15 run data modify storage evercraft:advantage amount set value 5
execute if score @s adv.chal_id matches 16 run data modify storage evercraft:advantage chal_xp set value 50
execute if score @s adv.chal_id matches 16 run data modify storage evercraft:advantage amount set value 5
execute if score @s adv.chal_id matches 17 run data modify storage evercraft:advantage chal_xp set value 50
execute if score @s adv.chal_id matches 17 run data modify storage evercraft:advantage amount set value 5

# Grant XP via macro
function evercraft:advantage/challenges/grant_xp with storage evercraft:advantage

# Grant tokens
function evercraft:advantage/tokens/award with storage evercraft:advantage

# Celebration
tellraw @s [{text:"✦ ",color:"gold",bold:true},{text:"Challenge Complete!",color:"green",bold:true}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.5
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.2 50

# Clear state
scoreboard players set @s adv.chal_id 0
scoreboard players set @s adv.chal_prog 0
scoreboard players set @s adv.chal_tree 0
