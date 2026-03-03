# Fishing Crate - On Catch (advancement reward)
# Triggered by fishing_rod_hooked advancement, fires every time player catches something

# Revoke immediately so it triggers again on next catch
advancement revoke @s only evercraft:fishing/core/catch

# Roll for crate
function evercraft:fishing/ref/check_crate

# Charm 2x: extra crate roll when charm is active
execute if score @s mt.charm_timer matches 1.. run function evercraft:fishing/ref/check_crate

# Fishing Derby bonus: 50% chance for extra crate roll (1.5x total crate rate)
execute if score #cal_event_id ec.var matches 4 store result score #cal_derby_roll cal.temp run random value 1..2
execute if score #cal_event_id ec.var matches 4 if score #cal_derby_roll cal.temp matches 1 run function evercraft:fishing/ref/check_crate

# Fishing Derby scoring (if active)
execute if score #cal_event_id ec.var matches 4 run function evercraft:calendar/events/fishing_derby/score_catch

# Message in a Bottle — 2% chance to catch on any fishing success
function evercraft:bottles/try_catch
