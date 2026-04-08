execute if score player_loop mck_temp matches 1.. store result score temp mck_temp run data get storage lobby normal[0].players[0].id
execute if score player_loop mck_temp matches 1.. store result score temp2 mck_temp run data get storage lobby normal[0].id
execute if score player_loop mck_temp matches 1.. run scoreboard players set bool mck_temp 0
execute if score player_loop mck_temp matches 1.. as @a[scores={mck_lobby=1..}] if score @s mck_id = temp mck_temp if score @s mck_lobby = temp2 mck_temp run scoreboard players set bool mck_temp 1
execute if score player_loop mck_temp matches 1.. if score bool mck_temp matches 0 run data remove storage lobby normal[0].players[0]
execute if score player_loop mck_temp matches 1.. if score bool mck_temp matches 0 as @a[tag=!nomenu] run function mck:menu/draw


execute if score player_loop mck_temp matches 1.. run data modify storage lobby normal[0].players append from storage lobby normal[0].players[0]
execute if score player_loop mck_temp matches 1.. run data remove storage lobby normal[0].players[0]
execute if score player_loop mck_temp matches 1.. run scoreboard players remove player_loop mck_temp 1
execute if score player_loop mck_temp matches 1.. run function mck:lobby/normal/normal_check