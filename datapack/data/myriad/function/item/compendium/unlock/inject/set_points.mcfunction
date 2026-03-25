# Set the character points to split the page at

# Get the injection start value and the length of the string to replace
function myriad:item/compendium/data/get/main
$data modify storage myriad:temp root.page_injections[-1].start set from storage myriad:temp root.compendium.page_starts[{page:$(page)}].starts[{name:"$(name)"}].start
execute store result score #temp_0 myriad.dummy run data get storage myriad:temp root.page_injections[-1].start
execute store result score #temp_1 myriad.dummy run data get storage myriad:temp root.page_injections[-1].length

# Debug message
# Perhaps comment this out in release
execute unless data storage myriad:temp root.page_injections[-1].start run tellraw @s {"text":"Injection ","color": "red","extra":[{"nbt":"root.page_injections[-1].name","storage": "myriad:temp"}," is already applied or doesn't exist."]}

# Add the start and length to get the end of the string that the injection replaces
scoreboard players operation #temp_0 myriad.dummy += #temp_1 myriad.dummy
execute store result storage myriad:temp root.page_injections[-1].end int 1 run scoreboard players get #temp_0 myriad.dummy

# Next step
function myriad:item/compendium/unlock/inject/split with storage myriad:temp root.page_injections[-1]
