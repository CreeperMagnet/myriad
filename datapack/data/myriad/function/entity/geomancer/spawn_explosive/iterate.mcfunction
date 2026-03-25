# Makes an explosive pillar at a random position near the player

scoreboard players add @s myriad.dummy 1

data remove storage myriad:temp root.macro_input
execute store result storage myriad:temp root.macro_input.x int 1 run random value -3..3
execute store result storage myriad:temp root.macro_input.z int 1 run random value -3..3
function myriad:entity/geomancer/spawn_explosive/positioned_macro with storage myriad:temp root.macro_input

# myriad.dummy score determines the number of times checked
execute unless entity @s[scores={myriad.dummy=10..}] unless entity @s[tag=myriad.tag] run function myriad:entity/geomancer/spawn_explosive/iterate
execute if entity @s[scores={myriad.dummy=10..}] run effect give @s minecraft:mining_fatigue 120 1 false
