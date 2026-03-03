# Merchant's Coin - Haggle
# Passive: +0.5 Luck attribute
# Hero of the Village I for trade discounts (simulates 10% discount)
# Called from tick function for players with the accessory

# Check if player has Merchant's Coin in inventory
execute unless items entity @s container.* *[custom_data~{artifact:"merchants_coin"}] run return 0

# Apply +0.5 Luck via attribute modifier
attribute @s luck modifier add evercraft:merchants_coin 0.5 add_value

# Apply Hero of the Village I for trade discounts when near villagers
execute if entity @e[type=villager,distance=..8] run effect give @s hero_of_the_village 5 0 true

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
