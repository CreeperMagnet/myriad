# Rotates a block

$execute if block ~ ~ ~ minecraft:iron_trapdoor[half=$(half),waterlogged=$(waterlogged),facing=$(facing),open=true] run return run setblock ~ ~ ~ minecraft:iron_trapdoor[half=$(half),waterlogged=$(waterlogged),facing=$(facing),open=false]
$execute if block ~ ~ ~ minecraft:iron_trapdoor[half=$(half),waterlogged=$(waterlogged),facing=$(facing),open=false] run return run setblock ~ ~ ~ minecraft:iron_trapdoor[half=$(half),waterlogged=$(waterlogged),facing=$(facing),open=true]