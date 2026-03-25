# Commands to update a boomerang once every tick

scoreboard players operation #temp_0 myriad.dummy = @s myriad.dummy2
scoreboard players operation #temp_0 myriad.dummy %= #3 myriad.dummy
scoreboard players operation #temp_1 myriad.dummy = @s myriad.dummy2
scoreboard players operation #temp_1 myriad.dummy %= #12 myriad.dummy

# Play a sound under certain conditions
execute if score #temp_0 myriad.dummy matches 0 at @s run playsound myriad:item.boomerang.swish player @a[distance=..32] ~ ~ ~ 2

# Rotate the boomerang
execute if score #temp_1 myriad.dummy matches 0 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:0.0f}}}
execute if score #temp_1 myriad.dummy matches 3 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:1.57079632679f}}}
execute if score #temp_1 myriad.dummy matches 6 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:3.141f}}}
execute if score #temp_1 myriad.dummy matches 9 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:4.71238898038f}}}

# Play water particles
execute if predicate myriad:location_check/in_water run particle minecraft:bubble ~ ~ ~ 0.4 0.1 0.4 0 1