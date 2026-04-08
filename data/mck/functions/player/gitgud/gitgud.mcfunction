scoreboard players operation in mck_db_bit = @s mck_goods_id
function mck:database/good_find

execute store result score rebuy mck_temp run data get storage databases output.data.rebuy
execute store result score group mck_temp run data get storage databases output.data.group
data modify storage temp temp_good set from storage databases output

scoreboard players set bool mck_temp 0

execute unless data storage databases output.data run scoreboard players set bool mck_temp 1


execute if score @s mck_lootbox matches 1.. run tellraw @s [{"text": "           "},{"nbt":"output.data.icon.tag.display.Name","storage":"databases","interpret":true}]

execute if score bool mck_temp matches 0 if score rebuy mck_temp matches 0 run data modify storage databases player_goods set from entity @s EnderItems[5].tag.player_goods
execute if score bool mck_temp matches 0 if score rebuy mck_temp matches 0 run function mck:database/player_good_find
execute if score bool mck_temp matches 0 if score rebuy mck_temp matches 0 store result score player_amount mck_temp run data get storage databases output.data.amount
execute if score bool mck_temp matches 0 if score rebuy mck_temp matches 0 if score player_amount mck_temp matches 1.. run scoreboard players set bool mck_temp 1

execute if score bool mck_temp matches 0 run function mck:player/gitgud/allgud