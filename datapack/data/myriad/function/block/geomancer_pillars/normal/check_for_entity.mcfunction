# Checks for a possible entity that would block the pillar

execute unless entity @e[dy=2,predicate=myriad:entity_properties/prevents_geomancer_pillars] run function myriad:block/geomancer_pillars/normal/place
