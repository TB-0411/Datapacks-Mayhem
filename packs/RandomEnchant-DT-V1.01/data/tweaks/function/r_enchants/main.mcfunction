# Update the item count from inventory of the player
execute store result score temp1 tweaks_storage run data get entity @s Inventory
# Remove 1 to fit with array starts (0)
scoreboard players remove temp1 tweaks_storage 1
execute store result storage tweaks:temp player.inventory.item_count int 1 run scoreboard players get temp1 tweaks_storage

# For the equipment also
function tweaks:r_enchants/item_package/get_equipment_count

# Reset 2nd memory
scoreboard players set temp2 tweaks_storage -1

# Choose a random item from inventory
execute as @s if score temp1 tweaks_storage >= MIN_ITEM_COUNT constants run function tweaks:r_enchants/item_package/get_random_item

# Apply stuff to item
execute as @s if score temp1 tweaks_storage matches -1 run function tweaks:r_enchants/enchant_package/select