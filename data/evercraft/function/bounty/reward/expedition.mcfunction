# Bounty Reward — Expedition (T5): Exquisite Crate + 500 Rep
loot give @s loot evercraft:achievements/crates/exquisite
experience add @s 500 points

# Reputation
scoreboard players add @s ec.village_rep 500
tellraw @s [{text:"  Bounty Reward: ",color:"gold"},{text:"Exquisite Crate",color:"light_purple"},{text:" + ",color:"gray"},{text:"500 XP",color:"green"},{text:" + ",color:"gray"},{text:"500 Rep",color:"aqua"}]
