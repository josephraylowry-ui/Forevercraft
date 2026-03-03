# Lore Discovery: Pre-cache UID of held lore item for consume detection
# Run as each player, checks mainhand for lore_piece custom_data
# Only caches non-book lore items (books use trigger, not consume)

# Reset cache
scoreboard players set @s ec.lore_cached 0

# If holding a physical lore piece (not written_book), cache its UID
execute if items entity @s weapon.mainhand *[custom_data~{lore_piece:true}] unless items entity @s weapon.mainhand written_book store result score @s ec.lore_cached run data get entity @s SelectedItem.components."minecraft:custom_data".lore_uid
