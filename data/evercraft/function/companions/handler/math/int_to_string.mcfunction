# Convert #value Pets.Calc to storage evercraft:companions math.string
# Uses execute store to macro

execute store result storage evercraft:companions math.temp.value int 1 run scoreboard players get #value Pets.Calc
function evercraft:companions/handler/math/int_to_string_macro with storage evercraft:companions math.temp
