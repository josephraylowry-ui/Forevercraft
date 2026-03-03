# Lore discovery achievement checks
execute as @a[scores={ach.lore_found=1..}] unless entity @s[advancements={evercraft:alternate/collection/lore/ooh_glowie=true}] run advancement grant @s only evercraft:alternate/collection/lore/ooh_glowie
execute as @a[scores={ach.lore_found=10..}] unless entity @s[advancements={evercraft:alternate/collection/lore/curious_collector=true}] run advancement grant @s only evercraft:alternate/collection/lore/curious_collector
execute as @a[scores={ach.lore_found=25..}] unless entity @s[advancements={evercraft:alternate/collection/lore/fragment_finder=true}] run advancement grant @s only evercraft:alternate/collection/lore/fragment_finder
execute as @a[scores={ach.lore_found=50..}] unless entity @s[advancements={evercraft:alternate/collection/lore/historys_echo=true}] run advancement grant @s only evercraft:alternate/collection/lore/historys_echo
execute as @a[scores={ach.lore_found=100..}] unless entity @s[advancements={evercraft:alternate/collection/lore/the_archivist=true}] run advancement grant @s only evercraft:alternate/collection/lore/the_archivist
execute as @a[scores={ach.lore_sets=1..}] unless entity @s[advancements={evercraft:alternate/collection/lore/first_story=true}] run advancement grant @s only evercraft:alternate/collection/lore/first_story
execute as @a[scores={ach.lore_sets=3..}] unless entity @s[advancements={evercraft:alternate/collection/lore/tale_weaver=true}] run advancement grant @s only evercraft:alternate/collection/lore/tale_weaver
execute as @a[scores={ach.lore_sets=7..}] unless entity @s[advancements={evercraft:alternate/collection/lore/lorebook_keeper=true}] run advancement grant @s only evercraft:alternate/collection/lore/lorebook_keeper
execute as @a[scores={ach.lore_sets=15..}] unless entity @s[advancements={evercraft:alternate/collection/lore/library_of_ages=true}] run advancement grant @s only evercraft:alternate/collection/lore/library_of_ages
# the_omniscient requires all lore sets complete flag — hook needed in lore system
