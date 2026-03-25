# Summons a pillar if the conditions are right

execute unless entity @e[dy=2,predicate=myriad:entity_properties/prevents_geomancer_pillars] if block ~ ~-1 ~ #myriad:opaque if block ~ ~ ~ #myriad:replaceable if block ~ ~1 ~ #myriad:replaceable if block ~ ~2 ~ #myriad:replaceable run function myriad:entity/geomancer/spawn_explosive/place
