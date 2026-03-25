# Starts a line of sight raycast

tag @s remove myriad.has_line_of_sight
execute anchored eyes facing entity @n[predicate=myriad:entity_properties/targeted_by_illagers,distance=..16] eyes run function myriad:entity/illager/line_of_sight_raycast
execute if entity @s[tag=myriad.has_line_of_sight] run tag @s add myriad.spellcasting
execute if entity @s[tag=myriad.has_line_of_sight,tag=myriad.geomancer] unless entity @s[scores={myriad.dummy2=0..3}] run playsound myriad:entity.geomancer.attack hostile @a[distance=..16]
execute if entity @s[tag=myriad.has_line_of_sight,tag=myriad.iceologer] unless entity @s[scores={myriad.dummy2=0..3}] run playsound myriad:entity.iceologer.attack hostile @a[distance=..16]
