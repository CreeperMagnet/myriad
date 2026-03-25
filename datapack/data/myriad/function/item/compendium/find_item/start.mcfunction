# Runs a function for each compendium that is found in the player's inventory

data modify storage myriad:temp root.inventory set value []

# Put all items with the specified ID in a list
$data modify storage myriad:temp root.inventory append from entity @s Inventory[{components:{"minecraft:custom_data":{myriad:{id:"$(id)"}}}}]

# If the list isn't empty, search through it
# The specified function path is run for each item found
$execute if data storage myriad:temp root.inventory[-1] run function myriad:item/find_items/loop {function:"$(function)"}
