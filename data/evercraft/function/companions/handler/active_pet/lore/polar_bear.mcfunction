# Polar Bear Pet Lore Update
# Updates dynamic lore values on level-up

execute as @a[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/polar_bear
