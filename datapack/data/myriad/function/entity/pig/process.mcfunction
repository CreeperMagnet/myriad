# Processes a pig

execute unless entity @a[distance=..20] unless predicate myriad:entity_properties/is_baby if biome ~ ~ ~ #myriad:spawns_snails run function myriad:entity/snail/spawn
tag @s add myriad.modified_vanilla_entity