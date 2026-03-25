# Edits a phantom item frame to display the base

scoreboard players reset @s myriad.dummy

execute store result score @s myriad.dummy run data get entity @s ItemRotation

execute unless score @s myriad.dummy = @s myriad.dummy2 run playsound myriad:entity.phantom_item_frame.rotate_item block @a[distance=..16]

execute store result score @s myriad.dummy2 run data get entity @s ItemRotation