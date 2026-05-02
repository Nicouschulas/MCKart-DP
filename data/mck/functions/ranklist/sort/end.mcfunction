execute if data storage ranklist best.id run scoreboard players add global_place mck_temp 1
execute if data storage ranklist best.id store result storage ranklist best.rank_placing int 1 run scoreboard players get global_place mck_temp
execute if data storage ranklist best.id run data modify storage ranklist sortedlist append from storage ranklist best
execute if data storage ranklist best.id store result score player_id mck_temp run data get storage ranklist best.id
execute if data storage ranklist best.id run scoreboard players set online mck_temp 0
execute if data storage ranklist best.id as @a if score @s mck_id = player_id mck_temp run function mck:ranklist/sort/update_stats
execute if data storage ranklist best.id if score online mck_temp matches 0 run function mck:ranklist/sort/update_offline
data modify storage ranklist best set value {rank_time:100000000}

execute store result score sorting mck_timer run data get storage ranklist sortlist

execute if score sorting mck_timer matches 0 run data modify storage ranklist list append from storage ranklist sortedlist
execute if score sorting mck_timer matches 0 run scoreboard players add sorting_done mck_temp 1
execute if score sorting mck_timer matches 0 if score sorting_done mck_temp matches 9 run tellraw @a [{"text":"[","color":"gray","bold":true},{"translate":"info","color":"#57DDFF","bold":false},{"text":"] "},{"translate":"chat.alert.ranklist.end","color":"#CFCFCF","bold":false}]
execute if score sorting mck_timer matches 0 if score sorting_done mck_temp matches 9 run bossbar set ranklist_sort players
execute if score sorting mck_timer matches 0 run scoreboard players set sorting mck_timer -1

#Update spawn rankboard + set to beginner page
execute as @e[type=text_display,tag=ranked_board_list,limit=1,sort=nearest] run scoreboard players set @s mck_page 8
execute as @e[type=text_display,tag=ranked_board_list,limit=1,sort=nearest] run function mck:rankedboard/update