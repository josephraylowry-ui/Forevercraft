# Javelin Class — Remove / Cleanup
# Run as player who unequipped javelin trident

tag @s remove ec.jv_active
scoreboard players set @s ec.jv_tier 0
scoreboard players set @s ec.jv_id 0
scoreboard players set @s ec.jv_thrown 0
scoreboard players set @s ec.jv_melee 0
scoreboard players set @s ec.jv_hoplite 0
scoreboard players set @s ec.jv_counter 0
# Keep ec.jv_cd running — prevent cooldown exploit by unequipping
