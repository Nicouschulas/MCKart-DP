execute store result score id mck_temp run data get storage databases output.data.n_best.id
execute store result score time mck_temp run data get storage databases output.data.n_best.time

scoreboard players set record mck_temp 0
execute if score id mck_temp matches -1 run scoreboard players set record mck_temp 1

execute if score @s mck_timer < time mck_temp run scoreboard players set record mck_temp 2

execute if score record mck_temp matches 1.. run function mck:player/stats/public_tracks/n_record


data modify storage databases input.data set from storage databases output.data
function mck:database/track_set