# Moves sherd items into their proper slots

execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} run return run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 13b
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} run return run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 21b
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} run return run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 11b
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} run return run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 3b