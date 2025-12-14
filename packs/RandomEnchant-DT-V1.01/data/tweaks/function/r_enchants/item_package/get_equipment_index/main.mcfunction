# Sub call
function tweaks:r_enchants/item_package/get_equipment_index/sub with storage tweaks:temp temporary[-1]

# Remove the last entry 
data remove storage tweaks:temp temporary[-1]

# Exit loop
execute as @s if score temp2 tweaks_storage = temp3 tweaks_storage store result storage tweaks:temp player.inventory.equipment_index int 1 run scoreboard players get temp5 tweaks_storage

# Continue loop
execute as @s unless score temp2 tweaks_storage = temp3 tweaks_storage if data storage tweaks:temp temporary[-1] run function tweaks:r_enchants/item_package/get_equipment_index/main