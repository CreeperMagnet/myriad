# Modifies the storage for a specific potion type

data modify storage myriad:temp root.item.components."minecraft:item_name" set value {"translate":"item.myriad.diluted_potion.effect.harming"}
data modify storage myriad:temp root.item.components."minecraft:lore" prepend value {"color":"red","italic":false,"translate":"effect.myriad.minor_instant_damage"}
data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.potion.uses set value [12,12]
data modify storage myriad:temp root.item.components."minecraft:lore"[1] set value {"translate":"item.myriad.diluted_potion.uses","color":"gray","italic":false,"with":["12","12"]}
data modify storage myriad:temp root.item.components."minecraft:custom_model_data".colors[0] set value 11101546
data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.potion.id set value "minecraft:harming"