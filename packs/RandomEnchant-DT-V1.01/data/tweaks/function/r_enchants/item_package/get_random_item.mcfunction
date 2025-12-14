# Get random item index
execute as @s run function tweaks:r_enchants/item_package/get_random_item_index with storage tweaks:temp player.inventory
execute if score temp2 tweaks_storage < ZERO constants run function tweaks:r_enchants/item_package/get_equipment_index/init
function tweaks:r_enchants/item_package/get_equipment_name with storage tweaks:temp player.inventory

# Get random item slot
execute as @s run function tweaks:r_enchants/item_package/get_random_item_slot with storage tweaks:temp player.inventory

# DEBUG
# execute as @s run function tweaks:r_enchants/item_package/print_summary with storage tweaks:temp player.inventory

scoreboard players set temp1 tweaks_storage -1