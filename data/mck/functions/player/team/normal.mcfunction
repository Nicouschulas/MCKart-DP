execute store result score rank mck_temp run data get entity @s EnderItems[4].tag.stats.rank

execute if score rank mck_temp = 1 run team join rank1 @s
execute if score rank mck_temp = 2 run team join rank2 @s
execute if score rank mck_temp = 3 run team join rank3 @s
execute if score rank mck_temp = 4 run team join rank4 @s
execute if score rank mck_temp = 5 run team join rank5 @s
execute if score rank mck_temp = 6 run team join rank6 @s
execute if score rank mck_temp = 7 run team join rank7 @s
execute if score rank mck_temp = 8 run team join rank8 @s
execute if score rank mck_temp = 9 run team join rank9 @s
execute unless score rank mck_temp matches 1.. run team join rank0 @s

execute if score @s mck_setting4 = 0 run team join rank0 @s