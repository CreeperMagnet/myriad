# Functions to run off of brewing stand markers every second

execute if items block ~ ~ ~ container.0 * unless items block ~ ~ ~ container.0 minecraft:warped_fungus_on_a_stick run function myriad:block/brewing_stand/brewing/modify_items/initiate_storage {slot:0}
execute if items block ~ ~ ~ container.1 * unless items block ~ ~ ~ container.1 minecraft:warped_fungus_on_a_stick run function myriad:block/brewing_stand/brewing/modify_items/initiate_storage {slot:1}
execute if items block ~ ~ ~ container.2 * unless items block ~ ~ ~ container.2 minecraft:warped_fungus_on_a_stick run function myriad:block/brewing_stand/brewing/modify_items/initiate_storage {slot:2}

data modify block ~ ~ ~ BrewTime set value 0
scoreboard players reset @s myriad.dummy2
item modify block ~ ~ ~ container.3 myriad:reduce_count
playsound minecraft:block.brewing_stand.brew block @a[distance=..16]