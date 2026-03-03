function evercraft:companions/handler/active_pet/abilities/reset_perks

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[2].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #current_level Pets.EXP = #value Pets.Calc

# Load relationship multiplier (defaults to 100 = 1.0x if not set)
execute as @a[predicate=evercraft:companions/check_id, limit=1] run function evercraft:companions/handler/relationship/load_rp
execute unless score @a[predicate=evercraft:companions/check_id, limit=1] Pets.RelMult matches 1.. run scoreboard players set #rel_mult Pets.Calc 100
execute if score @a[predicate=evercraft:companions/check_id, limit=1] Pets.RelMult matches 1.. run scoreboard players operation #rel_mult Pets.Calc = @a[predicate=evercraft:companions/check_id, limit=1] Pets.RelMult

$function evercraft:companions/handler/active_pet/abilities/passive/$(signature)

# Apply relationship multiplier to attack damage attribute
function evercraft:companions/handler/relationship/apply_multiplier