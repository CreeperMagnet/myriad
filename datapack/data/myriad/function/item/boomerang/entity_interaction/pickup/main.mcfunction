# Commands for possibly picking up a boomerang

execute as @a[dx=0,gamemode=!spectator,sort=nearest] run function myriad:item/boomerang/entity_interaction/pickup/uuid_check with storage myriad:temp root.boomerang.macro_input
execute if data storage myriad:temp root.boomerang.macro_input{UUID:"found"} run function myriad:item/boomerang/entity_interaction/pickup/kill_boomerang
