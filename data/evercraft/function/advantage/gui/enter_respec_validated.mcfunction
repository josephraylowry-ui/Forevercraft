# Enter Respec Mode — Validation + Overlay Spawn
# Run as/at the player, facing the anchor

# Check cooldown first
execute if score @s adv.respec_cd matches 1.. run return run function evercraft:advantage/gui/respec_fail_cooldown

# Check for Seed of Forgetting
execute store result score #seed_count adv.temp run clear @s minecraft:wheat_seeds[custom_data~{seed_of_forgetting:1b}] 0
execute if score #seed_count adv.temp matches 0 run return run tellraw @s [{text:"✦ ",color:"gold"},{text:"You need a ",color:"red"},{text:"Seed of Forgetting",color:"dark_purple",bold:true},{text:" to respec. Visit the Nymph!",color:"red"}]

# Passed validation — kill Page 1 content
kill @e[type=text_display,tag=Adv.Page1,distance=..7]
kill @e[type=interaction,tag=Adv.Page1,distance=..7]

# Tag player as in respec mode
tag @s add Adv.RespecMode

# Update title
data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Respec \u2014 Choose a Tree \u2726",color:"red",bold:true}

# Spawn respec overlay
function evercraft:advantage/gui/spawn_respec

# Warning sound
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.7 0.5
