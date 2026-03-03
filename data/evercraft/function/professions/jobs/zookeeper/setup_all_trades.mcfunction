# Zookeeper Trade Setup
# BUYS: All pets (enchanted books with pet:true custom_data)
# SELLS: Crates for Pet Shards

# Clear existing trades
data modify entity @s Offers.Recipes set value []

# ===== PET BUY TRADES (villager buys pets, gives Pet Shards) =====
# Trade 1: Buy ANY pet for 1 Pet Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_data":{pet:true}}},sell:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_name":"Pet Shard","minecraft:custom_data":{pet_shard:true}}}}

# ===== BLOCK TRADES (buy blocks for Pet Shards) =====
# Trade: 48 Iron Blocks for 1 Pet Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:iron_block",count:48},sell:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_name":"Pet Shard","minecraft:custom_data":{pet_shard:true}}}}

# Trade: 64 Emerald Blocks for 1 Pet Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald_block",count:64},sell:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_name":"Pet Shard","minecraft:custom_data":{pet_shard:true}}}}

# Trade: 48 Diamond Blocks for 1 Pet Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_block",count:48},sell:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_name":"Pet Shard","minecraft:custom_data":{pet_shard:true}}}}

# Trade: 48 Gold Blocks for 1 Pet Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:gold_block",count:48},sell:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_name":"Pet Shard","minecraft:custom_data":{pet_shard:true}}}}

# Trade: 1 Netherite Block for 1 Pet Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:1},sell:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_name":"Pet Shard","minecraft:custom_data":{pet_shard:true}}}}

# ===== PET CRATE SELL TRADES (villager sells pet crates for Pet Shards) =====
# Trade 2: Rare Pet Crate for 8 Pet Shards
data modify entity @s Offers.Recipes append value {max_uses:64,xp:5,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:prismarine_shard",count:8,components:{"minecraft:custom_data":{pet_shard:true}}},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:crates/pet_rare"},"minecraft:custom_name":{text:"Rare Pet Crate",bold:true,italic:true,color:"aqua"},"minecraft:lore":[{text:"Place to reveal your new companion!",color:"gray",italic:true}],"minecraft:custom_data":{pc_rarity:"rare"}}}}

# Trade 3: Ornate Pet Crate for 16 Pet Shards
data modify entity @s Offers.Recipes append value {max_uses:32,xp:10,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:prismarine_shard",count:16,components:{"minecraft:custom_data":{pet_shard:true}}},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:crates/pet_ornate"},"minecraft:custom_name":{text:"Ornate Pet Crate",bold:true,italic:true,color:"dark_purple"},"minecraft:lore":[{text:"Place to reveal your new companion!",color:"gray",italic:true}],"minecraft:custom_data":{pc_rarity:"ornate"}}}}

# Trade 4: Exquisite Pet Crate for 32 Pet Shards
data modify entity @s Offers.Recipes append value {max_uses:16,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:prismarine_shard",count:32,components:{"minecraft:custom_data":{pet_shard:true}}},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:crates/pet_exquisite"},"minecraft:custom_name":{text:"Exquisite Pet Crate",bold:true,italic:true,color:"light_purple"},"minecraft:lore":[{text:"Place to reveal your new companion!",color:"gray",italic:true}],"minecraft:custom_data":{pc_rarity:"exquisite"}}}}

# Trade 5: Mythical Pet Crate for 64 Pet Shards
data modify entity @s Offers.Recipes append value {max_uses:8,xp:30,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:prismarine_shard",count:64,components:{"minecraft:custom_data":{pet_shard:true}}},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:crates/pet_mythical"},"minecraft:max_stack_size":1,"minecraft:enchantment_glint_override":true,"minecraft:custom_name":{text:"Mythical Pet Crate",bold:true,italic:true,color:"gold"},"minecraft:lore":[{text:"Place to reveal your new companion!",color:"gray",italic:true}],"minecraft:custom_data":{pc_rarity:"mythical"}}}}
