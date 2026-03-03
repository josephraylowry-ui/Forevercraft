# Runeforge Effects — Apply per-player
# Remove all runeforge modifiers, then re-apply based on held weapon

# Remove all possible runeforge modifiers
attribute @s attack_damage modifier remove ec_rf_dmg
attribute @s max_health modifier remove ec_rf_hp
attribute @s attack_speed modifier remove ec_rf_atkspd
attribute @s movement_speed modifier remove ec_rf_speed
attribute @s armor modifier remove ec_rf_armor
attribute @s armor_toughness modifier remove ec_rf_tough
attribute @s luck modifier remove ec_rf_luck

# Frostbite: +1.5 attack damage
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"frostbite"}] run attribute @s attack_damage modifier add ec_rf_dmg 1.5 add_value

# Life Steal: +4 max health
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"life_steal"}] run attribute @s max_health modifier add ec_rf_hp 4.0 add_value

# Backstab: +20% attack speed
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"backstab"}] run attribute @s attack_speed modifier add ec_rf_atkspd 0.2 add_multiplied_total

# Void Strike: +2.5 attack damage
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"void_strike"}] run attribute @s attack_damage modifier add ec_rf_dmg 2.5 add_value

# Ender Shift: +15% movement speed
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"ender_shift"}] run attribute @s movement_speed modifier add ec_rf_speed 0.15 add_multiplied_total

# Thornmail: +3 armor
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"thornmail"}] run attribute @s armor modifier add ec_rf_armor 3.0 add_value

# Stalactite: +2 attack damage, +1 armor
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"stalactite"}] run attribute @s attack_damage modifier add ec_rf_dmg 2.0 add_value
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"stalactite"}] run attribute @s armor modifier add ec_rf_armor 1.0 add_value

# Gold Greed: +1.5 luck (Dream Rate)
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"gold_greed"}] run attribute @s luck modifier add ec_rf_luck 1.5 add_value

# Absorption: +6 max health
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"absorption"}] run attribute @s max_health modifier add ec_rf_hp 6.0 add_value

# Guardian: +3 armor, +1 armor toughness
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"guardian"}] run attribute @s armor modifier add ec_rf_armor 3.0 add_value
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"guardian"}] run attribute @s armor_toughness modifier add ec_rf_tough 1.0 add_value

# Reflect: +5 armor toughness
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"reflect"}] run attribute @s armor_toughness modifier add ec_rf_tough 5.0 add_value

# Force: +1.5 attack damage
execute if items entity @s weapon.mainhand *[custom_data~{rf_type:"force"}] run attribute @s attack_damage modifier add ec_rf_dmg 1.5 add_value
