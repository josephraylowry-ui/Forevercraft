# Mob Crates - Downgrade Ornate → Rare (nearest player Dream Rate < 5)
# Barrel already placed by spawn/ornate.mcfunction

# Fill with rare loot instead
loot insert ~ ~ ~ loot evercraft:mob_crates/rare
function evercraft:structures/container/shuffle_barrel
data merge block ~ ~ ~ {CustomName:{text:"Rare Mob Crate",color:"aqua",italic:false}}

tellraw @p [{text:"✦ ",color:"dark_purple"},{text:"An ornate mob crate dimmed to rare... your dreams aren't strong enough yet.",color:"gray",italic:true}]
tellraw @p [{text:"  Requires ",color:"gray"},{text:"Dream Rate 5",color:"gold",bold:true},{text:" for Ornate mob crates.",color:"gray"}]

# Spawn rare animation instead (align to barrel block position)
execute align xyz run function evercraft:crate_anim/spawn_display {tier:"rare",system_tag:"mob_crate",plot_start:15,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY3MjYyOCwKICAicHJvZmlsZUlkIiA6ICIzMjFjNTBiMjJhY2Q0OGUxOGEyMGU0N2I2ZThhYjE2ZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJsaWdodDEzMzM3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzYzMDdhZWJjNWEwOGQzMTYyMWQ3NTRkODc5ZWI1OTQ5OTFmMDQxNTI5ZjFmYmFhMjg0MGZhYTlmMjQ3MWU0IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}
