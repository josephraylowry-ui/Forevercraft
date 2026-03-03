# Beastlord — Restore consumed spear based on cached spear ID
# The item was destroyed by consume_seconds:0, restore directly into mainhand slot

execute if score @s ec.bl_spear matches 1 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/common/boneclub
execute if score @s ec.bl_spear matches 2 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/uncommon/lance
execute if score @s ec.bl_spear matches 3 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/rare/battlestaff
execute if score @s ec.bl_spear matches 4 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/rare/bone_cudgel
execute if score @s ec.bl_spear matches 5 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/ornate/glaive
execute if score @s ec.bl_spear matches 6 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/exquisite/infinity_lance
execute if score @s ec.bl_spear matches 7 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/exquisite/gungnir_spear
execute if score @s ec.bl_spear matches 8 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/mythical/longinus
execute if score @s ec.bl_spear matches 9 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/mythical/dragonmaster_lance
