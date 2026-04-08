data remove storage lootboxes win
execute if score @s mck_lootbox matches 1 run data modify storage lootboxes win set from storage lootboxes level1
execute if score @s mck_lootbox matches 2 run data modify storage lootboxes win set from storage lootboxes level2
execute if score @s mck_lootbox matches 3 run data modify storage lootboxes win set from storage lootboxes level3

execute store result score count mck_temp run data get storage lootboxes win


data remove storage temp args
scoreboard players set index mck_temp 0
execute store result storage temp args.index int 1 run scoreboard players get count mck_temp
execute if score count mck_temp matches 2.. run function mck:player/lootbox/roll_index with storage temp args
execute store result storage temp args.index int 1 run scoreboard players get index mck_temp
data remove storage temp temp
execute if score count mck_temp matches 2.. run function mck:player/lootbox/get_index with storage temp args

execute if score count mck_temp matches 1 run data modify storage temp temp set from storage lootboxes win[0]


execute if score count mck_temp matches 1.. run tellraw @s {"translate":"lootbox.title2","color":"#FFFBBF","bold":true,"italic":false}
execute if score count mck_temp matches 1.. run execute store result score @s mck_goods_id run data get storage temp temp
execute if score count mck_temp matches 1.. run function mck:player/gitgud/gitgud
execute if score count mck_temp matches 1.. run tellraw @s " "