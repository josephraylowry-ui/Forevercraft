# ============================================================
# PRESTIGE SYSTEM — Right-click Token Detection
# Detects carrot_on_a_stick usage with prestige_token custom data
# Called every tick from main tick when ec.prestige_use >= 1
# ============================================================

# Route to the correct tab reset based on which token is held
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"combat"}] run function evercraft:achievements/prestige/reset_combat
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"gathering"}] run function evercraft:achievements/prestige/reset_gathering
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"companions"}] run function evercraft:achievements/prestige/reset_companions
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"exploration"}] run function evercraft:achievements/prestige/reset_exploration
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"collection"}] run function evercraft:achievements/prestige/reset_collection
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"growth"}] run function evercraft:achievements/prestige/reset_growth

# Also check offhand
execute if items entity @s weapon.offhand carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"combat"}] run function evercraft:achievements/prestige/reset_combat
execute if items entity @s weapon.offhand carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"gathering"}] run function evercraft:achievements/prestige/reset_gathering
execute if items entity @s weapon.offhand carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"companions"}] run function evercraft:achievements/prestige/reset_companions
execute if items entity @s weapon.offhand carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"exploration"}] run function evercraft:achievements/prestige/reset_exploration
execute if items entity @s weapon.offhand carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"collection"}] run function evercraft:achievements/prestige/reset_collection
execute if items entity @s weapon.offhand carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"growth"}] run function evercraft:achievements/prestige/reset_growth

# Reset the use counter
scoreboard players set @s ec.prestige_use 0
