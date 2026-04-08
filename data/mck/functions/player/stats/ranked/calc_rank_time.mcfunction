execute store result score pb mck_temp run data get storage temp list2[0].r_best_time

execute store result score in mck_db_bit run data get storage temp list2[0].id
function mck:database/track_find

execute store result score wr mck_temp run data get storage databases output.data.r_best.time

scoreboard players operation pb mck_temp -= wr mck_temp
scoreboard players operation rank_time mck_temp += pb mck_temp


data remove storage temp list2[0]
execute if data storage temp list2[0] run function mck:player/stats/ranked/calc_rank_time