playsound block.note_block.chime master @a ~ ~ ~ 1 1 1
tellraw @a {"bold":true,"color":"aqua","text":"[ Tweaks Loaded ! ]"}

# Init temporary memory
scoreboard objectives add tweaks_storage dummy

# Define constants
scoreboard objectives add constants dummy
scoreboard players set MIN_ITEM_COUNT constants 0
scoreboard players set MAX_ENCHANT_LEVEL constants 30
scoreboard players set ZERO constants 0

#Load enchantments
function tweaks:r_enchants/enchant_package/load_enchants

# Initialise required values
data modify storage tweaks:temp player.inventory.equipment_index set value 0

#Load equipment slots info
data modify storage tweaks:temp player.equipment.array set value [{"name":"chest","parent":"armor"},{"name":"legs","parent":"armor"},{"name":"feet","parent":"armor"},{"name":"head","parent":"armor"},{"name":"offhand","parent":"weapon"}]
data modify storage tweaks:temp player.equipment.default set value "inventory"