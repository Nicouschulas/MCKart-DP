scoreboard players operation score1 mck_temp = rank mck_temp
scoreboard players remove score1 mck_temp 1

scoreboard players operation score2 mck_temp = rank mck_temp


scoreboard players operation score1 mck_temp *= time_per_rank mck_admin_settings
scoreboard players operation score1 mck_temp *= count2 mck_temp

scoreboard players operation score2 mck_temp *= time_per_rank mck_admin_settings
scoreboard players operation score2 mck_temp *= count2 mck_temp


execute if score player_time mck_temp > score1 mck_temp if score player_time mck_temp <= score2 mck_temp run scoreboard players operation player_rank mck_temp = rank mck_temp
execute if score player_time mck_temp > score1 mck_temp if score player_time mck_temp <= score2 mck_temp run scoreboard players add player_rank mck_temp 1
execute if score player_time mck_temp > score1 mck_temp if score player_time mck_temp <= score2 mck_temp run scoreboard players set bool mck_temp 1

execute if score rank mck_temp matches 8 if score bool mck_temp matches 0 if score player_time mck_temp > score2 mck_temp run scoreboard players set player_rank mck_temp 9
execute if score rank mck_temp matches 8 if score bool mck_temp matches 0 if score player_time mck_temp > score2 mck_temp if score player_time mck_temp matches 99000000.. run scoreboard players set player_rank mck_temp 0
execute if score rank mck_temp matches 8 if score bool mck_temp matches 0 if score player_time mck_temp > score2 mck_temp run scoreboard players set bool mck_temp 1


execute if score bool mck_temp matches 0 run scoreboard players add rank mck_temp 1
execute if score rank mck_temp matches 9.. run scoreboard players set bool mck_temp 1


execute if score bool mck_temp matches 0 run function mck:player/stats/ranked/resulting