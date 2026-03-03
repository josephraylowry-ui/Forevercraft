# Runeforge Effects — Tick (1s schedule)
# Applies attribute modifiers based on held runeforged weapon
# OPT: Gate full apply to players holding runeforged weapons only

execute unless entity @a run return run schedule function evercraft:runeforge/effects/tick 1s

# Players holding a runeforged weapon: full remove + re-apply + tag
execute as @a if items entity @s weapon.mainhand *[custom_data~{runeforge:1b}] run tag @s add ec.rf_active
execute as @a[tag=ec.rf_active] run function evercraft:runeforge/effects/apply

# Players who HAD runeforge modifiers but swapped away: strip only (then untag)
execute as @a[tag=ec.rf_was_active,tag=!ec.rf_active] run function evercraft:runeforge/effects/strip

# Update state: current holders get was_active for next tick
tag @a[tag=ec.rf_was_active] remove ec.rf_was_active
tag @a[tag=ec.rf_active] add ec.rf_was_active
tag @a[tag=ec.rf_active] remove ec.rf_active

schedule function evercraft:runeforge/effects/tick 1s
