# Rogue Auto-Swing — Cone Targeting + Damage + Effects
# Run as player at player anchored eyes

# === TAG SWINGER FOR DAMAGE ATTRIBUTION ===
tag @s add ec.rg_swinger

# === TOGGLE DUALITY (alternates 0/1 each swing — used by TBATE ability) ===
scoreboard players add @s ec.rg_duality 1
execute if score @s ec.rg_duality matches 2.. run scoreboard players set @s ec.rg_duality 0

# === BRANCH TO TIER-SPECIFIC SWING ===
# Each tier function handles damage, target count, and per-dagger bonuses
execute if score @s ec.rg_tier matches 1 run function evercraft:artifacts/rogue/swing_t1
execute if score @s ec.rg_tier matches 2 run function evercraft:artifacts/rogue/swing_t2
execute if score @s ec.rg_tier matches 3 run function evercraft:artifacts/rogue/swing_t3
execute if score @s ec.rg_tier matches 4 run function evercraft:artifacts/rogue/swing_t4
execute if score @s ec.rg_tier matches 5 run function evercraft:artifacts/rogue/swing_t5
execute if score @s ec.rg_tier matches 6 run function evercraft:artifacts/rogue/swing_t6

# === CLEANUP ===
tag @s remove ec.rg_swinger

# === RESET SWING TIMER ===
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
