# Runs tickdown, etc. for hourglass every second

execute if predicate myriad:location_check/echoing_hourglass/any run particle sculk_soul ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal

execute unless entity @s[tag=myriad.echoing_hourglass.empty] unless entity @s[tag=myriad.echoing_hourglass.finished] run function myriad:block/echoing_hourglass/tickdown/main

execute if entity @s[tag=myriad.echoing_hourglass.empty] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:hopper[enabled=true,facing=down] if items block ~ ~ ~ container.* #myriad:suspicious_powders run function myriad:block/echoing_hourglass/hopper/insert/check
execute if entity @s[tag=myriad.echoing_hourglass.finished] positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:hopper[enabled=true] if function myriad:block/echoing_hourglass/hopper/take/check run function myriad:block/echoing_hourglass/interact/take_powder/as_item_display