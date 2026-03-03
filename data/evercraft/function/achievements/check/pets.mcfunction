# ============================================================
# ACHIEVEMENTS — Pet Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# ============================================================

# --- Pet adoption count ---
execute as @a[scores={ach.pets_owned=3..}] unless entity @s[advancements={evercraft:alternate/pets/common/three_pets=true}] run advancement grant @s only evercraft:alternate/pets/common/three_pets
execute as @a[scores={ach.pets_owned=5..}] unless entity @s[advancements={evercraft:alternate/pets/uncommon/five_pets=true}] run advancement grant @s only evercraft:alternate/pets/uncommon/five_pets
execute as @a[scores={ach.pets_owned=10..}] unless entity @s[advancements={evercraft:alternate/pets/uncommon/ten_pets=true}] run advancement grant @s only evercraft:alternate/pets/uncommon/ten_pets
execute as @a[scores={ach.pets_owned=15..}] unless entity @s[advancements={evercraft:alternate/pets/rare/fifteen_pets=true}] run advancement grant @s only evercraft:alternate/pets/rare/fifteen_pets
execute as @a[scores={ach.pets_owned=20..}] unless entity @s[advancements={evercraft:alternate/pets/rare/twenty_pets=true}] run advancement grant @s only evercraft:alternate/pets/rare/twenty_pets
execute as @a[scores={ach.pets_owned=30..}] unless entity @s[advancements={evercraft:alternate/pets/ornate/thirty_pets=true}] run advancement grant @s only evercraft:alternate/pets/ornate/thirty_pets
execute as @a[scores={ach.pets_owned=40..}] unless entity @s[advancements={evercraft:alternate/pets/ornate/forty_pets=true}] run advancement grant @s only evercraft:alternate/pets/ornate/forty_pets
execute as @a[scores={ach.pets_owned=50..}] unless entity @s[advancements={evercraft:alternate/pets/exquisite/fifty_pets=true}] run advancement grant @s only evercraft:alternate/pets/exquisite/fifty_pets
execute as @a[scores={ach.pets_owned=60..}] unless entity @s[advancements={evercraft:alternate/pets/exquisite/sixty_pets=true}] run advancement grant @s only evercraft:alternate/pets/exquisite/sixty_pets
execute as @a[scores={ach.pets_owned=70..}] unless entity @s[advancements={evercraft:alternate/pets/exquisite/seventy_pets=true}] run advancement grant @s only evercraft:alternate/pets/exquisite/seventy_pets
execute as @a[scores={ach.pets_owned=93..}] unless entity @s[advancements={evercraft:alternate/pets/mythical/all_pets=true}] run advancement grant @s only evercraft:alternate/pets/mythical/all_pets

# --- Pet feed count ---
execute as @a[scores={ach.pet_feeds=100..}] unless entity @s[advancements={evercraft:alternate/pets/uncommon/hundred_feeds=true}] run advancement grant @s only evercraft:alternate/pets/uncommon/hundred_feeds
execute as @a[scores={ach.pet_feeds=500..}] unless entity @s[advancements={evercraft:alternate/pets/rare/five_hundred_feeds=true}] run advancement grant @s only evercraft:alternate/pets/rare/five_hundred_feeds
execute as @a[scores={ach.pet_feeds=2000..}] unless entity @s[advancements={evercraft:alternate/pets/ornate/two_thousand_feeds=true}] run advancement grant @s only evercraft:alternate/pets/ornate/two_thousand_feeds
execute as @a[scores={ach.pet_feeds=10000..}] unless entity @s[advancements={evercraft:alternate/pets/exquisite/ten_thousand_feeds=true}] run advancement grant @s only evercraft:alternate/pets/exquisite/ten_thousand_feeds

# --- Pet interaction count ---
execute as @a[scores={ach.pet_interacts=10..}] unless entity @s[advancements={evercraft:alternate/pets/common/ten_interactions=true}] run advancement grant @s only evercraft:alternate/pets/common/ten_interactions
execute as @a[scores={ach.pet_interacts=100..}] unless entity @s[advancements={evercraft:alternate/pets/uncommon/hundred_interactions=true}] run advancement grant @s only evercraft:alternate/pets/uncommon/hundred_interactions
execute as @a[scores={ach.pet_interacts=1000..}] unless entity @s[advancements={evercraft:alternate/pets/ornate/thousand_interactions=true}] run advancement grant @s only evercraft:alternate/pets/ornate/thousand_interactions

# --- Pet ability triggers ---
execute as @a[scores={ach.pet_abilities=50..}] unless entity @s[advancements={evercraft:alternate/pets/uncommon/fifty_abilities=true}] run advancement grant @s only evercraft:alternate/pets/uncommon/fifty_abilities
execute as @a[scores={ach.pet_abilities=200..}] unless entity @s[advancements={evercraft:alternate/pets/rare/two_hundred_abilities=true}] run advancement grant @s only evercraft:alternate/pets/rare/two_hundred_abilities
execute as @a[scores={ach.pet_abilities=1000..}] unless entity @s[advancements={evercraft:alternate/pets/ornate/thousand_abilities=true}] run advancement grant @s only evercraft:alternate/pets/ornate/thousand_abilities
execute as @a[scores={ach.pet_abilities=5000..}] unless entity @s[advancements={evercraft:alternate/pets/exquisite/five_thousand_abilities=true}] run advancement grant @s only evercraft:alternate/pets/exquisite/five_thousand_abilities

# --- Pet relationship milestones ---
execute as @a[scores={ach.pets_bonded=3..}] unless entity @s[advancements={evercraft:alternate/pets/uncommon/three_bonded=true}] run advancement grant @s only evercraft:alternate/pets/uncommon/three_bonded
execute as @a[scores={ach.pets_devoted=5..}] unless entity @s[advancements={evercraft:alternate/pets/rare/five_devoted=true}] run advancement grant @s only evercraft:alternate/pets/rare/five_devoted
execute as @a[scores={ach.pets_soulbound=10..}] unless entity @s[advancements={evercraft:alternate/pets/ornate/ten_soulbound=true}] run advancement grant @s only evercraft:alternate/pets/ornate/ten_soulbound
execute as @a[scores={ach.pets_soulbound=20..}] unless entity @s[advancements={evercraft:alternate/pets/exquisite/twenty_soulbound=true}] run advancement grant @s only evercraft:alternate/pets/exquisite/twenty_soulbound
execute as @a[scores={ach.pets_eternal=5..}] unless entity @s[advancements={evercraft:alternate/pets/ornate/five_eternal=true}] run advancement grant @s only evercraft:alternate/pets/ornate/five_eternal
execute as @a[scores={ach.pets_eternal=15..}] unless entity @s[advancements={evercraft:alternate/pets/exquisite/fifteen_eternal=true}] run advancement grant @s only evercraft:alternate/pets/exquisite/fifteen_eternal
