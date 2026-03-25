# Functions to run off of every myriad marker every single tick

## Brewing Stuff
execute if entity @s[tag=myriad.brewing_stand] run return run function myriad:block/brewing_stand/brewing/tick

## Waxed Note Blocks
execute if entity @s[tag=myriad.waxed_note_block] unless function myriad:block/piston_push/check run kill