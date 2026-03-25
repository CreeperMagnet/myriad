# Commands for interactions with entities

execute if entity @s[type=minecraft:enderman,tag=!smithed.strict] run function myriad:item/boomerang/entity_interaction/enderman_artificial_teleport
$execute if entity @s[type=!minecraft:enderman,nbt=!{Invulnerable:1b}] unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"passenger":{"nbt":"{UUID:$(UUID)}"}}} run damage @s 4.0 myriad:boomerang by @p[nbt={UUID:$(UUID)}]
$execute unless score #0 myriad.dummy matches $(fire) run data modify entity @s Fire set value 90s