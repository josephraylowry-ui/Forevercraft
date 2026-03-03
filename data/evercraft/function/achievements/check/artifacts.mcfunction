# ============================================================
# ACHIEVEMENTS — Artifact Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# Uses ec.artifact_count from Codex system
# ============================================================

# Common
execute as @a[scores={ec.artifact_count=5..}] unless entity @s[advancements={evercraft:alternate/artifacts/common/five_artifacts=true}] run advancement grant @s only evercraft:alternate/artifacts/common/five_artifacts

# Uncommon
execute as @a[scores={ec.artifact_count=10..}] unless entity @s[advancements={evercraft:alternate/artifacts/uncommon/ten_artifacts=true}] run advancement grant @s only evercraft:alternate/artifacts/uncommon/ten_artifacts

# Rare
execute as @a[scores={ec.artifact_count=25..}] unless entity @s[advancements={evercraft:alternate/artifacts/rare/twentyfive_artifacts=true}] run advancement grant @s only evercraft:alternate/artifacts/rare/twentyfive_artifacts
execute as @a[scores={ec.artifact_count=50..}] unless entity @s[advancements={evercraft:alternate/artifacts/rare/fifty_artifacts_rare=true}] run advancement grant @s only evercraft:alternate/artifacts/rare/fifty_artifacts_rare

# Ornate
execute as @a[scores={ec.artifact_count=50..}] unless entity @s[advancements={evercraft:alternate/artifacts/ornate/fifty_artifacts=true}] run advancement grant @s only evercraft:alternate/artifacts/ornate/fifty_artifacts
execute as @a[scores={ec.artifact_count=75..}] unless entity @s[advancements={evercraft:alternate/artifacts/ornate/seventyfive_artifacts=true}] run advancement grant @s only evercraft:alternate/artifacts/ornate/seventyfive_artifacts

# Exquisite
execute as @a[scores={ec.artifact_count=100..}] unless entity @s[advancements={evercraft:alternate/artifacts/exquisite/hundred_artifacts=true}] run advancement grant @s only evercraft:alternate/artifacts/exquisite/hundred_artifacts
execute as @a[scores={ec.artifact_count=150..}] unless entity @s[advancements={evercraft:alternate/artifacts/exquisite/onefifty_artifacts=true}] run advancement grant @s only evercraft:alternate/artifacts/exquisite/onefifty_artifacts
execute as @a[scores={ec.artifact_count=200..}] unless entity @s[advancements={evercraft:alternate/artifacts/exquisite/twohundred_artifacts=true}] run advancement grant @s only evercraft:alternate/artifacts/exquisite/twohundred_artifacts

# Mythical
execute as @a[scores={ec.artifact_count=292..}] unless entity @s[advancements={evercraft:alternate/artifacts/mythical/all_artifacts=true}] run advancement grant @s only evercraft:alternate/artifacts/mythical/all_artifacts

# --- Secret: Artifact Hoarder (50+ artifacts collected) ---
execute as @a[scores={ec.artifact_count=50..}] unless entity @s[advancements={evercraft:alternate/secrets/artifact_hoarder=true}] run advancement grant @s only evercraft:alternate/secrets/artifact_hoarder

# --- Lore: Ancient Secrets (first exquisite artifact found) ---
# Check if player has ANY exquisite artifact collected via codex advancement
execute as @a[scores={ec.artifact_count=1..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/ancient_secrets=true}] if entity @s[advancements={evercraft:artifacts/collected/arm_cannon=true}] run advancement grant @s only evercraft:alternate/exploration/rare/ancient_secrets
execute as @a[scores={ec.artifact_count=1..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/ancient_secrets=true}] if entity @s[advancements={evercraft:artifacts/collected/voidbane=true}] run advancement grant @s only evercraft:alternate/exploration/rare/ancient_secrets
execute as @a[scores={ec.artifact_count=1..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/ancient_secrets=true}] if entity @s[advancements={evercraft:artifacts/collected/soulflame=true}] run advancement grant @s only evercraft:alternate/exploration/rare/ancient_secrets
execute as @a[scores={ec.artifact_count=1..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/ancient_secrets=true}] if entity @s[advancements={evercraft:artifacts/collected/eyelander=true}] run advancement grant @s only evercraft:alternate/exploration/rare/ancient_secrets
execute as @a[scores={ec.artifact_count=1..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/ancient_secrets=true}] if entity @s[advancements={evercraft:artifacts/collected/worldbreaker=true}] run advancement grant @s only evercraft:alternate/exploration/rare/ancient_secrets
execute as @a[scores={ec.artifact_count=1..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/ancient_secrets=true}] if entity @s[advancements={evercraft:artifacts/collected/starfall_axe=true}] run advancement grant @s only evercraft:alternate/exploration/rare/ancient_secrets
execute as @a[scores={ec.artifact_count=1..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/ancient_secrets=true}] if entity @s[advancements={evercraft:artifacts/collected/dragonheart_mace=true}] run advancement grant @s only evercraft:alternate/exploration/rare/ancient_secrets
execute as @a[scores={ec.artifact_count=1..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/ancient_secrets=true}] if entity @s[advancements={evercraft:artifacts/collected/ban_hammer=true}] run advancement grant @s only evercraft:alternate/exploration/rare/ancient_secrets
execute as @a[scores={ec.artifact_count=1..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/ancient_secrets=true}] if entity @s[advancements={evercraft:artifacts/collected/fantasy_trident=true}] run advancement grant @s only evercraft:alternate/exploration/rare/ancient_secrets
execute as @a[scores={ec.artifact_count=1..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/ancient_secrets=true}] if entity @s[advancements={evercraft:artifacts/collected/phoenix_helm=true}] run advancement grant @s only evercraft:alternate/exploration/rare/ancient_secrets
execute as @a[scores={ec.artifact_count=1..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/ancient_secrets=true}] if entity @s[advancements={evercraft:artifacts/collected/glaive=true}] run advancement grant @s only evercraft:alternate/exploration/rare/ancient_secrets
