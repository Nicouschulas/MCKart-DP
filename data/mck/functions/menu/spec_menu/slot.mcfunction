scoreboard players add slot mck_temp 1

item replace block 0 0 0 container.0 with gold_nugget[minecraft:display={Name:'{"text":" "}'},minecraft:custom_model_data=12,minecraft:killme=1b] 1
execute store result block 0 0 0 Items[0].components.minecraft:custom_model_data int 1 run data get storage temp players[0].place

data modify storage temp id_list append from storage temp players[0]

execute store result score in mck_db_bit run data get storage temp players[0].id
function mck:database/player_find

execute if score slot mck_temp matches 1 run item modify entity @s inventory.1 minecraft:item_name=mck:spec/head
execute if score slot mck_temp matches 1 run item replace entity @s inventory.2 from block 0 0 0 container.0
execute if score slot mck_temp matches 2 run item modify entity @s inventory.10 minecraft:item_name=mck:spec/head
execute if score slot mck_temp matches 2 run item replace entity @s inventory.11 from block 0 0 0 container.0
execute if score slot mck_temp matches 3 run item modify entity @s inventory.19 minecraft:item_name=mck:spec/head
execute if score slot mck_temp matches 3 run item replace entity @s inventory.20 from block 0 0 0 container.0
execute if score slot mck_temp matches 4 run item modify entity @s inventory.3 minecraft:item_name=mck:spec/head
execute if score slot mck_temp matches 4 run item replace entity @s inventory.4 from block 0 0 0 container.0
execute if score slot mck_temp matches 5 run item modify entity @s inventory.12 minecraft:item_name=mck:spec/head
execute if score slot mck_temp matches 5 run item replace entity @s inventory.13 from block 0 0 0 container.0
execute if score slot mck_temp matches 6 run item modify entity @s inventory.21 minecraft:item_name=mck:spec/head
execute if score slot mck_temp matches 6 run item replace entity @s inventory.22 from block 0 0 0 container.0
execute if score slot mck_temp matches 7 run item modify entity @s inventory.5 minecraft:item_name=mck:spec/head
execute if score slot mck_temp matches 7 run item replace entity @s inventory.6 from block 0 0 0 container.0
execute if score slot mck_temp matches 8 run item modify entity @s inventory.14 minecraft:item_name=mck:spec/head
execute if score slot mck_temp matches 8 run item replace entity @s inventory.15 from block 0 0 0 container.0
execute if score slot mck_temp matches 9 run item modify entity @s inventory.23 minecraft:item_name=mck:spec/head
execute if score slot mck_temp matches 9 run item replace entity @s inventory.24 from block 0 0 0 container.0
execute if score slot mck_temp matches 10 run item modify entity @s inventory.7 minecraft:item_name=mck:spec/head
execute if score slot mck_temp matches 10 run item replace entity @s inventory.8 from block 0 0 0 container.0
execute if score slot mck_temp matches 11 run item modify entity @s inventory.16 minecraft:item_name=mck:spec/head
execute if score slot mck_temp matches 11 run item replace entity @s inventory.17 from block 0 0 0 container.0
execute if score slot mck_temp matches 12 run item modify entity @s inventory.25 minecraft:item_name=mck:spec/head
execute if score slot mck_temp matches 12 run item replace entity @s inventory.26 from block 0 0 0 container.0