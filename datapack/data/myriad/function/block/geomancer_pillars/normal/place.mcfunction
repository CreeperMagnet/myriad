# Function to spawn a geomancer pillar

fill ~ ~ ~ ~ ~2 ~ minecraft:barrier
playsound minecraft:block.deepslate.place block @a[distance=..16]
execute align xz run summon minecraft:item_display ~0.5 ~0.5 ~0.5 {Tags:["smithed.entity","smithed.block","myriad.block","myriad.geomancer_pillar","myriad.geomancer_pillar.normal"],item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"myriad:block/geomancer_pillar/normal"}},transformation:{translation:[0.0f,1.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},view_range:4.0f}
