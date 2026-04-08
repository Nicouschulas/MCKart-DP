scoreboard players add slot mck_temp 1

item replace block 0 0 0 container.0 with gold_nugget{display:{Name:'{"text":" "}'},CustomModelData:12,killme:1b} 1
execute store result block 0 0 0 Items[0].tag.CustomModelData int 1 run data get storage temp players[0].place

data modify storage temp id_list append from storage temp players[0]

execute store result score in mck_db_bit run data get storage temp players[0].id
function mck:database/player_find

execute if score slot mck_temp matches 1 run item modify entity @s inventory.1 mck:spec/head
execute if score slot mck_temp matches 1 run item replace entity @s inventory.2 from block 0 0 0 container.0
execute if score slot mck_temp matches 2 run item modify entity @s inventory.10 mck:spec/head
execute if score slot mck_temp matches 2 run item replace entity @s inventory.11 from block 0 0 0 container.0
execute if score slot mck_temp matches 3 run item modify entity @s inventory.19 mck:spec/head
execute if score slot mck_temp matches 3 run item replace entity @s inventory.20 from block 0 0 0 container.0
execute if score slot mck_temp matches 4 run item modify entity @s inventory.3 mck:spec/head
execute if score slot mck_temp matches 4 run item replace entity @s inventory.4 from block 0 0 0 container.0
execute if score slot mck_temp matches 5 run item modify entity @s inventory.12 mck:spec/head
execute if score slot mck_temp matches 5 run item replace entity @s inventory.13 from block 0 0 0 container.0
execute if score slot mck_temp matches 6 run item modify entity @s inventory.21 mck:spec/head
execute if score slot mck_temp matches 6 run item replace entity @s inventory.22 from block 0 0 0 container.0
execute if score slot mck_temp matches 7 run item modify entity @s inventory.5 mck:spec/head
execute if score slot mck_temp matches 7 run item replace entity @s inventory.6 from block 0 0 0 container.0
execute if score slot mck_temp matches 8 run item modify entity @s inventory.14 mck:spec/head
execute if score slot mck_temp matches 8 run item replace entity @s inventory.15 from block 0 0 0 container.0
execute if score slot mck_temp matches 9 run item modify entity @s inventory.23 mck:spec/head
execute if score slot mck_temp matches 9 run item replace entity @s inventory.24 from block 0 0 0 container.0
execute if score slot mck_temp matches 10 run item modify entity @s inventory.7 mck:spec/head
execute if score slot mck_temp matches 10 run item replace entity @s inventory.8 from block 0 0 0 container.0
execute if score slot mck_temp matches 11 run item modify entity @s inventory.16 mck:spec/head
execute if score slot mck_temp matches 11 run item replace entity @s inventory.17 from block 0 0 0 container.0
execute if score slot mck_temp matches 12 run item modify entity @s inventory.25 mck:spec/head
execute if score slot mck_temp matches 12 run item replace entity @s inventory.26 from block 0 0 0 container.0