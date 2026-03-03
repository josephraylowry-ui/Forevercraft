# Pet Combat — Calculate Damage
# Inputs: #pc_level, #pc_clvl, Pets.RelMult on @s
# Output: #pc_final_dmg ec.var (half-hearts, integer)
#
# Formula: final = (tier_base + level * tier_scaling) * (100 + clvl) / 100 * RelMult / 100
# All math in x100 precision, divide at end

# Step 1: Get tier base damage and per-level scaling
# Sets #pc_base (x100) and #pc_scaling (x100)
function evercraft:companions/combat/get_tier_stats

# Step 2: base_dmg_100 = tier_base + (level * tier_scaling)
scoreboard players operation #pc_dmg ec.var = #pc_level ec.var
scoreboard players operation #pc_dmg ec.var *= #pc_scaling ec.var
scoreboard players operation #pc_dmg ec.var += #pc_base ec.var

# Step 3: Apply combat level bonus: dmg * (100 + clvl) / 100 (1% per level, 100% max)
scoreboard players set #pc_mult ec.var 100
scoreboard players operation #pc_mult ec.var += #pc_clvl ec.var
scoreboard players operation #pc_dmg ec.var *= #pc_mult ec.var
scoreboard players operation #pc_dmg ec.var /= #100 ec.const

# Step 4: Apply relationship multiplier: dmg * RelMult / 100
scoreboard players operation #pc_dmg ec.var *= @s Pets.RelMult
scoreboard players operation #pc_dmg ec.var /= #100 ec.const

# Step 5: Convert from x100 to half-hearts (divide by 100)
scoreboard players operation #pc_dmg ec.var /= #100 ec.const

# Minimum 1 damage
execute if score #pc_dmg ec.var matches ..0 run scoreboard players set #pc_dmg ec.var 1

# Store final damage for the macro (int — brigadier float parser accepts plain integers)
execute store result storage evercraft:pet_combat damage int 1 run scoreboard players get #pc_dmg ec.var

# Set cooldown based on tier (stored by get_tier_stats as #pc_cooldown)
scoreboard players operation @s pet.wcd = #pc_cooldown ec.var
