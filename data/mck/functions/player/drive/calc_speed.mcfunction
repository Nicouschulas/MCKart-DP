# brake
execute if score @s mck_brake matches 1.. run scoreboard players operation @s mck_speed -= @s mck_brake
execute if score @s mck_brake matches 1.. if score @s mck_speed matches ..-60 run scoreboard players set @s mck_speed -60


# acceleration
execute if score @s mck_stun matches ..0 run scoreboard players add @s mck_speed 2


# stun
execute if score @s mck_stun matches 1.. if score @s mck_speed matches 61.. run scoreboard players set @s mck_speed 60
execute if score @s mck_stun matches 20.. if score @s mck_speed matches 31.. run scoreboard players set @s mck_speed 30
execute if score @s mck_stun matches 40.. if score @s mck_speed matches 11.. run scoreboard players set @s mck_speed 10
execute if score @s mck_stun matches 60.. run scoreboard players set @s mck_speed 0
execute if score @s mck_stun matches 1.. run scoreboard players remove @s mck_stun 2




# max speed
execute unless score @s mck_lobby_type matches 1 run function mck:player/drive/max_speed_n
execute if score @s mck_lobby_type matches 1 run function mck:player/drive/max_speed_r

execute if score @s mck_boost matches 1.. run scoreboard players operation @s mck_boost /= #2 wasd.constant