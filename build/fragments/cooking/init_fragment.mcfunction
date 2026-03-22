# === PANTRY SYSTEM ===
function evercraft:pantry/load

# === COOKING & CUISINE SYSTEM ===
scoreboard players set #80 ec.const 80
function evercraft:cooking/load



# === CROP AUTO-REPLANT ===
# Track block-mined stats for auto-replant when holding a hoe
scoreboard objectives add ec.rh_wheat minecraft.mined:minecraft.wheat
scoreboard objectives add ec.rh_carrot minecraft.mined:minecraft.carrots
scoreboard objectives add ec.rh_potato minecraft.mined:minecraft.potatoes
scoreboard objectives add ec.rh_beet minecraft.mined:minecraft.beetroots
scoreboard objectives add ec.rh_nwart minecraft.mined:minecraft.nether_wart

# Track ore mining for 3% forging ingredient drops (delta from existing ec.break_* scoreboards)
scoreboard objectives add ec.ore_prev dummy "Ore Mining Previous Total"

