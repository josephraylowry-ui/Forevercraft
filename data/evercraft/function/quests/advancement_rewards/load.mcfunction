# ============================================================
# ADVANCEMENT CRATE REWARDS — Load
# Rewards for Evercraft alternate advancements
# ============================================================

# Iron pickaxe gate scoreboards
scoreboard objectives add ec.has_iron_pick dummy
scoreboard objectives add ec.iron_gate_passed dummy

# Advancement tracking scoreboards (summary)
scoreboard objectives add ec.adv_count dummy
scoreboard objectives add ec.adv_reward_pending dummy

tellraw @a ["",{text:"[Advancements] ",color:"green"},{text:"Crate reward system loaded",color:"gray"}]
