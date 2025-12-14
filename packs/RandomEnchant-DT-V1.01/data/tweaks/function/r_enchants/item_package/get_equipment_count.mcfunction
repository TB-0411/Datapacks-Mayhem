# For the equipment also
execute store result score temp2 tweaks_storage run data get entity @s equipment
# Add it temporarily inside the total item count
scoreboard players operation temp1 tweaks_storage += temp2 tweaks_storage
# Store the total inside the storage
execute store result storage tweaks:temp player.inventory.equipment_count int 1 run scoreboard players get temp2 tweaks_storage 