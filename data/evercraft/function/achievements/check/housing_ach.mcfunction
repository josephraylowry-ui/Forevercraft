# Housing achievement checks
execute as @a[scores={ach.housing_tier=1..}] unless entity @s[advancements={evercraft:alternate/growth/housing/home_sweet_home=true}] run advancement grant @s only evercraft:alternate/growth/housing/home_sweet_home
execute as @a[scores={ach.housing_tier=2..}] unless entity @s[advancements={evercraft:alternate/growth/housing/fixer_upper=true}] run advancement grant @s only evercraft:alternate/growth/housing/fixer_upper
execute as @a[scores={ach.housing_tier=3..}] unless entity @s[advancements={evercraft:alternate/growth/housing/estate_builder=true}] run advancement grant @s only evercraft:alternate/growth/housing/estate_builder
execute as @a[scores={ach.housing_tier=4..}] unless entity @s[advancements={evercraft:alternate/growth/housing/manor_lord=true}] run advancement grant @s only evercraft:alternate/growth/housing/manor_lord
execute as @a[scores={ach.housing_tier=5..}] unless entity @s[advancements={evercraft:alternate/growth/housing/grand_palace=true}] run advancement grant @s only evercraft:alternate/growth/housing/grand_palace
