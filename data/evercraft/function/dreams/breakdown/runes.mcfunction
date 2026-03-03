# Dream Rate Breakdown — Runes & Runeforge
# Shows inscription stone and runeforge DR bonuses

scoreboard players set #dr_any ec.temp 0

# --- Rune Inscription: Gold Greed (area effect) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:inscr_gold_greed 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"#FFD700"},{text:"Runes:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Gold Greed (Stone)",color:"yellow"},{text:"      +0.25",color:"gold"}]

# --- Runeforge: Gold Greed (weapon enchant) ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_rf_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"#FFD700"},{text:"Runes:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Gold Greed (Weapon)",color:"yellow"},{text:"     +1.5",color:"gold"}]

# --- Merchant's Coin Haggle ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:merchants_coin 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"#FFD700"},{text:"Runes:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Merchant's Haggle",color:"yellow"},{text:"        +0.5",color:"gold"}]
