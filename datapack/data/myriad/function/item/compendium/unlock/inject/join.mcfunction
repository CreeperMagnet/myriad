# Join together the separated strings

# Put the first half, the injection, and the second half together
$data modify storage myriad:temp root.item.components."minecraft:written_book_content".pages[$(page)].raw set value $(1)$(injection)$(2)}

# Debug thing: checks if the page is valid JSON
# Perhaps comment this out in release

#$tellraw @a {"nbt":"root.item.components.minecraft:written_book_content.pages[$(page)].raw","storage":"myriad:temp"}
$execute store success score #temp_0 myriad.dummy run function myriad:item/compendium/unlock/inject/check_page_validity {value:$(1)$(injection)$(2)}}
execute if score #temp_0 myriad.dummy matches 0 run tag @s add myriad.invalid_page
execute if score #temp_0 myriad.dummy matches 0 run tellraw @s {"text":"Error when injecting reference to ","color": "red","extra":[{"nbt":"root.start_injection.entry_name","storage": "myriad:temp"}," on page ",{"nbt":"root.page_injections[-1].page","storage": "myriad:temp"}]}
