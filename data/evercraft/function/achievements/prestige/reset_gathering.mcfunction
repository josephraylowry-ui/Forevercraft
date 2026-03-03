# ============================================================
# PRESTIGE — Reset Gathering & Crafting Tree
# Categories: mining, fishing, professions, crates
# ============================================================

# Consume the token
clear @s carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"gathering"}] 1

# Revoke all gathering advancements
advancement revoke @s from evercraft:alternate/gathering_root

# Re-grant root
advancement grant @s only evercraft:alternate/gathering_root

# Decrement total (164 gathering advancements minus root)
scoreboard players remove @s ach.total 163

# Increment prestige counter
scoreboard players add @s ach.prestige_gathering 1

# Grant prestige reward
function evercraft:achievements/prestige/prestige_reward

# Announcement
tellraw @s ["",{text:""},{text:"✦ ",color:"gold"},{text:"PRESTIGE! ",color:"green",bold:true},{text:"Gathering & Crafting ",color:"green"},{text:"tree reset!",color:"gray"}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Prestige Level: ",color:"white"},{score:{name:"@s",objective:"ach.prestige_gathering"},color:"yellow",bold:true}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Advancements will re-earn over the next few seconds...",color:"gray",italic:true}]

# Effects
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 0.5
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.7 2.0
particle totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.3 50
