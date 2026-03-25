# Runs when the scan hits the shrieker

data remove storage myriad:temp root
data modify storage myriad:temp root.macro_input.UUID set from entity @s UUID
function myriad:block/echo_shard_renewability/scan_for_shrieker/spawn_warden/summon_angry_warden_macro with storage myriad:temp root.macro_input
tag @s remove myriad.needs_to_spawn_warden