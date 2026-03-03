# Guidestone — On Place
# Called by place_guidestone advancement when player places a guidestone (custom lodestone)
# The advancement uses match_tool to ensure only guidestones trigger this, not regular lodestones
# Run as: the player

# Revoke advancement immediately for re-detection
advancement revoke @s only evercraft:guidestone/place_guidestone

# Detect the color variant from remaining stack or offhand
# After placing, the item count decremented but custom_data is still readable
# We check mainhand first, then offhand, default to amethyst
# Store both color name and skin texture value for the item_display
data modify storage evercraft:guidestone temp_color set value "guidestone"
data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MDc4MTQ5MzE4MywKICAicHJvZmlsZUlkIiA6ICIzYWE3NzRlYjRiNmY0MzlkODA1NDJiNWIzYjFmNzY5ZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJUaGVSb3NlUXVlZW4xOTIiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmYyZDcxOTc1NDc3NWI1NTJkNTFlZmQ5OWExOWZhN2Q1NTkyM2RlN2NhZjk4Y2YwNmY1MjZmMmFkYzE0ZWJkYSIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"

execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"crimson"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_crimson"
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"crimson"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MDc4MTUxODY3MywKICAicHJvZmlsZUlkIiA6ICJiZTFkOTJiYTkwY2E0NzMwYTIyMzQ2MTIxZWM2MTNmMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJUZW5zb3JCeXRlIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2Y1MGJmYWQ2Mjk1ZjFlMjBiNDk5ZjQ4NTNhYWUzZDA4MDg2YzQxMDJlMDE2ZWE4OTQzMzNiOTM1MThjNDRmODYiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"verdant"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_verdant"
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"verdant"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MDc4MTU3NDY2MiwKICAicHJvZmlsZUlkIiA6ICJmMTBmYjBlNTkxOTE0YmZhYjIzMDU1NGFlMTc2ZWFlMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJNeHN0aWNEYXZlIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzUwMGQwOTA5ZDEyZDZkZTE0OWM2ODliYmQ4MWU0MTlmY2QyNjhmZmI1YThiMDE1YjA1YmYzYWUzOWYwYjQyMTUiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"azure"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_azure"
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"azure"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MDc4MTUzNzMzNCwKICAicHJvZmlsZUlkIiA6ICI0OWIzODUyNDdhMWY0NTM3YjBmN2MwZTFmMTVjMTc2NCIsCiAgInByb2ZpbGVOYW1lIiA6ICJiY2QyMDMzYzYzZWM0YmY4IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2ZlNzBhNzJhNWUzNGM0NTE5NzcyNTdjMzU0NWJmMmQ4MzY0Njc1MWM1YzBlNTUyMTJhNWI5NWViZDU5MWZiYWMiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"solar"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_solar"
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"solar"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MDc4MTU1NTAyNSwKICAicHJvZmlsZUlkIiA6ICI5N2VmNDYyMzdhNGY0ZTQxYWY2ZTljYjg2MTdmNzc2OSIsCiAgInByb2ZpbGVOYW1lIiA6ICJKaWw2NyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS81NTA3NjczMDA1NjU2NTA5NGExMTBkMjNmNzY0ZjI1MjdjYjY3N2ZiMzc4ZGFjMWJmMzE2NTZmZTBmYzlhM2QwIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="

execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"crimson"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_crimson"
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"crimson"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MDc4MTUxODY3MywKICAicHJvZmlsZUlkIiA6ICJiZTFkOTJiYTkwY2E0NzMwYTIyMzQ2MTIxZWM2MTNmMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJUZW5zb3JCeXRlIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2Y1MGJmYWQ2Mjk1ZjFlMjBiNDk5ZjQ4NTNhYWUzZDA4MDg2YzQxMDJlMDE2ZWE4OTQzMzNiOTM1MThjNDRmODYiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"verdant"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_verdant"
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"verdant"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MDc4MTU3NDY2MiwKICAicHJvZmlsZUlkIiA6ICJmMTBmYjBlNTkxOTE0YmZhYjIzMDU1NGFlMTc2ZWFlMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJNeHN0aWNEYXZlIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzUwMGQwOTA5ZDEyZDZkZTE0OWM2ODliYmQ4MWU0MTlmY2QyNjhmZmI1YThiMDE1YjA1YmYzYWUzOWYwYjQyMTUiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"azure"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_azure"
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"azure"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MDc4MTUzNzMzNCwKICAicHJvZmlsZUlkIiA6ICI0OWIzODUyNDdhMWY0NTM3YjBmN2MwZTFmMTVjMTc2NCIsCiAgInByb2ZpbGVOYW1lIiA6ICJiY2QyMDMzYzYzZWM0YmY4IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2ZlNzBhNzJhNWUzNGM0NTE5NzcyNTdjMzU0NWJmMmQ4MzY0Njc1MWM1YzBlNTUyMTJhNWI5NWViZDU5MWZiYWMiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"solar"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_solar"
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"solar"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MDc4MTU1NTAyNSwKICAicHJvZmlsZUlkIiA6ICI5N2VmNDYyMzdhNGY0ZTQxYWY2ZTljYjg2MTdmNzc2OSIsCiAgInByb2ZpbGVOYW1lIiA6ICJKaWw2NyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS81NTA3NjczMDA1NjU2NTA5NGExMTBkMjNmNzY0ZjI1MjdjYjY3N2ZiMzc4ZGFjMWJmMzE2NTZmZTBmYzlhM2QwIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="

# Extract custom name from the guidestone item for registration
# custom_name can be a plain string OR a compound with .text — try both approaches
# First try the full component (works if it's a plain string from anvil rename)
# Then try .text subfield (works if it's a compound from give command)
# Fails gracefully if last item was placed (item consumed, slot empty).
data modify storage evercraft:guidestone temp_custom_name_text set value ""
execute if items entity @s weapon.mainhand lodestone[custom_data~{guidestone:1b}] run data modify storage evercraft:guidestone temp_custom_name_text set from entity @s SelectedItem.components."minecraft:custom_name"
execute if items entity @s weapon.mainhand lodestone[custom_data~{guidestone:1b}] if data entity @s SelectedItem.components."minecraft:custom_name".text run data modify storage evercraft:guidestone temp_custom_name_text set from entity @s SelectedItem.components."minecraft:custom_name".text
execute if items entity @s weapon.offhand lodestone[custom_data~{guidestone:1b}] if data storage evercraft:guidestone {temp_custom_name_text:""} run data modify storage evercraft:guidestone temp_custom_name_text set from entity @s equipment.offhand.components."minecraft:custom_name"
execute if items entity @s weapon.offhand lodestone[custom_data~{guidestone:1b}] if data entity @s equipment.offhand.components."minecraft:custom_name".text run data modify storage evercraft:guidestone temp_custom_name_text set from entity @s equipment.offhand.components."minecraft:custom_name".text

# Store the placing player's name for the registry owner field and default naming
data modify storage evercraft:guidestone temp_player_name set value "Unknown"

# Find the placed block: scan nearby for a lodestone without a marker
# The player just placed it, so it's the closest lodestone within ~6 blocks without ec.gs_marker nearby
# Use a short raycast from eye position to find the targeted block
# Initialize counter to 0 — ec.gs_temp is shared and may have stale values from other systems
scoreboard players set @s ec.gs_temp 0
execute at @s anchored eyes run function evercraft:guidestone/raycast_place
