data modify storage databases player_goods set from entity @s EnderItems[5].tag.player_goods
function mck:database/player_good_find
execute unless data storage databases output.data run function mck:player/buy/add_new

execute store result score good_amount mck_temp run data get storage databases output.data.amount
scoreboard players add good_amount mck_temp 1
execute store result storage databases output.data.amount int 1 run scoreboard players get good_amount mck_temp
data modify storage databases input set from storage databases output
function mck:database/player_good_set

item modify entity @s enderchest.5 mck:player_goods_set


execute if score @s mck_goods_id matches 6.. if score group mck_temp matches 1 run advancement grant @s only mck:shop/kart_skin
execute if score @s mck_goods_id matches 6.. if score group mck_temp matches 2 run advancement grant @s only mck:shop/coin_multiplier
execute if score @s mck_goods_id matches 6.. if score group mck_temp matches 3 run advancement grant @s only mck:shop/super_vote
execute if score @s mck_goods_id matches 6.. if score group mck_temp matches 4 run advancement grant @s only mck:shop/handheld_item
execute if score @s mck_goods_id matches 6.. if score group mck_temp matches 5 run advancement grant @s only mck:shop/hat
execute if score @s mck_goods_id matches 6.. if score group mck_temp matches 6 run advancement grant @s only mck:shop/audio_pack
execute if score @s mck_goods_id matches 6.. if score group mck_temp matches 7 run advancement grant @s only mck:shop/glider_skin
execute if score @s mck_goods_id matches 6.. if score group mck_temp matches 8 run advancement grant @s only mck:shop/trail
execute if score @s mck_goods_id matches 6.. if score group mck_temp matches 9 run advancement grant @s only mck:shop/loot_box


execute if score @s mck_goods_id matches 6.. unless score @s mck_lootbox matches 1.. run tellraw @s [{"text": ""},{"text":"[","color":"gray","bold":true},{"translate":"system","color":"gold","bold":false},{"text":"] ","color":"gray","bold":true},{"translate":"chat.alert.cosmetics.gitgud","color":"white","bold":false},{"nbt":"output.data.icon.tag.display.Name","storage":"databases","interpret":true}]