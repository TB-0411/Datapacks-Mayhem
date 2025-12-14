# Reset memory
scoreboard players set temp5 tweaks_storage 5
scoreboard players set temp4 tweaks_storage 0
scoreboard players set temp3 tweaks_storage 0

# Clear old
data remove storage tweaks:temp temporary

# Copy array
data modify storage tweaks:temp temporary set from storage tweaks:temp player.equipment.array

# Start loop
execute as @s run function tweaks:r_enchants/item_package/get_equipment_index/main