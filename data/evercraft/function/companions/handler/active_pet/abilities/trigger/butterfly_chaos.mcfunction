# Butterfly — Chaos Wings: 50/50 chance to one-shot or launch skyward
# Uses same launch effect as Draconic Gale skyward strike

execute store result score #chaos_type Pets.Calc run random value 1..2

# Option 1: Instant kill
execute if score #chaos_type Pets.Calc matches 1 at @s as @e[type=!player,distance=..6,limit=1,sort=nearest,nbt={hurt_time:10s}] run function evercraft:companions/handler/active_pet/abilities/trigger/butterfly_kill

# Option 2: Launch skyward (same as Draconic Gale)
execute if score #chaos_type Pets.Calc matches 2 at @s as @e[type=!player,distance=..6,limit=1,sort=nearest,nbt={hurt_time:10s}] run function evercraft:companions/handler/active_pet/abilities/trigger/butterfly_launch
