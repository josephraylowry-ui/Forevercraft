# Fishing Rod Artifact — Base enchant application (un-awakened only)
# Awakened rods get enchants from weapon mastery system instead
# Called from accessories tick for players holding artifact fishing rods

# Petalwhip — Lure I (un-awakened only)
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"ornate_blossom_fishing_rod"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] unless items entity @s weapon.mainhand *[enchantments~[{enchantment:"minecraft:lure",levels:{min:1}}]] run item modify entity @s weapon.mainhand evercraft:fishing_lure_1
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"ornate_blossom_fishing_rod"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run tag @s add ec.rod_enchants
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"ornate_blossom_fishing_rod"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run return 0

# Infernal Hook — Lure II (un-awakened only)
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] unless items entity @s weapon.mainhand *[enchantments~[{enchantment:"minecraft:lure",levels:{min:1}}]] run item modify entity @s weapon.mainhand evercraft:fishing_lure_2
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run tag @s add ec.rod_enchants
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run return 0

# Tempest Lip Ripper — Tidal Grip: Lure III + LoTS III (un-awakened only)
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"mythical_anglers_lip_ripper"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] unless items entity @s weapon.mainhand *[enchantments~[{enchantment:"minecraft:lure",levels:{min:1}}]] run item modify entity @s weapon.mainhand evercraft:fishing_lure_3
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"mythical_anglers_lip_ripper"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] unless items entity @s weapon.mainhand *[enchantments~[{enchantment:"minecraft:luck_of_the_sea",levels:{min:1}}]] run item modify entity @s weapon.mainhand evercraft:fishing_luck_3
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"mythical_anglers_lip_ripper"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run tag @s add ec.rod_enchants