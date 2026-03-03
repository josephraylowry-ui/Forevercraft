# Classes — Enter Class Inner (Macro)
# Macro arg: class_id (1-13)
# Run as the player, at player, facing the anchor

# Store selected class
$scoreboard players set @s adv.gui_cls_id $(class_id)

# Kill class list content
kill @e[type=text_display,tag=Adv.ClsPage1,distance=..7]
kill @e[type=interaction,tag=Adv.ClsPage1,distance=..7]

# Move to page 2
scoreboard players set @s adv.gui_page 2

# Spawn "< Back to Classes" sub-nav button
function evercraft:codex/hub/classes/spawn_back_to_classes

# Spawn artifact list based on class (subclasses share parent artifacts)
# 4=Striker, 5=Sentinel → both use striker artifacts
# 8=Javelin, 9=Hoplite → both use javelin artifacts
# 12=Tank, 13=Knight → both use tank artifacts
execute if score @s adv.gui_cls_id matches 1 run function evercraft:codex/hub/classes/artifacts/rogue
execute if score @s adv.gui_cls_id matches 2 run function evercraft:codex/hub/classes/artifacts/berserker
execute if score @s adv.gui_cls_id matches 3 run function evercraft:codex/hub/classes/artifacts/dancer
execute if score @s adv.gui_cls_id matches 4..5 run function evercraft:codex/hub/classes/artifacts/striker
execute if score @s adv.gui_cls_id matches 6 run function evercraft:codex/hub/classes/artifacts/healer
execute if score @s adv.gui_cls_id matches 7 run function evercraft:codex/hub/classes/artifacts/beastlord
execute if score @s adv.gui_cls_id matches 8..9 run function evercraft:codex/hub/classes/artifacts/javelin
execute if score @s adv.gui_cls_id matches 10 run function evercraft:codex/hub/classes/artifacts/archer
execute if score @s adv.gui_cls_id matches 11 run function evercraft:codex/hub/classes/artifacts/hunter
execute if score @s adv.gui_cls_id matches 12..13 run function evercraft:codex/hub/classes/artifacts/tank

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
