scoreboard players set temp mck_temp 0

execute if score @s mck_lobby_cmd matches 1 if score lobbyjoinlocked mck_temp matches 0 run scoreboard players set temp mck_temp 1
execute if score @s mck_lobby_cmd matches 1 if score lobbyjoinlocked mck_temp matches 1 run scoreboard players set temp mck_temp 0
execute if score @s mck_lobby_cmd matches 1 run scoreboard players operation lobbyjoinlocked mck_temp = temp mck_temp

execute if score @s mck_lobby_cmd matches 2 if score lobbylocked mck_temp matches 0 run scoreboard players set temp mck_temp 1
execute if score @s mck_lobby_cmd matches 2 if score lobbylocked mck_temp matches 1 run scoreboard players set temp mck_temp 0
execute if score @s mck_lobby_cmd matches 2 run scoreboard players operation lobbylocked mck_temp = temp mck_temp

execute if score @s mck_lobby_cmd matches 3 if score lobbyautokick mck_temp matches 0 run scoreboard players set temp mck_temp 1
execute if score @s mck_lobby_cmd matches 3 if score lobbyautokick mck_temp matches 1 run scoreboard players set temp mck_temp 0
execute if score @s mck_lobby_cmd matches 3 run scoreboard players operation lobbyautokick mck_temp = temp mck_temp

execute if score @s mck_lobby_cmd matches 4 if score lobbystarttime mck_temp matches 10.. run scoreboard players set lobbystarttime mck_temp 10

execute if score @s mck_lobby_cmd matches 5 if score lobbybots mck_temp matches 0 run scoreboard players set temp mck_temp 1
execute if score @s mck_lobby_cmd matches 5 if score lobbybots mck_temp matches 1 run scoreboard players set temp mck_temp 0
execute if score @s mck_lobby_cmd matches 5 run scoreboard players operation lobbybots mck_temp = temp mck_temp

scoreboard players set @s mck_lobby_cmd 0

execute as @a[scores={mck_lobby=1..}] if score @s mck_lobby = lobbyid mck_temp if score @s mck_page matches -1 run function mck:menu/draw