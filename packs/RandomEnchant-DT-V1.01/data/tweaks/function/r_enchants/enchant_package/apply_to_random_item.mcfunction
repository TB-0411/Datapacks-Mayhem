# To any items in inventory
$item modify entity @s container.$(random_item_slot) tweaks:enchant/$(random_enchant)
$execute unless items entity @s container.$(random_item_slot) #enchantable/durability run item modify entity @s container.$(random_item_slot) tweaks:hide_attributes