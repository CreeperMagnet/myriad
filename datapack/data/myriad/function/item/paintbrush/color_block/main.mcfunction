# Colors a block

scoreboard players set @s myriad.paintbrush_timer -20
$execute if block ~ ~ ~ #myriad:paintbrush/$(color) run return 0

$execute if block ~ ~ ~ #myriad:candle_cakes run setblock ~ ~ ~ minecraft:$(color)_candle_cake
$execute if block ~ ~ ~ #myriad:concrete run setblock ~ ~ ~ minecraft:$(color)_concrete
$execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ minecraft:$(color)_wool
$execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ minecraft:$(color)_carpet
$execute if block ~ ~ ~ #myriad:glass run setblock ~ ~ ~ minecraft:$(color)_stained_glass
$execute if block ~ ~ ~ #myriad:glass_panes run setblock ~ ~ ~ minecraft:$(color)_stained_glass_pane
$execute if block ~ ~ ~ #minecraft:shulker_boxes run function myriad:item/paintbrush/color_block/shulker_boxes {"color":"$(color)"}
$execute if block ~ ~ ~ #myriad:glazed_terracotta run function myriad:item/paintbrush/color_block/glazed_terracotta {"color":"$(color)"}
$execute if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ minecraft:$(color)_concrete_powder
$execute if block ~ ~ ~ #myriad:terracotta run setblock ~ ~ ~ minecraft:$(color)_terracotta
$execute if block ~ ~ ~ #minecraft:candles run function myriad:item/paintbrush/color_block/candles {"color":"$(color)"}
$execute if block ~ ~ ~ #minecraft:beds run function myriad:item/paintbrush/color_block/bed/main {"color":"$(color)"}
playsound myriad:item.brush.paint block @a[distance=..16]
execute if entity @s[gamemode=creative] run return 0
execute if items entity @s weapon.mainhand minecraft:brush run return run function myriad:technical/macros/damage_slot/main {slot:"weapon.mainhand",slot_raw:"SelectedItem",amount:"1"}
function myriad:technical/macros/damage_slot/main {slot:"weapon.offhand",slot_raw:"equipment.offhand",amount:"1"}
