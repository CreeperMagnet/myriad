# Checks if the player still has item on inventory change

tag @s[nbt=!{Inventory:[{components:{"minecraft:custom_data":{myriad:{enabled:1b,id:"tangling_pearl"}}}}]}] remove myriad.has_enabled_tangling_pearl
advancement revoke @s only myriad:technical/inventory_changed/tangling_pearl/check_drop