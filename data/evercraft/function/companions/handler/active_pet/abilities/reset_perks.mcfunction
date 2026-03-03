# Remove relationship multiplier
attribute @s attack_damage modifier remove evercraft:companions/relationship_bonus

attribute @s knockback_resistance base reset
attribute @s safe_fall_distance base reset
attribute @s jump_strength base reset
attribute @s oxygen_bonus base reset
attribute @s attack_damage base reset
attribute @s fall_damage_multiplier base reset
attribute @s sneaking_speed base reset
attribute @s water_movement_efficiency base reset
attribute @s mining_efficiency base reset
attribute @s movement_speed base reset
attribute @s sweeping_damage_ratio base reset
attribute @s step_height base reset
attribute @s entity_interaction_range base reset
attribute @s max_health base reset
attribute @s scale base reset
attribute @s luck base reset
attribute @s attack_speed base reset
attribute @s attack_knockback base reset
attribute @s explosion_knockback_resistance base reset
tag @s remove Pets.FreezeImmune
attribute @s block_interaction_range base reset
attribute @s armor base reset
attribute @s armor_toughness base reset
attribute @s gravity base reset

effect clear @s absorption
effect clear @s night_vision
effect clear @s dolphins_grace
effect clear @s fire_resistance
effect clear @s resistance
effect clear @s water_breathing
effect clear @s conduit_power
effect clear @s slow_falling
effect clear @s haste
effect clear @s invisibility
effect clear @s speed
effect clear @s strength
effect clear @s regeneration
effect clear @s jump_boost

# Reset Panther evasion bonus (stored in Pets.Temp, variable by level)
execute if entity @s[tag=Pets.Panther] run scoreboard players operation @s adv.evasion -= @s Pets.Temp
execute if entity @s[tag=Pets.Panther] run scoreboard players set @s Pets.Temp 0

tag @s remove Pets.Blue_Dragon
tag @s remove Pets.Chicken
tag @s remove Pets.Claude
tag @s remove Pets.Dog
tag @s remove Pets.Ghast
tag @s remove Pets.Panda
tag @s remove Pets.Penguin
tag @s remove Pets.Phoenix
tag @s remove Pets.Pufferfish
tag @s remove Pets.Reaper
tag @s remove Pets.Red_Dragon
tag @s remove Pets.Red_Parrot
tag @s remove Pets.Golden_Dragon
tag @s remove Pets.Void_Walker
tag @s remove Pets.Time_Weaver
tag @s remove Pets.Wither
tag @s remove Pets.Snow_Fox_Spirit
tag @s remove Pets.Spirit_Wolf

# New Pets (Session 33)
tag @s remove Pets.Duck
tag @s remove Pets.Chick
tag @s remove Pets.Mushroom
tag @s remove Pets.Baby_Potato
tag @s remove Pets.Rascal
tag @s remove Pets.Sporeblossom
tag @s remove Pets.Camel
tag @s remove Pets.Blaze
tag @s remove Pets.Piglin
tag @s remove Pets.Zoglin
tag @s remove Pets.Wooly_Cow
tag @s remove Pets.Mossy_Skeleton
tag @s remove Pets.Creeper
tag @s remove Pets.Enderman
tag @s remove Pets.Monkey
tag @s remove Pets.Hoglin
tag @s remove Pets.Mule
tag @s remove Pets.Frozen_Zombie
tag @s remove Pets.Mossy_Zombie
tag @s remove Pets.Knight
tag @s remove Pets.Panther
tag @s remove Pets.Giraffe
tag @s remove Pets.Koala
tag @s remove Pets.Skeleton_Horse
tag @s remove Pets.Arctic_Fox
tag @s remove Pets.Vex
tag @s remove Pets.Deloris
tag @s remove Pets.Moobloom
tag @s remove Pets.Vindicator
tag @s remove Pets.Piglin_Brute
tag @s remove Pets.Zombified_Piglin
tag @s remove Pets.Iceologer
tag @s remove Pets.Tuff_Golem
tag @s remove Pets.Alien
tag @s remove Pets.Snowman
tag @s remove Pets.Regal_Tiger
tag @s remove Pets.Butterfly
tag @s remove Pets.Red_Panda
tag @s remove Pets.Cow_of_Eden

# Existing pets that were missing
tag @s remove Pets.Allay
tag @s remove Pets.Armadillo
tag @s remove Pets.Bee
tag @s remove Pets.Breeze
tag @s remove Pets.Copper_Golem
tag @s remove Pets.Cow
tag @s remove Pets.Creaking
tag @s remove Pets.Ender_Dragon
tag @s remove Pets.Evoker
tag @s remove Pets.Fox
tag @s remove Pets.Frog
tag @s remove Pets.Goat
tag @s remove Pets.Iron_Golem
tag @s remove Pets.Leviathan
tag @s remove Pets.Llama
tag @s remove Pets.Mooshroom
tag @s remove Pets.Ocelot
tag @s remove Pets.Pig
tag @s remove Pets.Polar_Bear
tag @s remove Pets.Ravager
tag @s remove Pets.Silverfish
tag @s remove Pets.Sniffer
tag @s remove Pets.Squid
tag @s remove Pets.Strider
tag @s remove Pets.Wolf

# Clean up Claude ore markers
kill @e[type=armor_stand, tag=Pets.OreMarker]

team leave @s

weather clear