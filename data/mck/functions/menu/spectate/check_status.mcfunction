scoreboard players set bool mck_temp 0
execute if score selected mck_temp matches 1 if score @s mck_lobby_type matches 0 store result score bool mck_temp run data get storage lobby normal[0].status
execute if score selected mck_temp matches 2 if score @s mck_lobby_type matches 0 store result score bool mck_temp run data get storage lobby normal[1].status
execute if score selected mck_temp matches 3 if score @s mck_lobby_type matches 0 store result score bool mck_temp run data get storage lobby normal[2].status
execute if score selected mck_temp matches 4 if score @s mck_lobby_type matches 0 store result score bool mck_temp run data get storage lobby normal[3].status
execute if score selected mck_temp matches 5 if score @s mck_lobby_type matches 0 store result score bool mck_temp run data get storage lobby normal[4].status
execute if score selected mck_temp matches 6 if score @s mck_lobby_type matches 0 store result score bool mck_temp run data get storage lobby normal[5].status
execute if score selected mck_temp matches 7 if score @s mck_lobby_type matches 0 store result score bool mck_temp run data get storage lobby normal[6].status
execute if score selected mck_temp matches 8 if score @s mck_lobby_type matches 0 store result score bool mck_temp run data get storage lobby normal[7].status
execute if score selected mck_temp matches 9 if score @s mck_lobby_type matches 0 store result score bool mck_temp run data get storage lobby normal[8].status

execute if score selected mck_temp matches 1 if score @s mck_lobby_type matches 1 store result score bool mck_temp run data get storage lobby ranked[0].status
execute if score selected mck_temp matches 2 if score @s mck_lobby_type matches 1 store result score bool mck_temp run data get storage lobby ranked[1].status
execute if score selected mck_temp matches 3 if score @s mck_lobby_type matches 1 store result score bool mck_temp run data get storage lobby ranked[2].status
execute if score selected mck_temp matches 4 if score @s mck_lobby_type matches 1 store result score bool mck_temp run data get storage lobby ranked[3].status
execute if score selected mck_temp matches 5 if score @s mck_lobby_type matches 1 store result score bool mck_temp run data get storage lobby ranked[4].status
execute if score selected mck_temp matches 6 if score @s mck_lobby_type matches 1 store result score bool mck_temp run data get storage lobby ranked[5].status
execute if score selected mck_temp matches 7 if score @s mck_lobby_type matches 1 store result score bool mck_temp run data get storage lobby ranked[6].status
execute if score selected mck_temp matches 8 if score @s mck_lobby_type matches 1 store result score bool mck_temp run data get storage lobby ranked[7].status
execute if score selected mck_temp matches 9 if score @s mck_lobby_type matches 1 store result score bool mck_temp run data get storage lobby ranked[8].status

#execute if score @s mck_lobby matches 1.. run scoreboard players set bool mck_temp 0

execute unless score bool mck_temp matches 2 run scoreboard players set selected mck_temp 0
execute unless score bool mck_temp matches 2 run function mck:menu/draw