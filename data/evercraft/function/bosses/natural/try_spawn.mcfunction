# World Boss — Natural Spawn Attempt
# Called as a random online player

# Tag this player for the announcement
tag @s add wb.summoner
tag @s add wb.natural_spawn

# Summon a temp marker at the player's position for spreadplayers
execute at @s run summon marker ~ ~ ~ {Tags:["wb.temp_spawn"]}

# Spread the marker 48-64 blocks away from the player on the surface
execute at @s run spreadplayers ~ ~ 48 64 false @e[type=marker,tag=wb.temp_spawn,limit=1]

# Validate: marker must be 20+ blocks from ALL players (retries up to 5 times)
scoreboard players set #wb_spawn_tries ec.var 5
function evercraft:bosses/summon/validate_spawn_pos

# Spawn boss normally (as the player, at player pos — boss appears 5 blocks ahead)
# The existing pick functions handle all setup, scaling, bossbar, etc.
execute at @s if dimension minecraft:overworld run function evercraft:bosses/summon/pick_overworld
execute at @s if dimension minecraft:the_nether run function evercraft:bosses/summon/pick_nether
execute at @s if dimension minecraft:the_end run function evercraft:bosses/summon/pick_end

# Now teleport the boss to the marker's surface location (48-64 blocks away)
execute at @e[type=marker,tag=wb.temp_spawn,limit=1] run tp @e[type=!player,tag=wb.boss,limit=1] ~ ~ ~

# Kill temp marker
kill @e[type=marker,tag=wb.temp_spawn]

# Update natural spawn cooldown to current gametime
execute store result score #wb_natural_cd ec.var run time query gametime

# Clean up natural_spawn tag after announcement has been sent (5s buffer)
schedule function evercraft:bosses/natural/clear_tags 5s
