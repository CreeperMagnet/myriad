# Commands to run tickly for pottery tables that just closed

tag @s remove myriad.pottery_table.open
tag @s add myriad.pottery_table.update_on_next_open
stopsound @a[distance=..16] block block.barrel.close
execute as @a[tag=myriad.inside_pottery_table_gui,distance=..64] at @s run function myriad:block/pottery_table/close_as_player/main
data remove block ~ ~ ~ Items[{Slot:15b}]
tag @s remove myriad.pottery_table.assembled_output
data modify entity @s data.myriad.old_barrel_items set from block ~ ~ ~ Items
data modify entity @s data.myriad.current_barrel_items set from block ~ ~ ~ Items