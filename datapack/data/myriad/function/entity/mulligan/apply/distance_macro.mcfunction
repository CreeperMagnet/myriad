# Checks entities in a distance specified by macro

$execute as @e[type=minecraft:cat,name=Mulligan,distance=..$(distance)] unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"components":{"minecraft:cat/variant":"myriad:mulligan"}}} run function myriad:entity/mulligan/apply/add_tags