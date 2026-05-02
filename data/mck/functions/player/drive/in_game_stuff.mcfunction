# shell trail
execute if score is_on_kart mck_temp matches 1 if score @s mck_lobby_status matches 2 run function mck:player/drive/shell_trail
execute if score @s mck_blue_id matches 1.. run function mck:item_function/blue_shell/connect
execute if score @s mck_red_id matches 1.. run function mck:item_function/red_shell/connect

# blue shell
execute if score @s mck_blue_id matches 1.. run function mck:item_function/blue_shell/collect

# red shell
execute if score @s mck_red_id matches 1.. run function mck:item_function/red_shell/collect

# squid
execute if score @s mck_squid matches 1.. run function mck:item_function/squid/victim

# star
execute if score @s mck_star matches 1.. run function mck:item_function/star/main

# leaf
execute if score @s mck_leaf matches 1.. run scoreboard players remove @s mck_leaf 1
execute if score @s mck_leaf matches ..0 run scoreboard players reset @s mck_leaf

# pipe
execute if score @s mck_pipe matches 1.. run function mck:item_function/pipe/main

# tumble
execute if score @s mck_tumble matches 12 if score @s mck_lobby_status matches 2 run function mck:player/drive/loose_coins
execute if score @s mck_tumble matches 1.. run scoreboard players remove @s mck_tumble 1

# coins
execute if score is_on_kart mck_temp matches 1 if score @s mck_lobby_status matches 2 run tag @s add collector
execute if score is_on_kart mck_temp matches 1 if score @s mck_lobby_status matches 2 run scoreboard players operation id mck_temp = @s mck_id
execute if score is_on_kart mck_temp matches 1 if score @s mck_lobby_status matches 2 as @e[type=item,tag=coin,limit=1,distance=..0.8] unless score @s mck_spectate = id mck_temp at @s run function mck:coin/collect

# banana
execute if score is_on_kart mck_temp matches 1 if score @s mck_lobby_status matches 2 as @e[type=item,tag=banana,limit=1,distance=..0.8,scores={mck_timer=..0}] at @s run function mck:item_function/banana/banana_collect

# itemboxes
execute if score @s mck_lobby_type matches 0 run scoreboard players set @s mck_item_delay 0
execute if score @s mck_lobby_type matches 1 if score @s mck_item_delay matches 1.. run scoreboard players remove @s mck_item_delay 1
scoreboard players operation type mck_temp = @s mck_lobby_type
execute if score is_on_kart mck_temp matches 1 unless score @s mck_item_delay matches 1.. if score @s mck_lobby_status matches 2 positioned ~ ~0.3 ~ as @e[tag=itembox,type=end_crystal,limit=1,distance=..1.2] at @s run function mck:itembox/collect

# fake itemboxes
execute if score is_on_kart mck_temp matches 1 if score @s mck_lobby_status matches 2 as @e[type=end_crystal,tag=fake_itembox,limit=1,distance=..1.1,scores={mck_timer=..0}] at @s run function mck:item_function/fake-itembox/collect
execute if score is_on_kart mck_temp matches 1 if score @s mck_lobby_status matches 2 run tag @s remove collector

# wenn itembox collected
execute if score @s mck_itembox matches 1.. run function mck:player/item/collect

# item main
scoreboard players operation temp mck_temp = @s mck_item1
scoreboard players operation temp mck_temp += @s mck_item2
execute if score temp mck_temp matches 1.. run function mck:player/item/main

# challenge level 5 quest 2: backwards driving
execute if score @s mck_challenge_level matches 5 if score @s mck_quest2 matches 0.. if score @s mck_speed matches ..-1 run scoreboard players add @s mck_quest_temp 1