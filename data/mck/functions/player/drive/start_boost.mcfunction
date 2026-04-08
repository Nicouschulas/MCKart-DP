execute if score .w wasd matches 0 run scoreboard players set @s mck_startboost 0

execute if score @s mck_startboost matches 0 if score .w wasd matches 1 if score @s mck_timer matches 41.. run scoreboard players set @s mck_startboost -1
execute if score @s mck_startboost matches 0 if score .w wasd matches 1 if score @s mck_timer matches 30..40 run scoreboard players set @s mck_startboost 1
execute if score @s mck_startboost matches 0 if score .w wasd matches 1 if score @s mck_timer matches ..29 run scoreboard players set @s mck_startboost 0