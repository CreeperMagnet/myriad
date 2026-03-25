# Clears an item from the hopper above the echoing hourglass

$data modify storage myriad:temp root.item set value {count:1,id:"minecraft:$(powder)",components:{}}
$function myriad:block/echoing_hourglass/insert_powder_macro {"powder":"$(powder)"}
$item modify block ~ ~ ~ container.$(slot) myriad:reduce_count