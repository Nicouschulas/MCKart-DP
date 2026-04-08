scoreboard players set bool mck_temp 0
execute if score selected mck_temp matches 1 if score @s mck_lobby_type matches 0 store success score bool mck_temp if data storage lobby normal[0].players[0]
execute if score selected mck_temp matches 2 if score @s mck_lobby_type matches 0 store success score bool mck_temp if data storage lobby normal[1].players[0]
execute if score selected mck_temp matches 3 if score @s mck_lobby_type matches 0 store success score bool mck_temp if data storage lobby normal[2].players[0]
execute if score selected mck_temp matches 4 if score @s mck_lobby_type matches 0 store success score bool mck_temp if data storage lobby normal[3].players[0]
execute if score selected mck_temp matches 5 if score @s mck_lobby_type matches 0 store success score bool mck_temp if data storage lobby normal[4].players[0]
execute if score selected mck_temp matches 6 if score @s mck_lobby_type matches 0 store success score bool mck_temp if data storage lobby normal[5].players[0]
execute if score selected mck_temp matches 7 if score @s mck_lobby_type matches 0 store success score bool mck_temp if data storage lobby normal[6].players[0]
execute if score selected mck_temp matches 8 if score @s mck_lobby_type matches 0 store success score bool mck_temp if data storage lobby normal[7].players[0]
execute if score selected mck_temp matches 9 if score @s mck_lobby_type matches 0 store success score bool mck_temp if data storage lobby normal[8].players[0]

execute if score selected mck_temp matches 1 if score @s mck_lobby_type matches 1 store success score bool mck_temp if data storage lobby ranked[0].players[0]
execute if score selected mck_temp matches 2 if score @s mck_lobby_type matches 1 store success score bool mck_temp if data storage lobby ranked[1].players[0]
execute if score selected mck_temp matches 3 if score @s mck_lobby_type matches 1 store success score bool mck_temp if data storage lobby ranked[2].players[0]
execute if score selected mck_temp matches 4 if score @s mck_lobby_type matches 1 store success score bool mck_temp if data storage lobby ranked[3].players[0]
execute if score selected mck_temp matches 5 if score @s mck_lobby_type matches 1 store success score bool mck_temp if data storage lobby ranked[4].players[0]
execute if score selected mck_temp matches 6 if score @s mck_lobby_type matches 1 store success score bool mck_temp if data storage lobby ranked[5].players[0]
execute if score selected mck_temp matches 7 if score @s mck_lobby_type matches 1 store success score bool mck_temp if data storage lobby ranked[6].players[0]
execute if score selected mck_temp matches 8 if score @s mck_lobby_type matches 1 store success score bool mck_temp if data storage lobby ranked[7].players[0]
execute if score selected mck_temp matches 9 if score @s mck_lobby_type matches 1 store success score bool mck_temp if data storage lobby ranked[8].players[0]

execute if score bool mck_temp matches 0 run scoreboard players set selected mck_temp 0
execute if score bool mck_temp matches 0 run scoreboard players operation @s mck_lobby_type = old mck_temp
execute if score bool mck_temp matches 0 run function mck:menu/draw