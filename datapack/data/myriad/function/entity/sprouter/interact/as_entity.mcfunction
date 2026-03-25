# Commands to run as the sprouter found during raycasting

tag @p[advancements={myriad:technical/player_interacted_with_entity/sprouter=true}] add myriad.tag
execute if data storage myriad:temp root.item{id:"minecraft:shears"} run return run function myriad:entity/sprouter/interact/shear
execute if entity @s[tag=myriad.baby] run return run function myriad:entity/sprouter/interact/feed_baby
function myriad:entity/sprouter/interact/breed
