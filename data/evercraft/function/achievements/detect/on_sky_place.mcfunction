# Sky Walker — Grant on placing block above Y=300
advancement revoke @s only evercraft:achievements/detect/sky_walker
execute unless entity @s[advancements={evercraft:alternate/secrets/sky_walker=true}] run advancement grant @s only evercraft:alternate/secrets/sky_walker
