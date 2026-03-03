# Butterfly Effect — On hit, apply random potion effect level 2 to player
# Also 5% chance to one-shot or launch the mob skyward (Chaos Wings)
advancement revoke @s only evercraft:companions/abilities/butterfly

# === Butterfly Effect: Random potion effect level 2 ===
execute store result score #roll Pets.Calc run random value 1..12

execute if score #roll Pets.Calc matches 1 run effect give @s strength 10 1 true
execute if score #roll Pets.Calc matches 2 run effect give @s speed 10 1 true
execute if score #roll Pets.Calc matches 3 run effect give @s haste 10 1 true
execute if score #roll Pets.Calc matches 4 run effect give @s regeneration 10 1 true
execute if score #roll Pets.Calc matches 5 run effect give @s resistance 10 1 true
execute if score #roll Pets.Calc matches 6 run effect give @s fire_resistance 10 0 true
execute if score #roll Pets.Calc matches 7 run effect give @s absorption 10 1 true
execute if score #roll Pets.Calc matches 8 run effect give @s jump_boost 10 1 true
execute if score #roll Pets.Calc matches 9 run effect give @s night_vision 10 0 true
execute if score #roll Pets.Calc matches 10 run effect give @s saturation 3 1 true
execute if score #roll Pets.Calc matches 11 run effect give @s slow_falling 10 0 true
execute if score #roll Pets.Calc matches 12 run effect give @s invisibility 10 0 true

# Visual feedback for Butterfly Effect
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 1 15 force
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 1.8

# === Chaos Wings: 5% chance to one-shot or launch skyward ===
execute store result score #chaos Pets.Calc run random value 1..100
execute if score #chaos Pets.Calc matches 1..5 run function evercraft:companions/handler/active_pet/abilities/trigger/butterfly_chaos

# Achievement tracking
scoreboard players add @s ach.pet_abilities 1
