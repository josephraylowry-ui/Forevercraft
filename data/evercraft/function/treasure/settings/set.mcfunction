$scoreboard players set $progression mt.var $(progression)

execute if score $progression mt.var matches 1 run function evercraft:treasure/settings/progression/minimal

execute if score $progression mt.var matches 2 run function evercraft:treasure/settings/progression/low

execute if score $progression mt.var matches 3 run function evercraft:treasure/settings/progression/standard

execute if score $progression mt.var matches 4 run function evercraft:treasure/settings/progression/high

execute if score $progression mt.var matches 5 run function evercraft:treasure/settings/progression/extreme

$scoreboard players set $frequency mt.var $(frequency)

execute if score $frequency mt.var matches 1 run function evercraft:treasure/settings/frequency/minimal

execute if score $frequency mt.var matches 2 run function evercraft:treasure/settings/frequency/low

execute if score $frequency mt.var matches 3 run function evercraft:treasure/settings/frequency/standard

execute if score $frequency mt.var matches 4 run function evercraft:treasure/settings/frequency/high

execute if score $frequency mt.var matches 5 run function evercraft:treasure/settings/frequency/extreme

$data modify storage evercraft:treasure/settings loot_table_rolls.initial set value $(loot_table_rolls)

$scoreboard players set $despawn mt.var $(despawn)

execute if score $despawn mt.var matches 1 run function evercraft:treasure/settings/despawn/sloth

execute if score $despawn mt.var matches 2 run function evercraft:treasure/settings/despawn/slow

execute if score $despawn mt.var matches 3 run function evercraft:treasure/settings/despawn/standard

execute if score $despawn mt.var matches 4 run function evercraft:treasure/settings/despawn/fast

execute if score $despawn mt.var matches 5 run function evercraft:treasure/settings/despawn/hypersonic

$data modify storage evercraft:treasure/settings disable_build.initial set value $(disable_build)
$scoreboard players set #disable_build mt.constant $(disable_build)

$data modify storage evercraft:treasure/settings disable_global.initial set value $(disable_global)
$scoreboard players set #disable_global mt.constant $(disable_global)

$data modify storage evercraft:treasure/settings disable_common.initial set value $(disable_common)
$scoreboard players set #disable_common mt.constant $(disable_common)

$data modify storage evercraft:treasure/settings disable_rare.initial set value $(disable_rare)
$scoreboard players set #disable_rare mt.constant $(disable_rare)

$data modify storage evercraft:treasure/settings disable_epic.initial set value $(disable_epic)
$scoreboard players set #disable_epic mt.constant $(disable_epic)

$data modify storage evercraft:treasure/settings disable_mythical.initial set value $(disable_mythical)
$scoreboard players set #disable_mythical mt.constant $(disable_mythical)

$data modify storage evercraft:treasure/settings vanilla_mode.initial set value $(vanilla_mode)
$scoreboard players set $vanilla_mode mt.var $(vanilla_mode)

$data modify storage evercraft:treasure/settings runes.initial set value $(runes)
$scoreboard players set #disable_rune mt.constant $(runes)

$data modify storage evercraft:treasure/settings detonation_mine.initial set value $(detonation_mine)
$scoreboard players set #disable_deto_mine mt.constant $(detonation_mine)

$data modify storage evercraft:treasure/settings silk_touch.initial set value $(silk_touch)
$scoreboard players set #disable_silk_touch mt.constant $(silk_touch)

$data modify storage evercraft:treasure/settings bedrock.initial set value $(bedrock)
$scoreboard players set #disable_indestructible mt.constant $(bedrock)

$data modify storage evercraft:treasure/settings giga_drill.initial set value $(giga_drill)
$scoreboard players set #disable_giga_drill mt.constant $(giga_drill)

# Vanilla mode overrides: disable mythical if vanilla mode is on
execute if score $vanilla_mode mt.var matches 1 run data modify storage evercraft:treasure/settings disable_mythical.initial set value 1
execute if score $vanilla_mode mt.var matches 1 run scoreboard players set #disable_mythical mt.constant 1