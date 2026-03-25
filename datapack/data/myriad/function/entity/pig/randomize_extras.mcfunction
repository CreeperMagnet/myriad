# Sets odds for pigs

# This runs otherwise
data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.variant set from entity @s variant

# 1/256 chance to spawn 8 pigs (target + 7)
execute if predicate myriad:random_chance/0.00390625 run return run function myriad:entity/pig/spawn_7_pigs

function myriad:entity/pig/summon_pig_macro with storage myriad:temp root.macro_input
execute if predicate myriad:random_chance/0.5 run function myriad:entity/pig/summon_pig_macro with storage myriad:temp root.macro_input