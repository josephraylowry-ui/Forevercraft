# ============================================================
# ACHIEVEMENTS — Combat Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# ============================================================

# --- Patron kills ---
execute as @a[scores={ach.patron_kills=5..}] unless entity @s[advancements={evercraft:alternate/combat/uncommon/five_patron_kills=true}] run advancement grant @s only evercraft:alternate/combat/uncommon/five_patron_kills
execute as @a[scores={ach.patron_kills=15..}] unless entity @s[advancements={evercraft:alternate/combat/rare/fifteen_patrons=true}] run advancement grant @s only evercraft:alternate/combat/rare/fifteen_patrons
execute as @a[scores={ach.patron_kills=30..}] unless entity @s[advancements={evercraft:alternate/combat/ornate/thirty_patrons=true}] run advancement grant @s only evercraft:alternate/combat/ornate/thirty_patrons
execute as @a[scores={ach.patron_kills=50..}] unless entity @s[advancements={evercraft:alternate/combat/exquisite/fifty_patrons=true}] run advancement grant @s only evercraft:alternate/combat/exquisite/fifty_patrons
execute as @a[scores={ach.patron_kills=100..}] unless entity @s[advancements={evercraft:alternate/combat/exquisite/hundred_patrons=true}] run advancement grant @s only evercraft:alternate/combat/exquisite/hundred_patrons
execute as @a[scores={ach.patron_kills=200..}] unless entity @s[advancements={evercraft:alternate/combat/mythical/two_hundred_patrons=true}] run advancement grant @s only evercraft:alternate/combat/mythical/two_hundred_patrons

# --- Weapon ability triggers ---
execute as @a[scores={ach.weapon_abilities=10..}] unless entity @s[advancements={evercraft:alternate/combat/common/ten_weapon_abilities=true}] run advancement grant @s only evercraft:alternate/combat/common/ten_weapon_abilities
execute as @a[scores={ach.weapon_abilities=50..}] unless entity @s[advancements={evercraft:alternate/combat/uncommon/fifty_abilities=true}] run advancement grant @s only evercraft:alternate/combat/uncommon/fifty_abilities
execute as @a[scores={ach.weapon_abilities=200..}] unless entity @s[advancements={evercraft:alternate/combat/rare/two_hundred_abilities=true}] run advancement grant @s only evercraft:alternate/combat/rare/two_hundred_abilities
execute as @a[scores={ach.weapon_abilities=500..}] unless entity @s[advancements={evercraft:alternate/combat/ornate/five_hundred_abilities=true}] run advancement grant @s only evercraft:alternate/combat/ornate/five_hundred_abilities
execute as @a[scores={ach.weapon_abilities=1000..}] unless entity @s[advancements={evercraft:alternate/combat/exquisite/thousand_abilities=true}] run advancement grant @s only evercraft:alternate/combat/exquisite/thousand_abilities
execute as @a[scores={ach.weapon_abilities=10000..}] unless entity @s[advancements={evercraft:alternate/combat/mythical/master_all_abilities=true}] run advancement grant @s only evercraft:alternate/combat/mythical/master_all_abilities
