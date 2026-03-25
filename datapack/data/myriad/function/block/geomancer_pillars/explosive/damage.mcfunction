# Deals damage from a geomancer pillar

$execute unless entity @n[type=minecraft:wandering_trader,tag=myriad.geomancer,nbt={UUID:$(UUID)}] run return run damage @s 6.0 myriad:geomancer_explosive_no_geomancer by @n[type=minecraft:item_display,tag=myriad.geomancer_explosive_damage_source]
$damage @s 6.0 myriad:geomancer_explosive by @n[type=minecraft:item_display,tag=myriad.geomancer_explosive_damage_source] from @n[type=minecraft:wandering_trader,tag=myriad.geomancer,nbt={UUID:$(UUID)}]