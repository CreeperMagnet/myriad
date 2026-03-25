# Functions to run off of every myriad block every ten seconds

## Hopper Prevention
execute if entity @s[tag=myriad.prevents_hoppers] positioned ~ ~-1 ~ run function myriad:block/hopper_updating/fill

## Snail Nest
execute if entity @s[tag=myriad.snail_nest] run function myriad:block/snail_nest/ten_second_clock

## Gobblerift
execute if entity @s[tag=myriad.gobblerift] run function myriad:block/gobblerift/ten_second_clock