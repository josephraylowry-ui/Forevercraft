# ============================================================
# Inscription Stones — Summon Marker (macro)
# Called with {rune:"<type>"}. Run at placed block position as the player.
# ============================================================

# Summon marker at block center
$summon marker ~ ~0.5 ~ {Tags:["ec.inscr_stone","ec.inscr_$(rune)","ec.inscr_new"]}

# Increment player's stone count
scoreboard players add @s ec.inscr_count 1

# Feedback
$tellraw @s [{text:"[Inscription] ",color:"dark_purple"},{text:"$(rune) Inscription Stone placed!",color:"light_purple"},{text:" (",color:"gray"},{score:{name:"@s",objective:"ec.inscr_count"},color:"white"},{text:"/3)",color:"gray"}]
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.8 1.0
particle minecraft:enchant ~ ~1 ~ 0.3 0.5 0.3 1 20
