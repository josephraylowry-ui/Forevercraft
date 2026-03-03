# Hero's Satchel — Main Tick (1s, applies boss artifact effects)
# AoE effects work from inside the Hero's Satchel

# Apply effects for each player who has a hero satchel (hotbar, inventory, or inside a bundle)
execute as @a if items entity @s hotbar.* *[custom_data~{hero_satchel:true}] run function evercraft:hero_satchel/apply_effects
execute as @a unless items entity @s hotbar.* *[custom_data~{hero_satchel:true}] if items entity @s inventory.* *[custom_data~{hero_satchel:true}] run function evercraft:hero_satchel/apply_effects
execute as @a unless items entity @s hotbar.* *[custom_data~{hero_satchel:true}] unless items entity @s inventory.* *[custom_data~{hero_satchel:true}] if data entity @s Inventory[{components:{"minecraft:bundle_contents":[{components:{"minecraft:custom_data":{hero_satchel:1b}}}]}}] run function evercraft:hero_satchel/apply_effects

# Reschedule
schedule function evercraft:hero_satchel/tick 1s replace
