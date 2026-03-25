# A macro setting attributes and filling absorption hearts based on your maximum health

$attribute @s minecraft:max_health modifier add myriad:cursed_crown -$(max_health) add_value
$attribute @s minecraft:max_absorption modifier add myriad:cursed_crown $(max_absorption) add_value
effect give @s minecraft:absorption 1 255 true
effect clear @s minecraft:absorption
function myriad:item/cursed_crown/update_health_visuals/main