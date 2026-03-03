# Cross-system & meta achievement checks
# Total completion milestones
execute as @a[scores={ach.total=200..}] unless entity @s[advancements={evercraft:alternate/secrets/new/total_200=true}] run advancement grant @s only evercraft:alternate/secrets/new/total_200
execute as @a[scores={ach.total=300..}] unless entity @s[advancements={evercraft:alternate/secrets/new/total_300=true}] run advancement grant @s only evercraft:alternate/secrets/new/total_300
execute as @a[scores={ach.total=400..}] unless entity @s[advancements={evercraft:alternate/secrets/new/total_400=true}] run advancement grant @s only evercraft:alternate/secrets/new/total_400
execute as @a[scores={ach.total=500..}] unless entity @s[advancements={evercraft:alternate/secrets/new/total_500=true}] run advancement grant @s only evercraft:alternate/secrets/new/total_500
execute as @a[scores={ach.total=600..}] unless entity @s[advancements={evercraft:alternate/secrets/new/total_600=true}] run advancement grant @s only evercraft:alternate/secrets/new/total_600
execute as @a[scores={ach.total=700..}] unless entity @s[advancements={evercraft:alternate/secrets/new/total_700=true}] run advancement grant @s only evercraft:alternate/secrets/new/total_700

# Village specialization
execute as @a[scores={ach.village_upgrades=1..}] unless entity @s[advancements={evercraft:alternate/growth/village/village_newcomer=true}] run advancement grant @s only evercraft:alternate/growth/village/village_newcomer
execute as @a[scores={ach.village_upgrades=3..}] unless entity @s[advancements={evercraft:alternate/growth/village/village_patron=true}] run advancement grant @s only evercraft:alternate/growth/village/village_patron

# World events
execute as @a[scores={ach.we_starfall=3..}] unless entity @s[advancements={evercraft:alternate/exploration/world_events/storm_rider=true}] run advancement grant @s only evercraft:alternate/exploration/world_events/storm_rider
execute as @a[scores={ach.we_dreaming=5..}] unless entity @s[advancements={evercraft:alternate/exploration/world_events/dream_walker=true}] run advancement grant @s only evercraft:alternate/exploration/world_events/dream_walker
execute as @a[scores={ach.we_rift_echo=3..}] unless entity @s[advancements={evercraft:alternate/exploration/world_events/rift_pioneer=true}] run advancement grant @s only evercraft:alternate/exploration/world_events/rift_pioneer

# Encounters
execute as @a[scores={ach.encounters_done=1..}] unless entity @s[advancements={evercraft:alternate/exploration/encounters/chance_meeting=true}] run advancement grant @s only evercraft:alternate/exploration/encounters/chance_meeting
execute as @a[scores={ach.encounters_done=5..}] unless entity @s[advancements={evercraft:alternate/exploration/encounters/wanderers_fate=true}] run advancement grant @s only evercraft:alternate/exploration/encounters/wanderers_fate
execute as @a[scores={ach.encounters_done=15..}] unless entity @s[advancements={evercraft:alternate/exploration/encounters/fortune_favors_bold=true}] run advancement grant @s only evercraft:alternate/exploration/encounters/fortune_favors_bold
execute as @a[scores={ach.encounters_done=30..}] unless entity @s[advancements={evercraft:alternate/exploration/encounters/encounter_veteran=true}] run advancement grant @s only evercraft:alternate/exploration/encounters/encounter_veteran

# Parties formed
execute as @a[scores={ach.parties_formed=3..}] unless entity @s[advancements={evercraft:alternate/secrets/new/party_animal=true}] run advancement grant @s only evercraft:alternate/secrets/new/party_animal

# === CROSS-SYSTEM CHAIN ACHIEVEMENTS (hidden, multi-condition) ===

# Renaissance Player: 5+ trees, 50+ artifacts, 10+ quests, 1+ bonded pet
execute as @a[scores={ach.trees_unlocked=5..,ec.artifacts_ever=50..,ach.quests_done=10..,ach.pets_bonded=1..}] unless entity @s[advancements={evercraft:alternate/secrets/new/renaissance_player=true}] run advancement grant @s only evercraft:alternate/secrets/new/renaissance_player

# Dream Architect: DR milestone 4+ (DR 20), 100+ artifacts, 10+ unique structures
execute as @a[scores={ec.dr_peak_ms=4..,ec.artifacts_ever=100..,ec.struct_unique=10..}] unless entity @s[advancements={evercraft:alternate/secrets/new/dream_architect=true}] run advancement grant @s only evercraft:alternate/secrets/new/dream_architect

# Beast Master Chef: 1+ eternal bond pet, 20+ meals cooked
execute as @a[scores={ach.pets_eternal=1..,ach.meals_cooked=20..}] unless entity @s[advancements={evercraft:alternate/secrets/new/beast_master_chef=true}] run advancement grant @s only evercraft:alternate/secrets/new/beast_master_chef

# Battle Scholar: 20+ patron kills, 45+ total advantage levels (≈3 trees at 15)
execute as @a[scores={ach.patron_kills=20..,ach.total_levels=45..}] unless entity @s[advancements={evercraft:alternate/secrets/new/battle_scholar=true}] run advancement grant @s only evercraft:alternate/secrets/new/battle_scholar

# Fortune's Favorite: 100+ crates opened, DR milestone 3+ (DR 15)
execute as @a[scores={ach.crates_opened=100..,ec.dr_peak_ms=3..}] unless entity @s[advancements={evercraft:alternate/secrets/new/fortunes_favorite=true}] run advancement grant @s only evercraft:alternate/secrets/new/fortunes_favorite

# Master of All: 50+ quests, 100+ trades, 5+ unique structures, 10+ meals
execute as @a[scores={ach.quests_done=50..,ach.adj_trade=100..,ec.struct_unique=5..,ach.meals_cooked=10..}] unless entity @s[advancements={evercraft:alternate/secrets/new/master_of_all=true}] run advancement grant @s only evercraft:alternate/secrets/new/master_of_all
