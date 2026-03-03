# Luck Potion Dream Rate Bonus — amplifier-specific checks
# Only called when player has active Luck effect (gated by apply.mcfunction)
# We provide the FULL dream rate value here: amplifier + 1.
# Check from highest to lowest with return run for early exit.

# Neutralize vanilla Luck effect's attribute modifier to prevent double-counting.
# In 1.21.5+ the vanilla modifier ID is minecraft:effect.luck.
attribute @s luck modifier remove minecraft:effect.luck

# Amplifier 5 (Luck VI / Mythical): +6 Dream Rate
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:5b}]}] run return run attribute @s luck modifier add ec_luck_potion_bonus 6 add_value

# Amplifier 4 (Luck V / Exquisite): +5 Dream Rate
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:4b}]}] run return run attribute @s luck modifier add ec_luck_potion_bonus 5 add_value

# Amplifier 3 (Luck IV / Ornate): +4 Dream Rate
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:3b}]}] run return run attribute @s luck modifier add ec_luck_potion_bonus 4 add_value

# Amplifier 2 (Luck III / Rare): +3 Dream Rate
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:2b}]}] run return run attribute @s luck modifier add ec_luck_potion_bonus 3 add_value

# Amplifier 1 (Luck II / Uncommon): +2 Dream Rate
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:1b}]}] run return run attribute @s luck modifier add ec_luck_potion_bonus 2 add_value

# Fallback: Amplifier 0 (Luck I / Common): +1 Dream Rate
# Amplifier 0 is the default and may not be stored in entity NBT,
# so we use a fallback instead of an explicit amplifier:0b check.
# This function is only called when the player HAS the Luck effect,
# so if no higher amplifier matched, it must be amplifier 0.
attribute @s luck modifier add ec_luck_potion_bonus 1 add_value
