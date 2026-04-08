execute store result score time mck_time run data get storage databases output.data.stats.rank_time
execute if score time mck_time matches 99000000.. run scoreboard players set time mck_time 0
function mck:time/calc
data modify storage temp time1 set from storage time time

execute store result score place mck_temp run data get storage databases output.data.stats.rank_placing
scoreboard players set result1 mck_temp 1000
scoreboard players operation place2 mck_temp = place mck_temp
scoreboard players remove place2 mck_temp 1
scoreboard players operation result1 mck_temp *= place2 mck_temp
scoreboard players operation result1 mck_temp /= ranked_players mck_data
scoreboard players operation result2 mck_temp = result1 mck_temp

scoreboard players operation result1 mck_temp /= #10 mck_time
scoreboard players operation result2 mck_temp %= #10 mck_time


execute store result score time mck_time run data get storage databases output.data.stats.rank_time
execute store result score rank mck_temp run data get storage databases output.data.stats.rank
execute if score time mck_time matches 99000000.. run scoreboard players set time mck_time 0
execute unless score rank mck_temp matches 9 run scoreboard players operation time mck_time %= time_per_rank mck_data
execute unless score rank mck_temp matches 9 run scoreboard players operation time mck_time *= #-1 mck_time
execute if score rank mck_temp matches 9 run scoreboard players operation temp mck_temp = time_per_rank mck_data
execute if score rank mck_temp matches 9 run scoreboard players operation temp mck_temp *= #7 mck_time
execute if score rank mck_temp matches 9 run scoreboard players operation time mck_time -= temp mck_temp
execute if score rank mck_temp matches 9 run scoreboard players operation time mck_time *= #-1 mck_time
function mck:time/calc2
data modify storage temp time2 set from storage time time


item modify block 0 0 0 container.0 mck:profile_ranked