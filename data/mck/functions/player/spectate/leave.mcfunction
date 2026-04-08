gamemode adventure @s
function mck:player/show_menu

scoreboard players operation x mck_temp = @s mck_last_x
scoreboard players operation y mck_temp = @s mck_last_y
scoreboard players operation z mck_temp = @s mck_last_z
function mck:player/score_tp

scoreboard players reset @s mck_spectate
scoreboard players set @s mck_status 0

scoreboard players reset @s mck_track

stopsound @s player
stopsound @s master
function mck:player/team/normal
title @s times 0 5 5
title @s subtitle ""
title @s title "\uE000"