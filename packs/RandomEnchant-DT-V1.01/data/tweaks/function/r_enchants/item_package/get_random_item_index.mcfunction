# Get a random item index (negative ones are for equipment slots)
$execute store result score temp2 tweaks_storage run random value -$(equipment_count)..$(item_count)
# Store it in the storage
execute store result storage tweaks:temp player.inventory.random_item_index int 1 run scoreboard players get temp2 tweaks_storage