# Colors candles

$execute if block ~ ~ ~ #minecraft:candles[candles=1,lit=true] run setblock ~ ~ ~ minecraft:$(color)_candle[candles=1,lit=true]
$execute if block ~ ~ ~ #minecraft:candles[candles=1,lit=false] run setblock ~ ~ ~ minecraft:$(color)_candle[candles=1,lit=false]
$execute if block ~ ~ ~ #minecraft:candles[candles=2,lit=true] run setblock ~ ~ ~ minecraft:$(color)_candle[candles=2,lit=true]
$execute if block ~ ~ ~ #minecraft:candles[candles=2,lit=false] run setblock ~ ~ ~ minecraft:$(color)_candle[candles=2,lit=false]
$execute if block ~ ~ ~ #minecraft:candles[candles=3,lit=true] run setblock ~ ~ ~ minecraft:$(color)_candle[candles=3,lit=true]
$execute if block ~ ~ ~ #minecraft:candles[candles=3,lit=false] run setblock ~ ~ ~ minecraft:$(color)_candle[candles=3,lit=false]
$execute if block ~ ~ ~ #minecraft:candles[candles=4,lit=true] run setblock ~ ~ ~ minecraft:$(color)_candle[candles=4,lit=true]
$execute if block ~ ~ ~ #minecraft:candles[candles=4,lit=false] run setblock ~ ~ ~ minecraft:$(color)_candle[candles=4,lit=false]
