# Dungeon achievement checks
execute as @a[scores={ach.dungeons_done=1..}] unless entity @s[advancements={evercraft:alternate/combat/dungeons/into_the_dark=true}] run advancement grant @s only evercraft:alternate/combat/dungeons/into_the_dark
execute as @a[scores={ach.dungeons_done=3..}] unless entity @s[advancements={evercraft:alternate/combat/dungeons/crypt_crawler=true}] run advancement grant @s only evercraft:alternate/combat/dungeons/crypt_crawler
execute as @a[scores={ach.dungeons_done=10..}] unless entity @s[advancements={evercraft:alternate/combat/dungeons/dungeon_veteran=true}] run advancement grant @s only evercraft:alternate/combat/dungeons/dungeon_veteran
execute as @a[scores={ach.dungeons_done=25..}] unless entity @s[advancements={evercraft:alternate/combat/dungeons/spelunker_supreme=true}] run advancement grant @s only evercraft:alternate/combat/dungeons/spelunker_supreme
execute as @a[scores={ach.dungeons_done=50..}] unless entity @s[advancements={evercraft:alternate/combat/dungeons/dungeon_legend=true}] run advancement grant @s only evercraft:alternate/combat/dungeons/dungeon_legend
execute as @a[scores={ach.dungeon_no_death=1..}] unless entity @s[advancements={evercraft:alternate/combat/dungeons/flawless_run=true}] run advancement grant @s only evercraft:alternate/combat/dungeons/flawless_run
execute as @a[scores={ach.dungeon_no_death=5..}] unless entity @s[advancements={evercraft:alternate/combat/dungeons/wave_master=true}] run advancement grant @s only evercraft:alternate/combat/dungeons/wave_master
# the_gauntlet_runner requires all unique dungeon flags — hook needed in dungeon system
