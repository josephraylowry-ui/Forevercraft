# Hoe of Honor — Tick Check
# Detects hoe usage via minecraft.used stat

execute as @a[scores={ec.used_n_hoe=1..}] run function evercraft:artifacts/mythical_tools/hoe_of_honor/on_use
scoreboard players set @a[scores={ec.used_n_hoe=1..}] ec.used_n_hoe 0
