# Functions to run off geomancer pillars every second

execute if entity @s[tag=myriad.geomancer_pillar.normal] run function myriad:block/geomancer_pillars/normal/second_clock
execute if entity @s[tag=myriad.geomancer_pillar.explosive] run function myriad:block/geomancer_pillars/explosive/second_clock
