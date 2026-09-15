# Makes the smoldering seeker function
function myriad:item/structure_compass/main {id:"smoldering_seeker",dimension:"minecraft:the_nether"}

# Random effects
playsound myriad:item.smoldering_seeker.use player @a[distance=..16]
advancement grant @s only myriad:minecraft/nether/smoldering_seeker