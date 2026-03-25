# Golden chorus fruit commands

advancement revoke @s only myriad:technical/consume_item/golden_chorus_fruit

execute unless dimension minecraft:the_nether unless data storage myriad:gamerules {reducedGoldenChorusFruitSpread:1b} run spreadplayers ~ ~ 0 2000 false @s
execute if dimension minecraft:the_nether unless data storage myriad:gamerules {reducedGoldenChorusFruitSpread:1b} run spreadplayers ~ ~ 0 2000 under 127 false @s
execute unless dimension minecraft:the_nether if data storage myriad:gamerules {reducedGoldenChorusFruitSpread:1b} run spreadplayers ~ ~ 0 200 false @s
execute if dimension minecraft:the_nether if data storage myriad:gamerules {reducedGoldenChorusFruitSpread:1b} run spreadplayers ~ ~ 0 200 under 127 false @s

tp @s[name="dragoncommands"] ~ ~500 ~
