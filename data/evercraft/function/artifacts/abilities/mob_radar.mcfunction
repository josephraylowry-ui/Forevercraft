# Seer's Compass - Mob Radar
# Passive: Night Vision + Speed I
# Sneak while holding in mainhand: hostile mobs glow
# Called from tick function for players with the accessory

# Check if player has Seer's Compass in inventory
execute unless items entity @s container.* *[custom_data~{artifact:"seers_compass"}] run return 0

# Passive: Night Vision + Speed I
effect give @s night_vision 13 0 true
effect give @s speed 3 0 true

# Check if sneaking with compass in mainhand for active ability
execute if predicate evercraft:sneaking if items entity @s weapon.mainhand *[custom_data~{artifact:"seers_compass"}] run function evercraft:artifacts/abilities/mob_radar_activate

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
