# Finishes the spell

playsound myriad:entity.iceologer.cast_spell hostile @a[distance=..16]
data remove storage myriad:temp root
data modify storage myriad:temp root.UUID set from entity @s UUID
tag @s add myriad.iceologer_damage_source
execute as @n[predicate=myriad:entity_properties/targeted_by_illagers,distance=..16] at @s run function myriad:entity/iceologer/spell_successful_player
tag @s remove myriad.iceologer_damage_source
data modify entity @s wander_target set value [I;0,0,0]
execute store result entity @s wander_target[0] int 1 run data get storage myriad:temp root.pos[0]
execute store result entity @s wander_target[1] int 1 run data get storage myriad:temp root.pos[1]
execute store result entity @s wander_target[2] int 1 run data get storage myriad:temp root.pos[2]
data remove entity @s Offers.Recipes
