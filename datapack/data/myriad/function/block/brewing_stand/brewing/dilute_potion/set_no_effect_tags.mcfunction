# Modifies the storage for a potion with no effects

$data modify storage myriad:temp root.item.components."minecraft:item_name" set value {"translate":"item.myriad.diluted_potion.effect.$(translation)"}
data modify storage myriad:temp root.item.components."minecraft:custom_model_data".colors[0] set value 3694022
data modify storage myriad:temp root.item.components."minecraft:lore" prepend value {"color":"gray","italic":false,"translate":"effect.none"}
data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.potion.no_effects set value 1b