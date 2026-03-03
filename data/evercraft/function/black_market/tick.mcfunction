# ============================================================
# Black Market — 1s Self-Scheduling Tick
# ============================================================
schedule function evercraft:black_market/tick 1s replace

# Gate: no players online = nothing to do
execute unless entity @a run return 0

# Tick the GUI for any players who have the menu open
execute as @a[tag=BM.InMenu] at @s run function evercraft:black_market/gui/tick
