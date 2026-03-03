# Fishing Rod Artifact — Remove enchants when switching away
# Only cleans up un-awakened rod enchants (awakened managed by weapon mastery)

# If still holding an un-awakened artifact fishing rod with matching enchants, skip cleanup
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"ornate_blossom_fishing_rod"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run return 0
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run return 0
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"mythical_anglers_lip_ripper"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run return 0

# Remove fishing enchants from whatever they're holding (if it's a fishing rod)
execute if items entity @s weapon.mainhand minecraft:fishing_rod run item modify entity @s weapon.mainhand evercraft:fishing_remove
tag @s remove ec.rod_enchants