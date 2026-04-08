execute store result score in mck_db_bit run data get storage temp list1[0]
function mck:database/player_good_find
execute if data storage databases output run data modify storage temp list append from storage databases output
data remove storage temp list1[0]


execute if data storage temp list1[0] run function mck:menu/page_cosmetics/child/repeat