# ============================================================
# PRESTIGE — Reset Exploration & World Tree
# Categories: exploration, statistics
# ============================================================

# Consume the token
clear @s carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"exploration"}] 1

# Revoke all exploration advancements
advancement revoke @s from evercraft:alternate/exploration_root

# Re-grant root
advancement grant @s only evercraft:alternate/exploration_root

# Decrement total (74 exploration advancements minus root)
scoreboard players remove @s ach.total 73

# Increment prestige counter
scoreboard players add @s ach.prestige_exploration 1

# Grant prestige reward
function evercraft:achievements/prestige/prestige_reward

# Announcement
tellraw @s ["",{text:""},{text:"✦ ",color:"gold"},{text:"PRESTIGE! ",color:"aqua",bold:true},{text:"Exploration & World ",color:"aqua"},{text:"tree reset!",color:"gray"}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Prestige Level: ",color:"white"},{score:{name:"@s",objective:"ach.prestige_exploration"},color:"yellow",bold:true}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Advancements will re-earn over the next few seconds...",color:"gray",italic:true}]

# Effects
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 0.5
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.7 2.0
particle totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.3 50
