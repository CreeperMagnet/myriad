# Remove the contents of the table

data modify storage myriad:temp root.diff set value [{},{}]
data modify storage myriad:temp root.diff[0] set from entity @s data.myriad.old_barrel_items[{Slot:15b}]
data modify storage myriad:temp root.diff[1] set from block ~ ~ ~ Items[{Slot:15b}]
data remove storage myriad:temp root.diff[].count
execute store success score @s myriad.dummy run data modify storage myriad:temp root.diff[0] set from storage myriad:temp root.diff[1]

execute if entity @s[scores={myriad.dummy=0}] as @p[gamemode=!spectator,tag=myriad.inside_pottery_table_gui] unless items entity @s player.cursor * run item replace entity @s player.cursor from block ~ ~ ~ container.15
execute if entity @s[scores={myriad.dummy=0}] run item replace block ~ ~ ~ container.15 with air

tag @s remove myriad.pottery_table.assembled_output
playsound myriad:block.pottery_table.use block @a[distance=..16]
execute if items block ~ ~ ~ container.12 minecraft:decorated_pot run item modify block ~ ~ ~ container.3 myriad:reduce_count
execute if items block ~ ~ ~ container.12 minecraft:decorated_pot run item modify block ~ ~ ~ container.11 myriad:reduce_count
execute if items block ~ ~ ~ container.12 minecraft:decorated_pot run item modify block ~ ~ ~ container.13 myriad:reduce_count
execute if items block ~ ~ ~ container.12 minecraft:decorated_pot run item modify block ~ ~ ~ container.21 myriad:reduce_count
item modify block ~ ~ ~ container.12 myriad:reduce_count
execute unless items block ~ ~ ~ container.* minecraft:decorated_pot unless score @s myriad.dummy matches 0 unless items entity @p[gamemode=!spectator,tag=myriad.inside_pottery_table_gui] player.cursor * run function myriad:block/pottery_table/crafting/shift_click_sherd_duplication
playsound myriad:block.pottery_table.craft block @a[distance=..16] ~ ~ ~