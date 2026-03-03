# Enchanted Monocle - Mob Glow
# Passive: Night Vision while held
# Right-click handled via spyglass use advancement
# Called from tick function for players with the accessory

# Check if player has Enchanted Monocle in inventory
execute unless items entity @s container.* *[custom_data~{artifact:"enchanted_monocle"}] run return 0

# Grant Night Vision (always active while held)
effect give @s night_vision 13 0 true

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
