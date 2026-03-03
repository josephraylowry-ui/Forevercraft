# Portal Dial — Detection loop (now 1s schedule, OPT-5 Session 9)
# Detects when a Portal Dial first gets bound to a lodestone and charges 30 levels
# After first bind (30 levels), re-binding to different lodestones is free

# Reschedule first (guarantees we keep ticking regardless of gate)
schedule function evercraft:portal_dial/tick 1s

# Gate: skip logic if no players online
execute unless entity @a run return 0

# Decrement use cooldown for all players (prevents spam from holding right-click)
execute as @a[scores={ec.dial_cd=1..}] run scoreboard players remove @s ec.dial_cd 1

# Check mainhand: has lodestone_tracker AND portal_dial BUT NOT yet portal_dial_bound
execute as @a if items entity @s weapon.mainhand compass[custom_data~{portal_dial:true}] unless data entity @s SelectedItem.components."minecraft:custom_data".portal_dial_bound if data entity @s SelectedItem.components."minecraft:lodestone_tracker".target run function evercraft:portal_dial/bind_mainhand

# Check offhand: has lodestone_tracker AND portal_dial BUT NOT yet portal_dial_bound
execute as @a if items entity @s weapon.offhand compass[custom_data~{portal_dial:true}] unless data entity @s equipment.offhand.components."minecraft:custom_data".portal_dial_bound if data entity @s equipment.offhand.components."minecraft:lodestone_tracker".target run function evercraft:portal_dial/bind_offhand

