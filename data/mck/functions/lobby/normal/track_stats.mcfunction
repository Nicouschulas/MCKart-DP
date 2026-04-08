execute store result score in mck_db_bit run data get storage lobby normal[0].track.tag.data.id
function mck:database/track_find

execute if data storage databases output.data store result score stat mck_temp run data get storage databases output.data.n_times_played
execute if data storage databases output.data run scoreboard players add stat mck_temp 1
execute if data storage databases output.data store result storage databases output.data.n_times_played int 1 run scoreboard players get stat mck_temp

execute if data storage databases output.data run data modify storage databases input.data set from storage databases output.data
execute if data storage databases output.data run function mck:database/track_set


scoreboard players add games_played mck_community 1
scoreboard players add normal_games mck_community 1