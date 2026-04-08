scoreboard players set @s mck_page 0
function mck:player/challenges/reached
function mck:player/reset
scoreboard players operation x mck_temp = @s mck_last_x
scoreboard players operation y mck_temp = @s mck_last_y
scoreboard players operation z mck_temp = @s mck_last_z
execute at @s run function mck:player/score_tp

stopsound @s ambient
scoreboard players set @s mck_region_timer 50
stopsound @s master
stopsound @s player