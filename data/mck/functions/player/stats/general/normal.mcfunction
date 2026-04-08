execute store result score stat mck_temp run data get storage temp enderchest[4].tag.stats.n_time_played
scoreboard players operation stat mck_temp += @s mck_timer
execute store result storage temp enderchest[4].tag.stats.n_time_played int 1 run scoreboard players get stat mck_temp

execute store result score stat mck_temp run data get storage temp enderchest[4].tag.stats.n_races_played
scoreboard players add stat mck_temp 1
execute store result storage temp enderchest[4].tag.stats.n_races_played int 1 run scoreboard players get stat mck_temp

execute if score @s mck_place matches 1 run execute store result score stat mck_temp run data get storage temp enderchest[4].tag.stats.wins
execute if score @s mck_place matches 1 run scoreboard players add stat mck_temp 1
execute if score @s mck_place matches 1 run function mck:best_players/best1_check
execute if score @s mck_place matches 1 run execute store result storage temp enderchest[4].tag.stats.wins int 1 run scoreboard players get stat mck_temp