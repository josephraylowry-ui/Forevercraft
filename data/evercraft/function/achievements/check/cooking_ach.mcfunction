# Cooking achievement checks
execute as @a[scores={ach.meals_cooked=1..}] unless entity @s[advancements={evercraft:alternate/gathering/cooking/first_bite=true}] run advancement grant @s only evercraft:alternate/gathering/cooking/first_bite
execute as @a[scores={ach.meals_cooked=5..}] unless entity @s[advancements={evercraft:alternate/gathering/cooking/short_order_cook=true}] run advancement grant @s only evercraft:alternate/gathering/cooking/short_order_cook
execute as @a[scores={ach.meals_cooked=15..}] unless entity @s[advancements={evercraft:alternate/gathering/cooking/kitchen_apprentice=true}] run advancement grant @s only evercraft:alternate/gathering/cooking/kitchen_apprentice
execute as @a[scores={ach.meals_cooked=30..}] unless entity @s[advancements={evercraft:alternate/gathering/cooking/sous_chef=true}] run advancement grant @s only evercraft:alternate/gathering/cooking/sous_chef
execute as @a[scores={ach.meals_cooked=50..}] unless entity @s[advancements={evercraft:alternate/gathering/cooking/chef_de_partie=true}] run advancement grant @s only evercraft:alternate/gathering/cooking/chef_de_partie
execute as @a[scores={ach.meals_cooked=200..}] unless entity @s[advancements={evercraft:alternate/gathering/cooking/culinary_virtuoso=true}] run advancement grant @s only evercraft:alternate/gathering/cooking/culinary_virtuoso
execute as @a[scores={ach.meals_cooked=500..}] unless entity @s[advancements={evercraft:alternate/gathering/cooking/master_of_the_flame=true}] run advancement grant @s only evercraft:alternate/gathering/cooking/master_of_the_flame
execute as @a[scores={ach.recipes_learned=15..}] unless entity @s[advancements={evercraft:alternate/gathering/cooking/five_star_review=true}] run advancement grant @s only evercraft:alternate/gathering/cooking/five_star_review
# battle_rations, feast_master, the_complete_cookbook require specific recipe completion flags — hooks needed in cooking system
