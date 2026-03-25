# Macro for checking pottery tables around

$execute as @e[type=minecraft:item_display,distance=..$(distance),tag=myriad.pottery_table] at @s if block ~ ~ ~ minecraft:barrel[open=false] run function myriad:block/pottery_table/open
