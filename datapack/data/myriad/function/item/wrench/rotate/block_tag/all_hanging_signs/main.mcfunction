# Checks a block tag

# The base cases
execute if block ~ ~ ~ #minecraft:wall_hanging_signs run function myriad:item/wrench/rotate/block_tag/all_hanging_signs/wall_hanging_signs
execute if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=true] unless block ~ ~-1 ~ #minecraft:ceiling_hanging_signs[attached=false] run function myriad:item/wrench/rotate/block_tag/all_hanging_signs/ceiling_hanging_signs_attached
execute if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=true] if block ~ ~-1 ~ #minecraft:ceiling_hanging_signs[attached=false] run function myriad:item/wrench/rotate/block_tag/all_hanging_signs/ceiling_hanging_signs_attached_locked


# If you iterated up through this function due to unattached signs and hit a non-hanging sign support block, rotate all unattached beneath it
execute if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=false] unless block ~ ~1 ~ #minecraft:all_hanging_signs run function myriad:item/wrench/rotate/block_tag/all_hanging_signs/ceiling_hanging_signs_unattached
execute if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=false] positioned ~ ~1 ~ run function myriad:item/wrench/rotate/block_tag/all_hanging_signs/main