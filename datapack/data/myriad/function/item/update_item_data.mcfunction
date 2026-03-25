# Updates the item data to that of the reset item's

# This is necessary to prevent subsequent commands from using the previously stored data
$data modify storage myriad:temp root.item set from entity @s Inventory[{Slot:$(slot)b}]
