# Check if current food is pet's favorite (2x bonus)
# Doubles #feedRP if favorite

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Dog/Wolf favorites: Meat items
execute if entity @e[type=item_display, tag=Pet.Dog, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/any_meat run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc
execute if entity @e[type=item_display, tag=Pets.Wolf, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/any_meat run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc

# Cat favorites: Fish
execute if entity @e[type=item_display, tag=Pets.Cat, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/any_fish run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc

# Axolotl favorites: Tropical fish
execute if entity @e[type=item_display, tag=Pets.Axolotl, predicate=evercraft:companions/check_id] if items entity @s weapon.mainhand tropical_fish run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc

# Parrot favorites: Seeds
execute if entity @e[type=item_display, tag=Pets.RedParrot, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/any_seeds run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc

# Bee favorites: Flowers, Honey
execute if entity @e[type=item_display, tag=Pets.Bee, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/bee_favorites run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc

# Undead evercraft:companions/ Rotten flesh, Bones
execute if entity @e[type=item_display, tag=Pets.Wither, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/undead_favorites run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc
execute if entity @e[type=item_display, tag=Pets.Reaper, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/undead_favorites run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc
# Butterfly favorites: Flowers, Honey
execute if entity @e[type=item_display, tag=Pets.Butterfly, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/bee_favorites run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc

# Dragon evercraft:companions/ Blaze powder, Magma cream
execute if entity @e[type=item_display, tag=Pets.RedDragon, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/dragon_favorites run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc
execute if entity @e[type=item_display, tag=Pets.BlueDragon, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/dragon_favorites run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc
execute if entity @e[type=item_display, tag=Pets.GoldenDragon, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/dragon_favorites run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc

# Aquatic evercraft:companions/ Fish
execute if entity @e[type=item_display, tag=Pets.Dolphin, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/any_fish run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc
execute if entity @e[type=item_display, tag=Pets.Turtle, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/any_fish run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc
execute if entity @e[type=item_display, tag=Pets.Pufferfish, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/any_fish run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc
execute if entity @e[type=item_display, tag=Pets.ElderGuardian, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/any_fish run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc
execute if entity @e[type=item_display, tag=Pets.Leviathan, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/any_fish run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc

# Phoenix: Blaze powder
execute if entity @e[type=item_display, tag=Pets.Phoenix, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/dragon_favorites run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc

# Rabbit: Carrots
execute if entity @e[type=item_display, tag=Pets.Rabbit, predicate=evercraft:companions/check_id] if items entity @s weapon.mainhand #minecraft:villager_plantable_seeds run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc

# Panther favorites: Meat
execute if entity @e[type=item_display, tag=Pets.Panther, predicate=evercraft:companions/check_id] if predicate evercraft:companions/food/any_meat run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc

# Red Panda favorites: Sweet berries, bamboo
execute if entity @e[type=item_display, tag=Pets.Red_Panda, predicate=evercraft:companions/check_id] if items entity @s weapon.mainhand sweet_berries run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc
execute if entity @e[type=item_display, tag=Pets.Red_Panda, predicate=evercraft:companions/check_id] if items entity @s weapon.mainhand bamboo run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc

# Cow of Eden favorites: Golden apple, golden carrot
execute if entity @e[type=item_display, tag=Pets.Cow_of_Eden, predicate=evercraft:companions/check_id] if items entity @s weapon.mainhand golden_apple run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc
execute if entity @e[type=item_display, tag=Pets.Cow_of_Eden, predicate=evercraft:companions/check_id] if items entity @s weapon.mainhand golden_carrot run scoreboard players operation #feedRP Pets.Calc *= #2 Pets.Calc
