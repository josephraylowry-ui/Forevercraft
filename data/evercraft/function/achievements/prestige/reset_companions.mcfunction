# ============================================================
# PRESTIGE — Reset Companions & Quests Tree
# Categories: pets, quests
# ============================================================

# Consume the token
clear @s carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"companions"}] 1

# Revoke all companion advancements
advancement revoke @s from evercraft:alternate/companions_root

# Re-grant root
advancement grant @s only evercraft:alternate/companions_root

# Decrement total (139 companion advancements minus root)
scoreboard players remove @s ach.total 138

# Increment prestige counter
scoreboard players add @s ach.prestige_companions 1

# Grant prestige reward
function evercraft:achievements/prestige/prestige_reward

# Announcement
tellraw @s ["",{text:""},{text:"✦ ",color:"gold"},{text:"PRESTIGE! ",color:"yellow",bold:true},{text:"Companions & Quests ",color:"yellow"},{text:"tree reset!",color:"gray"}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Prestige Level: ",color:"white"},{score:{name:"@s",objective:"ach.prestige_companions"},color:"yellow",bold:true}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Advancements will re-earn over the next few seconds...",color:"gray",italic:true}]

# Effects
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 0.5
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.7 2.0
particle totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.3 50
