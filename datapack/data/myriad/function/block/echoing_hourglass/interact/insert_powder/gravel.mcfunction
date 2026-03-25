# Inserts gravel into echoing hourglass

function myriad:block/echoing_hourglass/insert_powder_macro {"powder":"gravel"}
execute as @p[advancements={myriad:technical/player_interacted_with_entity/echoing_hourglass=true},gamemode=!creative] run item modify entity @s weapon.mainhand myriad:reduce_count