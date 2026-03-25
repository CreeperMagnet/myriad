# Commands to hatch a snail nest

setblock ~ ~ ~ minecraft:air destroy
loot spawn ~ ~ ~ loot myriad:blocks/snail_nest_hatch
data remove storage myriad:temp root
data modify storage myriad:temp root.baby set value "all hail the snail"
function myriad:entity/snail/summon/spawn
execute if predicate myriad:random_chance/0.5 run function myriad:entity/snail/summon/spawn
function myriad:block/break_particles/spawn_generic
kill @s
