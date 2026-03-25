# Makes an explosive pillar at a random position near the player

tag @s remove myriad.tag
scoreboard players set @s myriad.dummy 0
function myriad:entity/geomancer/spawn_explosive/iterate
tag @s remove myriad.tag
data remove storage myriad:temp root
data modify storage myriad:temp root.pos set from entity @s Pos
