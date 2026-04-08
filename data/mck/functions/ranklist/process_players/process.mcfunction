# update ranking time before adding to official rankinglist
data modify storage temp enderchest set value [{}, {}, {}, {}, {}]

data modify storage temp enderchest[4].tag.track_stats set from storage ranklist players[0].data.track_stats
data modify storage temp enderchest[4].tag.stats.rank set from storage ranklist players[0].data.stats.rank
data modify storage temp enderchest[4].tag.stats.rank_name set from storage ranklist players[0].data.stats.rank_name

execute store result score in mck_db_bit run data get storage ranklist players[0].data.id
scoreboard players set temp mck_temp 0
execute as @a if score @s mck_id = in mck_db_bit run scoreboard players set temp mck_temp 1
execute if score temp mck_temp matches 1 as @a if score @s mck_id = in mck_db_bit run function mck:player/stats/ranked/update_ranking_time
execute if score temp mck_temp matches 0 if score in mck_db_bit matches 1.. run function mck:player/stats/ranked/update_ranking_time

execute if score in mck_db_bit matches 1.. run data modify storage ranklist players[0].data.stats.rank set from storage temp enderchest[4].tag.stats.rank
execute if score in mck_db_bit matches 1.. run data modify storage ranklist players[0].data.stats.rank_time set from storage temp enderchest[4].tag.stats.rank_time
execute if score in mck_db_bit matches 1.. run data modify storage ranklist players[0].data.stats.rank_name set from storage temp enderchest[4].tag.stats.rank_name
execute if score in mck_db_bit matches 1.. run data modify storage ranklist players[0].data.stats.rank_placing set value -1



data modify storage databases input set from storage ranklist players[0]
execute store result score in mck_db_bit run data get storage ranklist players[0].data.id

execute if score in mck_db_bit matches 1.. as @a if score @s mck_id = in mck_db_bit run item modify entity @s enderchest.4 mck:ranklist_update_ender

execute if score in mck_db_bit matches 1.. run function mck:database/player_set



execute store result score rank mck_temp run data get storage ranklist players[0].data.stats.rank

execute unless data storage ranklist players[0].data.stats.rank run scoreboard players set rank mck_temp -1


data remove storage ranklist player
data modify storage ranklist player.id set from storage ranklist players[0].data.id
data modify storage ranklist player.name set from storage ranklist players[0].data.head.tag.SkullOwner.Name
data modify storage ranklist player.head set from storage ranklist players[0].data.head
data modify storage ranklist player.rank_time set from storage ranklist players[0].data.stats.rank_time
data modify storage ranklist player.rank set from storage ranklist players[0].data.stats.rank
data modify storage ranklist player.rank_name set from storage ranklist players[0].data.stats.rank_name
data modify storage ranklist player.rank_placing set from storage ranklist players[0].data.stats.rank_placing

execute if score rank mck_temp matches 1 run data modify storage ranklist templist[0] append from storage ranklist player
execute if score rank mck_temp matches 2 run data modify storage ranklist templist[1] append from storage ranklist player
execute if score rank mck_temp matches 3 run data modify storage ranklist templist[2] append from storage ranklist player
execute if score rank mck_temp matches 4 run data modify storage ranklist templist[3] append from storage ranklist player
execute if score rank mck_temp matches 5 run data modify storage ranklist templist[4] append from storage ranklist player
execute if score rank mck_temp matches 6 run data modify storage ranklist templist[5] append from storage ranklist player
execute if score rank mck_temp matches 7 run data modify storage ranklist templist[6] append from storage ranklist player
execute if score rank mck_temp matches 8 run data modify storage ranklist templist[7] append from storage ranklist player
execute if score rank mck_temp matches 9 run data modify storage ranklist templist[8] append from storage ranklist player
execute if score rank mck_temp matches 1..9 run scoreboard players add sorting_all mck_temp 1

data remove storage ranklist players[0]
execute store result bossbar ranklist_sort max run scoreboard players get sorting_all mck_temp
scoreboard players operation ranking_list mck_timer = ranking_list_update mck_admin_settings

execute unless data storage ranklist players[0] run scoreboard players operation ranked_players mck_data = sorting_all mck_temp