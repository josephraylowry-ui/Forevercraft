# Ancient Netherite Core - Apply effects based on level

# === Level 1: Speed I + Haste I ===
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:1b}] run effect give @s minecraft:speed 30 0 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:1b}] run effect give @s minecraft:haste 30 0 true

# === Level 2: Speed I + Haste I + Resistance I + Strength I ===
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:2b}] run effect give @s minecraft:speed 30 0 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:2b}] run effect give @s minecraft:haste 30 0 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:2b}] run effect give @s minecraft:resistance 30 0 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:2b}] run effect give @s minecraft:strength 30 0 true

# === Level 3: All beacon effects at Level I ===
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:3b}] run effect give @s minecraft:speed 30 0 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:3b}] run effect give @s minecraft:haste 30 0 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:3b}] run effect give @s minecraft:resistance 30 0 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:3b}] run effect give @s minecraft:strength 30 0 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:3b}] run effect give @s minecraft:jump_boost 30 0 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:3b}] run effect give @s minecraft:regeneration 30 0 true

# === Level 4: All beacon effects at Level II (Regen stays at I) ===
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:4b}] run effect give @s minecraft:speed 30 1 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:4b}] run effect give @s minecraft:haste 30 1 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:4b}] run effect give @s minecraft:resistance 30 1 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:4b}] run effect give @s minecraft:strength 30 1 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:4b}] run effect give @s minecraft:jump_boost 30 1 true
execute as @a if items entity @s enderchest.* minecraft:beacon[custom_data~{ancient_netherite_core:1b,level:4b}] run effect give @s minecraft:regeneration 30 0 true

schedule function evercraft:artifacts/netherite_core/effects 1s
