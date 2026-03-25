# Commands to break a soul seer

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":{"font":"myriad:technical","translate":"block.myriad.soul_seer.name"}},id:"minecraft:dropper"}}] at @s run function myriad:block/soul_seer/break/kill_item
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{myriad:{clear:1b}}}}}]
function myriad:block/break_particles/spawn_generic
kill @s
function myriad:block/hopper_updating/undo
