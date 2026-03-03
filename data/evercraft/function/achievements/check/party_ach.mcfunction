# Party achievement checks
execute as @a[scores={ach.parties_formed=1..}] unless entity @s[advancements={evercraft:alternate/companions/party/stronger_together=true}] run advancement grant @s only evercraft:alternate/companions/party/stronger_together
execute as @a[scores={ach.combos_triggered=5..}] unless entity @s[advancements={evercraft:alternate/companions/party/battle_buddies=true}] run advancement grant @s only evercraft:alternate/companions/party/battle_buddies
execute as @a[scores={ach.combos_triggered=25..}] unless entity @s[advancements={evercraft:alternate/companions/party/rally_cry_master=true}] run advancement grant @s only evercraft:alternate/companions/party/rally_cry_master
# pack_tactics_pro, shield_wall, field_medic require specific combo type flags — hooks needed in party combo system
# dungeon_party, boss_raid_party require party+dungeon/boss integration — hooks needed
# band_of_legends requires all combo types discovered — hook needed
