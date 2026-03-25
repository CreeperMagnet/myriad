# Spawns the baby from the egg

function myriad:entity/sprouter/summon_baby
function myriad:block/break_particles/spawn_generic
setblock ~ ~ ~ air
playsound myriad:block.sprouter_egg.hatch block @a[distance=..16]