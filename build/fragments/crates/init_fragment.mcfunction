# === CRATE ANIMATION SYSTEM ===
scoreboard objectives add ec.crate_plot dummy "Crate Animation"
scoreboard objectives add ec.crate_tier dummy "Crate Tier"

# === LOOT RESET TIMER SYSTEM ===
scoreboard objectives add ec.loot_timer trigger "Loot Reset Timer"
scoreboard players enable @a ec.loot_timer



# === VAULT LOOT SYSTEM ===
scoreboard objectives add cf.vault_ominous dummy "Vault Ominous Flag"



# === STRUCTURE TYPE TRACKING (Wanderer's Dream Map — 22 unique structure types) ===
scoreboard objectives add ec.struct_1 dummy
scoreboard objectives add ec.struct_2 dummy
scoreboard objectives add ec.struct_3 dummy
scoreboard objectives add ec.struct_4 dummy
scoreboard objectives add ec.struct_5 dummy
scoreboard objectives add ec.struct_6 dummy
scoreboard objectives add ec.struct_7 dummy
scoreboard objectives add ec.struct_8 dummy
scoreboard objectives add ec.struct_9 dummy
scoreboard objectives add ec.struct_10 dummy
scoreboard objectives add ec.struct_11 dummy
scoreboard objectives add ec.struct_12 dummy
scoreboard objectives add ec.struct_13 dummy
scoreboard objectives add ec.struct_14 dummy
scoreboard objectives add ec.struct_15 dummy
scoreboard objectives add ec.struct_16 dummy
scoreboard objectives add ec.struct_17 dummy
scoreboard objectives add ec.struct_18 dummy
scoreboard objectives add ec.struct_19 dummy
scoreboard objectives add ec.struct_20 dummy
scoreboard objectives add ec.struct_21 dummy
scoreboard objectives add ec.struct_22 dummy
scoreboard objectives add ec.struct_unique dummy



# === CRATE STATISTICS (companion, artifact, achievement — others already tracked by ach.crates_*) ===
scoreboard objectives add ec.crate_comp dummy "Companion Crates"
scoreboard objectives add ec.crate_art dummy "Artifact Crates"
scoreboard objectives add ec.crate_ach dummy "Achievement Crates"

