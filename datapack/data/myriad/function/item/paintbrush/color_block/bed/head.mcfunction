# Colors a bed head

$execute if block ~ ~ ~ #minecraft:beds[facing=north] run setblock ~ ~ ~ minecraft:$(color)_bed[part=head,facing=north] strict
$execute if block ~ ~ ~ #minecraft:beds[facing=east] run setblock ~ ~ ~ minecraft:$(color)_bed[part=head,facing=east] strict
$execute if block ~ ~ ~ #minecraft:beds[facing=south] run setblock ~ ~ ~ minecraft:$(color)_bed[part=head,facing=south] strict
$execute if block ~ ~ ~ #minecraft:beds[facing=west] run setblock ~ ~ ~ minecraft:$(color)_bed[part=head,facing=west] strict

$execute if block ~ ~ ~ #minecraft:beds[facing=north] run setblock ~ ~ ~1 minecraft:$(color)_bed[part=foot,facing=north] strict
$execute if block ~ ~ ~ #minecraft:beds[facing=east] run setblock ~-1 ~ ~ minecraft:$(color)_bed[part=foot,facing=east] strict
$execute if block ~ ~ ~ #minecraft:beds[facing=south] run setblock ~ ~ ~-1 minecraft:$(color)_bed[part=foot,facing=south] strict
$execute if block ~ ~ ~ #minecraft:beds[facing=west] run setblock ~1 ~ ~ minecraft:$(color)_bed[part=foot,facing=west] strict

