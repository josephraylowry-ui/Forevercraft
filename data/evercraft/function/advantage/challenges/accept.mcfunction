# Accept a challenge
# #chal_val adv.temp = challenge ID (1-17)

# Check if player already has an active challenge
execute if score @s adv.chal_id matches 1.. run return run tellraw @s [{text:"You already have an active challenge! ",color:"red"},{text:"[Cancel it]",color:"gray",click_event:{action:run_command,command:"/trigger adv.challenge set -1"}}]

# Check cancel lockout (1 day = 72000 gametime ticks)
execute store result score #now adv.temp run time query gametime
scoreboard players operation #elapsed adv.temp = #now adv.temp
scoreboard players operation #elapsed adv.temp -= @s adv.chal_cancel
# Remaining minutes = (72000 - elapsed) / 1200
scoreboard players set #lockout adv.temp 72000
scoreboard players operation #lockout adv.temp -= #elapsed adv.temp
scoreboard players operation #lockout adv.temp /= #1200 adv.temp
scoreboard players add #lockout adv.temp 1
execute if score @s adv.chal_cancel matches 1.. if score #elapsed adv.temp matches ..71999 run return run tellraw @s [{text:"You cancelled a challenge recently. ",color:"red"},{text:"Locked for ~",color:"gray"},{score:{name:"#lockout",objective:"adv.temp"},color:"yellow"},{text:" min.",color:"gray"}]

# Set the initial challenge ID from click
scoreboard players operation @s adv.chal_id = #chal_val adv.temp

# Randomize variant for multi-challenge trees (50/50)
# Agility: 1 (Marathon) or 2 (Speedster)
execute if score @s adv.chal_id matches 1 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 1 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 2
# Evasion: 4 (Ghost) or 5 (Untouched)
execute if score @s adv.chal_id matches 4 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 4 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 5
# Vitality: 7 (Tank) or 8 (Deathless)
execute if score @s adv.chal_id matches 7 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 7 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 8
# Mining: 13 (Deep Core) or 14 (Fortunate)
execute if score @s adv.chal_id matches 13 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 13 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 14

# Map challenge ID to tree ID
execute if score @s adv.chal_id matches 1..2 run scoreboard players set @s adv.chal_tree 1
execute if score @s adv.chal_id matches 3 run scoreboard players set @s adv.chal_tree 2
execute if score @s adv.chal_id matches 4..5 run scoreboard players set @s adv.chal_tree 3
execute if score @s adv.chal_id matches 6 run scoreboard players set @s adv.chal_tree 4
execute if score @s adv.chal_id matches 7..8 run scoreboard players set @s adv.chal_tree 5
execute if score @s adv.chal_id matches 9 run scoreboard players set @s adv.chal_tree 6
execute if score @s adv.chal_id matches 10 run scoreboard players set @s adv.chal_tree 7
execute if score @s adv.chal_id matches 11 run scoreboard players set @s adv.chal_tree 8
execute if score @s adv.chal_id matches 12 run scoreboard players set @s adv.chal_tree 9
execute if score @s adv.chal_id matches 13..14 run scoreboard players set @s adv.chal_tree 10
execute if score @s adv.chal_id matches 15 run scoreboard players set @s adv.chal_tree 11
execute if score @s adv.chal_id matches 16 run scoreboard players set @s adv.chal_tree 12
execute if score @s adv.chal_id matches 17 run scoreboard players set @s adv.chal_tree 13

# Store baseline stat value for delta-tracking challenges
# For timer challenges (2, 5, 8), start at 0
execute if score @s adv.chal_id matches 2 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 4 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 5 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 8 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 10 run scoreboard players set @s adv.chal_prog 0

