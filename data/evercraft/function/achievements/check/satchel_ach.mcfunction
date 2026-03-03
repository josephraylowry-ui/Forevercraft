# Satchel achievement checks
execute as @a[scores={ach.satchel_artifacts=1..}] unless entity @s[advancements={evercraft:alternate/collection/satchel/pocketful_of_wonders=true}] run advancement grant @s only evercraft:alternate/collection/satchel/pocketful_of_wonders
execute as @a[scores={ach.satchel_artifacts=5..}] unless entity @s[advancements={evercraft:alternate/collection/satchel/trinket_collector=true}] run advancement grant @s only evercraft:alternate/collection/satchel/trinket_collector
execute as @a[scores={ach.satchel_artifacts=10..}] unless entity @s[advancements={evercraft:alternate/collection/satchel/curio_cabinet=true}] run advancement grant @s only evercraft:alternate/collection/satchel/curio_cabinet
execute as @a[scores={ach.satchel_artifacts=20..}] unless entity @s[advancements={evercraft:alternate/collection/satchel/walking_museum=true}] run advancement grant @s only evercraft:alternate/collection/satchel/walking_museum
execute as @a[scores={ach.satchel_artifacts=35..}] unless entity @s[advancements={evercraft:alternate/collection/satchel/artifact_hoarder=true}] run advancement grant @s only evercraft:alternate/collection/satchel/artifact_hoarder
# the_collector requires all slots full flag — hook needed
