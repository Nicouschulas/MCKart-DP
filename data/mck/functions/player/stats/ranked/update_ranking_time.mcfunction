data modify storage temp list1 set from storage temp enderchest[4].tag.track_stats
data modify storage temp list2 set value []

execute if data storage temp list1[0] run function mck:player/stats/ranked/sort

execute store result score count1 mck_temp run data get storage temp list2
execute store result score count2 mck_temp run data get storage tracks in_use

scoreboard players set rank_time mck_temp 0
execute if score count1 mck_temp >= count2 mck_temp run function mck:player/stats/ranked/calc_rank_time
execute if score count1 mck_temp >= count2 mck_temp store result storage temp enderchest[4].tag.stats.rank_time int 1 run scoreboard players get rank_time mck_temp

execute if score count1 mck_temp < count2 mck_temp run data modify storage temp enderchest[4].tag.stats.rank_time set value 100000000



execute store result score player_time mck_temp run data get storage temp enderchest[4].tag.stats.rank_time
scoreboard players set player_rank mck_temp 0
scoreboard players set rank mck_temp 0
scoreboard players set bool mck_temp 0

function mck:player/stats/ranked/resulting

execute store result score previous mck_temp run data get storage temp enderchest[4].tag.stats.rank
scoreboard players set bool mck_temp 0

execute if score previous mck_temp > player_rank mck_temp run scoreboard players set bool mck_temp 1
execute if score previous mck_temp < player_rank mck_temp run scoreboard players set bool mck_temp 2
execute if score previous mck_temp matches 0 if score player_rank mck_temp matches 1.. run scoreboard players set bool mck_temp 1
execute if score previous mck_temp matches 1.. if score player_rank mck_temp matches 0 run scoreboard players set bool mck_temp 2

execute if score bool mck_temp matches 1.. run data modify storage temp name set from storage temp enderchest[4].tag.stats.rank_name


execute store result storage temp enderchest[4].tag.stats.rank byte 1 run scoreboard players get player_rank mck_temp

execute if score player_rank mck_temp matches 1 run data modify storage temp enderchest[4].tag.stats.rank_name set value ['{"text":"\\uaba1 ","color":"white","bold":false}', '{"translate":"ranklist.rank1","color":"#FF4551","bold":true,"italic":false}']
execute if score player_rank mck_temp matches 2 run data modify storage temp enderchest[4].tag.stats.rank_name set value ['{"text":"\\uaba2 ","color":"white","bold":false}', '{"translate":"ranklist.rank2","color":"#BB87FF","bold":true,"italic":false}']
execute if score player_rank mck_temp matches 3 run data modify storage temp enderchest[4].tag.stats.rank_name set value ['{"text":"\\uaba3 ","color":"white","bold":false}', '{"translate":"ranklist.rank3","color":"#7DB5FF","bold":true,"italic":false}']
execute if score player_rank mck_temp matches 4 run data modify storage temp enderchest[4].tag.stats.rank_name set value ['{"text":"\\uaba4 ","color":"white","bold":false}', '{"translate":"ranklist.rank4","color":"#49D68B","bold":true,"italic":false}']
execute if score player_rank mck_temp matches 5 run data modify storage temp enderchest[4].tag.stats.rank_name set value ['{"text":"\\uaba5 ","color":"white","bold":false}', '{"translate":"ranklist.rank5","color":"#FFCC24","bold":true,"italic":false}']
execute if score player_rank mck_temp matches 6 run data modify storage temp enderchest[4].tag.stats.rank_name set value ['{"text":"\\uaba6 ","color":"white","bold":false}', '{"translate":"ranklist.rank6","color":"#E8FFFF","bold":true,"italic":false}']
execute if score player_rank mck_temp matches 7 run data modify storage temp enderchest[4].tag.stats.rank_name set value ['{"text":"\\uaba7 ","color":"white","bold":false}', '{"translate":"ranklist.rank7","color":"#D1A075","bold":true,"italic":false}']
execute if score player_rank mck_temp matches 8 run data modify storage temp enderchest[4].tag.stats.rank_name set value ['{"text":"\\uaba8 ","color":"white","bold":false}', '{"translate":"ranklist.rank8","color":"#BFAFA8","bold":true,"italic":false}']
execute if score player_rank mck_temp matches 9 run data modify storage temp enderchest[4].tag.stats.rank_name set value ['{"text":"\\uaba9 ","color":"white","bold":false}', '{"translate":"ranklist.rank9","color":"#FAFF70","bold":true,"italic":false}']
execute if score player_rank mck_temp matches 0 run data modify storage temp enderchest[4].tag.stats.rank_name set value ['{"text":"\\uaba0 ","color":"white","bold":false}', '{"translate":"ranklist.rank0","color":"#A1A1A1","bold":true,"italic":false}']


execute if score bool mck_temp matches 1.. run scoreboard players set @s mck_sethead 20
execute if score bool mck_temp matches 1 at @s run playsound custom:rank_up master @s[scores={mck_setting1=1}] ~ ~ ~ 1 1
execute if score bool mck_temp matches 2 at @s run playsound minecraft:block.note_block.didgeridoo master @s[scores={mck_setting1=1}] ~ ~ ~ 1 0.5
execute if score bool mck_temp matches 1.. run tellraw @s ""
execute if score bool mck_temp matches 1 run scoreboard players set @s mck_manager_call -220
execute if score bool mck_temp matches 1 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"chat.alert.ranklist.ranked","color":"#57DDFF"},{"text":"] "},{"translate":"chat.alert.ranklist.new_rank","color":"gray","bold":false},{"translate":"chat.alert.ranklist.new_rank.up","color":"#9ECBDE"},{"translate":"chat.alert.ranklist.new_rank.end","color":"gray","bold":false}]
execute if score bool mck_temp matches 2 run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"chat.alert.ranklist.ranked","color":"#57DDFF"},{"text":"] "},{"translate":"chat.alert.ranklist.new_rank","color":"gray","bold":false},{"translate":"chat.alert.ranklist.new_rank.down","color":"#DE8585"},{"translate":"chat.alert.ranklist.new_rank.end","color":"gray","bold":false}]
execute if score bool mck_temp matches 1.. run tellraw @s [{"text":"[","color":"gray","bold":true},{"translate":"chat.alert.ranklist.ranked","color":"#57DDFF"},{"text":"] "},{"translate":"chat.alert.ranklist.new_rank.from"},{"nbt":"name[]","storage":"temp","interpret":true,"bold":false,"separator":""},{"translate":"chat.alert.ranklist.new_rank.to","bold":false},{"nbt":"enderchest[4].tag.stats.rank_name[]","storage":"temp","interpret":true,"separator":""}]
execute if score bool mck_temp matches 1.. run tellraw @s ""

execute if entity @s[type=player] run function mck:player/team/_normal