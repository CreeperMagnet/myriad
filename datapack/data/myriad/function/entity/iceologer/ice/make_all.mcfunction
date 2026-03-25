# Spawns ice above the player

execute if block ~ ~1 ~ #myriad:air if block ~ ~2 ~ #myriad:air if block ~ ~3 ~ #myriad:air if block ~ ~4 ~ #myriad:air run tag @s add myriad.tag
execute if entity @s[tag=!myriad.tag] run function myriad:entity/iceologer/ice/freeze_target
execute if entity @s[tag=myriad.tag] positioned ~ ~ ~ run function myriad:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=myriad.tag] positioned ~1 ~ ~ run function myriad:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=myriad.tag] positioned ~-1 ~ ~ run function myriad:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=myriad.tag] positioned ~ ~ ~1 run function myriad:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=myriad.tag] positioned ~ ~ ~-1 run function myriad:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=myriad.tag] positioned ~1 ~ ~1 run function myriad:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=myriad.tag] positioned ~1 ~ ~-1 run function myriad:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=myriad.tag] positioned ~-1 ~ ~1 run function myriad:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=myriad.tag] positioned ~-1 ~ ~-1 run function myriad:entity/iceologer/ice/create_falling_block

tag @s remove myriad.tag
