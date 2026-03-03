# Warden's Echo - Vibration Sense
# Passive: Night Vision
# Sneak while holding in mainhand: all mobs glow
# Called from tick function for players with the accessory

# Check if player has Warden's Echo in inventory
execute unless items entity @s container.* *[custom_data~{artifact:"wardens_echo"}] run return 0

# Passive: Night Vision
effect give @s night_vision 13 0 true

# Check if sneaking with echo in mainhand for active ability
execute if predicate evercraft:sneaking if items entity @s weapon.mainhand *[custom_data~{artifact:"wardens_echo"}] run function evercraft:artifacts/abilities/vibration_sense_activate

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
