# Commands to run as a hopper minecart below the table

data modify entity @s Enabled set value 0b
execute if block ~ ~ ~ minecraft:activator_rail[powered=false] run setblock ~ ~ ~ air destroy