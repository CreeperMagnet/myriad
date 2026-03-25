# Main commands for ticking down an echoing hourglass's time

execute store result score #temp_0 myriad.dummy run scoreboard players remove @s myriad.dummy2 1
scoreboard players add #temp_0 myriad.dummy 1
scoreboard players operation #temp_0 myriad.dummy %= #10 myriad.dummy
# Increment the custom model data if the timer is a multiple of 10 (i.e. every quarter)
execute unless score @s myriad.dummy2 matches 39 if score #temp_0 myriad.dummy matches 0 run function myriad:block/echoing_hourglass/tickdown/increment_stage

# Finish if the timer has elapsed
execute if score @s myriad.dummy2 matches -1 run return run function myriad:block/echoing_hourglass/tickdown/finish
function myriad:block/echoing_hourglass/tickdown/edit_display_passengers