# Checks if a player's UUID matches one in storage

$execute if entity @s[nbt={UUID:$(UUID)}] run function myriad:item/boomerang/entity_interaction/pickup/pickup
$execute unless entity @s[nbt={UUID:$(UUID)}] run damage @s 4.0 myriad:boomerang by @p[nbt={UUID:$(UUID)}]