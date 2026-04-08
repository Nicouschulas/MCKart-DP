scoreboard players operation temp mck_temp = @s mck_timer
scoreboard players operation temp mck_temp *= #leaf wasd.constant

execute store result score rot mck_temp run data get entity @s Rotation[0]
scoreboard players operation rot mck_temp += temp mck_temp
execute store result entity @s Rotation[0] float 1 run scoreboard players get rot mck_temp