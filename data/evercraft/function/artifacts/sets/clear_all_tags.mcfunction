# Clear All Set Bonuses — called when player has no artifact armor
# Removes any active set bonus tags and their effects
# Run as player

# Reset all set piece counts
scoreboard players set @s ec.dragonmaster 0
scoreboard players set @s ec.titan 0
scoreboard players set @s ec.verdant 0
scoreboard players set @s ec.ember 0
scoreboard players set @s ec.ninja 0
scoreboard players set @s ec.cloaked_skull 0
scoreboard players set @s ec.space 0
scoreboard players set @s ec.dragonslayer 0
scoreboard players set @s ec.netherwalker 0
scoreboard players set @s ec.frost 0
scoreboard players set @s ec.wither 0
scoreboard players set @s ec.phantom 0
scoreboard players set @s ec.ocean 0
scoreboard players set @s ec.ender 0
scoreboard players set @s ec.storm 0
scoreboard players set @s ec.nature 0
scoreboard players set @s ec.golem 0
scoreboard players set @s ec.sculk 0
scoreboard players set @s ec.celestial 0
scoreboard players set @s ec.blood 0
scoreboard players set @s ec.shadow 0
scoreboard players set @s ec.crystal 0
scoreboard players set @s ec.journey 0
scoreboard players set @s ec.spelunker 0
scoreboard players set @s ec.infernal 0
scoreboard players set @s ec.ender_dragon 0
scoreboard players set @s ec.fireforged 0

# Remove active 4-piece set bonuses (only call remove if tag exists)
execute if entity @s[tag=dragonslayer_4pc] run function evercraft:artifacts/sets/dragonslayer/remove_4pc
execute if entity @s[tag=dragonslayer_2pc] run function evercraft:artifacts/sets/dragonslayer/remove_2pc
execute if entity @s[tag=netherwalker_4pc] run function evercraft:artifacts/sets/netherwalker/remove_4pc
execute if entity @s[tag=netherwalker_2pc] run function evercraft:artifacts/sets/netherwalker/remove_2pc
execute if entity @s[tag=frost_4pc] run function evercraft:artifacts/sets/frost/remove_4pc
execute if entity @s[tag=frost_2pc] run function evercraft:artifacts/sets/frost/remove_2pc
execute if entity @s[tag=wither_4pc] run function evercraft:artifacts/sets/wither/remove_4pc
execute if entity @s[tag=wither_2pc] run function evercraft:artifacts/sets/wither/remove_2pc
execute if entity @s[tag=phantom_4pc] run function evercraft:artifacts/sets/phantom/remove_4pc
execute if entity @s[tag=phantom_2pc] run function evercraft:artifacts/sets/phantom/remove_2pc
execute if entity @s[tag=ocean_4pc] run function evercraft:artifacts/sets/ocean/remove_4pc
execute if entity @s[tag=ocean_2pc] run function evercraft:artifacts/sets/ocean/remove_2pc
execute if entity @s[tag=ender_4pc] run function evercraft:artifacts/sets/ender/remove_4pc
execute if entity @s[tag=ender_2pc] run function evercraft:artifacts/sets/ender/remove_2pc
execute if entity @s[tag=storm_4pc] run function evercraft:artifacts/sets/storm/remove_4pc
execute if entity @s[tag=storm_2pc] run function evercraft:artifacts/sets/storm/remove_2pc
execute if entity @s[tag=nature_4pc] run function evercraft:artifacts/sets/nature/remove_4pc
execute if entity @s[tag=nature_2pc] run function evercraft:artifacts/sets/nature/remove_2pc
execute if entity @s[tag=golem_4pc] run function evercraft:artifacts/sets/golem/remove_4pc
execute if entity @s[tag=golem_2pc] run function evercraft:artifacts/sets/golem/remove_2pc
execute if entity @s[tag=sculk_4pc] run function evercraft:artifacts/sets/sculk/remove_4pc
execute if entity @s[tag=sculk_2pc] run function evercraft:artifacts/sets/sculk/remove_2pc
execute if entity @s[tag=celestial_4pc] run function evercraft:artifacts/sets/celestial/remove_4pc
execute if entity @s[tag=celestial_2pc] run function evercraft:artifacts/sets/celestial/remove_2pc
execute if entity @s[tag=blood_4pc] run function evercraft:artifacts/sets/blood/remove_4pc
execute if entity @s[tag=blood_2pc] run function evercraft:artifacts/sets/blood/remove_2pc
execute if entity @s[tag=shadow_4pc] run function evercraft:artifacts/sets/shadow/remove_4pc
execute if entity @s[tag=shadow_2pc] run function evercraft:artifacts/sets/shadow/remove_2pc
execute if entity @s[tag=crystal_4pc] run function evercraft:artifacts/sets/crystal/remove_4pc
execute if entity @s[tag=crystal_2pc] run function evercraft:artifacts/sets/crystal/remove_2pc
execute if entity @s[tag=ember_4pc] run function evercraft:artifacts/sets/ember/remove_4pc
execute if entity @s[tag=ember_2pc] run function evercraft:artifacts/sets/ember/remove_2pc
execute if entity @s[tag=ninja_4pc] run function evercraft:artifacts/sets/ninja/remove_4pc
execute if entity @s[tag=ninja_2pc] run function evercraft:artifacts/sets/ninja/remove_2pc
execute if entity @s[tag=cloaked_skull_4pc] run function evercraft:artifacts/sets/cloaked_skull/remove_4pc
execute if entity @s[tag=cloaked_skull_2pc] run function evercraft:artifacts/sets/cloaked_skull/remove_2pc
execute if entity @s[tag=space_4pc] run function evercraft:artifacts/sets/space/remove_4pc
execute if entity @s[tag=space_2pc] run function evercraft:artifacts/sets/space/remove_2pc
execute if entity @s[tag=fireforged_4pc] run function evercraft:artifacts/sets/fireforged/remove_4pc
execute if entity @s[tag=fireforged_2pc] run function evercraft:artifacts/sets/fireforged/remove_2pc

