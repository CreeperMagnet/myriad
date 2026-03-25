# Commands to break a decorated pot into shards

data remove storage myriad:temp root
data modify storage myriad:temp root.block set from block ~ ~ ~ {}
execute if block ~ ~ ~ minecraft:decorated_pot[waterlogged=true] run setblock ~ ~ ~ minecraft:decorated_pot[waterlogged=true,cracked=true]
execute if block ~ ~ ~ minecraft:decorated_pot[waterlogged=false] run setblock ~ ~ ~ minecraft:decorated_pot[waterlogged=false,cracked=true]
data modify block ~ ~ ~ {} merge from storage myriad:temp root.block
loot spawn ~ ~ ~ mine ~ ~ ~ diamond_pickaxe

data modify storage myriad:temp root.item set from block ~ ~ ~ item
execute unless data storage myriad:temp root.item.components run data modify storage myriad:temp root.item.components set value {}
function myriad:technical/macros/loot/spawn with storage myriad:temp root.item

execute if block ~ ~ ~ minecraft:decorated_pot[waterlogged=true] run setblock ~ ~ ~ minecraft:water
execute if block ~ ~ ~ minecraft:decorated_pot[waterlogged=false] run setblock ~ ~ ~ minecraft:air
particle minecraft:block{block_state:"minecraft:decorated_pot"} ~ ~ ~ 0.3 0.3 0.3 0.5 50
playsound minecraft:block.decorated_pot.shatter block @a[distance=..16]