# Journal achievement checks
execute as @a[scores={ach.journal_entries=1..}] unless entity @s[advancements={evercraft:alternate/exploration/journal/dear_diary=true}] run advancement grant @s only evercraft:alternate/exploration/journal/dear_diary
execute as @a[scores={ach.journal_entries=10..}] unless entity @s[advancements={evercraft:alternate/exploration/journal/wayfinder=true}] run advancement grant @s only evercraft:alternate/exploration/journal/wayfinder
# overworld_surveyed, cavern_cartographer, nether_navigator, end_explorer, master_cartographer require region completion flags — hooks in journal system
