$gamerule minecraft:spawn_phantoms $(insomnia)
$gamerule minecraft:spawn_wardens $(warden)
$gamerule minecraft:send_command_feedback $(cmdfeedback)
$gamerule minecraft:raids $(raids)
$gamerule minecraft:mob_drops $(mobloot)
$gamerule minecraft:spawn_patrols $(patrols)
$gamerule minecraft:spawn_wandering_traders $(trader)
$gamerule minecraft:mob_griefing $(griefing)
# $gamerule minecraft:locator_bar $(locatorbar)  # locator_bar is not a vanilla gamerule
$gamerule minecraft:max_entity_cramming $(cramming)

execute store result storage eden:temp mob_manager.gamerules.insomnia int 1 run gamerule minecraft:spawn_phantoms
execute if data storage eden:temp mob_manager.gamerules{insomnia:1} run data modify storage eden:settings mob_manager.gamerules.insomnia_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{insomnia:1} run data modify storage eden:settings mob_manager.gamerules.insomnia_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.warden int 1 run gamerule minecraft:spawn_wardens
execute if data storage eden:temp mob_manager.gamerules{warden:1} run data modify storage eden:settings mob_manager.gamerules.warden_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{warden:1} run data modify storage eden:settings mob_manager.gamerules.warden_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.cmdfeedback int 1 run gamerule minecraft:send_command_feedback
execute if data storage eden:temp mob_manager.gamerules{cmdfeedback:1} run data modify storage eden:settings mob_manager.gamerules.cmdfeedback_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{cmdfeedback:1} run data modify storage eden:settings mob_manager.gamerules.cmdfeedback_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.raids int 1 run gamerule minecraft:raids
execute if data storage eden:temp mob_manager.gamerules{raids:1} run data modify storage eden:settings mob_manager.gamerules.raids_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{raids:1} run data modify storage eden:settings mob_manager.gamerules.raids_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.mobloot int 1 run gamerule minecraft:mob_drops
execute if data storage eden:temp mob_manager.gamerules{mobloot:1} run data modify storage eden:settings mob_manager.gamerules.mobloot_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{mobloot:1} run data modify storage eden:settings mob_manager.gamerules.mobloot_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.patrols int 1 run gamerule minecraft:spawn_patrols
execute if data storage eden:temp mob_manager.gamerules{patrols:1} run data modify storage eden:settings mob_manager.gamerules.patrols_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{patrols:1} run data modify storage eden:settings mob_manager.gamerules.patrols_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.trader int 1 run gamerule minecraft:spawn_wandering_traders
execute if data storage eden:temp mob_manager.gamerules{trader:1} run data modify storage eden:settings mob_manager.gamerules.trader_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{trader:1} run data modify storage eden:settings mob_manager.gamerules.trader_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.griefing int 1 run gamerule minecraft:mob_griefing
execute if data storage eden:temp mob_manager.gamerules{griefing:1} run data modify storage eden:settings mob_manager.gamerules.griefing_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{griefing:1} run data modify storage eden:settings mob_manager.gamerules.griefing_initial set value "true"

# execute store result storage eden:temp mob_manager.gamerules.locatorbar int 1 run gamerule minecraft:locator_bar  # locator_bar is not a vanilla gamerule
execute if data storage eden:temp mob_manager.gamerules{locatorbar:1} run data modify storage eden:settings mob_manager.gamerules.locatorbar_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{locatorbar:1} run data modify storage eden:settings mob_manager.gamerules.locatorbar_initial set value "true"

execute store result storage eden:settings mob_manager.gamerules.cramming int 1 run gamerule minecraft:max_entity_cramming

# dialog show @s evercraft:mobs/main  # TODO: dialog registry entry not yet created
