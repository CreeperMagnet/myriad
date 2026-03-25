# Checks what the potion should do if it succeeds in dilution

data modify storage myriad:temp root.potion set from storage myriad:temp root.item.components."minecraft:potion_contents".potion
execute if data storage myriad:temp root.item.components."minecraft:custom_data".myriad.potion.id run data modify storage myriad:temp root.potion set from storage myriad:temp root.item.components."minecraft:custom_data".myriad.potion.id
data modify storage myriad:temp root.item set value {id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:item_model":"myriad:diluted_potion","!minecraft:enchantments":{},"minecraft:custom_data":{myriad:{id:"diluted_potion",potion:{uses:[10,10]}}},"minecraft:custom_model_data":{"floats":[10.0f],"colors":[16253176]},"!minecraft:damage":{},"!minecraft:max_damage":{}}}
data modify storage myriad:temp root.item.components."minecraft:lore" set value [{"translate":"item.myriad.diluted_potion.uses","color":"gray","italic":false,"with":["10","10"]},{"translate":"pack.myriad","color":"white","italic":false,"font":"myriad:tooltip"}]
data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.potion.id set from storage myriad:temp root.potion

execute if data storage myriad:temp root{potion:"minecraft:leaping"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:16646020,translation:"leaping",lore_color:"blue",effect:"jump_boost",duration:18,duration_lore_0:1,duration_lore_1:8,amplifier:0}
execute if data storage myriad:temp root{potion:"minecraft:long_leaping"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:16646020,translation:"leaping",lore_color:"blue",effect:"jump_boost",duration:48,duration_lore_0:4,duration_lore_1:8,amplifier:0}
execute if data storage myriad:temp root{potion:"minecraft:strong_leaping"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:16646020,translation:"leaping",lore_color:"blue",effect:"jump_boost",duration:9,duration_lore_0:0,duration_lore_1:9,amplifier:1}

execute if data storage myriad:temp root{potion:"minecraft:regeneration"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:13458603,translation:"regeneration",lore_color:"blue",effect:"regeneration",duration:5,duration_lore_0:0,duration_lore_1:5,amplifier:0}
execute if data storage myriad:temp root{potion:"minecraft:long_regeneration"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:13458603,translation:"regeneration",lore_color:"blue",effect:"regeneration",duration:9,duration_lore_0:0,duration_lore_1:9,amplifier:0}
execute if data storage myriad:temp root{potion:"minecraft:strong_regeneration"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:13458603,translation:"regeneration",lore_color:"blue",effect:"regeneration",duration:2,duration_lore_0:0,duration_lore_1:2,amplifier:1}

execute if data storage myriad:temp root{potion:"minecraft:fire_resistance"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:16750848,translation:"fire_resistance",lore_color:"blue",effect:"fire_resistance",duration:18,duration_lore_0:1,duration_lore_1:8,amplifier:0}
execute if data storage myriad:temp root{potion:"minecraft:long_fire_resistance"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:16750848,translation:"fire_resistance",lore_color:"blue",effect:"fire_resistance",duration:48,duration_lore_0:4,duration_lore_1:8,amplifier:0}

execute if data storage myriad:temp root{potion:"minecraft:water_breathing"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:10017472,translation:"water_breathing",lore_color:"blue",effect:"water_breathing",duration:18,duration_lore_0:1,duration_lore_1:8,amplifier:0}
execute if data storage myriad:temp root{potion:"minecraft:long_water_breathing"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:10017472,translation:"water_breathing",lore_color:"blue",effect:"water_breathing",duration:48,duration_lore_0:4,duration_lore_1:8,amplifier:0}

execute if data storage myriad:temp root{potion:"minecraft:invisibility"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:16185078,translation:"invisibility",lore_color:"blue",effect:"invisibility",duration:18,duration_lore_0:1,duration_lore_1:8,amplifier:0}
execute if data storage myriad:temp root{potion:"minecraft:long_invisibility"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:16185078,translation:"invisibility",lore_color:"blue",effect:"invisibility",duration:48,duration_lore_0:4,duration_lore_1:8,amplifier:0}

execute if data storage myriad:temp root{potion:"minecraft:night_vision"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:12779366,translation:"night_vision",lore_color:"blue",effect:"night_vision",duration:18,duration_lore_0:1,duration_lore_1:8,amplifier:0}
execute if data storage myriad:temp root{potion:"minecraft:long_night_vision"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:12779366,translation:"night_vision",lore_color:"blue",effect:"night_vision",duration:48,duration_lore_0:4,duration_lore_1:8,amplifier:0}

execute if data storage myriad:temp root{potion:"minecraft:poison"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:8889187,translation:"poison",lore_color:"red",effect:"poison",duration:5,duration_lore_0:0,duration_lore_1:5,amplifier:0}
execute if data storage myriad:temp root{potion:"minecraft:long_poison"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:8889187,translation:"poison",lore_color:"red",effect:"poison",duration:9,duration_lore_0:0,duration_lore_1:9,amplifier:0}
execute if data storage myriad:temp root{potion:"minecraft:strong_poison"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:8889187,translation:"poison",lore_color:"red",effect:"poison",duration:2,duration_lore_0:0,duration_lore_1:2,amplifier:1}

execute if data storage myriad:temp root{potion:"minecraft:slow_falling"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:15978425,translation:"slow_falling",lore_color:"blue",effect:"slow_falling",duration:9,duration_lore_0:0,duration_lore_1:9,amplifier:0}
execute if data storage myriad:temp root{potion:"minecraft:long_slow_falling"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:15978425,translation:"slow_falling",lore_color:"blue",effect:"slow_falling",duration:24,duration_lore_0:2,duration_lore_1:4,amplifier:0}

execute if data storage myriad:temp root{potion:"myriad:fortitude"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/fortitude
execute if data storage myriad:temp root{potion:"myriad:long_fortitude"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/long_fortitude
execute if data storage myriad:temp root{potion:"myriad:strong_fortitude"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/strong_fortitude

execute if data storage myriad:temp root{potion:"minecraft:swiftness"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/swiftness
execute if data storage myriad:temp root{potion:"minecraft:long_swiftness"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/long_swiftness
execute if data storage myriad:temp root{potion:"minecraft:strong_swiftness"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/strong_swiftness

execute if data storage myriad:temp root{potion:"minecraft:slowness"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/slowness
execute if data storage myriad:temp root{potion:"minecraft:long_slowness"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/long_slowness
execute if data storage myriad:temp root{potion:"minecraft:strong_slowness"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/strong_slowness

execute if data storage myriad:temp root{potion:"minecraft:strength"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/strength
execute if data storage myriad:temp root{potion:"minecraft:long_strength"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/long_strength
execute if data storage myriad:temp root{potion:"minecraft:strong_strength"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/strong_strength

execute if data storage myriad:temp root{potion:"minecraft:weakness"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/weakness
execute if data storage myriad:temp root{potion:"minecraft:long_weakness"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/long_weakness

execute if data storage myriad:temp root{potion:"minecraft:luck"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/luck

execute if data storage myriad:temp root{potion:"minecraft:infested"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:9214860,translation:"infested",lore_color:"red",effect:"infested",duration:18,duration_lore_0:1,duration_lore_1:8,amplifier:0}

execute if data storage myriad:temp root{potion:"minecraft:oozing"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:10092451,translation:"oozing",lore_color:"red",effect:"oozing",duration:18,duration_lore_0:1,duration_lore_1:8,amplifier:0}

execute if data storage myriad:temp root{potion:"minecraft:weaving"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:7891290,translation:"weaving",lore_color:"red",effect:"weaving",duration:18,duration_lore_0:1,duration_lore_1:8,amplifier:0}

execute if data storage myriad:temp root{potion:"minecraft:wind_charged"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:12438015,translation:"wind_charged",lore_color:"red",effect:"wind_charged",duration:18,duration_lore_0:1,duration_lore_1:8,amplifier:0}

execute if data storage myriad:temp root{potion:"minecraft:harming"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/harming
execute if data storage myriad:temp root{potion:"minecraft:strong_harming"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/strong_harming

execute if data storage myriad:temp root{potion:"minecraft:healing"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/healing
execute if data storage myriad:temp root{potion:"minecraft:strong_healing"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/strong_healing

execute if data storage myriad:temp root{potion:"minecraft:turtle_master"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/turtle_master
execute if data storage myriad:temp root{potion:"minecraft:long_turtle_master"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/long_turtle_master
execute if data storage myriad:temp root{potion:"minecraft:strong_turtle_master"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/strong_turtle_master

execute if data storage myriad:temp root{potion:"myriad:blind_rage"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/blind_rage
execute if data storage myriad:temp root{potion:"myriad:long_blind_rage"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_type/long_blind_rage

execute if data storage myriad:temp root{potion:"minecraft:water"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_no_effect_tags {translation:"water"}
execute if data storage myriad:temp root{potion:"minecraft:thick"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_no_effect_tags {translation:"thick"}
execute if data storage myriad:temp root{potion:"minecraft:awkward"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_no_effect_tags {translation:"awkward"}
execute if data storage myriad:temp root{potion:"minecraft:mundane"} run return run function myriad:block/brewing_stand/brewing/dilute_potion/set_no_effect_tags {translation:"mundane"}

# Case if none of the above return
function myriad:block/brewing_stand/brewing/dilute_potion/set_type/uncraftable