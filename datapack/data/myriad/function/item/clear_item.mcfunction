# Clears a death item

clear @s minecraft:structure_block[minecraft:custom_data~{myriad:{clear:1b}}]
advancement revoke @s only myriad:technical/inventory_changed/clear_item
