# Breaks the gobblerift

execute on passengers if entity @s[tag=myriad.gobblerift.seedling] run loot spawn ~ ~ ~ loot myriad:items/gobblerift_seeds
execute on passengers if entity @s[tag=!myriad.gobblerift.seedling] on vehicle run function myriad:block/gobblerift/break/non_seedling
data remove storage myriad:temp root
data modify storage myriad:temp root.macro_input.item set from entity @s item
execute on passengers if entity @s[tag=myriad.gobblerift.tall] run data merge storage myriad:temp {root:{macro_input:{dx:0.2,dy:0.7,dz:0.2,speed:0.07,count:40}}}
execute on passengers if entity @s[tag=myriad.gobblerift.tall] positioned ~ ~0.5 ~ run function myriad:block/break_particles/macro with storage myriad:temp root.macro_input
execute on passengers if entity @s[tag=!myriad.gobblerift.tall] run data merge storage myriad:temp {root:{macro_input:{dx:0.2,dy:0.2,dz:0.2,speed:0.07,count:20}}}
execute on passengers if entity @s[tag=!myriad.gobblerift.tall] positioned ~ ~-0.5 ~ run function myriad:block/break_particles/macro with storage myriad:temp root.macro_input
execute on passengers run kill @s
kill @s
playsound myriad:block.gobblerift.break block @a[distance=..16]
