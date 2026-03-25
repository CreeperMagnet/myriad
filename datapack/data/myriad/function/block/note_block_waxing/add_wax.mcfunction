# Summons markers and does wax vfx for waxing a note block

item modify entity @s[gamemode=!creative] weapon.mainhand myriad:reduce_count
particle minecraft:wax_on ~ ~ ~ 0.5 0.5 0.5 0 30 normal
playsound minecraft:item.honeycomb.wax_on block @a[distance=..16]
execute if block ~ ~ ~ minecraft:note_block[note=1] run return run summon minecraft:marker ~ ~ ~ {data:{note:0},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=2] run return run summon minecraft:marker ~ ~ ~ {data:{note:1},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=3] run return run summon minecraft:marker ~ ~ ~ {data:{note:2},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=4] run return run summon minecraft:marker ~ ~ ~ {data:{note:3},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=5] run return run summon minecraft:marker ~ ~ ~ {data:{note:4},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=6] run return run summon minecraft:marker ~ ~ ~ {data:{note:5},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=7] run return run summon minecraft:marker ~ ~ ~ {data:{note:6},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=8] run return run summon minecraft:marker ~ ~ ~ {data:{note:7},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=9] run return run summon minecraft:marker ~ ~ ~ {data:{note:8},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=10] run return run summon minecraft:marker ~ ~ ~ {data:{note:9},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=11] run return run summon minecraft:marker ~ ~ ~ {data:{note:10},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=12] run return run summon minecraft:marker ~ ~ ~ {data:{note:11},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=13] run return run summon minecraft:marker ~ ~ ~ {data:{note:12},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=14] run return run summon minecraft:marker ~ ~ ~ {data:{note:13},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=15] run return run summon minecraft:marker ~ ~ ~ {data:{note:14},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=16] run return run summon minecraft:marker ~ ~ ~ {data:{note:15},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=17] run return run summon minecraft:marker ~ ~ ~ {data:{note:16},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=18] run return run summon minecraft:marker ~ ~ ~ {data:{note:17},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=19] run return run summon minecraft:marker ~ ~ ~ {data:{note:18},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=20] run return run summon minecraft:marker ~ ~ ~ {data:{note:19},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=21] run return run summon minecraft:marker ~ ~ ~ {data:{note:20},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=22] run return run summon minecraft:marker ~ ~ ~ {data:{note:21},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=23] run return run summon minecraft:marker ~ ~ ~ {data:{note:22},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=24] run return run summon minecraft:marker ~ ~ ~ {data:{note:23},Tags:["myriad.waxed_note_block","myriad.marker","smithed.strict","smithed.entity"]}