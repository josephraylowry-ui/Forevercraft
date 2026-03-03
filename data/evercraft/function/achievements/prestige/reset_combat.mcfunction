# ============================================================
# PRESTIGE — Reset Combat & Mobs Tree
# Revokes all combat advancements, re-grants root, awards bonus
# Advancements re-grant automatically on next tick cycles
# ============================================================

# Consume the token
clear @s carrot_on_a_stick[custom_data~{prestige_token:true,prestige_tab:"combat"}] 1

# Revoke all combat advancements (includes the root)
advancement revoke @s from evercraft:alternate/combat_root

# Re-grant the root so the tab stays visible
advancement grant @s only evercraft:alternate/combat_root

# Decrement total (58 combat advancements, minus the root which stays)
scoreboard players remove @s ach.total 57

# Increment prestige counter
scoreboard players add @s ach.prestige_combat 1

# Grant prestige reward
function evercraft:achievements/prestige/prestige_reward

# Announcement
tellraw @s ["",{text:""},{text:"✦ ",color:"gold"},{text:"PRESTIGE! ",color:"red",bold:true},{text:"Combat & Mobs ",color:"red"},{text:"tree reset!",color:"gray"}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Prestige Level: ",color:"white"},{score:{name:"@s",objective:"ach.prestige_combat"},color:"yellow",bold:true}]
tellraw @s ["",{text:"  ",color:"gray"},{text:"Advancements will re-earn over the next few seconds...",color:"gray",italic:true}]

# Effects
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 0.5
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.7 2.0
particle totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.3 50
