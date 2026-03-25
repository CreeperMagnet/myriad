# Take juice from gobblerift

execute if entity @s[tag=!myriad.silent] run playsound myriad:block.gobblerift.fill_bottle block @a[distance=..16]
data remove storage myriad:temp root.name
execute on vehicle if data entity @s[nbt=!{CustomName:{"translate":"block.myriad.gobblerift","italic":false,"color":"yellow"}}] CustomName run data modify storage myriad:temp root.name set from entity @s CustomName
execute on vehicle run data modify storage myriad:temp root.id set from entity @s item.components."minecraft:custom_data".id
execute on target at @s run function myriad:block/gobblerift/interact/juice/as_player