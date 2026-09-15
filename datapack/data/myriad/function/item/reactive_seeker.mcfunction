# Makes the reactive seeker function
function myriad:item/structure_compass/main {id:"reactive_seeker",dimension:"minecraft:the_nether"}

# Random effects
playsound myriad:item.reactive_seeker.use player @a[distance=..16]
advancement grant @s only myriad:minecraft/nether/reactive_seeker