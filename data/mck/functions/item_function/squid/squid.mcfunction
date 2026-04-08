tag @s add user
scoreboard players operation temp mck_temp = @s mck_lobby
execute as @e[scores={mck_lobby_status=2},tag=!user] if score @s mck_lobby = temp mck_temp run function mck:item_function/squid/splash
tag @s remove user