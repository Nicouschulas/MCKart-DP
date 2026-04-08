scoreboard players operation in mck_db_bit = player_id mck_temp
function mck:database/player_find
data modify storage databases output.data.stats.rank_placing set from storage ranklist best.rank_placing
data modify storage databases input set from storage databases output
function mck:database/player_set