# Changes the enabled status

data modify storage myriad:temp root.item.components."minecraft:custom_model_data".flags[0] set value true
data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.enabled set value 1b
playsound myriad:item.tangling_pearl.activate player @a[distance=..16]