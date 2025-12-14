# Apply things to random item
execute as @s if score temp2 tweaks_storage >= ZERO constants run function tweaks:r_enchants/enchant_package/apply_to_random_item with storage tweaks:temp player.inventory
$execute as @s if score temp2 tweaks_storage < ZERO constants run function tweaks:r_enchants/enchant_package/equipment/$(equipment_name) with storage tweaks:temp player.inventory

# DEBUG
# function tweaks:r_enchants/enchant_package/print_summary