scoreboard players add players mck_temp 1

data modify storage temp name set from entity @s EnderItems[0].tag.playerdata.name

execute store result storage temp temp int 1 run scoreboard players get @s mck_id
data modify storage temp id_list append from storage temp temp

scoreboard players operation public mck_temp = @s mck_setting2
scoreboard players operation in mck_db_bit = @s mck_id
function mck:database/player_find
execute store result score time mck_time run data get storage databases output.data.stats.n_time_played
execute store result score temp mck_temp run data get storage databases output.data.stats.r_time_played
scoreboard players operation time mck_time += temp mck_temp
scoreboard players set skip_digits mck_time 1
function mck:time/calc

execute if score players mck_temp matches 1 run item replace block 0 0 0 container.0 from entity @s enderchest.1 mck:set_stats
execute if score players mck_temp matches 2 run item replace block 0 0 0 container.1 from entity @s enderchest.1 mck:set_stats
execute if score players mck_temp matches 3 run item replace block 0 0 0 container.2 from entity @s enderchest.1 mck:set_stats
execute if score players mck_temp matches 4 run item replace block 0 0 0 container.3 from entity @s enderchest.1 mck:set_stats
execute if score players mck_temp matches 5 run item replace block 0 0 0 container.4 from entity @s enderchest.1 mck:set_stats
execute if score players mck_temp matches 6 run item replace block 0 0 0 container.5 from entity @s enderchest.1 mck:set_stats
execute if score players mck_temp matches 7 run item replace block 0 0 0 container.6 from entity @s enderchest.1 mck:set_stats
execute if score players mck_temp matches 8 run item replace block 0 0 0 container.7 from entity @s enderchest.1 mck:set_stats
execute if score players mck_temp matches 9 run item replace block 0 0 0 container.8 from entity @s enderchest.1 mck:set_stats
execute if score players mck_temp matches 10 run item replace block 0 0 0 container.9 from entity @s enderchest.1 mck:set_stats
execute if score players mck_temp matches 11 run item replace block 0 0 0 container.10 from entity @s enderchest.1 mck:set_stats
execute if score players mck_temp matches 12 run item replace block 0 0 0 container.11 from entity @s enderchest.1 mck:set_stats