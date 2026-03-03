# Draconic Gale - Tick Function
# Handles Dragon's Spite passive (damage boost at low HP)
# and right-click detection for Wind Gust / Dragon's Breath

# Dragon's Spite: Apply damage boost based on missing health
# At 50% HP = +12.5% damage, at 25% HP = +25% damage
execute as @a if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{artifact:"dragon_fan"}] run function evercraft:artifacts/abilities/dragon_fan/apply_spite

# Right-click detection: Check if player is holding Draconic Gale and pressed use key
# We detect this via the COAS (carrot on a stick) scoreboard if they have a COAS in offhand
# OR we check for sneak + swing for the fire breath mode
