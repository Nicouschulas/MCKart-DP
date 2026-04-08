scoreboard players set temp mck_temp 0
execute if block ~ ~-1.5 ~ air if block ~ ~-0.5 ~ air run scoreboard players set temp mck_temp 1
execute if block ~ ~-0.5 ~ light run scoreboard players set temp mck_temp 1
execute if block ~ ~-1.5 ~ light run scoreboard players set temp mck_temp 1
execute unless score @s mck_blue_id matches 1.. unless score @s mck_red_id matches 1.. if score temp mck_temp matches 0 run item replace entity @s armor.head with air
execute unless score @s mck_blue_id matches 1.. unless score @s mck_red_id matches 1.. if score temp mck_temp matches 1 run function mck:player/drive/set_glider