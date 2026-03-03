# Armored Elytra achievement checks
execute as @a[scores={ach.elytra_merges=1..}] unless entity @s[advancements={evercraft:alternate/collection/elytra/wings_of_steel=true}] run advancement grant @s only evercraft:alternate/collection/elytra/wings_of_steel
execute as @a[scores={ach.elytra_merges=3..}] unless entity @s[advancements={evercraft:alternate/collection/elytra/armored_aviator=true}] run advancement grant @s only evercraft:alternate/collection/elytra/armored_aviator
execute as @a[scores={ach.elytra_merges=5..}] unless entity @s[advancements={evercraft:alternate/collection/elytra/sky_fortress=true}] run advancement grant @s only evercraft:alternate/collection/elytra/sky_fortress
# dragon_rider and complete_wardrobe require specific elytra type flags — hooks needed
