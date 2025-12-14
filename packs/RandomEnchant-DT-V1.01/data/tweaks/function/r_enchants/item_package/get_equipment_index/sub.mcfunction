# Calcucalte to target from those who are available (in the order of how they are stored)
$execute store success score temp4 tweaks_storage run data get entity @s equipment.$(name)
scoreboard players operation temp3 tweaks_storage -= temp4 tweaks_storage
scoreboard players remove temp5 tweaks_storage 1