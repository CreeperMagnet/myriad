# Damages a player and applies slowness

tag @s add myriad.iceologer_ice_damage_source
data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.UUID set from entity @s TileEntityData.UUID
execute as @e[dx=0,tag=!myriad.iceologer,tag=!smithed.strict,type=!#myriad:inanimate] run function myriad:entity/iceologer/ice/damage_as_target with storage myriad:temp root.macro_input
tag @s remove myriad.iceologer_ice_damage_source
