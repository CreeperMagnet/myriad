# Commands to run every ten seconds for gobblerift item display

data modify entity @s item.components."minecraft:custom_data".break_state set value 0

# Stuff to run on the interaction entity riding this entity
execute on passengers if entity @s[tag=myriad.gobblerift.bonemealable] run function myriad:block/gobblerift/grow/main
execute on passengers if entity @s[tag=myriad.gobblerift.digesting] run function myriad:block/gobblerift/grow/digest
