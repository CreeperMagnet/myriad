# Split the page

# Split the page into two parts: everything before the injection and everything after the injection
$function myriad:item/compendium/unlock/inject/stringify with storage myriad:temp root.item.components."minecraft:written_book_content".pages[$(page)]
$data modify storage myriad:temp root.page_injections[-1].1 set string storage myriad:temp root.page_string 0 $(start)
$data modify storage myriad:temp root.page_injections[-1].2 set string storage myriad:temp root.page_string $(end) -1

# Next step
function myriad:item/compendium/unlock/inject/join with storage myriad:temp root.page_injections[-1]