# For stat-delta challenges, store current stat as baseline
execute if score @s adv.chal_id matches 1 run scoreboard players operation @s adv.chal_prog = @s adv.stat_walk
execute if score @s adv.chal_id matches 3 run scoreboard players operation @s adv.chal_prog = @s adv.stat_hit
execute if score @s adv.chal_id matches 6 run scoreboard players operation @s adv.chal_prog = @s adv.stat_crouch
execute if score @s adv.chal_id matches 7 run scoreboard players operation @s adv.chal_prog = @s adv.stat_hit
execute if score @s adv.chal_id matches 9 run scoreboard players operation @s adv.chal_prog = @s adv.stat_quests
execute if score @s adv.chal_id matches 11 run scoreboard players operation @s adv.chal_prog = @s adv.stat_mobs
execute if score @s adv.chal_id matches 12 run scoreboard players operation @s adv.chal_prog = @s adv.stat_fish
execute if score @s adv.chal_id matches 13 run scoreboard players operation @s adv.chal_prog = @s adv.stat_mine
execute if score @s adv.chal_id matches 14 run scoreboard players operation @s adv.chal_prog = @s adv.stat_mine
execute if score @s adv.chal_id matches 15 run scoreboard players operation @s adv.chal_prog = @s adv.stat_harvest
execute if score @s adv.chal_id matches 16 run scoreboard players operation @s adv.chal_prog = @s adv.stat_smelt
execute if score @s adv.chal_id matches 17 run scoreboard players operation @s adv.chal_prog = @s adv.stat_struct

# Reset 75% milestone flag
scoreboard players set @s adv.chal_75 0

# Clear any cancel lockout (successful accept resets it)
scoreboard players set @s adv.chal_cancel 0

# Feedback — show challenge name and goal
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.2
tellraw @s [{text:"✦ ",color:"gold"},{text:"Challenge accepted!",color:"green"}]
execute if score @s adv.chal_id matches 1 run tellraw @s [{text:"  "},{text:"Marathon",color:"aqua",bold:true},{text:" — Walk 10,000 blocks",color:"gray"},{text:" (100 XP + 10 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 2 run tellraw @s [{text:"  "},{text:"Speedster",color:"aqua",bold:true},{text:" — Sprint 60s nonstop",color:"gray"},{text:" (15 XP + 1 token)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 3 run tellraw @s [{text:"  "},{text:"Marksman",color:"yellow",bold:true},{text:" — Land 50 critical hits",color:"gray"},{text:" (30 XP + 3 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 4 run tellraw @s [{text:"  "},{text:"Ghost",color:"white",bold:true},{text:" — Dodge 50 attacks",color:"gray"},{text:" (77 XP + 7 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 5 run tellraw @s [{text:"  "},{text:"Untouched",color:"white",bold:true},{text:" — No damage for 10 min",color:"gray"},{text:" (30 XP + 3 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 6 run tellraw @s [{text:"  "},{text:"Phantom",color:"dark_gray",bold:true},{text:" — Sneak 5,000 blocks",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 7 run tellraw @s [{text:"  "},{text:"Tank",color:"red",bold:true},{text:" — Take 200 HP damage",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 8 run tellraw @s [{text:"  "},{text:"Deathless",color:"red",bold:true},{text:" — Don't die for 7 days",color:"gray"},{text:" (77 XP + 7 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 9 run tellraw @s [{text:"  "},{text:"Grinder",color:"dark_purple",bold:true},{text:" — Complete 25 quests",color:"gray"},{text:" (100 XP + 10 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 10 run tellraw @s [{text:"  "},{text:"Pack Alpha",color:"green",bold:true},{text:" — Max 3 pets",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 11 run tellraw @s [{text:"  "},{text:"Slayer",color:"dark_red",bold:true},{text:" — Kill 500 mobs",color:"gray"},{text:" (100 XP + 10 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 12 run tellraw @s [{text:"  "},{text:"Perfect Cast",color:"blue",bold:true},{text:" — Catch 100 fish",color:"gray"},{text:" (15 XP + 1 token)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 13 run tellraw @s [{text:"  "},{text:"Deep Core",color:"gold",bold:true},{text:" — Mine 5,000 blocks",color:"gray"},{text:" (100 XP + 10 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 14 run tellraw @s [{text:"  "},{text:"Fortunate",color:"gold",bold:true},{text:" — Mine 500 ores",color:"gray"},{text:" (15 XP + 1 token)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 15 run tellraw @s [{text:"  "},{text:"Green Thumb",color:"green",bold:true},{text:" — Harvest 1,000 crops",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 16 run tellraw @s [{text:"  "},{text:"Iron Chef",color:"gray",bold:true},{text:" — Smelt 500 items",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 17 run tellraw @s [{text:"  "},{text:"Cartographer",color:"dark_aqua",bold:true},{text:" — Find 10 structure crates",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]
