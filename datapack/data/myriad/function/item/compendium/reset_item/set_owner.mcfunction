# Sets the owner of the current compendium item

$item modify entity @s $(container_name)$(container_slot) {function:"minecraft:set_custom_data",tag:{myriad:{owner:$(uuid)}}}
