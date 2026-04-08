execute store result score in mck_db_bit run data get storage temp cups[0][0].tag.data.id
function mck:database/track_find

execute store result score games mck_temp run data get storage databases output.data.n_times_played
execute store result score games2 mck_temp run data get storage databases output.data.r_times_played
scoreboard players operation games mck_temp += games2 mck_temp

execute store result score time mck_time run data get storage databases output.data.n_best.time
function mck:time/calc
data modify storage temp time1 set from storage time time

execute store result score time mck_time run data get storage databases output.data.r_best.time
function mck:time/calc2
data modify storage temp time2 set from storage time time

item modify block 0 0 0 container.0 mck:public_track_stats