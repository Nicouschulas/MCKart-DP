execute if score kart_check mck_timer matches 10 run function mck:bots/check

data merge entity @s {Sitting:0b,Crouching:0b,Sleeping:0b}
effect give @s slowness 999999 250 true

execute store result score temp mck_temp run data get entity @s Pos[1] 10
scoreboard players operation @s mck_y_pos -= temp mck_temp

execute if score @s mck_y_pos matches 1.. if score @s mck_x_rot matches ..-1 run scoreboard players set @s mck_x_rot 0
execute if score @s mck_y_pos matches 1.. if score @s mck_x_rot matches ..9 run scoreboard players add @s mck_x_rot 2
execute if score @s mck_y_pos matches ..-1 if score @s mck_x_rot matches 1.. run scoreboard players set @s mck_x_rot 0
execute if score @s mck_y_pos matches ..-1 if score @s mck_x_rot matches -7.. run scoreboard players remove @s mck_x_rot 3

execute if score @s mck_y_pos matches 0 if score @s mck_x_rot matches 1.. run scoreboard players remove @s mck_x_rot 1
execute if score @s mck_y_pos matches 0 if score @s mck_x_rot matches ..-1 run scoreboard players add @s mck_x_rot 1

scoreboard players set bool mck_temp 0
execute on passengers rotated as @s on vehicle rotated ~ 0 positioned ~ ~1.4 ~ run function mck:kart/block_check

execute if score bool mck_temp matches 1 run data modify entity @s Motion[1] set value 1.2
execute if score bool mck_temp matches 1 run scoreboard players set @s mck_x_rot -45


execute if score bool mck_temp matches 2 run data modify entity @s Motion[1] set value 0.6
execute if score bool mck_temp matches 2 run scoreboard players set @s mck_x_rot -25

execute store result entity @s Rotation[1] float 1.65 run scoreboard players get @s mck_x_rot
scoreboard players operation @s mck_y_pos = temp mck_temp


execute if score @s mck_lobby_status matches 1 run function mck:bots/status_1

execute if score @s mck_lobby_status matches 2 run scoreboard players add @s mck_timer 1
execute if score @s mck_lobby_status matches 2 run scoreboard players add @s mck_time 1
execute if score @s mck_lobby_status matches 2..3 run function mck:bots/drive

execute if score @s mck_lobby_status matches 3 run function mck:bots/status_3

execute if score @s mck_use matches 1.. run scoreboard players reset @s mck_use


data modify storage temp rot set from entity @s Rotation
execute on passengers if entity @s[tag=puppet] run data modify entity @s Rotation set from storage temp rot