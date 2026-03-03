# Artifact Biome Affinity - Roll Penalty
# Called when a non-matching artifact would drop
# 96% chance (24/25) to cancel the drop, making it 25x rarer
# Uses random to decide

execute store result score #affinity_roll ec.temp run random value 1..25
# Only keep the artifact if we rolled exactly 1 (1/25 chance = passes through)
execute if score #affinity_roll ec.temp matches 2..25 run return 0
# If we get here (rolled 1), the artifact passes through - caller should proceed
return 1
