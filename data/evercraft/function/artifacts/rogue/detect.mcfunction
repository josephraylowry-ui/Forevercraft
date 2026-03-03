# Rogue Dagger Detection — Identify tier and initialize swing timer
# Run as player who just equipped a rogue dagger in mainhand

tag @s add ec.rg_active

# === TIER DETECTION ===
# Each loot table sets rogue_tier:1-6 in custom_data
execute if items entity @s weapon.mainhand *[custom_data~{rogue_tier:1}] run scoreboard players set @s ec.rg_tier 1
execute if items entity @s weapon.mainhand *[custom_data~{rogue_tier:2}] run scoreboard players set @s ec.rg_tier 2
execute if items entity @s weapon.mainhand *[custom_data~{rogue_tier:3}] run scoreboard players set @s ec.rg_tier 3
execute if items entity @s weapon.mainhand *[custom_data~{rogue_tier:4}] run scoreboard players set @s ec.rg_tier 4
execute if items entity @s weapon.mainhand *[custom_data~{rogue_tier:5}] run scoreboard players set @s ec.rg_tier 5
execute if items entity @s weapon.mainhand *[custom_data~{rogue_tier:6}] run scoreboard players set @s ec.rg_tier 6

# === DUAL WIELD CHECK ===
scoreboard players set @s ec.rg_dual 0
execute if items entity @s weapon.offhand *[custom_data~{rogue:true}] run scoreboard players set @s ec.rg_dual 1

# === SET INITIAL SWING TIMER ===
# Single wield timers
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 1 run scoreboard players set @s ec.rg_swing 30
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 2 run scoreboard players set @s ec.rg_swing 24
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 3 run scoreboard players set @s ec.rg_swing 18
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 4 run scoreboard players set @s ec.rg_swing 14
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 5 run scoreboard players set @s ec.rg_swing 10
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 6 run scoreboard players set @s ec.rg_swing 8

# Dual wield timers (70% of normal)
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 1 run scoreboard players set @s ec.rg_swing 21
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 2 run scoreboard players set @s ec.rg_swing 17
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 3 run scoreboard players set @s ec.rg_swing 13
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 4 run scoreboard players set @s ec.rg_swing 10
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 5 run scoreboard players set @s ec.rg_swing 7
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 6 run scoreboard players set @s ec.rg_swing 6
