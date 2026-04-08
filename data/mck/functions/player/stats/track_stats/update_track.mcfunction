scoreboard players set bool mck_temp 1

execute store result score stat mck_temp run data get storage temp list1[0].games_played
scoreboard players add stat mck_temp 1
execute store result storage temp list1[0].games_played int 1 run scoreboard players get stat mck_temp

execute if score @s mck_lobby_type matches 0 run function mck:player/stats/track_stats/update_normal
execute if score @s mck_lobby_type matches 1 run function mck:player/stats/track_stats/update_ranked