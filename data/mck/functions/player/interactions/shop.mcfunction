scoreboard players operation @s mck_goods_id = temp mck_temp
execute unless score @s mck_goods_id = old mck_temp run scoreboard players reset @s mck_buyconfirm
execute if score @s mck_goods_id matches 1.. run function mck:player/buy/buy