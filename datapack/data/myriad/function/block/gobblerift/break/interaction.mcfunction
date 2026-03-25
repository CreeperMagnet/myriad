# Breaks the gobblerift

data remove storage myriad:temp root.macro_input
execute store result storage myriad:temp root.macro_input.id int 1 run scoreboard players get @s myriad.dummy
function myriad:block/gobblerift/array_management/remove with storage myriad:temp root.macro_input
kill @s
