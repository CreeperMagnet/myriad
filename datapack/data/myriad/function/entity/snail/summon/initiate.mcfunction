# Initiates the proper data for a newly spawned snail

tag @s remove myriad.snail.start
execute if data storage myriad:temp root.baby run function myriad:entity/snail/summon/set_baby_tags
execute unless data storage myriad:temp root.snail_bucket if predicate myriad:random_chance/0.5 run tp @s ~0.1 ~ ~
execute store result entity @s Rotation[0] float 0.1 run random value -1800..1800
execute if data storage myriad:temp root.snail_bucket.components."minecraft:custom_data".myriad.variant run return run function myriad:entity/snail/summon/set_variant_from_bucket_macro with storage myriad:temp root.snail_bucket.components."minecraft:custom_data".myriad
execute unless data storage myriad:temp root.snail_bucket run function myriad:entity/snail/summon/set_variant
execute if data storage myriad:temp root.snail_bucket run function myriad:entity/snail/summon/unbucket
data remove entity @s Offers.Recipes