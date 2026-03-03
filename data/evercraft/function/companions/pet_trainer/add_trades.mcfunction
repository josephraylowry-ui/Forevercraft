# Add trades to Pet Trainer villager
# Common pets - cheaper (16-24 emeralds)
# Rare pets - moderate (32-48 emeralds)
# Epic pets - expensive (64 emeralds + extra item)

# === COMMON PETS (16-24 emeralds) ===

# Dog - 16 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/dog
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:16},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Cat - 16 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/cat
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:16},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Chicken - 16 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/chicken
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:16},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Rabbit - 16 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/rabbit
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:16},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# === UNCOMMON PETS (24 emeralds) ===

# Turtle - 24 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/turtle
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:24},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Hamster - 24 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/hamster
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:24},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Snail - 24 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/snail
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:24},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# === RARE PETS (32-48 emeralds) ===

# Panda - 32 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/panda
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:32},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Axolotl - 32 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/axolotl
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:32},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Red Parrot - 32 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/red_parrot
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:32},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Dolphin - 32 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/dolphin
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:32},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Pufferfish - 32 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/pufferfish
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:32},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Owl - 48 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/owl
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:48},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Penguin - 48 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/penguin
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:48},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Tiger - 48 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/tiger
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:48},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# === EPIC PETS (64 emeralds) ===

# Elder Guardian - 64 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/elder_guardian
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:64},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Ghast - 64 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/ghast
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:64},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Ant - 64 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/ant
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:64},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

# Worm - 64 emeralds
loot spawn ~ ~10 ~ loot evercraft:companions/pets/worm
execute as @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] run data modify entity @s Item.count set value 1
data modify storage evercraft:companions/temp pet_item set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}] Item
kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{pet:1b}}}}]
data modify entity @s Offers.Recipes append value {max_uses:99,buy:{id:"minecraft:emerald",count:64},sell:{}}
data modify entity @s Offers.Recipes[-1].sell set from storage evercraft:companions/temp pet_item

tellraw @a[distance=..10] {text:"Pet Trainer trades initialized!",color:"gold"}
