# Commands to break a soul conductor

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":{"font":"myriad:technical","translate":"block.myriad.soul_conductor.name"}},id:"minecraft:dropper"}}] at @s run function myriad:block/soul_conductor/break/kill_item
function myriad:block/break_particles/spawn_generic
kill @s
function myriad:block/hopper_updating/undo
