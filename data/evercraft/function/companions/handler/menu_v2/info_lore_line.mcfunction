# Output one lore line and recurse
# Reads from storage evercraft:companions info.lore[0], outputs it, removes it, repeats

# Stop if no more lore lines
execute unless data storage evercraft:companions info.lore[0] run return fail

# Output the first lore line (interpret it as a text component)
tellraw @s [{text:" ",color:"gray"},{nbt:"info.lore[0]",storage:"evercraft:companions",interpret:true}]

# Remove the first entry
data remove storage evercraft:companions info.lore[0]

# Recurse for next line
function evercraft:companions/handler/menu_v2/info_lore_line
