scoreboard players operation in mck_db_bit = amazon mck_goods_id

function mck:database/good_find
data modify storage databases output.data merge from storage amazon metadata
data modify storage databases output.data.icon set from entity @s SelectedItem
execute store result storage databases output.data.id long 1 run scoreboard players get amazon mck_goods_id
data modify storage databases input set from storage databases output
function mck:database/good_set