# Applies a potion effect

execute store result score #temp_0 myriad.dummy run attribute @s minecraft:max_health get 10
execute store result score #temp_1 myriad.dummy run data get entity @s Health 10
execute unless score #temp_0 myriad.dummy = #temp_1 myriad.dummy run function myriad:item/diluted_potion/apply_effect/healing_apply