# Butterfly — Chaos Wings: Instant kill
# Runs as the target entity

kill @s

# Visual and sound effects
particle minecraft:explosion ~ ~1 ~ 0.3 0.3 0.3 0.1 5
particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.5 20
playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 0.8 1.5

# Announce
execute as @a[distance=..32] run title @s actionbar {text:"Chaos Wings!",color:"light_purple",bold:true}
