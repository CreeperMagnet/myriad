# Raycasts

execute if block ^ ^ ^0.01 minecraft:furnace{components:{"minecraft:custom_data":{myriad:{block_id:"creaking_connector"}}}} positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~0.5 ~0.5 run return run function myriad:block/creaking_connector/create_saplink/found_connector
scoreboard players remove @s myriad.dummy 1
execute if score @s myriad.dummy matches 1.. positioned ^ ^ ^0.01 run function myriad:block/creaking_connector/create_saplink/raycast