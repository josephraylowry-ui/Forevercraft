# One Punch — Grant on first mob kill
# Revoke detect advancement so it can re-trigger (harmless once secret is granted)
advancement revoke @s only evercraft:achievements/detect/one_punch_kill
execute unless entity @s[advancements={evercraft:alternate/secrets/one_punch=true}] run advancement grant @s only evercraft:alternate/secrets/one_punch
