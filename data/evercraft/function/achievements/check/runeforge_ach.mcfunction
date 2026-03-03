# Runeforge achievement checks
execute as @a[scores={ach.runes_forged=1..}] unless entity @s[advancements={evercraft:alternate/growth/runeforge/rune_awakening=true}] run advancement grant @s only evercraft:alternate/growth/runeforge/rune_awakening
execute as @a[scores={ach.runes_forged=5..}] unless entity @s[advancements={evercraft:alternate/growth/runeforge/rune_scribe=true}] run advancement grant @s only evercraft:alternate/growth/runeforge/rune_scribe
execute as @a[scores={ach.runes_forged=15..}] unless entity @s[advancements={evercraft:alternate/growth/runeforge/runecaster=true}] run advancement grant @s only evercraft:alternate/growth/runeforge/runecaster
execute as @a[scores={ach.runes_forged=30..}] unless entity @s[advancements={evercraft:alternate/growth/runeforge/rune_warden=true}] run advancement grant @s only evercraft:alternate/growth/runeforge/rune_warden
execute as @a[scores={ach.runes_forged=50..}] unless entity @s[advancements={evercraft:alternate/growth/runeforge/arcane_smith=true}] run advancement grant @s only evercraft:alternate/growth/runeforge/arcane_smith
execute as @a[scores={ach.runes_forged=100..}] unless entity @s[advancements={evercraft:alternate/growth/runeforge/runic_grandmaster=true}] run advancement grant @s only evercraft:alternate/growth/runeforge/runic_grandmaster