# Remove active 5-piece set bonuses
execute if entity @s[tag=dragonmaster_5pc] run function evercraft:artifacts/sets/dragonmaster/remove_5pc
execute if entity @s[tag=dragonmaster_4pc] run function evercraft:artifacts/sets/dragonmaster/remove_4pc
execute if entity @s[tag=dragonmaster_2pc] run function evercraft:artifacts/sets/dragonmaster/remove_2pc
execute if entity @s[tag=titan_5pc] run function evercraft:artifacts/sets/titan/remove_5pc
execute if entity @s[tag=titan_4pc] run function evercraft:artifacts/sets/titan/remove_4pc
execute if entity @s[tag=titan_2pc] run function evercraft:artifacts/sets/titan/remove_2pc
execute if entity @s[tag=verdant_5pc] run function evercraft:artifacts/sets/verdant/remove_5pc
execute if entity @s[tag=verdant_4pc] run function evercraft:artifacts/sets/verdant/remove_4pc
execute if entity @s[tag=verdant_2pc] run function evercraft:artifacts/sets/verdant/remove_2pc
execute if entity @s[tag=journey_5pc] run function evercraft:artifacts/sets/journey/remove_5pc
execute if entity @s[tag=journey_4pc] run function evercraft:artifacts/sets/journey/remove_4pc
execute if entity @s[tag=journey_2pc] run function evercraft:artifacts/sets/journey/remove_2pc
execute if entity @s[tag=spelunker_5pc] run function evercraft:artifacts/sets/spelunker/remove_5pc
execute if entity @s[tag=spelunker_4pc] run function evercraft:artifacts/sets/spelunker/remove_4pc
execute if entity @s[tag=spelunker_2pc] run function evercraft:artifacts/sets/spelunker/remove_2pc
execute if entity @s[tag=infernal_5pc] run function evercraft:artifacts/sets/infernal/remove_5pc
execute if entity @s[tag=infernal_4pc] run function evercraft:artifacts/sets/infernal/remove_4pc
execute if entity @s[tag=infernal_2pc] run function evercraft:artifacts/sets/infernal/remove_2pc
execute if entity @s[tag=ender_dragon_5pc] run function evercraft:artifacts/sets/ender_dragon/remove_5pc
execute if entity @s[tag=ender_dragon_4pc] run function evercraft:artifacts/sets/ender_dragon/remove_4pc
execute if entity @s[tag=ender_dragon_2pc] run function evercraft:artifacts/sets/ender_dragon/remove_2pc

# Remove per-piece attribute state tags + modifiers
execute if entity @s[tag=ec.titans_plate] run attribute @s max_health modifier remove evercraft:titans_plate_health
execute if entity @s[tag=ec.warriors_crown] run attribute @s attack_damage modifier remove evercraft:warriors_crown_damage
execute if entity @s[tag=ec.fortitude] run attribute @s knockback_resistance modifier remove evercraft:fortitude_kb_resist
execute if entity @s[tag=ec.infernal_dmg] run attribute @s attack_damage modifier remove evercraft:infernal_nether_dmg
tag @s remove ec.titans_plate
tag @s remove ec.warriors_crown
tag @s remove ec.fortitude
tag @s remove ec.infernal_dmg
