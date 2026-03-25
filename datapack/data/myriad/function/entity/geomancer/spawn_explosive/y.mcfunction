# Summons a pillar if the conditions are right

function myriad:entity/geomancer/spawn_explosive/check
execute unless block ~ ~-1 ~ #myriad:opaque positioned ~ ~-1 ~ run function myriad:entity/geomancer/spawn_explosive/check
execute unless block ~ ~-1 ~ #myriad:opaque unless block ~ ~-2 ~ #myriad:opaque positioned ~ ~-2 ~ run function myriad:entity/geomancer/spawn_explosive/check
execute unless block ~ ~ ~ #myriad:replaceable positioned ~ ~1 ~ run function myriad:entity/geomancer/spawn_explosive/check
execute unless block ~ ~ ~ #myriad:replaceable unless block ~ ~1 ~ #myriad:replaceable positioned ~ ~2 ~ run function myriad:entity/geomancer/spawn_explosive/check
