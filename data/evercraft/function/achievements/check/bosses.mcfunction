# Boss achievement checks
execute as @a[scores={ach.boss_kills=1..}] unless entity @s[advancements={evercraft:alternate/combat/bosses/something_stirs=true}] run advancement grant @s only evercraft:alternate/combat/bosses/something_stirs
execute as @a[scores={ach.boss_kills=10..}] unless entity @s[advancements={evercraft:alternate/combat/bosses/trophy_hunter=true}] run advancement grant @s only evercraft:alternate/combat/bosses/trophy_hunter
execute as @a[scores={ach.boss_kills=25..}] unless entity @s[advancements={evercraft:alternate/combat/bosses/titan_toppler=true}] run advancement grant @s only evercraft:alternate/combat/bosses/titan_toppler
execute as @a[scores={ach.boss_kills=100..}] unless entity @s[advancements={evercraft:alternate/combat/bosses/hundred_boss_slayer=true}] run advancement grant @s only evercraft:alternate/combat/bosses/hundred_boss_slayer
# World Boss Conqueror — killed all 11 unique bosses at least once
# Count unique bosses killed (wb.k1 through wb.k11 each >= 1)
execute as @a[scores={ach.boss_kills=11..}] unless entity @s[advancements={evercraft:alternate/combat/bosses/world_boss_conqueror=true}] run function evercraft:achievements/check/world_boss_conqueror

# Note: not_even_scratched, overworld_protector, hells_warden, void_breaker, phase_three_survivor, boss_rush, the_hollow_crown
# These require special detection (deathless boss kill, specific boss flags, timed kills) — hooks needed in boss system
