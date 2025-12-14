# Choose a random enchantment for the item
function tweaks:r_enchants/enchant_package/get_random_enchant_index with storage tweaks:temp enchant
function tweaks:r_enchants/enchant_package/get_random_enchant with storage tweaks:temp enchant

# Choose a random enchantment level that stack for the item
function tweaks:r_enchants/item_package/get_random_item_enchant_level with storage tweaks:temp player.inventory

# Apply things to random 
execute as @s unless score temp1 tweaks_storage >= MAX_ENCHANT_LEVEL constants run function tweaks:r_enchants/enchant_package/apply with storage tweaks:temp player.inventory

# DEBUG 
# execute if score temp1 tweaks_storage >= MAX_ENCHANT_LEVEL constants run tellraw @s [{"color":"red","text":"MAX "},{"color":"light_purple","storage":"tweaks:temp","nbt":"player.inventory.random_enchant"},{"color":"white","text":" lvl on "},{"color":"green","storage":"tweaks:temp","nbt":"player.inventory.equipment_name"},{"color":"white","text":" (slot:"},{"color":"blue","storage":"tweaks:temp","nbt":"player.inventory.random_item_slot"},{"color":"white","text":")"}]