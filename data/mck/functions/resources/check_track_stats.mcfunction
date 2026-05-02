execute store result score in mck_db_bit run data get storage temp list1[0]
function mck:database/track_find
execute unless data storage databases output run function mck:resources/add_new_track

data remove storage temp list1[0]
data remove storage temp names[0]
execute if data storage temp list1[0] run function mck:resources/check_track_stats