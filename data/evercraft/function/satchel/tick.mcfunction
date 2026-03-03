# Satchel System — Main Tick (scheduled every 1s)
# Applies passive effects for artifacts stored in satchels

# Apply satchel effects for each player who has a satchel (hotbar, inventory, or inside a bundle)
execute as @a if items entity @s hotbar.* *[custom_data~{satchel:true}] run function evercraft:satchel/apply_effects
execute as @a unless items entity @s hotbar.* *[custom_data~{satchel:true}] if items entity @s inventory.* *[custom_data~{satchel:true}] run function evercraft:satchel/apply_effects
execute as @a unless items entity @s hotbar.* *[custom_data~{satchel:true}] unless items entity @s inventory.* *[custom_data~{satchel:true}] if data entity @s Inventory[{components:{"minecraft:bundle_contents":[{components:{"minecraft:custom_data":{satchel:1b}}}]}}] run function evercraft:satchel/apply_effects

# Reschedule
schedule function evercraft:satchel/tick 1s replace
