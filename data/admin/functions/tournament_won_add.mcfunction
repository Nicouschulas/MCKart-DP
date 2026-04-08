scoreboard players operation in mck_db_bit = @s mck_id
function mck:database/player_find

execute store result score temp mck_temp run data get storage databases output.data.stats.tournaments_won
scoreboard players add temp mck_temp 1
execute store result storage databases output.data.stats.tournaments_won int 1 run scoreboard players get temp mck_temp

data modify storage databases input set from storage databases output
function mck:database/player_set

function mck:player/stats/set_from_db