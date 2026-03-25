# Creates a new entry

data modify storage myriad:gobblerift_data array append value {pos:[0,0,0],dimension:""}
$data modify storage myriad:gobblerift_data array[-1].id set value $(id)
execute store result storage myriad:gobblerift_data array[-1].pos[0] int 1 run data get entity @s Pos[0]
execute store result storage myriad:gobblerift_data array[-1].pos[1] int 1 run data get entity @s Pos[1]
execute store result storage myriad:gobblerift_data array[-1].pos[2] int 1 run data get entity @s Pos[2]
data modify storage myriad:gobblerift_data array[-1].dimension set from entity @s item.components."minecraft:custom_data".dimension