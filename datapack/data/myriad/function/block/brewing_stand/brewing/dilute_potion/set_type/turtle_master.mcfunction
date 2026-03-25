# Modifies the storage for a specific potion type

data modify storage myriad:temp root.item.components."minecraft:item_name" set value {"translate":"item.myriad.diluted_potion.effect.turtle_master"}
data modify storage myriad:temp root.item.components."minecraft:lore" prepend value {"color":"blue","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.resistance"},{"translate":"potion.potency.2"}]},{"translate":"potion.myriad.duration","with":["0","0","0","2"]}]}
data modify storage myriad:temp root.item.components."minecraft:lore" prepend value {"color":"red","italic":false,"translate":"potion.withDuration","with":[{"translate":"potion.withAmplifier","with":[{"translate":"effect.minecraft.slowness"},{"translate":"potion.potency.3"}]},{"translate":"potion.myriad.duration","with":["0","0","0","2"]}]}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"text":""}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"color":"red","italic":false,"translate":"attribute.modifier.take.1","with":["60",{"translate":"attribute.name.movement_speed"}]}
data modify storage myriad:temp root.item.components."minecraft:custom_model_data".colors[0] set value 9274086
data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.potion.multiline_lore set value 1b