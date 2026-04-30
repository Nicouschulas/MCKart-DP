scoreboard players operation @s mck_goods_id = #give_all_cosmetic mck_temp

#skip soon ding
execute if score @s mck_goods_id matches 5 run scoreboard players add #give_all_cosmetic mck_temp 1
execute if score @s mck_goods_id matches 5 run function mck:player/gitgud/give_all_loop

function mck:player/gitgud/gitgud
scoreboard players add #give_all_cosmetic mck_temp 1
execute if score #give_all_cosmetic mck_temp matches ..68 run function mck:player/gitgud/give_all_loop