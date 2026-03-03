# Tick function for The Forevercraft Codex system
# Detects when players use the codex item → opens hub GUI
# All interactions now go through the entity-based hub (no more shift distinction or triggers)

# (Player existence guaranteed by main tick.mcfunction)

# Check for players using codex item (warped_fungus_on_a_stick with codex tag)
# Any right-click → Hub GUI (no shift/non-shift distinction anymore)
execute as @a[scores={ec.codex_use=1..}] if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{artifact_codex:true}] at @s run function evercraft:codex/hub/open
execute as @a[scores={ec.codex_use=1..}] if items entity @s weapon.offhand warped_fungus_on_a_stick[custom_data~{artifact_codex:true}] at @s run function evercraft:codex/hub/open

# Reset use score
scoreboard players set @a[scores={ec.codex_use=1..}] ec.codex_use 0

# Legacy trigger cleanup — reset any stale old codex trigger values
# OPT: Removed full route function call (59 @a scans) — hub GUI handles everything now
scoreboard players set @a[scores={ec.codex=1..}] ec.codex 0
