# shroom
execute if score @s mck_item1 matches 1..2 run function mck:item_function/shroom/shroom
execute if score @s mck_item1 matches 1..2 run scoreboard players add shrooms_used mck_community 1
execute if score @s mck_item1 matches 1..2 run scoreboard players add @s mck_shrooms_used 1

# banana
execute if score @s mck_item1 matches 3..4 run function mck:item_function/banana/banana

# fireflower
execute if score @s mck_item1 matches 5 run function mck:item_function/fireflower/fireflower

# blue shell
execute if score @s mck_item1 matches 6 unless score @s mck_place matches 1 run function mck:item_function/blue_shell/blue_shell

# red shell
execute if score @s mck_item1 matches 7..8 unless score @s mck_place matches 1 run function mck:item_function/red_shell/red_shell

# lightning
execute if score @s mck_item1 matches 9 run function mck:item_function/lightning/lightning

# squid
execute if score @s mck_item1 matches 10 run function mck:item_function/squid/squid

# bomb
execute if score @s mck_item1 matches 11..12 run function mck:item_function/bomb/bomb

# star
execute if score @s mck_item1 matches 13 run function mck:item_function/star/star


# super leaf
execute if score @s mck_item1 matches 14 if score @s mck_item1_count matches 161 run scoreboard players set temp mck_temp 14
execute if score @s mck_item1 matches 14 if score @s mck_item1_count matches 161 on vehicle on passengers if entity @s[tag=item_mount] run scoreboard players operation @s mck_item_mount = temp mck_temp
execute if score @s mck_item1 matches 14 unless score @s mck_leaf matches 1.. run function mck:item_function/leaf/leaf

# pipe
execute if score @s mck_item1 matches 15 run function mck:item_function/pipe/pipe

# golden shroom
execute if score @s mck_item1 matches 16 run function mck:item_function/shroom/gold_shroom

# coin
execute if score @s mck_item1 matches 17 run function mck:item_function/coin/coin

# fake itembox
execute if score @s mck_item1 matches 18 run function mck:item_function/fake-itembox/fake-itembox

execute if score @s mck_item1 matches 1..18 run scoreboard players add items_used mck_community 1