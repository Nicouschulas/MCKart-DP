execute if score @s mck_drive_mode matches 1 run data modify entity @s Motion[1] set value -2.0

execute if score kart_check mck_timer matches 20 if entity @s[tag=!stun_coin] run function mck:coin/check