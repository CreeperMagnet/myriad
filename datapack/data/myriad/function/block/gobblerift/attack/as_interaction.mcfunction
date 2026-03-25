# Commands to run as the interaction entity

execute if entity @s[tag=!myriad.gobblerift.hurt] on vehicle run function myriad:block/gobblerift/attack/as_item_display
tag @s add myriad.gobblerift.hurt
data remove entity @s attack