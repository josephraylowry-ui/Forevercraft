# Show active challenge progress
# Calculate delta for stat-based challenges
scoreboard players set #goal adv.temp 0
scoreboard players set #progress adv.temp 0

# Delta-based: progress = current_stat - baseline
execute if score @s adv.chal_id matches 1 run scoreboard players operation #progress adv.temp = @s adv.stat_walk
execute if score @s adv.chal_id matches 1 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 1 run scoreboard players set #goal adv.temp 10000

execute if score @s adv.chal_id matches 3 run scoreboard players operation #progress adv.temp = @s adv.stat_hit
execute if score @s adv.chal_id matches 3 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 3 run scoreboard players set #goal adv.temp 50

execute if score @s adv.chal_id matches 6 run scoreboard players operation #progress adv.temp = @s adv.stat_crouch
execute if score @s adv.chal_id matches 6 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 6 run scoreboard players set #goal adv.temp 5000

execute if score @s adv.chal_id matches 7 run scoreboard players operation #progress adv.temp = @s adv.stat_hit
execute if score @s adv.chal_id matches 7 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 7 run scoreboard players set #goal adv.temp 200

execute if score @s adv.chal_id matches 9 run scoreboard players operation #progress adv.temp = @s adv.stat_quests
execute if score @s adv.chal_id matches 9 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 9 run scoreboard players set #goal adv.temp 25

execute if score @s adv.chal_id matches 11 run scoreboard players operation #progress adv.temp = @s adv.stat_mobs
execute if score @s adv.chal_id matches 11 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 11 run scoreboard players set #goal adv.temp 500

execute if score @s adv.chal_id matches 12 run scoreboard players operation #progress adv.temp = @s adv.stat_fish
execute if score @s adv.chal_id matches 12 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 12 run scoreboard players set #goal adv.temp 100

execute if score @s adv.chal_id matches 13 run scoreboard players operation #progress adv.temp = @s adv.stat_mine
execute if score @s adv.chal_id matches 13 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 13 run scoreboard players set #goal adv.temp 5000

execute if score @s adv.chal_id matches 14 run scoreboard players operation #progress adv.temp = @s adv.stat_mine
execute if score @s adv.chal_id matches 14 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 14 run scoreboard players set #goal adv.temp 500

execute if score @s adv.chal_id matches 15 run scoreboard players operation #progress adv.temp = @s adv.stat_harvest
execute if score @s adv.chal_id matches 15 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 15 run scoreboard players set #goal adv.temp 1000

execute if score @s adv.chal_id matches 16 run scoreboard players operation #progress adv.temp = @s adv.stat_smelt
execute if score @s adv.chal_id matches 16 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 16 run scoreboard players set #goal adv.temp 500

execute if score @s adv.chal_id matches 17 run scoreboard players operation #progress adv.temp = @s adv.stat_struct
execute if score @s adv.chal_id matches 17 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 17 run scoreboard players set #goal adv.temp 10

# Timer-based challenges: progress = chal_prog directly
execute if score @s adv.chal_id matches 2 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 2 run scoreboard players set #goal adv.temp 60

execute if score @s adv.chal_id matches 4 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 4 run scoreboard players set #goal adv.temp 50

execute if score @s adv.chal_id matches 5 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 5 run scoreboard players set #goal adv.temp 600

execute if score @s adv.chal_id matches 8 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 8 run scoreboard players set #goal adv.temp 604800

execute if score @s adv.chal_id matches 10 run scoreboard players operation #progress adv.temp = @s adv.stat_pets100
execute if score @s adv.chal_id matches 10 run scoreboard players set #goal adv.temp 3

# Display
tellraw @s [{text:"✦ ",color:"gold"},{text:"Active Challenge — ",color:"dark_purple"},{text:"Progress: ",color:"gray"},{score:{name:"#progress",objective:"adv.temp"},color:"gold"},{text:"/",color:"gray"},{score:{name:"#goal",objective:"adv.temp"},color:"gold"},{text:" ",color:"gray"},{text:"[Cancel]",color:"red",click_event:{action:"run_command",command:"/trigger adv.challenge set -1"}}]
