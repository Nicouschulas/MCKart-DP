scoreboard players operation in mck_db_bit = temp mck_temp
scoreboard players operation in mck_db_bit += @s mck_player_track_menu
function mck:database/player_find

item replace block 0 0 0 container.0 with player_head
data modify block 0 0 0 Items[0].tag set from storage databases output.data.head.tag
item modify block 0 0 0 container.0 mck:copy_global_name

execute store result score public mck_temp run data get storage databases output.data.public
execute store result score time mck_time run data get storage databases output.data.stats.n_time_played
execute store result score time2 mck_temp run data get storage databases output.data.stats.r_time_played
scoreboard players operation time mck_time += time2 mck_temp
scoreboard players set skip_digits mck_time 1
function mck:time/calc

item modify block 0 0 0 container.0 mck:short_profile

execute if data storage databases output.data run data modify storage temp players append from block 0 0 0 Items[0].tag
execute if data storage databases output.data run data modify storage temp player_ids append from storage databases output.data.id



scoreboard players add temp mck_temp 1
execute if score temp mck_temp matches ..13 run function mck:menu/page_global/collect_players