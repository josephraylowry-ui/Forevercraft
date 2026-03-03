# World Boss — Phase Check
# Called as the boss entity, at the boss position (from tick)

# Read current HP
execute store result score #wb_temp ec.var run data get entity @s Health 1

# Phase 1 → Phase 2 transition (HP dropped below 66%)
execute if score #wb_phase ec.var matches 1 if score #wb_temp ec.var <= #wb_p2_threshold ec.var run function evercraft:bosses/phase/to_phase2

# Phase 2 → Phase 3 transition (HP dropped below 33%)
execute if score #wb_phase ec.var matches 2 if score #wb_temp ec.var <= #wb_p3_threshold ec.var run function evercraft:bosses/phase/to_phase3
