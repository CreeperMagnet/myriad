# Returns 1 if the cases match for needing to force the brewing stand state

execute if items block ~ ~ ~ container.* minecraft:potion[minecraft:potion_contents~{potions:"minecraft:thick"}] if items block ~ ~ ~ container.3 *[minecraft:custom_data~{myriad:{id:"scalesprouts"}}] run return 1
execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{myriad:{id:"serum_of_sprouting"}}] if items block ~ ~ ~ container.* minecraft:fermented_spider_eye run return 1
return fail