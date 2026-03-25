# Chooses a random attack to do on a player

execute if predicate myriad:random_chance/0.33 run return run function myriad:entity/geomancer/spawn_wall/make_trap
function myriad:entity/geomancer/spawn_explosive/start
