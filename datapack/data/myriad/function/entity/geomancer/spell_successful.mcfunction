# Finishes the spell cycle successfully by summoning pillars

data remove storage myriad:temp root
data modify storage myriad:temp root.UUID set from entity @s UUID
playsound myriad:entity.geomancer.cast_spell hostile @a[distance=..16]
execute as @n[predicate=myriad:entity_properties/targeted_by_illagers,distance=..16] run function myriad:entity/geomancer/attack
data modify entity @s wander_target set value [I;0,0,0]
execute store result entity @s wander_target[0] int 1 run data get storage myriad:temp root.pos[0]
execute store result entity @s wander_target[1] int 1 run data get storage myriad:temp root.pos[1]
execute store result entity @s wander_target[2] int 1 run data get storage myriad:temp root.pos[2]
data remove entity @s Offers.Recipes