# ============================================================
# COOKING & CUISINE SYSTEM — Load
# Called from init.mcfunction on /reload
# ============================================================

# --- Scoreboards ---
scoreboard objectives add ec.ck_cat dummy "Cooking: Category"
scoreboard objectives add ec.ck_wellfed dummy "Cooking: Well-Fed Timer"
scoreboard objectives add ec.ck_fortune dummy "Cooking: Fortune Timer"

# --- Per-category mastery scoreboards ---
scoreboard objectives add ck.m_combat dummy "Mastery: Combat Cuisine"
scoreboard objectives add ck.m_mining dummy "Mastery: Mining Meals"
scoreboard objectives add ck.m_fortune dummy "Mastery: Fortune Foods"
scoreboard objectives add ck.m_wayfarer dummy "Mastery: Wayfarer Fare"
scoreboard objectives add ck.m_delicacy dummy "Mastery: Delicacies"
scoreboard objectives add ck.m_seasonal dummy "Mastery: Seasonal"
scoreboard objectives add ck.m_treats dummy "Mastery: Treats"

# --- Recipe discovery scoreboards (bitfields: bit N = slot N discovered) ---
scoreboard objectives add ck.disc0 dummy "Discovery: Combat"
scoreboard objectives add ck.disc1 dummy "Discovery: Mining"
scoreboard objectives add ck.disc2 dummy "Discovery: Fortune"
scoreboard objectives add ck.disc3 dummy "Discovery: Wayfarer"
scoreboard objectives add ck.disc4 dummy "Discovery: Delicacy"
scoreboard objectives add ck.disc5 dummy "Discovery: Seasonal"
scoreboard objectives add ck.disc6 dummy "Discovery: Treats"
scoreboard objectives add ck.disc_init dummy "Discovery: Initialized"

# --- Bit constants for discovery math ---
scoreboard players set #8 adv.temp 8
scoreboard players set #16 adv.temp 16
scoreboard players set #32 adv.temp 32

# --- Schedule buff tick (1s loop) ---
schedule function evercraft:cooking/buff/tick 1s
