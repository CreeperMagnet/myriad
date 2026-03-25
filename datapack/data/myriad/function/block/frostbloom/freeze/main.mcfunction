# Freezes a random block in a 5x5 area with an iceier version

data remove storage myriad:temp root.macro_input
execute store result storage myriad:temp root.macro_input.x int 1 run random value -2..2
execute store result storage myriad:temp root.macro_input.z int 1 run random value -2..2
function myriad:block/frostbloom/freeze/positioned_macro with storage myriad:temp root.macro_input