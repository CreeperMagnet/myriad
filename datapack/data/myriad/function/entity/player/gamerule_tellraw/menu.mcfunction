# Tellraw menu for toggling custom gamerules

execute store result score #temp_0 myriad.dummy run data get storage myriad:gamerules reducedGoldenChorusFruitSpread

tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"translate":"chat.myriad.gamerules.title", "bold":true, "color":"#800090"},"\n"]

execute unless score #temp_0 myriad.dummy matches 1.. run tellraw @s [{"translate":"chat.myriad.gamerules.reduced_golden_chorus_fruit_spread", "color":"#007acc", "hover_event":{"action":"show_text", "value":[{"translate":"chat.myriad.gamerules.reduced_golden_chorus_fruit_spread.description"},"\n",{"translate":"chat.myriad.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.myriad.gamerules.false", "color":"red", "click_event":{"action":"run_command", "command":"/function myriad:entity/player/gamerule_tellraw/toggle/reduced_golden_chorus_fruit_spread"}}]
execute if score #temp_0 myriad.dummy matches 1.. run tellraw @s [{"translate":"chat.myriad.gamerules.reduced_golden_chorus_fruit_spread", "color":"#007acc", "hover_event":{"action":"show_text", "value":[{"translate":"chat.myriad.gamerules.reduced_golden_chorus_fruit_spread.description"},"\n",{"translate":"chat.myriad.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.myriad.gamerules.true", "color":"green", "click_event":{"action":"run_command", "command":"/function myriad:entity/player/gamerule_tellraw/toggle/reduced_golden_chorus_fruit_spread"}}]

tellraw @s ""
