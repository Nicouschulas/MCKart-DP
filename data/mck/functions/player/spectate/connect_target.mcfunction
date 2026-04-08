tag @s add temp
scoreboard players set bool mck_temp 1



scoreboard players operation time mck_time = @s mck_timer
function mck:time/calc

scoreboard players operation runde mck_temp = @s mck_checkpoint
scoreboard players operation runde mck_temp /= @s mck_race_ch
scoreboard players add runde mck_temp 1
scoreboard players operation maxrunden mck_temp = @s mck_race_mr

scoreboard players operation coins mck_temp = @s mck_coins
scoreboard players operation place mck_temp = @s mck_place
scoreboard players operation audio_pack mck_audio_pack = @s mck_audio_pack

scoreboard players operation spectator_track mck_track = @s mck_track