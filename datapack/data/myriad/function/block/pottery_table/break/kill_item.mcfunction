# Commands to kill items from a pottery table

execute store result score #count myriad.dummy run data get entity @s Item.count
loot replace entity @s contents loot myriad:blocks/pottery_table