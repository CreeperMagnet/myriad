# Takes durability off the wrench when you hit another player
function myriad:technical/macros/damage_slot/main {slot:"weapon.mainhand",slot_raw:"SelectedItem",amount:"20"}
advancement revoke @s only myriad:technical/player_hurt_entity/hit_another_player_with_wrench