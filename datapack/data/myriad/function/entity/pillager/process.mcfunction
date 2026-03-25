# Checks if a pillager is in a tundra keep biome near a tundra keep

tag @s add myriad.modified_vanilla_entity

execute unless biome ~ ~ ~ #myriad:has_structure/tundra_keep run return fail

# Is there a tundra keep within 100 blocks?
execute store result score @s myriad.dummy run locate structure myriad:tundra_keep
# If not, stop
execute if score @s myriad.dummy matches 101.. run return 0

# 10% chance for iceologer
execute if predicate myriad:random_chance/0.1 run return run function myriad:entity/iceologer/spawn

# Ominous banner-wearing pillagers get chilling banners instead
execute if predicate myriad:entity_properties/is_raid_captain run function myriad:entity/pillager/add_chilling_banner