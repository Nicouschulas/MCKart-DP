execute store result entity @s Rotation[0] float 1 run scoreboard players get @s mck_startangle

scoreboard players remove @s mck_timer 1

execute if score @s mck_timer matches ..0 run scoreboard players set @s mck_lobby_status 2