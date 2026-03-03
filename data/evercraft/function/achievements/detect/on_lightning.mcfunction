# The Chosen One — Grant if struck by lightning
# Revoke detection so it can re-trigger
advancement revoke @s only evercraft:achievements/detect/lightning_strike
# Grant the secret achievement (no armor check needed — just being struck is rare enough)
execute unless entity @s[advancements={evercraft:alternate/secrets/the_chosen_one=true}] run advancement grant @s only evercraft:alternate/secrets/the_chosen_one
