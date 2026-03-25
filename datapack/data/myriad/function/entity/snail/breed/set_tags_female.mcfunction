# Sets the data of the pregnant snail

function myriad:entity/snail/breed/set_tags
tag @s add myriad.pregnant
summon minecraft:experience_orb ~ ~ ~ {Value:5s}
data remove storage myriad:temp root
