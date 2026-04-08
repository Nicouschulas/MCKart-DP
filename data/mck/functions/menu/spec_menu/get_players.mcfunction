execute store result storage temp player.id long 1 run scoreboard players get @s mck_id
execute store result storage temp player.place byte 1 run scoreboard players get @s mck_place

execute if score @s mck_place matches 1 run data modify storage temp players[0] set from storage temp player
execute if score @s mck_place matches 2 run data modify storage temp players[1] set from storage temp player
execute if score @s mck_place matches 3 run data modify storage temp players[2] set from storage temp player
execute if score @s mck_place matches 4 run data modify storage temp players[3] set from storage temp player
execute if score @s mck_place matches 5 run data modify storage temp players[4] set from storage temp player
execute if score @s mck_place matches 6 run data modify storage temp players[5] set from storage temp player
execute if score @s mck_place matches 7 run data modify storage temp players[6] set from storage temp player
execute if score @s mck_place matches 8 run data modify storage temp players[7] set from storage temp player
execute if score @s mck_place matches 9 run data modify storage temp players[8] set from storage temp player
execute if score @s mck_place matches 10 run data modify storage temp players[9] set from storage temp player
execute if score @s mck_place matches 11 run data modify storage temp players[10] set from storage temp player
execute if score @s mck_place matches 12 run data modify storage temp players[11] set from storage temp player