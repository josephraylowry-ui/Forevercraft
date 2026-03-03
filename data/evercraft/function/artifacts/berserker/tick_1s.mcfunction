# Berserker — 1-Second Cooldown Tick
# Decrements rage cooldown timer for all berserkers

# Decrement cooldown for all players with active cooldown
scoreboard players remove @a[scores={ec.bk_cd=1..}] ec.bk_cd 1

# Notify when cooldown expires
execute as @a[tag=ec.bk_active,scores={ec.bk_cd=0}] at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 0.8
execute as @a[tag=ec.bk_active,scores={ec.bk_cd=0}] run title @s actionbar {"text":"Rage ready!","color":"dark_red","bold":true}
# Zero out so notification only fires once
execute as @a[tag=ec.bk_active,scores={ec.bk_cd=0}] run scoreboard players set @s ec.bk_cd -1

# Reschedule
schedule function evercraft:artifacts/berserker/tick_1s 1s
