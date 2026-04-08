execute store result score stat mck_temp run data get storage temp enderchest[4].tag.stats.r_time_played
scoreboard players operation stat mck_temp += @s mck_timer
execute store result storage temp enderchest[4].tag.stats.r_time_played int 1 run scoreboard players get stat mck_temp

execute store result score stat mck_temp run data get storage temp enderchest[4].tag.stats.r_races_played
scoreboard players add stat mck_temp 1
execute store result storage temp enderchest[4].tag.stats.r_races_played int 1 run scoreboard players get stat mck_temp