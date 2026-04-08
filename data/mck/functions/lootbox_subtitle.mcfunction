scoreboard players operation in mck_db_bit = lootbox.id mck_goods_id
data modify storage databases player_goods set from entity @s EnderItems[5].tag.player_goods
function mck:database/player_good_find

execute unless data storage databases output.data.amount run data modify storage databases output.data.amount set value 0

title @s times 0 11 5
title @s subtitle [{"translate":"lootbox.subtitle","color":"#FFE6D4"},{"nbt":"output.data.amount","storage":"databases","color":"#FFE57D","bold":true}]
title @s title ""