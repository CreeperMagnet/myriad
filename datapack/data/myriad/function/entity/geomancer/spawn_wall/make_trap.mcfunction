# Traps a player using normal geomancer pillars

execute align y positioned ~2 ~ ~ run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~-2 ~ ~ run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~ ~ ~2 run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~ ~ ~-2 run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~2 ~ ~2 run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~2 ~ ~-2 run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~-2 ~ ~2 run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~-2 ~ ~-2 run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~2 ~ ~1 run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~-2 ~ ~1 run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~1 ~ ~2 run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~1 ~ ~-2 run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~2 ~ ~-1 run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~-2 ~ ~-1 run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~-1 ~ ~2 run function myriad:entity/geomancer/spawn_wall/trap_check
execute align y positioned ~-1 ~ ~-2 run function myriad:entity/geomancer/spawn_wall/trap_check
data remove storage myriad:temp root
data modify storage myriad:temp root.pos set from entity @s Pos
