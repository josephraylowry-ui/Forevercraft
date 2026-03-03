# ============================================================
# Inscription Stones — Display (show player's active stones)
# Run as the player via /trigger or command
# ============================================================

tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"dark_purple"},{text:"YOUR INSCRIPTION STONES",color:"light_purple",bold:true},{text:" ✦",color:"dark_purple"}]
tellraw @s {text:"  ─────────────────────────────",color:"dark_gray"}

tellraw @s [{text:"  Active: ",color:"gray"},{score:{name:"@s",objective:"ec.inscr_count"},color:"white",bold:true},{text:"/3",color:"gray"}]
tellraw @s {text:""}

# Count each type in world (rough — shows all stones, not just this player's)
execute store result score #inscr_temp ec.var if entity @e[type=marker,tag=ec.inscr_frostbite]
execute if score #inscr_temp ec.var matches 1.. run tellraw @s [{text:"    ❄ ",color:"aqua"},{text:"Frostbite",color:"aqua"},{text:" — Slows & weakens hostile mobs (16 blocks)",color:"gray"}]

execute store result score #inscr_temp ec.var if entity @e[type=marker,tag=ec.inscr_life_steal]
execute if score #inscr_temp ec.var matches 1.. run tellraw @s [{text:"    ♥ ",color:"light_purple"},{text:"Life Steal",color:"light_purple"},{text:" — Regeneration I to players (12 blocks)",color:"gray"}]

execute store result score #inscr_temp ec.var if entity @e[type=marker,tag=ec.inscr_gold_greed]
execute if score #inscr_temp ec.var matches 1.. run tellraw @s [{text:"    ✦ ",color:"gold"},{text:"Gold Greed",color:"gold"},{text:" — +0.25 Dream Rate to players (12 blocks)",color:"gray"}]

execute store result score #inscr_temp ec.var if entity @e[type=marker,tag=ec.inscr_absorption]
execute if score #inscr_temp ec.var matches 1.. run tellraw @s [{text:"    ✦ ",color:"yellow"},{text:"Absorption",color:"yellow"},{text:" — Absorption I to players (12 blocks)",color:"gray"}]

execute store result score #inscr_temp ec.var if entity @e[type=marker,tag=ec.inscr_guardian]
execute if score #inscr_temp ec.var matches 1.. run tellraw @s [{text:"    ✦ ",color:"dark_gray"},{text:"Guardian",color:"dark_gray"},{text:" — +2 Armor to players (12 blocks)",color:"gray"}]

execute store result score #inscr_temp ec.var if entity @e[type=marker,tag=ec.inscr_thornmail]
execute if score #inscr_temp ec.var matches 1.. run tellraw @s [{text:"    ✦ ",color:"green"},{text:"Thornmail",color:"green"},{text:" — Resistance I to players (12 blocks)",color:"gray"}]

execute store result score #inscr_temp ec.var if entity @e[type=marker,tag=ec.inscr_force]
execute if score #inscr_temp ec.var matches 1.. run tellraw @s [{text:"    ✦ ",color:"red"},{text:"Force",color:"red"},{text:" — +10% Attack Damage to players (12 blocks)",color:"gray"}]

execute store result score #inscr_temp ec.var if entity @e[type=marker,tag=ec.inscr_growth]
execute if score #inscr_temp ec.var matches 1.. run tellraw @s [{text:"    ✦ ",color:"dark_green"},{text:"Growth",color:"dark_green"},{text:" — Accelerates crop growth (8 blocks)",color:"gray"}]

tellraw @s {text:"  ─────────────────────────────",color:"dark_gray"}
tellraw @s {text:""}
