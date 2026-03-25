# Commands for the boomerang hitting a block and breaking

data modify storage myriad:temp root.item set from entity @s item.components."minecraft:custom_data".myriad.item
execute unless data entity @s item.components."minecraft:custom_data".myriad{gamemode:1} run function myriad:technical/macros/loot/spawn with storage myriad:temp root.item
$scoreboard players reset @p[nbt={UUID:$(UUID)}] myriad.boomerang_cooldown
playsound myriad:item.boomerang.break player @a[distance=..64] ~ ~ ~ 4 1
execute if entity @s[tag=myriad.boomerang.on_fire] on passengers run kill @s
kill @s
